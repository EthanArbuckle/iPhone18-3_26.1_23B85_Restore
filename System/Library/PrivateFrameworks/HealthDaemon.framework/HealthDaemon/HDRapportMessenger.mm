@interface HDRapportMessenger
- (id)initForCompanionDevice;
- (void)_handleIncomingRequest:(id)request responseHandler:(id)handler;
- (void)addObserver:(id)observer forSchemaIdentifier:(int64_t)identifier;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)removeObserver:(id)observer forSchemaIdentifier:(int64_t)identifier;
- (void)sendRequest:(id)request data:(id)data completion:(id)completion;
@end

@implementation HDRapportMessenger

- (id)initForCompanionDevice
{
  v24 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = HDRapportMessenger;
  v2 = [(HDRapportMessenger *)&v19 init];
  if (v2)
  {
    v3 = HKCreateSerialDispatchQueueWithQOSClass();
    queue = v2->_queue;
    v2->_queue = v3;

    newRapportClient = [(HDRapportMessenger *)v2 newRapportClient];
    rapportClient = v2->_rapportClient;
    v2->_rapportClient = newRapportClient;

    [(RPCompanionLinkClient *)v2->_rapportClient setServiceType:@"com.apple.healthd.rapport"];
    [(RPCompanionLinkClient *)v2->_rapportClient setDispatchQueue:v2->_queue];
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observersBySchemaIdentifier = v2->_observersBySchemaIdentifier;
    v2->_observersBySchemaIdentifier = v7;

    v2->_lock._os_unfair_lock_opaque = 0;
    v9 = NSStringForRapportSchemaIdentifier(0);
    objc_initWeak(&location, v2);
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      *buf = 138543618;
      v21 = v11;
      v22 = 2114;
      v23 = v9;
      v12 = v11;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Registering Rapport requestID %{public}@", buf, 0x16u);
    }

    v13 = v2->_rapportClient;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __44__HDRapportMessenger_initForCompanionDevice__block_invoke;
    v16[3] = &unk_27862F748;
    objc_copyWeak(&v17, &location);
    [(RPCompanionLinkClient *)v13 registerRequestID:v9 options:0 handler:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

void __44__HDRapportMessenger_initForCompanionDevice__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleIncomingRequest:v7 responseHandler:v6];
}

- (void)dealloc
{
  [(RPCompanionLinkClient *)self->_rapportClient invalidate];
  v3.receiver = self;
  v3.super_class = HDRapportMessenger;
  [(HDRapportMessenger *)&v3 dealloc];
}

- (void)sendRequest:(id)request data:(id)data completion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dataCopy = data;
  completionCopy = completion;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v12 = [uUIDString substringToIndex:4];

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = objc_opt_class();
    v16 = v15;
    *buf = 138544130;
    v37 = v15;
    v38 = 2114;
    v39 = v12;
    v40 = 2114;
    v41 = requestCopy;
    v42 = 2048;
    v43 = [dataCopy length];
    _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Sending request [%{public}@] %{public}@ (%lu bytes)", buf, 0x2Au);
  }

  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(requestCopy, "schemaIdentifier")}];
  [v17 setObject:v18 forKeyedSubscript:@"schemaId"];

  name = [requestCopy name];
  [v17 setObject:name forKeyedSubscript:@"requestName"];

  [v17 setObject:v12 forKeyedSubscript:@"requestId"];
  [v17 setObject:dataCopy forKeyedSubscript:@"data"];
  v20 = NSStringForRapportSchemaIdentifier([requestCopy schemaIdentifier]);
  rapportClient = self->_rapportClient;
  v22 = [v17 copy];
  v23 = *MEMORY[0x277D44230];
  v34 = *MEMORY[0x277D44268];
  v35 = MEMORY[0x277CBEC38];
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __50__HDRapportMessenger_sendRequest_data_completion___block_invoke;
  v30[3] = &unk_27862F770;
  v30[4] = self;
  v31 = v12;
  v32 = dataCopy;
  v33 = completionCopy;
  v25 = completionCopy;
  v26 = dataCopy;
  v27 = v12;
  [(RPCompanionLinkClient *)rapportClient sendRequestID:v20 request:v22 destinationID:v23 options:v24 responseHandler:v30];

  v28 = *MEMORY[0x277D85DE8];
}

void __50__HDRapportMessenger_sendRequest_data_completion___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"errorDomain"];
  v9 = [v6 objectForKeyedSubscript:@"errorCode"];
  v10 = [v9 integerValue];

  v11 = [v6 objectForKeyedSubscript:@"errorDescription"];
  v12 = [v6 objectForKeyedSubscript:@"requestName"];
  v13 = v12;
  v14 = @"[missing name]";
  if (v12)
  {
    v14 = v12;
  }

  v46 = v14;

  v15 = [v6 objectForKeyedSubscript:@"requestId"];
  v16 = v15;
  v17 = &stru_283BF39C8;
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  v19 = v7;
  _HKInitializeLogging();
  v20 = MEMORY[0x277CCC328];
  v21 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v45 = v8;
    v22 = v18;
    v23 = a1[4];
    v24 = v21;
    v25 = objc_opt_class();
    v26 = v10;
    v28 = a1[5];
    v27 = a1[6];
    v44 = v25;
    v29 = [v27 length];
    *buf = 138544130;
    v50 = v25;
    v18 = v22;
    v8 = v45;
    v51 = 2114;
    v52 = v28;
    v10 = v26;
    v20 = MEMORY[0x277CCC328];
    v53 = 2114;
    v54 = v18;
    v55 = 2048;
    v56 = v29;
    _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Received response for request [%{public}@] %{public}@ (%lu bytes)", buf, 0x2Au);
  }

  v30 = v19;
  if (v8)
  {
    v31 = v18;
    v32 = MEMORY[0x277CCA9B8];
    if (v11)
    {
      v47 = *MEMORY[0x277CCA450];
      v48 = v11;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    }

    else
    {
      v33 = 0;
    }

    v30 = [v32 errorWithDomain:v8 code:v10 userInfo:v33];

    if (v11)
    {
    }

    v18 = v31;
  }

  if (v30)
  {
    _HKInitializeLogging();
    v34 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v40 = a1[4];
      v41 = v34;
      v42 = objc_opt_class();
      *buf = 138544130;
      v50 = v42;
      v51 = 2114;
      v52 = v18;
      v53 = 2114;
      v54 = v46;
      v55 = 2114;
      v56 = v30;
      v43 = v42;
      _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Request %{public}@:%{public}@ failed with error: %{public}@", buf, 0x2Au);
    }
  }

  v35 = [v30 domain];
  v36 = [v35 isEqualToString:*MEMORY[0x277D44250]];

  if (v36)
  {
    v37 = [MEMORY[0x277CCA9B8] hk_error:300 description:@"Remote device is unreachable" underlyingError:v19];

    v30 = v37;
  }

  v38 = [v6 objectForKeyedSubscript:@"data"];
  (*(a1[7] + 16))();

  v39 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)observer forSchemaIdentifier:(int64_t)identifier
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  v6 = NSStringForRapportSchemaIdentifier(identifier);
  v7 = [(NSMutableDictionary *)self->_observersBySchemaIdentifier objectForKeyedSubscript:v6];
  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCDA88]);
    v7 = [v8 initWithName:v6 loggingCategory:*MEMORY[0x277CCC328]];
    [(NSMutableDictionary *)self->_observersBySchemaIdentifier setObject:v7 forKeyedSubscript:v6];
  }

  [v7 registerObserver:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer forSchemaIdentifier:(int64_t)identifier
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  observersBySchemaIdentifier = self->_observersBySchemaIdentifier;
  v8 = NSStringForRapportSchemaIdentifier(identifier);
  v9 = [(NSMutableDictionary *)observersBySchemaIdentifier objectForKeyedSubscript:v8];
  [v9 unregisterObserver:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  v16 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_observersBySchemaIdentifier allValues];
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v9++) unregisterObserver:observerCopy];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingRequest:(id)request responseHandler:(id)handler
{
  v44 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  requestCopy = request;
  v8 = [requestCopy objectForKeyedSubscript:@"schemaId"];
  integerValue = [v8 integerValue];

  v10 = [HDRapportRequestIdentifier alloc];
  v11 = [requestCopy objectForKeyedSubscript:@"requestName"];
  v12 = [(HDRapportRequestIdentifier *)v10 initWithSchemaIdentifier:integerValue name:v11];

  v13 = [requestCopy objectForKeyedSubscript:@"requestId"];
  v14 = [requestCopy objectForKeyedSubscript:@"data"];

  _HKInitializeLogging();
  v15 = MEMORY[0x277CCC328];
  v16 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = objc_opt_class();
    v19 = v18;
    *buf = 138544130;
    v37 = v18;
    v38 = 2114;
    v39 = v13;
    v40 = 2114;
    v41 = v12;
    v42 = 2048;
    v43 = [v14 length];
    _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Received request [%{public}@] %{public}@ (%lu bytes)", buf, 0x2Au);
  }

  if (v12)
  {
    os_unfair_lock_lock(&self->_lock);
    observersBySchemaIdentifier = self->_observersBySchemaIdentifier;
    v21 = NSStringForRapportSchemaIdentifier(integerValue);
    v22 = [(NSMutableDictionary *)observersBySchemaIdentifier objectForKeyedSubscript:v21];

    os_unfair_lock_unlock(&self->_lock);
    if ([v22 count])
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __61__HDRapportMessenger__handleIncomingRequest_responseHandler___block_invoke;
      v31[3] = &unk_27862F7C0;
      v31[4] = self;
      v32 = v12;
      v33 = v14;
      v34 = v13;
      v35 = handlerCopy;
      [v22 notifyObservers:v31];
    }

    else
    {
      _HKInitializeLogging();
      v26 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        v28 = v26;
        v29 = objc_opt_class();
        *buf = 138543618;
        v37 = v29;
        v38 = 2114;
        v39 = v12;
        v30 = v29;
        _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: No observer to handle incoming request %{public}@", buf, 0x16u);
      }
    }

    goto LABEL_10;
  }

  _HKInitializeLogging();
  v23 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
  {
    v22 = v23;
    v24 = objc_opt_class();
    *buf = 138543362;
    v37 = v24;
    v25 = v24;
    _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Malformed incoming request does not have an identifier", buf, 0xCu);

LABEL_10:
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __61__HDRapportMessenger__handleIncomingRequest_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__HDRapportMessenger__handleIncomingRequest_responseHandler___block_invoke_2;
  v12[3] = &unk_27862F798;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v11 = *(a1 + 32);
  v8 = *(a1 + 48);
  *&v9 = v11;
  *(&v9 + 1) = v8;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v13 = v10;
  v14 = v9;
  v15 = *(a1 + 64);
  [a2 rapportMessenger:v5 didReceiveRequest:v6 data:v4 responseHandler:v12];
}

void __61__HDRapportMessenger__handleIncomingRequest_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB38];
  v6 = a3;
  v7 = a2;
  v8 = objc_alloc_init(v5);
  v9 = [*(a1 + 32) name];
  [v8 setObject:v9 forKeyedSubscript:@"requestName"];

  [v8 setObject:*(a1 + 40) forKeyedSubscript:@"requestId"];
  [v8 setObject:v7 forKeyedSubscript:@"data"];

  v10 = [v6 domain];
  [v8 setObject:v10 forKeyedSubscript:@"errorDomain"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "code")}];
  [v8 setObject:v11 forKeyedSubscript:@"errorCode"];

  v12 = [v6 localizedDescription];

  [v8 setObject:v12 forKeyedSubscript:@"errorDescription"];
  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 48);
    v15 = v13;
    v16 = objc_opt_class();
    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v19 = *(a1 + 56);
    v20 = v16;
    v24 = 138544130;
    v25 = v16;
    v26 = 2114;
    v27 = v17;
    v28 = 2114;
    v29 = v18;
    v30 = 2048;
    v31 = [v19 length];
    _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Responding to request [%{public}@] %{public}@ (%lu bytes)", &v24, 0x2Au);
  }

  v21 = *(a1 + 64);
  v22 = [v8 copy];
  (*(v21 + 16))(v21, v22, 0, 0);

  v23 = *MEMORY[0x277D85DE8];
}

@end