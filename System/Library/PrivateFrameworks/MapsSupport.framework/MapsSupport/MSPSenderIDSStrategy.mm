@interface MSPSenderIDSStrategy
- (BOOL)_needToSendETARefreshFor:(id)a3 state:(id)a4;
- (BOOL)setState:(id)a3 forEvent:(unint64_t)a4;
- (MSPSenderIDSStrategy)initWithGroupSession:(id)a3;
- (id)_filteredParticipantsForState:(id)a3 event:(unint64_t)a4;
- (void)_sendCompatibleInstancesOfState:(id)a3 to:(id)a4;
- (void)_sendDestinationReachedUpdate:(id)a3 to:(id)a4;
- (void)_sendETAUpdate:(id)a3 to:(id)a4;
- (void)_sendETAUpdateIfNeededTo:(id)a3;
- (void)_sendResumingToNextDestinationUpdate:(id)a3 to:(id)a4;
- (void)_sendRouteUpdate:(id)a3 to:(id)a4;
- (void)_sendStoppedUpdate:(id)a3 to:(id)a4;
- (void)_sendTrafficUpdate:(id)a3 to:(id)a4;
- (void)_sendUpdatedWaypoints:(id)a3 to:(id)a4;
- (void)addParticipants:(id)a3;
- (void)fetchCapabilitiesForParticipants:(id)a3 completion:(id)a4;
@end

@implementation MSPSenderIDSStrategy

- (MSPSenderIDSStrategy)initWithGroupSession:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = MSPSenderIDSStrategy;
  v6 = [(MSPSenderStrategy *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupSession, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lastETAUpdateDates = v7->_lastETAUpdateDates;
    v7->_lastETAUpdateDates = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    participantsByCapabilities = v7->_participantsByCapabilities;
    v7->_participantsByCapabilities = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    capabilitiesByParticipant = v7->_capabilitiesByParticipant;
    v7->_capabilitiesByParticipant = v12;
  }

  return v7;
}

- (id)_filteredParticipantsForState:(id)a3 event:(unint64_t)a4
{
  v4 = [(NSMutableSet *)self->super._participants copy:a3];

  return v4;
}

- (BOOL)setState:(id)a3 forEvent:(unint64_t)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v39.receiver = self;
  v39.super_class = MSPSenderIDSStrategy;
  if ([(MSPSenderStrategy *)&v39 setState:v6 forEvent:a4])
  {
    v7 = [(MSPSenderIDSStrategy *)self _filteredParticipantsForState:v6 event:a4];
    if ([v7 count])
    {
      v8 = 1;
      if (a4 > 4)
      {
        if (a4 <= 6)
        {
          if (a4 == 5)
          {
            [(MSPSenderIDSStrategy *)self _sendRouteUpdate:v6 to:v7];
          }

          else
          {
            [(MSPSenderIDSStrategy *)self _sendTrafficUpdate:v6 to:v7];
          }
        }

        else
        {
          switch(a4)
          {
            case 7uLL:
              [(MSPSenderIDSStrategy *)self _sendDestinationReachedUpdate:v6 to:v7];
              break;
            case 8uLL:
              [(MSPSenderIDSStrategy *)self _sendResumingToNextDestinationUpdate:v6 to:v7];
              break;
            case 9uLL:
              [(MSPSenderIDSStrategy *)self _sendStoppedUpdate:v6 to:v7];
              break;
          }
        }

        goto LABEL_48;
      }

      if (a4 > 1)
      {
        if (a4 == 3)
        {
          [(MSPSenderIDSStrategy *)self _sendUpdatedWaypoints:v6 to:v7];
        }

        else
        {
          [(MSPSenderIDSStrategy *)self _sendETAUpdateIfNeededTo:v7];
        }

        goto LABEL_48;
      }

      if (a4)
      {
        if (a4 != 1)
        {
LABEL_48:

          goto LABEL_49;
        }

        v13 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          if (self)
          {
            v14 = MEMORY[0x277CCACA8];
            v15 = self;
            v16 = [v14 stringWithFormat:@"%@<%p>", objc_opt_class(), v15];
          }

          else
          {
            v16 = @"<nil>";
          }

          participants = self->super._participants;
          v22 = v16;
          v23 = [(NSMutableSet *)participants count];
          v24 = self->super._participants;

          *buf = 138543875;
          v42 = v16;
          v43 = 2048;
          v44 = v23;
          v45 = 2113;
          v46 = v24;
          _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_INFO, "[%{public}@] - restoring state, resetting lastETAUpdateDate for %lu participants (%{private}@)", buf, 0x20u);
        }

        v25 = [MEMORY[0x277CBEAA8] date];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v26 = v7;
        v27 = [v26 countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v36;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v36 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v35 + 1) + 8 * i);
              v32 = [(MSPSenderIDSStrategy *)self lastETAUpdateDates];
              [v32 setObject:v25 forKeyedSubscript:v31];
            }

            v28 = [v26 countByEnumeratingWithState:&v35 objects:v40 count:16];
          }

          while (v28);
        }
      }

      else
      {
        v17 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          if (self)
          {
            v18 = MEMORY[0x277CCACA8];
            v19 = self;
            v20 = [v18 stringWithFormat:@"%@<%p>", objc_opt_class(), v19];
          }

          else
          {
            v20 = @"<nil>";
          }

          *buf = 138543362;
          v42 = v20;
          _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_INFO, "[%{public}@] - will immediately attempt to send initial state waypoints/route", buf, 0xCu);
        }

        if ([objc_opt_class() _supportsEvent:3])
        {
          [(MSPSenderIDSStrategy *)self _sendUpdatedWaypoints:v6 to:v7];
        }

        if ([objc_opt_class() _supportsEvent:5])
        {
          [(MSPSenderIDSStrategy *)self _sendRouteUpdate:v6 to:v7];
        }
      }
    }

    else if ([(NSMutableSet *)self->super._participants count])
    {
      v9 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = self;
        v12 = [v10 stringWithFormat:@"%@<%p>", objc_opt_class(), v11];

        *buf = 138543362;
        v42 = v12;
        _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] - no participants left for event after filtering", buf, 0xCu);
      }

      v8 = 0;
      goto LABEL_48;
    }

    v8 = 1;
    goto LABEL_48;
  }

  v8 = 0;
LABEL_49:

  v33 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_needToSendETARefreshFor:(id)a3 state:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MSPSenderIDSStrategy *)self lastETAUpdateDates];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    [objc_opt_class() _etaRefreshIntervalForState:v7];
    if (v10 < 0.0)
    {
      v11 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        if (self)
        {
          v12 = MEMORY[0x277CCACA8];
          v13 = self;
          v14 = [v12 stringWithFormat:@"%@<%p>", objc_opt_class(), v13];
        }

        else
        {
          v14 = @"<nil>";
        }

        *buf = 138543619;
        v38 = v14;
        v39 = 2113;
        v40 = v6;
        v31 = "[%{public}@] _needToSendETARefresh for %{private}@: NO, interval is < 0";
        v32 = v11;
        v33 = OS_LOG_TYPE_INFO;
        v34 = 22;
LABEL_25:
        _os_log_impl(&dword_25813A000, v32, v33, v31, buf, v34);

        goto LABEL_26;
      }

      goto LABEL_26;
    }

    v19 = v10;
    [v9 timeIntervalSinceNow];
    v21 = -v20;
    v22 = v19 + v20;
    v23 = MSPGetSharedTripLog();
    v11 = v23;
    if (v22 > 0.0)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        if (self)
        {
          v26 = MEMORY[0x277CCACA8];
          v27 = self;
          v14 = [v26 stringWithFormat:@"%@<%p>", objc_opt_class(), v27];
        }

        else
        {
          v14 = @"<nil>";
        }

        *buf = 138544131;
        v38 = v14;
        v39 = 2113;
        v40 = v6;
        v41 = 2048;
        v42 = v21;
        v43 = 2048;
        v44 = v22;
        v31 = "[%{public}@] _needToSendETARefresh for %{private}@: NO, too soon since previous (%#.1lfs since last update, %#.1lfs to go)";
        v32 = v11;
        v33 = OS_LOG_TYPE_DEFAULT;
        v34 = 42;
        goto LABEL_25;
      }

LABEL_26:
      v15 = 0;
      goto LABEL_27;
    }

    v15 = 1;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      if (self)
      {
        v24 = MEMORY[0x277CCACA8];
        v25 = self;
        v18 = [v24 stringWithFormat:@"%@<%p>", objc_opt_class(), v25];
      }

      else
      {
        v18 = @"<nil>";
      }

      *buf = 138543875;
      v38 = v18;
      v39 = 2113;
      v40 = v6;
      v41 = 2048;
      v42 = v21;
      v28 = "[%{public}@] _needToSendETARefresh for %{private}@: YES, last update %#.1lfs ago";
      v15 = 1;
      v29 = v11;
      v30 = 32;
LABEL_22:
      _os_log_impl(&dword_25813A000, v29, OS_LOG_TYPE_INFO, v28, buf, v30);
    }
  }

  else
  {
    v11 = MSPGetSharedTripLog();
    v15 = 1;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (self)
      {
        v16 = MEMORY[0x277CCACA8];
        v17 = self;
        v18 = [v16 stringWithFormat:@"%@<%p>", objc_opt_class(), v17];
      }

      else
      {
        v18 = @"<nil>";
      }

      *buf = 138543619;
      v38 = v18;
      v39 = 2113;
      v40 = v6;
      v28 = "[%{public}@] _needToSendETARefresh for %{private}@: YES, no ETA updates sent at all yet";
      v15 = 1;
      v29 = v11;
      v30 = 22;
      goto LABEL_22;
    }
  }

LABEL_27:

  v35 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)_sendETAUpdateIfNeededTo:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->super._state;
  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v4 copy];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([(MSPSenderIDSStrategy *)self _needToSendETARefreshFor:v12 state:v5])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v13 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v14 = MEMORY[0x277CCACA8];
        v15 = self;
        v16 = [v14 stringWithFormat:@"%@<%p>", objc_opt_class(), v15];
      }

      else
      {
        v16 = @"<nil>";
      }

      v17 = [v6 count];
      *buf = 138543618;
      v25 = v16;
      v26 = 2048;
      v27 = v17;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] %lu participants need an ETA update", buf, 0x16u);
    }

    v18 = [v6 copy];
    [(MSPSenderIDSStrategy *)self _sendETAUpdate:v5 to:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)addParticipants:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v4];
  v6 = MEMORY[0x277CBEB98];
  v7 = [(MSPSenderIDSStrategy *)self capabilitiesByParticipant];
  v8 = [v7 allKeys];
  v9 = [v6 setWithArray:v8];
  [v5 minusSet:v9];

  if ([v5 count])
  {
    v10 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (self)
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = self;
        v13 = [v11 stringWithFormat:@"%@<%p>", objc_opt_class(), v12];
      }

      else
      {
        v13 = @"<nil>";
      }

      *buf = 138543875;
      v19 = v13;
      v20 = 2048;
      v21 = [v5 count];
      v22 = 2113;
      v23 = v5;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_INFO, "[%{public}@] Need to fetch capabilities for %lu handles: %{private}@", buf, 0x20u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __40__MSPSenderIDSStrategy_addParticipants___block_invoke;
    v16[3] = &unk_279865FE8;
    v16[4] = self;
    v17 = v4;
    [(MSPSenderIDSStrategy *)self fetchCapabilitiesForParticipants:v5 completion:v16];
  }

  v15.receiver = self;
  v15.super_class = MSPSenderIDSStrategy;
  [(MSPSenderStrategy *)&v15 addParticipants:v4];

  v14 = *MEMORY[0x277D85DE8];
}

void __40__MSPSenderIDSStrategy_addParticipants___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__MSPSenderIDSStrategy_addParticipants___block_invoke_2;
  v13[3] = &unk_279865FC0;
  v13[4] = *(a1 + 32);
  [v3 enumerateKeysAndObjectsUsingBlock:v13];
  v4 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = v5;
      v8 = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), v7];
    }

    else
    {
      v8 = @"<nil>";
    }

    v9 = [*(a1 + 40) count];
    *buf = 138543875;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    v18 = 2113;
    v19 = v3;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "[%{public}@] Did fetch capabilities for %lu handles: %{private}@", buf, 0x20u);
  }

  v10 = *(a1 + 32);
  v11 = [v3 allKeys];
  [v10 didFetchCapabilitiesForParticipants:v11];

  v12 = *MEMORY[0x277D85DE8];
}

void __40__MSPSenderIDSStrategy_addParticipants___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = [*(a1 + 32) capabilitiesByParticipant];
        [v12 setObject:v6 forKeyedSubscript:v5];

        v13 = [*(a1 + 32) participantsByCapabilities];
        v14 = [v13 objectForKeyedSubscript:v11];

        if (!v14)
        {
          v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v15 = [*(a1 + 32) participantsByCapabilities];
          [v15 setObject:v14 forKeyedSubscript:v11];
        }

        [v14 addObject:v5];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)fetchCapabilitiesForParticipants:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__MSPSenderIDSStrategy_fetchCapabilitiesForParticipants_completion___block_invoke;
    v7[3] = &unk_279866010;
    v8 = v6;
    [MSPSharedTripReceiverCapabilities fetchReceiverCapabilitiesForDestinations:v5 completion:v7];
  }
}

- (void)_sendCompatibleInstancesOfState:(id)a3 to:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && [v7 count])
  {
    v30 = v8;
    v31 = v6;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          v15 = [(MSPSenderIDSStrategy *)self capabilitiesByParticipant];
          v16 = [v15 objectForKeyedSubscript:v14];

          if (!v16)
          {
            v17 = MSPGetSharedTripLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              if (self)
              {
                v18 = MEMORY[0x277CCACA8];
                v19 = self;
                v20 = [v18 stringWithFormat:@"%@<%p>", objc_opt_class(), v19];
              }

              else
              {
                v20 = @"<nil>";
              }

              *buf = 138543619;
              v43 = v20;
              v44 = 2113;
              v45 = v14;
              _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_FAULT, "[%{public}@] have not yet fetched capabilties for %{private}@", buf, 0x16u);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v11);
    }

    v21 = [(MSPSenderIDSStrategy *)self participantsByCapabilities];
    v22 = [v21 copy];

    v23 = objc_alloc(MEMORY[0x277CBEB38]);
    v24 = [(MSPSenderIDSStrategy *)self participantsByCapabilities];
    v25 = [v23 initWithCapacity:{objc_msgSend(v24, "count")}];

    v26 = self->_groupSession;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __59__MSPSenderIDSStrategy__sendCompatibleInstancesOfState_to___block_invoke;
    v32[3] = &unk_279866038;
    v33 = v9;
    v34 = self;
    v35 = v25;
    v6 = v31;
    v36 = v31;
    v37 = v26;
    v27 = v26;
    v28 = v25;
    [v22 enumerateKeysAndObjectsUsingBlock:v32];

    v8 = v30;
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __59__MSPSenderIDSStrategy__sendCompatibleInstancesOfState_to___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v6 mutableCopy];
  [v8 intersectSet:*(a1 + 32)];
  if ([v8 count])
  {
    v9 = *(*(a1 + 40) + 24);
    v10 = [*(a1 + 48) objectForKeyedSubscript:v5];
    v11 = v10;
    if (v9 == 1)
    {
      if (!v10)
      {
        v11 = [*(a1 + 56) instanceCompatibleWithReceiverCapabilities:v5];
        [*(a1 + 48) setObject:v11 forKeyedSubscript:v5];
      }

      v12 = MSPGetSharedTripVirtualReceiverLog();
      v13 = *(a1 + 40);
      v14 = MEMORY[0x277CCACA8];
      v15 = [v8 allObjects];
      v16 = [v15 componentsJoinedByString:{@", "}];
      v17 = [v14 stringWithFormat:@"TO:(%@)", v16];
      [v11 _msp_logWithCategory:v12 type:1 object:v13 prefix:v17];
    }

    else
    {
      if (!v10)
      {
        v18 = [*(a1 + 56) instanceCompatibleWithReceiverCapabilities:v5];
        v11 = [v18 data];

        [*(a1 + 48) setObject:v11 forKeyedSubscript:v5];
      }

      v19 = *(a1 + 64);
      v20 = [v5 idsSendMessageOptions];
      v27 = 0;
      [v19 sendChunkedMessage:v11 to:v8 options:v20 error:&v27];
      v12 = v27;

      if (v12)
      {
        v21 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = *(a1 + 40);
          if (v22)
          {
            v23 = MEMORY[0x277CCACA8];
            v24 = v22;
            v25 = [v23 stringWithFormat:@"%@<%p>", objc_opt_class(), v24];
          }

          else
          {
            v25 = @"<nil>";
          }

          *buf = 138543618;
          v29 = v25;
          v30 = 2114;
          v31 = v12;
          _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_ERROR, "[%{public}@] error sending compatible state: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  objc_autoreleasePoolPop(v7);
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_sendUpdatedWaypoints:(id)a3 to:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = self;
        v11 = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), v10];
      }

      else
      {
        v11 = @"<nil>";
      }

      *buf = 138543362;
      v39 = v11;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] _sendUpdatedWaypoints", buf, 0xCu);
    }

    v12 = [v6 copy];
    if ([v12 hasWaypointInfos])
    {
      [v12 stripForSendingUpdatedWaypoints];
      v13 = objc_alloc_init(MEMORY[0x277D0ED28]);
      [v12 setSenderInfo:v13];

      v14 = [(MSPSharedTripGroupSession *)self->_groupSession initiatorDisplayName];
      v15 = [v12 senderInfo];
      [v15 setFromDisplayName:v14];

      v16 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = MEMORY[0x277CCACA8];
        v18 = self;
        v19 = [v17 stringWithFormat:@"%@<%p>", objc_opt_class(), v18];

        v20 = [v12 mspDescription];
        *buf = 138543618;
        v39 = v19;
        v40 = 2112;
        v41 = v20;
        _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_INFO, "[%{public}@] will send state %@", buf, 0x16u);
      }

      if ([v6 hasEtaInfo])
      {
        v21 = [v6 etaInfo];
        v22 = [v21 hasEtaTimestamp];

        if (v22)
        {
          v32 = v6;
          v23 = [MEMORY[0x277CBEAA8] date];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v24 = v7;
          v25 = [v24 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v34;
            do
            {
              v28 = 0;
              do
              {
                if (*v34 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v33 + 1) + 8 * v28);
                v30 = [(MSPSenderIDSStrategy *)self lastETAUpdateDates];
                [v30 setObject:v23 forKeyedSubscript:v29];

                ++v28;
              }

              while (v26 != v28);
              v26 = [v24 countByEnumeratingWithState:&v33 objects:v37 count:16];
            }

            while (v26);
          }

          v6 = v32;
        }
      }

      [(MSPSenderIDSStrategy *)self _sendCompatibleInstancesOfState:v12 to:v7];
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_sendDestinationReachedUpdate:(id)a3 to:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = self;
        v11 = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), v10];
      }

      else
      {
        v11 = @"<nil>";
      }

      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] _sendDestinationReachedUpdate", buf, 0xCu);
    }

    v12 = [v6 copy];
    v13 = [v12 destinationWaypointInfo];

    if (v13)
    {
      [v12 stripForSendingArrival];
      v14 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        if (self)
        {
          v15 = MEMORY[0x277CCACA8];
          v16 = self;
          v17 = [v15 stringWithFormat:@"%@<%p>", objc_opt_class(), v16];
        }

        else
        {
          v17 = @"<nil>";
        }

        v18 = [v12 mspDescription];
        *buf = 138543618;
        v21 = v17;
        v22 = 2112;
        v23 = v18;
        _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "[%{public}@] will send state %@", buf, 0x16u);
      }

      [(MSPSenderIDSStrategy *)self _sendCompatibleInstancesOfState:v12 to:v7];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_sendResumingToNextDestinationUpdate:(id)a3 to:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = self;
        v11 = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), v10];
      }

      else
      {
        v11 = @"<nil>";
      }

      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] _sendResumingToNextDestinationUpdate", buf, 0xCu);
    }

    v12 = [v6 copy];
    v13 = [v12 destinationWaypointInfo];

    if (v13)
    {
      [v12 stripForSendingResuming];
      v14 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        if (self)
        {
          v15 = MEMORY[0x277CCACA8];
          v16 = self;
          v17 = [v15 stringWithFormat:@"%@<%p>", objc_opt_class(), v16];
        }

        else
        {
          v17 = @"<nil>";
        }

        v18 = [v12 mspDescription];
        *buf = 138543618;
        v21 = v17;
        v22 = 2112;
        v23 = v18;
        _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "[%{public}@] will send state %@", buf, 0x16u);
      }

      [(MSPSenderIDSStrategy *)self _sendCompatibleInstancesOfState:v12 to:v7];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_sendStoppedUpdate:(id)a3 to:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = self;
        v11 = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), v10];
      }

      else
      {
        v11 = @"<nil>";
      }

      *buf = 138543362;
      v23 = v11;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] _sendStoppedUpdate", buf, 0xCu);
    }

    v12 = [v6 copy];
    if ([v12 hasGroupIdentifier] && objc_msgSend(v12, "hasClosed"))
    {
      [v12 stripForSendingStoppedSharing];
      v13 = objc_alloc_init(MEMORY[0x277D0ED28]);
      [v12 setSenderInfo:v13];

      v14 = [(MSPSharedTripGroupSession *)self->_groupSession initiatorDisplayName];
      v15 = [v12 senderInfo];
      [v15 setFromDisplayName:v14];

      v16 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = MEMORY[0x277CCACA8];
        v18 = self;
        v19 = [v17 stringWithFormat:@"%@<%p>", objc_opt_class(), v18];

        v20 = [v12 mspDescription];
        *buf = 138543618;
        v23 = v19;
        v24 = 2112;
        v25 = v20;
        _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_INFO, "[%{public}@] will send state %@", buf, 0x16u);
      }

      [(MSPSenderIDSStrategy *)self _sendCompatibleInstancesOfState:v12 to:v7];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_sendETAUpdate:(id)a3 to:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = self;
        v11 = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), v10];
      }

      else
      {
        v11 = @"<nil>";
      }

      *buf = 138543362;
      v34 = v11;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] _sendETAUpdate", buf, 0xCu);
    }

    v12 = [v6 copy];
    if ([v12 etaInfosCount])
    {
      [v12 stripForSendingUpdatedETA];
      v13 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        if (self)
        {
          v14 = MEMORY[0x277CCACA8];
          v15 = self;
          v16 = [v14 stringWithFormat:@"%@<%p>", objc_opt_class(), v15];
        }

        else
        {
          v16 = @"<nil>";
        }

        v17 = [v12 mspDescription];
        *buf = 138543619;
        v34 = v16;
        v35 = 2113;
        v36 = v17;
        _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_INFO, "[%{public}@] will send state %{private}@", buf, 0x16u);
      }

      v27 = v6;

      v18 = [MEMORY[0x277CBEAA8] date];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v19 = v7;
      v20 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v29;
        do
        {
          v23 = 0;
          do
          {
            if (*v29 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v28 + 1) + 8 * v23);
            v25 = [(MSPSenderIDSStrategy *)self lastETAUpdateDates];
            [v25 setObject:v18 forKeyedSubscript:v24];

            ++v23;
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v21);
      }

      [(MSPSenderIDSStrategy *)self _sendCompatibleInstancesOfState:v12 to:v19];
      v6 = v27;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_sendRouteUpdate:(id)a3 to:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = self;
        v11 = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), v10];
      }

      else
      {
        v11 = @"<nil>";
      }

      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] _sendRouteUpdate", buf, 0xCu);
    }

    v12 = [v6 copy];
    v13 = [v12 routeInfo];

    if (v13)
    {
      [v12 stripForSendingUpdatedRoute];
      v14 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        if (self)
        {
          v15 = MEMORY[0x277CCACA8];
          v16 = self;
          v17 = [v15 stringWithFormat:@"%@<%p>", objc_opt_class(), v16];
        }

        else
        {
          v17 = @"<nil>";
        }

        v18 = [v12 mspDescription];
        *buf = 138543618;
        v21 = v17;
        v22 = 2112;
        v23 = v18;
        _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "[%{public}@] will send state %@", buf, 0x16u);
      }

      [(MSPSenderIDSStrategy *)self _sendCompatibleInstancesOfState:v12 to:v7];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_sendTrafficUpdate:(id)a3 to:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = self;
        v11 = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), v10];
      }

      else
      {
        v11 = @"<nil>";
      }

      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] _sendTrafficUpdate", buf, 0xCu);
    }

    v12 = [v6 copy];
    v13 = [v12 routeInfo];

    if (v13)
    {
      [v12 stripForSendingUpdatedTraffic];
      v14 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        if (self)
        {
          v15 = MEMORY[0x277CCACA8];
          v16 = self;
          v17 = [v15 stringWithFormat:@"%@<%p>", objc_opt_class(), v16];
        }

        else
        {
          v17 = @"<nil>";
        }

        v18 = [v12 mspDescription];
        *buf = 138543618;
        v21 = v17;
        v22 = 2112;
        v23 = v18;
        _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "[%{public}@] will send state %@", buf, 0x16u);
      }

      [(MSPSenderIDSStrategy *)self _sendCompatibleInstancesOfState:v12 to:v7];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end