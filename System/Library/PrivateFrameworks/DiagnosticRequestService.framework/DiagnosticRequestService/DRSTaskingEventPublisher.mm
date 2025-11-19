@interface DRSTaskingEventPublisher
+ (BOOL)_isFirst;
- (DRSTaskingEventPublisher)initWithConfigStore:(id)a3;
- (id)_activeConfigForTeamID:(id)a3 errorOut:(id *)a4;
- (void)_addSubscriber:(unint64_t)a3 descriptor:(id)a4 isOldSubscriber:(BOOL)a5;
- (void)_publishNotification:(id)a3 config:(id)a4;
- (void)_removeSubscriber:(unint64_t)a3;
- (void)publishConfigUpdateForTeamID:(id)a3 state:(unsigned __int8)a4 config:(id)a5;
- (void)publishCurrentConfigForTeamID:(id)a3;
@end

@implementation DRSTaskingEventPublisher

- (id)_activeConfigForTeamID:(id)a3 errorOut:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(state == %u) AND (teamID == %@)", 2, v6];
  v8 = [(DRSTaskingEventPublisher *)self configStore];
  v9 = [v8 configMetadatasForPredicate:v7 sortDescriptors:0 fetchLimit:0 errorOut:a4];

  if (*a4)
  {
    v10 = DPLogHandle_ServiceEventPublisherError();
    if (os_signpost_enabled(v10))
    {
      v11 = *a4;
      *buf = 138543618;
      v31 = v6;
      v32 = 2114;
      v33 = v11;
      v12 = "ConfigMetadataForStateTeamFailed";
      v13 = "Could not fetch active configs metadatas for teamID %{public}@ due to error %{public}@";
LABEL_4:
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v12, v13, buf, 0x16u);
      goto LABEL_5;
    }

    goto LABEL_5;
  }

  if (v9 && [v9 count])
  {
    if ([v9 count] < 2)
    {
      v10 = [v9 firstObject];
      v20 = [v10 config];
      v14 = v20;
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v22 = MEMORY[0x277CCA9B8];
        v26 = *MEMORY[0x277CCA450];
        v27 = @"Metadata with nil config";
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        *a4 = [v22 errorWithDomain:@"DRSTaskingEventPublisherError" code:0 userInfo:v23];

        v24 = DPLogHandle_ServiceEventPublisherError();
        if (os_signpost_enabled(v24))
        {
          v25 = [v10 configUUID];
          *buf = 138543618;
          v31 = v6;
          v32 = 2114;
          v33 = v25;
          _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ActiveMetadataMissingConfig", "Metadata for teamID %{public}@ (%{public}@) missing config", buf, 0x16u);
        }
      }

      goto LABEL_6;
    }

    v15 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v29 = @"More than 1 active config";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    *a4 = [v15 errorWithDomain:@"DRSTaskingEventPublisherError" code:0 userInfo:v16];

    v10 = DPLogHandle_ServiceEventPublisherError();
    if (os_signpost_enabled(v10))
    {
      v17 = [v9 count];
      *buf = 134218242;
      v31 = v17;
      v32 = 2114;
      v33 = v6;
      v12 = "MultipleActiveConfigs";
      v13 = "Found %lu active configs for teamID %{public}@";
      goto LABEL_4;
    }

LABEL_5:
    v14 = 0;
LABEL_6:

    goto LABEL_13;
  }

  v14 = 0;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_publishNotification:(id)a3 config:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = [v6 teamID];
  xpc_dictionary_set_string(v8, "teamID", [v9 UTF8String]);

  if (!v7)
  {
    goto LABEL_4;
  }

  v25 = 0;
  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v25];
  v11 = v25;
  if (v10)
  {
    xpc_dictionary_set_data(v8, "configData", [v10 bytes], objc_msgSend(v10, "length"));

LABEL_4:
    v12 = DPLogHandle_ServiceEventPublisher();
    if (os_signpost_enabled(v12))
    {
      v13 = [v6 token];
      v14 = [v6 teamID];
      v15 = [v7 configUUID];
      v16 = v15;
      v17 = @"(None)";
      *buf = 134349570;
      v27 = v13;
      if (v15)
      {
        v17 = v15;
      }

      v28 = 2114;
      v29 = v14;
      v30 = 2114;
      v31 = v17;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigNotification", "Notifying subscription %{public}#llx with team ID %{public}@ of current config %{public}@", buf, 0x20u);
    }

    v11 = [(DRSTaskingEventPublisher *)self publisher];
    [v6 token];
    xpc_event_publisher_fire();
    goto LABEL_14;
  }

  v18 = DPLogHandle_ServiceEventPublisherError();
  if (os_signpost_enabled(v18))
  {
    v19 = [v7 configUUID];
    v20 = [v7 teamID];
    v21 = [v11 localizedDescription];
    v22 = v21;
    v23 = @"Unknown";
    *buf = 138543874;
    v27 = v19;
    if (v21)
    {
      v23 = v21;
    }

    v28 = 2114;
    v29 = v20;
    v30 = 2114;
    v31 = v23;
    _os_signpost_emit_with_name_impl(&dword_232906000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigSerializationFailed", "Could not serialize config %{public}@ with teamID %{public}@ due to error %{public}@", buf, 0x20u);
  }

LABEL_14:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)publishConfigUpdateForTeamID:(id)a3 state:(unsigned __int8)a4 config:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(DRSTaskingEventPublisher *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__DRSTaskingEventPublisher_publishConfigUpdateForTeamID_state_config___block_invoke;
  v13[3] = &unk_27899F7D0;
  v16 = a4;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v10, v13);
}

void __70__DRSTaskingEventPublisher_publishConfigUpdateForTeamID_state_config___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = DPLogHandle_ServiceEventPublisher();
  if (os_signpost_enabled(v2))
  {
    v3 = *(a1 + 56);
    v4 = DRConfigStringForState();
    *buf = 138543362;
    v20 = v4;
    _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PublishConfigUpdate", "Publishing new config state: %{public}@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [*(a1 + 32) subscribers];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 teamID];
        v12 = [v11 isEqualToString:*(a1 + 40)];

        if (v12)
        {
          [*(a1 + 32) _publishNotification:v10 config:*(a1 + 48)];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)publishCurrentConfigForTeamID:(id)a3
{
  v4 = a3;
  v5 = [(DRSTaskingEventPublisher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__DRSTaskingEventPublisher_publishCurrentConfigForTeamID___block_invoke;
  v7[3] = &unk_27899F2E8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __58__DRSTaskingEventPublisher_publishCurrentConfigForTeamID___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = DPLogHandle_ServiceEventPublisher();
  if (os_signpost_enabled(v2))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v35 = v3;
    _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PublishCurrentConfig", "Publishing current config for teamID: %{public}@", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CBEB58] set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [*(a1 + 40) subscribers];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v10 teamID];
        v12 = [v11 isEqualToString:*(a1 + 32)];

        if (v12)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v28 = 0;
    v15 = [v13 _activeConfigForTeamID:v14 errorOut:&v28];
    v16 = v28;
    if (v16)
    {
      v17 = DPLogHandle_ServiceEventPublisher();
      if (os_signpost_enabled(v17))
      {
        v18 = *(a1 + 32);
        *buf = 138543618;
        v35 = v18;
        v36 = 2114;
        v37 = v16;
        _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PublishCurrentConfigError", "Error getting config for teamID: %{public}@: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v17 = v4;
      v19 = [v17 countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v25;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v25 != v21)
            {
              objc_enumerationMutation(v17);
            }

            [*(a1 + 40) _publishNotification:*(*(&v24 + 1) + 8 * j) config:{v15, v24}];
          }

          v20 = [v17 countByEnumeratingWithState:&v24 objects:v33 count:16];
        }

        while (v20);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_isFirst
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__DRSTaskingEventPublisher__isFirst__block_invoke;
  block[3] = &unk_27899EDD0;
  block[4] = &v5;
  if (_isFirst_onceToken != -1)
  {
    dispatch_once(&_isFirst_onceToken, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (DRSTaskingEventPublisher)initWithConfigStore:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([objc_opt_class() _isFirst])
  {
    v29.receiver = self;
    v29.super_class = DRSTaskingEventPublisher;
    v6 = [(DRSTaskingEventPublisher *)&v29 init];
    if (v6)
    {
      v7 = dispatch_queue_create("DRSTaskingEventPublisher work queue", 0);
      workQueue = v6->_workQueue;
      v6->_workQueue = v7;

      v9 = [MEMORY[0x277CBEB58] set];
      subscribers = v6->_subscribers;
      v6->_subscribers = v9;

      objc_storeStrong(&v6->_configStore, a3);
      v11 = dispatch_semaphore_create(0);
      v12 = [(DRSTaskingEventPublisher *)v6 workQueue];
      v13 = xpc_event_publisher_create();
      publisher = v6->_publisher;
      v6->_publisher = v13;

      objc_initWeak(&location, v6);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v31 = 0x2020000000;
      v32 = 1;
      v15 = [(DRSTaskingEventPublisher *)v6 publisher];
      v25 = MEMORY[0x277D85DD0];
      v26 = v11;
      objc_copyWeak(&v27, &location);
      xpc_event_publisher_set_handler();

      v16 = [(DRSTaskingEventPublisher *)v6 publisher:v25];
      xpc_event_publisher_set_error_handler();

      v17 = [(DRSTaskingEventPublisher *)v6 publisher];
      xpc_event_publisher_activate();

      dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
      objc_destroyWeak(&v27);

      _Block_object_dispose(&buf, 8);
      objc_destroyWeak(&location);
    }

    v18 = DPLogHandle_ServiceEventPublisher();
    if (os_signpost_enabled(v18))
    {
      v19 = [(DRSTaskingEventPublisher *)v6 subscribers];
      v20 = [v19 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v20;
      _os_signpost_emit_with_name_impl(&dword_232906000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PublisherInitialized", "Publisher initialization completed (%lu subscribers)", &buf, 0xCu);
    }

    self = v6;
    v21 = self;
  }

  else
  {
    v22 = DPLogHandle_ServiceEventPublisher();
    if (os_signpost_enabled(v22))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ThereCanBeOnlyOnePublisher", "Only one publisher can be instantiated in a given process lifetime", &buf, 2u);
    }

    v21 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

void __48__DRSTaskingEventPublisher_initWithConfigStore___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  if (a2)
  {
    if (a2 == 1)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      [WeakRetained _removeSubscriber:a3];
    }

    else if (a2 == 2)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      dispatch_semaphore_signal(*(a1 + 32));
    }
  }

  else
  {
    v10 = MEMORY[0x238389FD0](v7);
    v11 = DPLogHandle_ServiceEventPublisher();
    if (os_signpost_enabled(v11))
    {
      v14 = 136446210;
      v15 = v10;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NewSubscriptionDescriptor", "Descriptor: %{public}s", &v14, 0xCu);
    }

    if (v10)
    {
      free(v10);
    }

    v12 = objc_loadWeakRetained((a1 + 48));
    [v12 _addSubscriber:a3 descriptor:v8 isOldSubscriber:*(*(*(a1 + 40) + 8) + 24)];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __48__DRSTaskingEventPublisher_initWithConfigStore___block_invoke_45()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = DPLogHandle_ServiceEventPublisherError();
  if (os_signpost_enabled(v0))
  {
    v3 = 136446210;
    v4 = xpc_strerror();
    _os_signpost_emit_with_name_impl(&dword_232906000, v0, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PublisherError", "Publisher error: %{public}s. Crashing.", &v3, 0xCu);
  }

  v1 = DPLogHandle_ServiceEventPublisherError();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = xpc_strerror();
    v3 = 136446210;
    v4 = v2;
    _os_log_fault_impl(&dword_232906000, v1, OS_LOG_TYPE_FAULT, "FATAL ERROR: Tasking event publisher encountered unrecoverable error:%{public}s", &v3, 0xCu);
  }

  exit(1);
}

- (void)_addSubscriber:(unint64_t)a3 descriptor:(id)a4 isOldSubscriber:(BOOL)a5
{
  v5 = a5;
  v29 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(a4, "teamID");
  if (string)
  {
    v9 = string;
    v10 = [DRSTaskingEventSubscriber alloc];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    v12 = [(DRSTaskingEventSubscriber *)v10 initWithTeamID:v11 token:a3];

    v13 = [(DRSTaskingEventPublisher *)self subscribers];
    LODWORD(v10) = [v13 containsObject:v12];

    if (v10)
    {
      v14 = DPLogHandle_ServiceEventPublisherError();
      if (os_signpost_enabled(v14))
      {
        v15 = [v12 teamID];
        *buf = 138543618;
        v26 = v15;
        v27 = 2048;
        v28 = [v12 token];
        v16 = "DuplicateSubscribers";
        v17 = "Tried to add duplicate subscribers: TeamID: %{public}@ token: %#llx";
LABEL_10:
        _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v16, v17, buf, 0x16u);
      }
    }

    else
    {
      v18 = [(DRSTaskingEventPublisher *)self subscribers];
      [v18 addObject:v12];

      v14 = DPLogHandle_ServiceEventPublisher();
      v19 = os_signpost_enabled(v14);
      if (!v5)
      {
        if (v19)
        {
          v20 = [v12 teamID];
          *buf = 138543618;
          v26 = v20;
          v27 = 2048;
          v28 = [v12 token];
          _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AcceptedNewSubscriber", "Added subscriber: TeamID: %{public}@ token: %#llx", buf, 0x16u);
        }

        v21 = [v12 teamID];
        v24 = 0;
        v14 = [(DRSTaskingEventPublisher *)self _activeConfigForTeamID:v21 errorOut:&v24];
        v22 = v24;

        if (!v22)
        {
          [(DRSTaskingEventPublisher *)self _publishNotification:v12 config:v14];
        }

        goto LABEL_15;
      }

      if (v19)
      {
        v15 = [v12 teamID];
        *buf = 138543618;
        v26 = v15;
        v27 = 2048;
        v28 = [v12 token];
        v16 = "InitializedOldSubscriber";
        v17 = "Added pre-existing subscriber: TeamID: %{public}@ token: %#llx. No need to broadcast config";
        goto LABEL_10;
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  v12 = DPLogHandle_ServiceEventPublisherError();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidTaskingEventDescriptor", "Missing 'teamID' key", buf, 2u);
  }

LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_removeSubscriber:(unint64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(DRSTaskingEventPublisher *)self subscribers];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      if ([v10 token] == a3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v10;

    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = [(DRSTaskingEventPublisher *)self subscribers];
    [v12 removeObject:v11];
  }

  else
  {
LABEL_9:

LABEL_12:
    v11 = DPLogHandle_ServiceEventPublisherError();
    if (os_signpost_enabled(v11))
    {
      *buf = 134349056;
      v19 = a3;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SubscriberRemovalFailure", "Failed to find a subscriber for token: %{public}#llx", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end