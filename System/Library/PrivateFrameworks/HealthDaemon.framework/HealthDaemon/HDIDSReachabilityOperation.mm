@interface HDIDSReachabilityOperation
- (HDIDSReachabilityOperation)initWithIdentifers:(id)identifers serviceIdentifier:(id)identifier updateHandler:(id)handler;
- (uint64_t)_finish;
- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error;
- (void)cancel;
- (void)start;
- (void)updateDestinations:(id)destinations;
@end

@implementation HDIDSReachabilityOperation

- (HDIDSReachabilityOperation)initWithIdentifers:(id)identifers serviceIdentifier:(id)identifier updateHandler:(id)handler
{
  identifersCopy = identifers;
  identifierCopy = identifier;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = HDIDSReachabilityOperation;
  v12 = [(HDIDSReachabilityOperation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_destinationIdentifiers, identifers);
    objc_storeStrong(&v13->_serviceIdentifier, identifier);
    v14 = [handlerCopy copy];
    updateHandler = v13->_updateHandler;
    v13->_updateHandler = v14;

    v13->_queryTimeout = 60;
    v13->_finished = 0;
    v13->_executing = 0;
  }

  return v13;
}

- (void)start
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (!self->_queryController)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDIDSReachabilityOperation.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"_queryController != nil"}];
  }

  if ([(HDIDSReachabilityOperation *)self isCancelled])
  {
    _HKInitializeLogging();
    underlyingQueue = HKLogSharing();
    if (os_log_type_enabled(underlyingQueue, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_228986000, underlyingQueue, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: We've been cancelled while in the operation queue.", buf, 0xCu);
    }
  }

  else
  {
    [(HDIDSReachabilityOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = 1;
    [(HDIDSReachabilityOperation *)self didChangeValueForKey:@"isExecuting"];
    _HKInitializeLogging();
    v4 = HKLogSharing();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSArray *)self->_destinationIdentifiers count];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v5;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Starting reachability operation for %ld identifiers", buf, 0x16u);
    }

    [(IDSBatchIDQueryController *)self->_queryController setDestinations:self->_destinationIdentifiers];
    currentQueue = [MEMORY[0x277CCABD8] currentQueue];
    underlyingQueue = [currentQueue underlyingQueue];

    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, underlyingQueue);
    timer = self->_timer;
    self->_timer = v7;

    v9 = self->_timer;
    v10 = dispatch_time(0, 1000000000 * self->_queryTimeout);
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    objc_initWeak(&location, self);
    v11 = self->_timer;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __41__HDIDSReachabilityOperation__startTimer__block_invoke;
    v17 = &unk_278616F38;
    objc_copyWeak(v18, &location);
    dispatch_source_set_event_handler(v11, buf);
    dispatch_resume(self->_timer);
    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateDestinations:(id)destinations
{
  v13 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  os_unfair_lock_lock(&self->_lock);
  _HKInitializeLogging();
  v5 = HKLogSharing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2048;
    v12 = [destinationsCopy count];
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Updating reachability operation for %ld identifiers", &v9, 0x16u);
  }

  [(IDSBatchIDQueryController *)self->_queryController setDestinations:destinationsCopy];
  timer = self->_timer;
  if (timer)
  {
    v7 = dispatch_time(0, 1000000000 * self->_queryTimeout);
    dispatch_source_set_timer(timer, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  os_unfair_lock_unlock(&self->_lock);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogSharing();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: The reachability operation has been cancelled.", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = HDIDSReachabilityOperation;
  [(HDIDSReachabilityOperation *)&v5 cancel];
  [(HDIDSReachabilityOperation *)self _finish];
  v4 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_finish
{
  if (result)
  {
    v1 = result;
    [*(result + 256) invalidate];
    v2 = *(v1 + 288);
    if (v2)
    {
      dispatch_source_cancel(v2);
    }

    [v1 willChangeValueForKey:@"isFinished"];
    [v1 willChangeValueForKey:@"isExecuting"];
    *(v1 + 249) = 0;
    *(v1 + 248) = 1;
    [v1 didChangeValueForKey:@"isExecuting"];

    return [v1 didChangeValueForKey:@"isFinished"];
  }

  return result;
}

void __41__HDIDSReachabilityOperation__startTimer__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    _HKInitializeLogging();
    v1 = HKLogSharing();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v5 = WeakRetained;
      _os_log_impl(&dword_228986000, v1, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: The reachability operation has timed out.", buf, 0xCu);
    }

    [(HDIDSReachabilityOperation *)WeakRetained _finish];
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  serviceCopy = service;
  errorCopy = error;
  if ([(HDIDSReachabilityOperation *)self isCancelled])
  {
    _HKInitializeLogging();
    v12 = HKLogSharing();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      selfCopy2 = self;
      v13 = "[summary-sharing] %{public}@: We got a reachability callback but we are already cancelled.";
      v14 = v12;
      v15 = 12;
LABEL_8:
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, v13, &v17, v15);
    }
  }

  else if ([serviceCopy isEqualToString:self->_serviceIdentifier])
  {
    v12 = [statusCopy hk_map:&__block_literal_global_231];
    (*(self->_updateHandler + 2))();
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogSharing();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543618;
      selfCopy2 = self;
      v19 = 2112;
      v20 = serviceCopy;
      v13 = "[summary-sharing] %{public}@: We got a reachability callback with the incorrect service identifier %@";
      v14 = v12;
      v15 = 22;
      goto LABEL_8;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __93__HDIDSReachabilityOperation_batchQueryController_updatedDestinationsStatus_onService_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = IDSCopyRawAddressForDestination();
  v5[2](v5, v7, v6);
}

@end