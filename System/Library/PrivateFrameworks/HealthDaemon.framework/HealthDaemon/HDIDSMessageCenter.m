@interface HDIDSMessageCenter
+ (id)createPersistentDictionaryWithURL:(id)a3;
- (HDIDSMessageCenter)initWithIDSServiceIdentifier:(id)a3 persistentDictionary:(id)a4 queue:(id)a5 daemon:(id)a6;
- (HDIDSMessageCenterDelegate)delegate;
- (id)_pbMappingForMessageID:(uint64_t)a1;
- (id)deviceForFromID:(id)a3;
- (id)nanoSyncDevices;
- (void)_handleError:(void *)a3 context:;
- (void)_logPrefix;
- (void)_updateExpireTimerWithTimestamp:(uint64_t)a1;
- (void)cancelPendingRequestsWithMessageID:(unsigned __int16)a3 device:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)obliterateWithReason:(id)a3 preserveCopy:(BOOL)a4;
- (void)resume;
- (void)sendRequest:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5;
@end

@implementation HDIDSMessageCenter

- (id)nanoSyncDevices
{
  v2 = [(HDIDSMessageCenter *)self idsService];
  v3 = [v2 devices];

  return v3;
}

- (void)_logPrefix
{
  v1 = a1;
  if (a1)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v1 = [v2 stringWithFormat:@"%@: %@", v4, v1[3]];
  }

  return v1;
}

- (void)resume
{
  v4 = atomic_load(&self->_invalidated);
  if (v4)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HDIDSMessageCenter.m" lineNumber:290 description:{@"Invalid parameter not satisfying: %@", @"atomic_load(&_invalidated) == false"}];
  }

  if (self->_service)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = NSStringFromSelector(a2);
    [v10 handleFailureInMethod:a2 object:self file:@"HDIDSMessageCenter.m" lineNumber:291 description:{@"Cannot use %@ after using -resume", v11}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v6 = [WeakRetained IDSServiceWithIdentifier:self->_serviceIdentifier];
  service = self->_service;
  self->_service = v6;

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__HDIDSMessageCenter_resume__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __28__HDIDSMessageCenter_resume__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) addDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 120)];
  dispatch_source_set_timer(*(*(a1 + 32) + 96), 0, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v2 = *(*(a1 + 32) + 96);

  dispatch_resume(v2);
}

- (id)deviceForFromID:(id)a3
{
  v4 = a3;
  v5 = [(HDIDSMessageCenter *)self idsService];
  v6 = [v5 deviceForFromID:v4];

  if (!v6)
  {
    v7 = [(HDIDSMessageCenter *)self idsService];
    v6 = [v7 linkedDeviceForFromID:v4 withRelationship:2];
  }

  return v6;
}

- (HDIDSMessageCenter)initWithIDSServiceIdentifier:(id)a3 persistentDictionary:(id)a4 queue:(id)a5 daemon:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_8:
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"HDIDSMessageCenter.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"persistentDictionary != nil"}];

    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v33 = [MEMORY[0x277CCA890] currentHandler];
  [v33 handleFailureInMethod:a2 object:self file:@"HDIDSMessageCenter.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"serviceIdentifier != nil"}];

  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_9:
  v35 = [MEMORY[0x277CCA890] currentHandler];
  [v35 handleFailureInMethod:a2 object:self file:@"HDIDSMessageCenter.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"queue != NULL"}];

LABEL_4:
  v39.receiver = self;
  v39.super_class = HDIDSMessageCenter;
  v15 = [(HDIDSMessageCenter *)&v39 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_daemon, v14);
    v17 = [v11 copy];
    serviceIdentifier = v16->_serviceIdentifier;
    v16->_serviceIdentifier = v17;

    v19 = [(NSString *)v16->_serviceIdentifier stringByReplacingOccurrencesOfString:@"com.apple.private.alloy." withString:&stru_283BF39C8];
    shortServiceIdentifier = v16->_shortServiceIdentifier;
    v16->_shortServiceIdentifier = v19;

    objc_storeStrong(&v16->_queue, a5);
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requestHandlers = v16->_requestHandlers;
    v16->_requestHandlers = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    errorHandlers = v16->_errorHandlers;
    v16->_errorHandlers = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    responseHandlers = v16->_responseHandlers;
    v16->_responseHandlers = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pbMapping = v16->_pbMapping;
    v16->_pbMapping = v27;

    objc_storeStrong(&v16->_persistentContextStore, a4);
    objc_initWeak(&location, v16);
    v29 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v16->_queue);
    expireTimer = v16->_expireTimer;
    v16->_expireTimer = v29;

    v31 = v16->_expireTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __85__HDIDSMessageCenter_initWithIDSServiceIdentifier_persistentDictionary_queue_daemon___block_invoke;
    handler[3] = &unk_278616F38;
    objc_copyWeak(&v37, &location);
    dispatch_source_set_event_handler(v31, handler);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __85__HDIDSMessageCenter_initWithIDSServiceIdentifier_persistentDictionary_queue_daemon___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[15]);
    Current = CFAbsoluteTimeGetCurrent();
    v2 = [MEMORY[0x277CBEB18] array];
    v3 = WeakRetained[10];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __37__HDIDSMessageCenter__expireMessages__block_invoke;
    v25[3] = &unk_27862AF18;
    v27 = sel__expireMessages;
    v25[4] = WeakRetained;
    v28 = Current;
    v4 = v2;
    v26 = v4;
    [v3 enumerateObjectsSortedByExpirationDate:v25];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v33 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v22;
      v10 = MEMORY[0x277CCC328];
      *&v7 = 138412546;
      v18 = v7;
      v19 = v5;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HDIDSErrorDomain" code:2 userInfo:{0, v18}];
          _HKInitializeLogging();
          v14 = *v10;
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
          {
            v15 = v14;
            v16 = [(HDIDSMessageCenter *)WeakRetained _logPrefix];
            *buf = v18;
            v30 = v16;
            v31 = 2112;
            v32 = v12;
            _os_log_debug_impl(&dword_228986000, v15, OS_LOG_TYPE_DEBUG, "%@ expire: %@", buf, 0x16u);

            v5 = v19;
          }

          [(HDIDSMessageCenter *)WeakRetained _handleError:v13 context:v12];

          ++v11;
        }

        while (v8 != v11);
        v8 = [v5 countByEnumeratingWithState:&v21 objects:v33 count:16];
      }

      while (v8);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(HDIDSMessageCenter *)self invalidate];
  v3.receiver = self;
  v3.super_class = HDIDSMessageCenter;
  [(HDIDSMessageCenter *)&v3 dealloc];
}

- (void)invalidate
{
  if ((atomic_exchange(&self->_invalidated, 1u) & 1) == 0)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__HDIDSMessageCenter_invalidate__block_invoke;
    block[3] = &unk_278613968;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

void __32__HDIDSMessageCenter_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeDelegate:?];
  [*(*(a1 + 32) + 80) invalidate];
  dispatch_source_cancel(*(*(a1 + 32) + 96));
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  *(v2 + 96) = 0;
}

- (void)obliterateWithReason:(id)a3 preserveCopy:(BOOL)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HDIDSMessageCenter_obliterateWithReason_preserveCopy___block_invoke;
  block[3] = &unk_27861F830;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(queue, block);
}

+ (id)createPersistentDictionaryWithURL:(id)a3
{
  v3 = a3;
  v4 = [[HDIDSPersistentDictionary alloc] initWithURL:v3 objectClass:objc_opt_class()];

  return v4;
}

- (id)_pbMappingForMessageID:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 72);
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a2];
    v4 = [v2 objectForKeyedSubscript:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __37__HDIDSMessageCenter__expireMessages__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4, double a5)
{
  v13 = a2;
  v9 = a3;
  if (v13)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_11:
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"HDIDSMessageCenter.m" lineNumber:258 description:{@"Invalid parameter not satisfying: %@", @"obj != nil"}];

    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v10 = [MEMORY[0x277CCA890] currentHandler];
  [v10 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"HDIDSMessageCenter.m" lineNumber:257 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (a4)
  {
    goto LABEL_4;
  }

LABEL_12:
  v12 = [MEMORY[0x277CCA890] currentHandler];
  [v12 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"HDIDSMessageCenter.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"stop != NULL"}];

LABEL_4:
  if (*(a1 + 56) <= a5)
  {
    [(HDIDSMessageCenter *)*(a1 + 32) _updateExpireTimerWithTimestamp:a5];
    *a4 = 1;
  }

  else
  {
    [*(a1 + 40) addObject:v9];
  }
}

- (void)_updateExpireTimerWithTimestamp:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 88);
    if (v4 == 0.0 || v4 > a2)
    {
      v6 = a2 - CFAbsoluteTimeGetCurrent();
      if (v6 < 0.0)
      {
        v6 = 0.0;
      }

      v7 = *(a1 + 96);
      v8 = dispatch_time(0, (v6 * 1000000000.0));
      dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      *(a1 + 88) = a2;
    }
  }
}

- (void)_handleError:(void *)a3 context:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 120));
    if (v6)
    {
      if (v6[2])
      {
        [*(a1 + 80) removeObjectForKey:?];
        [*(a1 + 80) didReceiveError:v5 forMessageID:v6[2]];
      }

      v7 = *(v6 + 5);
    }

    else
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:sel__handleError_context_ object:a1 file:@"HDIDSMessageCenter.m" lineNumber:517 description:{@"Invalid parameter not satisfying: %@", @"context"}];

      v7 = 0;
    }

    v8 = *(a1 + 56);
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v7];
    v10 = [v8 objectForKey:v9];

    if (v10)
    {
      v11 = [v5 userInfo];
      v12 = [v11 mutableCopy];

      [v12 setObject:v6 forKey:@"HDIDSContext"];
      v13 = MEMORY[0x277CCA9B8];
      v14 = [v5 domain];
      v15 = [v13 errorWithDomain:v14 code:objc_msgSend(v5 userInfo:{"code"), v12}];

      v18 = 0;
      [v10 getValue:&v18];
      WeakRetained = objc_loadWeakRetained((a1 + 112));
      [WeakRetained performSelector:v18 withObject:v15];
    }
  }
}

- (void)sendRequest:(id)a3
{
  v5 = a3;
  v6 = [v5 toParticipant];

  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HDIDSMessageCenter.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"request.toParticipant != nil"}];
  }

  v7 = [v5 idsIdentifier];

  if (v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HDIDSMessageCenter.m" lineNumber:320 description:@"You cannot call sendRequest twice for the same request object"];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HDIDSMessageCenter_sendRequest___block_invoke;
  block[3] = &unk_278614E78;
  v13 = v5;
  v14 = a2;
  block[4] = self;
  v9 = v5;
  dispatch_async(queue, block);
}

void __34__HDIDSMessageCenter_sendRequest___block_invoke(uint64_t a1)
{
  v90[1] = *MEMORY[0x277D85DE8];
  v1 = atomic_load((*(a1 + 32) + 104));
  if (v1)
  {
    goto LABEL_48;
  }

  if (!*(*(a1 + 32) + 40))
  {
    v65 = [MEMORY[0x277CCA890] currentHandler];
    v66 = *(a1 + 48);
    v67 = *(a1 + 32);
    v68 = NSStringFromSelector(v66);
    [v65 handleFailureInMethod:v66 object:v67 file:@"HDIDSMessageCenter.m" lineNumber:326 description:{@"Cannot use %@ until -resume is used", v68}];
  }

  v73 = [*(a1 + 40) messageID];
  v74 = [*(a1 + 40) priority];
  v3 = MEMORY[0x277CBEB28];
  v4 = [*(a1 + 40) data];
  v5 = [v3 dataWithCapacity:{objc_msgSend(v4, "length") + 3}];

  [v5 appendBytes:&v73 length:3];
  v6 = [*(a1 + 40) data];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [*(a1 + 40) data];
    [v5 appendData:v8];
  }

  v9 = [*(a1 + 40) priority];
  if (v9 > 2)
  {
    v10 = 200;
  }

  else
  {
    v10 = qword_229181498[v9];
  }

  v11 = [MEMORY[0x277CBEB38] dictionary];
  [*(a1 + 40) sendTimeout];
  if (v12 > 0.0)
  {
    v13 = MEMORY[0x277CCABB0];
    [*(a1 + 40) sendTimeout];
    v14 = [v13 numberWithDouble:?];
    [v11 setObject:v14 forKeyedSubscript:*MEMORY[0x277D18650]];
  }

  if ([*(a1 + 40) doNotCompress])
  {
    [v11 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D18590]];
  }

  if ([*(a1 + 40) forceLocalDelivery])
  {
    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185D0]];
  }

  if ([*(a1 + 40) queueOnly1])
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%hu", objc_msgSend(*(a1 + 40), "messageID")];
    [v11 setObject:v15 forKeyedSubscript:*MEMORY[0x277D18630]];
  }

  v16 = *(*(a1 + 32) + 64);
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(*(a1 + 40), "messageID")}];
  v18 = [v16 objectForKey:v17];

  v19 = *(*(a1 + 32) + 56);
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(*(a1 + 40), "messageID")}];
  *&v69 = [v19 objectForKey:v20];

  *(&v69 + 1) = v18;
  if (v18)
  {
    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185B0]];
  }

  if ([*(a1 + 40) nonWaking])
  {
    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18600]];
  }

  v21 = [*(a1 + 40) toParticipant];
  v22 = [v21 destinationIdentifier];

  v23 = [*(a1 + 40) toParticipant];
  v24 = [v23 deviceIdentifier];

  v70 = v5;
  if (!v22)
  {
    v36 = MEMORY[0x277CCACA8];
    v37 = [*(a1 + 40) toParticipant];
    v38 = [v37 description];
    v39 = [v36 stringWithFormat:@"missing destination device identifer for %@", v38];

    v89 = *MEMORY[0x277CCA450];
    v90[0] = v39;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:&v89 count:1];
    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HDIDSErrorDomain" code:3 userInfo:v40];

    v27 = 0;
    goto LABEL_27;
  }

  v25 = *(*(a1 + 32) + 40);
  v26 = [MEMORY[0x277CBEB98] setWithObject:v22];
  v71 = 0;
  v72 = 0;
  LOBYTE(v25) = [v25 sendData:v5 toDestinations:v26 priority:v10 options:v11 identifier:&v72 error:&v71];
  v27 = v72;
  v28 = v71;

  if ((v25 & 1) == 0)
  {
LABEL_27:
    _HKInitializeLogging();
    v41 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v59 = *(a1 + 32);
      v60 = v41;
      v61 = [(HDIDSMessageCenter *)v59 _logPrefix];
      v62 = [*(a1 + 40) messageID];
      v63 = HDStringFromHDIDSPriority([*(a1 + 40) priority]);
      v64 = [v70 length];
      *buf = 138544898;
      v76 = v61;
      v77 = 2114;
      v78 = v27;
      v79 = 1024;
      v80 = v62;
      v81 = 2114;
      v82 = v63;
      v83 = 2114;
      v84 = v22;
      v85 = 2048;
      v86 = v64;
      v87 = 2114;
      v88 = v28;
      _os_log_error_impl(&dword_228986000, v60, OS_LOG_TYPE_ERROR, "%{public}@ outgoing request %{public}@ messageID:%u pri:%{public}@ to %{public}@ (%tu bytes) error: %{public}@", buf, 0x44u);
    }

    v35 = 0;
    goto LABEL_30;
  }

  _HKInitializeLogging();
  v29 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 32);
    v31 = v29;
    v32 = [(HDIDSMessageCenter *)v30 _logPrefix];
    LODWORD(v30) = [*(a1 + 40) messageID];
    v33 = HDStringFromHDIDSPriority([*(a1 + 40) priority]);
    v34 = [v70 length];
    *buf = 138544642;
    v76 = v32;
    v77 = 2114;
    v78 = v27;
    v79 = 1024;
    v80 = v30;
    v81 = 2114;
    v82 = v33;
    v83 = 2114;
    v84 = v22;
    v85 = 2048;
    v86 = v34;
    _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ outgoing request %{public}@ messageID:%u pri:%{public}@ to %{public}@ (%tu bytes)", buf, 0x3Au);
  }

  v35 = 1;
LABEL_30:
  v42 = objc_alloc_init(HDIDSMessagePersistentContext);
  v43 = [*(a1 + 40) messageID];
  if (v42)
  {
    v42->_messageID = v43;
    objc_setProperty_nonatomic_copy(v42, v44, v27, 16);
    objc_setProperty_nonatomic_copy(v42, v45, v24, 24);
    v46 = [*(a1 + 40) persistentUserInfo];
    objc_storeStrong(&v42->_userInfo, v46);

    v47 = [MEMORY[0x277CBEAA8] date];
    objc_storeStrong(&v42->_date, v47);

    v42->_fromRequest = 1;
  }

  else
  {
    [*(a1 + 40) persistentUserInfo];

    [MEMORY[0x277CBEAA8] date];
  }

  v48 = *(a1 + 40);
  if (v48)
  {
    objc_storeWeak((v48 + 72), *(a1 + 32));
    v50 = *(a1 + 40);
    if (v50)
    {
      objc_setProperty_nonatomic_copy(v50, v49, v27, 32);
    }
  }

  if (v27)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
    v52 = objc_opt_respondsToSelector();

    if (v52)
    {
      v53 = objc_loadWeakRetained((*(a1 + 32) + 112));
      [v53 messageCenter:*(a1 + 32) didResolveIDSIdentifierForRequest:*(a1 + 40)];
    }

    [*(*(a1 + 32) + 80) didSendRequest:v27 deviceID:v24 type:objc_msgSend(*(a1 + 40) length:{"messageID"), objc_msgSend(v70, "length")}];
    if (v35)
    {
      if (v69 != 0)
      {
        Current = CFAbsoluteTimeGetCurrent();
        [*(a1 + 40) responseTimeout];
        if (v55 <= 0.0)
        {
          v56 = 3600.0;
        }

        else
        {
          [*(a1 + 40) responseTimeout];
        }

        v57 = Current + v56;
        [*(*(a1 + 32) + 80) setObject:v42 forKey:v27 expires:v57];
        [(HDIDSMessageCenter *)*(a1 + 32) _updateExpireTimerWithTimestamp:v57];
      }
    }

    else
    {
      [(HDIDSMessageCenter *)*(a1 + 32) _handleError:v28 context:v42];
      [*(*(a1 + 32) + 80) didReceiveError:v28 forMessageID:v27];
    }
  }

  else if ((v35 & 1) == 0)
  {
    [(HDIDSMessageCenter *)*(a1 + 32) _handleError:v28 context:v42];
  }

LABEL_48:
  v58 = *MEMORY[0x277D85DE8];
}

void __36__HDIDSMessageCenter__sendResponse___block_invoke(uint64_t a1)
{
  v103[1] = *MEMORY[0x277D85DE8];
  v1 = atomic_load((*(a1 + 32) + 104));
  if ((v1 & 1) == 0)
  {
    if (!*(*(a1 + 32) + 40))
    {
      v73 = [MEMORY[0x277CCA890] currentHandler];
      v74 = *(a1 + 56);
      v75 = *(a1 + 32);
      v76 = NSStringFromSelector(v74);
      [v73 handleFailureInMethod:v74 object:v75 file:@"HDIDSMessageCenter.m" lineNumber:435 description:{@"Cannot use %@ until -resume is used", v76}];
    }

    v85 = *(a1 + 64);
    v3 = MEMORY[0x277CBEB28];
    v4 = [*(a1 + 40) data];
    v5 = [v3 dataWithCapacity:{objc_msgSend(v4, "length") + 2}];

    [v5 appendBytes:&v85 length:2];
    v6 = [*(a1 + 40) data];
    v7 = [v6 length];

    if (v7)
    {
      v8 = [*(a1 + 40) data];
      [v5 appendData:v8];
    }

    v9 = [*(a1 + 40) priority];
    if (v9 > 2)
    {
      v10 = 200;
    }

    else
    {
      v10 = qword_229181498[v9];
    }

    v11 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 40) sendTimeout];
    if (v12 > 0.0)
    {
      v13 = MEMORY[0x277CCABB0];
      [*(a1 + 40) sendTimeout];
      v14 = [v13 numberWithDouble:?];
      [v11 setObject:v14 forKeyedSubscript:*MEMORY[0x277D18650]];
    }

    [v11 setObject:*(a1 + 48) forKeyedSubscript:*MEMORY[0x277D18610]];
    if ([*(a1 + 40) doNotCompress])
    {
      [v11 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D18590]];
    }

    if ([*(a1 + 40) forceLocalDelivery])
    {
      [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185D0]];
    }

    v15 = *(*(a1 + 32) + 56);
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 64)];
    v81 = [v15 objectForKey:v16];

    v17 = [*(a1 + 40) toParticipant];
    v18 = [v17 destinationIdentifier];

    v19 = [*(a1 + 40) toParticipant];
    v20 = [v19 deviceIdentifier];

    v82 = v5;
    if (v18)
    {
      v21 = *(*(a1 + 32) + 40);
      v22 = [MEMORY[0x277CBEB98] setWithObject:v18];
      v83 = 0;
      v84 = 0;
      v23 = [v21 sendData:v5 toDestinations:v22 priority:v10 options:v11 identifier:&v84 error:&v83];
      v24 = v84;
      v25 = v83;

      if (v23)
      {
        _HKInitializeLogging();
        v26 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(a1 + 32);
          v29 = v26;
          v30 = [(HDIDSMessageCenter *)v28 _logPrefix];
          v31 = *(a1 + 64);
          v32 = v11;
          v33 = v18;
          v34 = v25;
          v35 = *(a1 + 48);
          HDStringFromHDIDSPriority([*(a1 + 40) priority]);
          v36 = loga = v20;
          v37 = [v82 length];
          *buf = 138544898;
          v87 = v30;
          v88 = 2114;
          v89 = v24;
          v90 = 2114;
          v91 = v35;
          v25 = v34;
          v18 = v33;
          v11 = v32;
          v92 = 1024;
          v93 = v31;
          v94 = 2114;
          v95 = v36;
          v96 = 2114;
          v97 = v18;
          v98 = 2048;
          v99 = v37;
          _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ outgoing response %{public}@ to request %{public}@ messageID:%u pri:%{public}@ to %{public}@ (%tu bytes)", buf, 0x44u);

          v20 = loga;
        }

        v38 = 1;
        goto LABEL_24;
      }
    }

    else
    {
      v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"missing device identifer in request %@", *(a1 + 48)];
      v102 = *MEMORY[0x277CCA450];
      v103[0] = v39;
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:&v102 count:1];
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HDIDSErrorDomain" code:3 userInfo:v40];

      v24 = 0;
    }

    _HKInitializeLogging();
    v41 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v66 = *(a1 + 32);
      logb = v41;
      v67 = [(HDIDSMessageCenter *)v66 _logPrefix];
      v68 = *(a1 + 64);
      v69 = v20;
      v70 = *(a1 + 48);
      v71 = HDStringFromHDIDSPriority([*(a1 + 40) priority]);
      v72 = [v82 length];
      *buf = 138545154;
      v87 = v67;
      v88 = 2114;
      v89 = v24;
      v90 = 2114;
      v91 = v70;
      v20 = v69;
      v92 = 1024;
      v93 = v68;
      v94 = 2114;
      v95 = v71;
      v96 = 2114;
      v97 = v18;
      v98 = 2048;
      v99 = v72;
      v100 = 2114;
      v101 = v25;
      _os_log_error_impl(&dword_228986000, logb, OS_LOG_TYPE_ERROR, "%{public}@ outgoing response %{public}@ to request %{public}@ messageID:%u pri:%{public}@ to %{public}@ (%tu bytes) error: %{public}@", buf, 0x4Eu);
    }

    v38 = 0;
LABEL_24:
    v42 = *(a1 + 40);
    if (v42)
    {
      objc_setProperty_nonatomic_copy(v42, v27, v24, 48);
    }

    v43 = objc_alloc_init(HDIDSMessagePersistentContext);
    v45 = v43;
    if (v43)
    {
      v43->_messageID = *(a1 + 64);
      objc_setProperty_nonatomic_copy(v43, v44, v24, 16);
      v46 = v20;
      objc_setProperty_nonatomic_copy(v45, v47, v20, 24);
      v48 = [*(a1 + 40) persistentUserInfo];
      objc_storeStrong(&v45->_userInfo, v48);

      v49 = [MEMORY[0x277CBEAA8] date];
      objc_storeStrong(&v45->_date, v49);

      v45->_fromRequest = 0;
      if (v24)
      {
LABEL_28:
        log = v11;
        v50 = v18;
        v51 = v25;
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
        v53 = objc_opt_respondsToSelector();

        if (v53)
        {
          v54 = objc_loadWeakRetained((*(a1 + 32) + 112));
          [v54 messageCenter:*(a1 + 32) didResolveIDSIdentifierForResponse:*(a1 + 40)];
        }

        v55 = *(*(a1 + 32) + 80);
        v56 = *(a1 + 48);
        v57 = *(a1 + 66);
        v58 = [v82 length];
        v59 = v55;
        v60 = v46;
        [v59 didSendResponse:v24 toRequest:v56 deviceID:v46 type:v57 length:v58];
        if (v38)
        {
          v61 = v82;
          v25 = v51;
          v18 = v50;
          v11 = log;
          if (v81)
          {
            [*(a1 + 40) sendTimeout];
            if (v62 <= 0.0)
            {
              v64 = 3600.0;
            }

            else
            {
              [*(a1 + 40) sendTimeout];
              v64 = v63;
            }

            v65 = v64 + CFAbsoluteTimeGetCurrent();
            [*(*(a1 + 32) + 80) setObject:v45 forKey:v24 expires:v65];
            [(HDIDSMessageCenter *)*(a1 + 32) _updateExpireTimerWithTimestamp:v65];
          }
        }

        else
        {
          v25 = v51;
          [(HDIDSMessageCenter *)*(a1 + 32) _handleError:v51 context:v45];
          [*(*(a1 + 32) + 80) didReceiveError:v51 forMessageID:v24];
          v61 = v82;
          v18 = v50;
          v11 = log;
        }

LABEL_40:

        goto LABEL_41;
      }
    }

    else
    {
      v46 = v20;
      [*(a1 + 40) persistentUserInfo];

      [MEMORY[0x277CBEAA8] date];
      if (v24)
      {
        goto LABEL_28;
      }
    }

    v60 = v46;
    v61 = v82;
    if ((v38 & 1) == 0)
    {
      [(HDIDSMessageCenter *)*(a1 + 32) _handleError:v25 context:v45];
    }

    goto LABEL_40;
  }

LABEL_41:
  v77 = *MEMORY[0x277D85DE8];
}

- (void)cancelPendingRequestsWithMessageID:(unsigned __int16)a3 device:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HDIDSMessageCenter.m" lineNumber:542 description:{@"Invalid parameter not satisfying: %@", @"device != nil"}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HDIDSMessageCenter_cancelPendingRequestsWithMessageID_device___block_invoke;
  block[3] = &unk_27862AF68;
  v12 = v7;
  v13 = a2;
  v14 = a3;
  block[4] = self;
  v9 = v7;
  dispatch_async(queue, block);
}

void __64__HDIDSMessageCenter_cancelPendingRequestsWithMessageID_device___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = atomic_load((*(a1 + 32) + 104));
  if ((v1 & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (!*(v3 + 40))
    {
      v23 = [MEMORY[0x277CCA890] currentHandler];
      v24 = *(a1 + 48);
      v25 = *(a1 + 32);
      v26 = NSStringFromSelector(v24);
      [v23 handleFailureInMethod:v24 object:v25 file:@"HDIDSMessageCenter.m" lineNumber:548 description:{@"Cannot use %@ until -resume is used", v26}];

      v3 = *(a1 + 32);
    }

    v4 = *(v3 + 80);
    v5 = *(a1 + 56);
    v6 = [*(a1 + 40) hd_deviceIdentifier];
    v7 = [v4 messageIDsForPendingOutgoingMessagesWithType:v5 deviceID:v6];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      v12 = MEMORY[0x277CCC328];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          v15 = *(*(a1 + 32) + 40);
          v27 = 0;
          v16 = [v15 cancelIdentifier:v14 error:&v27];
          v17 = v27;
          if ((v16 & 1) == 0)
          {
            _HKInitializeLogging();
            v18 = *v12;
            if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
            {
              v19 = *(a1 + 32);
              v20 = v18;
              v21 = [(HDIDSMessageCenter *)v19 _logPrefix];
              *buf = 138543874;
              v33 = v21;
              v34 = 2114;
              v35 = v14;
              v36 = 2114;
              v37 = v17;
              _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%{public}@ failed to cancel request %{public}@: %{public}@", buf, 0x20u);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v10);
    }

    [*(*(a1 + 32) + 80) didCancel:v8];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v17 = a5;
  v10 = a7;
  dispatch_assert_queue_V2(self->_queue);
  v11 = atomic_load(&self->_invalidated);
  if ((v11 & 1) == 0)
  {
    v12 = [(HDIDSPersistentDictionary *)self->_persistentContextStore objectForKey:v17];
    v13 = v12;
    if (v12)
    {
      if (a6)
      {
        if (*(v12 + 8) != 1 || (responseHandlers = self->_responseHandlers, [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v12 + 10)], v15 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](responseHandlers, "objectForKey:", v15), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, !v16))
        {
          [(HDIDSPersistentDictionary *)self->_persistentContextStore removeObjectForKey:v17];
        }

        [(HDIDSPersistentDictionary *)self->_persistentContextStore didFinishSending:v13[2]];
      }

      else
      {
        if (!v10)
        {
          v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HDIDSErrorDomain" code:3 userInfo:0];
        }

        [(HDIDSPersistentDictionary *)self->_persistentContextStore didReceiveError:v10 forMessageID:v13[2]];
        [(HDIDSMessageCenter *)self _handleError:v10 context:v13];
      }
    }
  }
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v129 = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = a6;
  v14 = a7;
  queue = self->_queue;
  v16 = a3;
  dispatch_assert_queue_V2(queue);
  service = self->_service;

  if (service == v16)
  {
    v18 = [(HDIDSMessageCenter *)self deviceForFromID:v13];
    v19 = [HDIDSParticipant alloc];
    v119 = v18;
    if (v18)
    {
      v20 = [(HDIDSParticipant *)v19 initWithDevice:v18];
    }

    else
    {
      v20 = [(HDIDSParticipant *)v19 initWithIdentifier:v13];
    }

    v21 = v20;
    v22 = [(HDIDSParticipant *)v20 deviceIdentifier];
    v23 = [v14 incomingResponseIdentifier];

    v24 = [v12 length];
    if (v23)
    {
      if (v24 >= 2)
      {
        v115 = v22;
        v113 = *[v12 bytes];
        obj = [v12 subdataWithRange:{2, objc_msgSend(v12, "length") - 2}];
        persistentContextStore = self->_persistentContextStore;
        v26 = [v14 incomingResponseIdentifier];
        v27 = [(HDIDSPersistentDictionary *)persistentContextStore objectForKey:v26];

        _HKInitializeLogging();
        v28 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v107 = v21;
          v29 = [(HDIDSMessageCenter *)self _logPrefix];
          v30 = [v14 incomingResponseIdentifier];
          if (v27)
          {
            v31 = *(v27 + 16);
          }

          else
          {
            v31 = 0;
          }

          v32 = v31;
          *buf = 138544642;
          v122 = v29;
          v123 = 2114;
          *v124 = v30;
          *&v124[8] = 2114;
          *&v124[10] = v31;
          *&v124[18] = 1024;
          *&v124[20] = v113;
          v125 = 2114;
          v126 = v13;
          v127 = 2048;
          v128 = [v12 length];
          _os_log_impl(&dword_228986000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ incoming response %{public}@ to request %{public}@ messageID:%u from %{public}@ (%tu bytes)", buf, 0x3Au);

          v21 = v107;
        }

        if (v27)
        {
          v111 = v13;
          v33 = self->_persistentContextStore;
          v34 = [v14 outgoingResponseIdentifier];
          v35 = *(v27 + 16);
          -[HDIDSPersistentDictionary didReceiveResponse:toRequest:deviceID:type:length:](v33, "didReceiveResponse:toRequest:deviceID:type:length:", v34, v35, v115, v113, [v12 length]);

          v36 = self->_persistentContextStore;
          v37 = [v14 incomingResponseIdentifier];
          [(HDIDSPersistentDictionary *)v36 removeObjectForKey:v37];

          if (*(v27 + 10) != v113)
          {
            _HKInitializeLogging();
            v38 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              v95 = v38;
              v96 = [(HDIDSMessageCenter *)self _logPrefix];
              v97 = *(v27 + 10);
              v98 = [v14 incomingResponseIdentifier];
              *buf = 138544130;
              v122 = v96;
              v123 = 1024;
              *v124 = v113;
              *&v124[4] = 1024;
              *&v124[6] = v97;
              *&v124[10] = 2114;
              *&v124[12] = v98;
              _os_log_error_impl(&dword_228986000, v95, OS_LOG_TYPE_ERROR, "%{public}@ unexpected message ID (%u != %u) for message %{public}@", buf, 0x22u);
            }
          }

          if ((*(v27 + 8) & 1) == 0)
          {
            _HKInitializeLogging();
            v39 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              v99 = v39;
              v100 = [(HDIDSMessageCenter *)self _logPrefix];
              v101 = *(v27 + 16);
              *buf = 138543618;
              v122 = v100;
              v123 = 2114;
              *v124 = v101;
              _os_log_error_impl(&dword_228986000, v99, OS_LOG_TYPE_ERROR, "%{public}@ unexpected response %{public}@", buf, 0x16u);
            }
          }

          responseHandlers = self->_responseHandlers;
          v41 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v27 + 10)];
          v42 = [(NSMutableDictionary *)responseHandlers objectForKey:v41];

          v13 = v111;
          if (v42)
          {
            aSelector = 0;
            [v42 getValue:&aSelector];
            v43 = objc_alloc_init(HDIDSIncomingResponse);
            v44 = v43;
            if (v43)
            {
              objc_storeWeak(&v43->_messageCenter, self);
              objc_storeStrong(&v44->_fromParticipant, v21);
              v44->_messageID = *(v27 + 10);
              objc_storeStrong(&v44->_data, obj);
            }

            v110 = [(HDIDSMessageCenter *)self _pbMappingForMessageID:?];
            if (v110)
            {
              v45 = v110[2];
              if (v45)
              {
                v46 = v21;
                v47 = [[v45 alloc] initWithData:obj];
                v48 = v47;
                if (v44)
                {
                  objc_storeStrong(&v44->_pbResponse, v47);
                }

                v21 = v46;
              }
            }

            v49 = [v14 outgoingResponseIdentifier];
            v51 = v49;
            if (v44)
            {
              objc_setProperty_nonatomic_copy(v44, v50, v49, 32);

              objc_setProperty_nonatomic_copy(v44, v52, *(v27 + 16), 40);
              objc_storeStrong(&v44->_requestSent, *(v27 + 40));
              objc_storeStrong(&v44->_requestPersistentUserInfo, *(v27 + 32));
            }

            else
            {
            }

            _HKInitializeLogging();
            v53 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
            {
              log = v53;
              v105 = [(HDIDSMessageCenter *)self _logPrefix];
              [v14 outgoingResponseIdentifier];
              v89 = v108 = v21;
              v90 = NSStringFromSelector(aSelector);
              *buf = 138413058;
              v122 = v105;
              v123 = 2112;
              *v124 = v89;
              *&v124[8] = 1024;
              *&v124[10] = v113;
              *&v124[14] = 2112;
              *&v124[16] = v90;
              _os_log_debug_impl(&dword_228986000, log, OS_LOG_TYPE_DEBUG, "%@ dispatching incoming response %@ with message id %u to '%@'", buf, 0x26u);

              v21 = v108;
            }

            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            [WeakRetained performSelector:aSelector withObject:v44];
          }

          else
          {
            _HKInitializeLogging();
            v83 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              v102 = v83;
              v103 = [(HDIDSMessageCenter *)self _logPrefix];
              *buf = 138543618;
              v122 = v103;
              v123 = 1024;
              *v124 = v113;
              _os_log_error_impl(&dword_228986000, v102, OS_LOG_TYPE_ERROR, "%{public}@ no registered response handler for message: %hu", buf, 0x12u);
            }
          }
        }

        else
        {
          _HKInitializeLogging();
          v79 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v80 = v79;
            v81 = [(HDIDSMessageCenter *)self _logPrefix];
            v82 = [v14 incomingResponseIdentifier];
            *buf = 138543874;
            v122 = v81;
            v123 = 1024;
            *v124 = v113;
            *&v124[4] = 2114;
            *&v124[6] = v82;
            _os_log_impl(&dword_228986000, v80, OS_LOG_TYPE_DEFAULT, "%{public}@ could not find context for message: %hu identifier %{public}@", buf, 0x1Cu);
          }

          v27 = 0;
        }

        v22 = v115;
        goto LABEL_56;
      }

LABEL_57:

      goto LABEL_58;
    }

    if (v24 < 3)
    {
      goto LABEL_57;
    }

    v55 = [v12 bytes];
    v56 = *v55;
    v114 = *(v55 + 2);
    _HKInitializeLogging();
    v57 = *MEMORY[0x277CCC328];
    v116 = v22;
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      obja = v57;
      v112 = [(HDIDSMessageCenter *)self _logPrefix];
      v58 = [v14 outgoingResponseIdentifier];
      HDStringFromHDIDSPriority(v114);
      v60 = v59 = v21;
      *buf = 138544642;
      v122 = v112;
      v123 = 2114;
      *v124 = v58;
      *&v124[8] = 1024;
      *&v124[10] = v56;
      *&v124[14] = 2114;
      *&v124[16] = v60;
      v125 = 2114;
      v126 = v13;
      v127 = 2048;
      v128 = [v12 length];
      _os_log_impl(&dword_228986000, obja, OS_LOG_TYPE_DEFAULT, "%{public}@ incoming request %{public}@ messageID:%u pri:%{public}@ from %{public}@ (%tu bytes)", buf, 0x3Au);

      v21 = v59;
      v22 = v116;
    }

    v61 = self->_persistentContextStore;
    v62 = [v14 outgoingResponseIdentifier];
    -[HDIDSPersistentDictionary didReceiveRequest:deviceID:type:length:](v61, "didReceiveRequest:deviceID:type:length:", v62, v22, v56, [v12 length]);

    v63 = objc_alloc_init(HDIDSIncomingRequest);
    v64 = v63;
    if (v63)
    {
      objc_storeWeak(&v63->_messageCenter, self);
      objc_storeStrong(&v64->_fromParticipant, v21);
      v64->_messageID = v56;
    }

    obj = v64;
    if ([v14 expectsPeerResponse])
    {
      v65 = [v14 outgoingResponseIdentifier];

      if (!v65)
      {
        v66 = [MEMORY[0x277CCA890] currentHandler];
        [v66 handleFailureInMethod:a2 object:self file:@"HDIDSMessageCenter.m" lineNumber:684 description:@"*** IDS BUG! idsContext must have an outgoingResponseIdentifier or expectsPeerResponse must be false."];
      }
    }

    v67 = [v14 outgoingResponseIdentifier];
    v69 = v67;
    if (obj)
    {
      objc_setProperty_nonatomic_copy(obj, v68, v67, 32);

      *(obj + 6) = v114;
      *(obj + 16) = [v14 expectsPeerResponse];
    }

    else
    {

      [v14 expectsPeerResponse];
    }

    v70 = [v12 subdataWithRange:{3, objc_msgSend(v12, "length") - 3}];
    if (obj)
    {
      objc_storeStrong(obj + 5, v70);

      v71 = objc_alloc_init(HDIDSOutgoingResponse);
      v72 = v71;
      if (v71)
      {
        v71->_messageID = *(obj + 9);
        [(HDIDSOutgoingResponse *)v71 setPriority:*(obj + 6)];
        objc_storeStrong(&v72->_toParticipant, *(obj + 3));
        objc_setProperty_nonatomic_copy(v72, v73, *(obj + 4), 48);
        v74 = objc_loadWeakRetained(obj + 8);
        objc_storeStrong(&v72->_messageCenter, v74);

        v72->_requestMessageID = *(obj + 9);
      }

      else
      {
        [0 setPriority:*(obj + 6)];
      }

      v70 = *(obj + 7);
      *(obj + 7) = v72;
    }

    requestHandlers = self->_requestHandlers;
    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v56];
    v27 = [(NSMutableDictionary *)requestHandlers objectForKeyedSubscript:v76];

    if (v27)
    {
      aSelector = 0;
      [v27 getValue:&aSelector];
      _HKInitializeLogging();
      v77 = *MEMORY[0x277CCC328];
      v22 = v116;
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
      {
        v91 = v77;
        v92 = [(HDIDSMessageCenter *)self _logPrefix];
        v93 = [v14 outgoingResponseIdentifier];
        NSStringFromSelector(aSelector);
        v94 = v109 = v21;
        *buf = 138413058;
        v122 = v92;
        v123 = 2112;
        *v124 = v93;
        *&v124[8] = 1024;
        *&v124[10] = v56;
        *&v124[14] = 2112;
        *&v124[16] = v94;
        _os_log_debug_impl(&dword_228986000, v91, OS_LOG_TYPE_DEBUG, "%@ dispatching incoming request %@ with message id %u to '%@'", buf, 0x26u);

        v22 = v116;
        v21 = v109;
      }

      v78 = objc_loadWeakRetained(&self->_delegate);
      [v78 performSelector:aSelector withObject:obj];

      goto LABEL_56;
    }

    v85 = objc_loadWeakRetained(&self->_delegate);
    v86 = objc_opt_respondsToSelector();

    v22 = v116;
    if (v86)
    {
      v87 = objc_loadWeakRetained(&self->_delegate);
      [v87 messageCenter:self didReceiveUnknownRequest:obj];
    }

    else
    {
      if (obj)
      {
        *(obj + 16) = 0;
      }

      _HKInitializeLogging();
      v88 = *MEMORY[0x277CCC328];
      if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_65;
      }

      v87 = v88;
      v104 = [(HDIDSMessageCenter *)self _logPrefix];
      *buf = 138543618;
      v122 = v104;
      v123 = 1024;
      *v124 = v56;
      _os_log_error_impl(&dword_228986000, v87, OS_LOG_TYPE_ERROR, "%{public}@ received a message of type %u for which no request handler was registered.", buf, 0x12u);
    }

LABEL_65:
    v27 = 0;
LABEL_56:

    goto LABEL_57;
  }

LABEL_58:

  v84 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v11 = a3;
  dispatch_assert_queue_V2(queue);
  service = self->_service;

  if (service == v11)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [(HDIDSMessageCenter *)self _logPrefix];
      serviceIdentifier = self->_serviceIdentifier;
      v17 = [v8 hd_shortDescription];
      v22 = 138543874;
      v23 = v15;
      v24 = 2114;
      v25 = serviceIdentifier;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ active paired IDSDevice for %{public}@ did switch: %{public}@", &v22, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = objc_loadWeakRetained(&self->_delegate);
      [v20 messageCenter:self activeDeviceDidChange:v8 acknowledgementHandler:v9];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (HDIDSMessageCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end