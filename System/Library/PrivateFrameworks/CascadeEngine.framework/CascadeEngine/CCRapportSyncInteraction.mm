@interface CCRapportSyncInteraction
- (CCRapportSyncInteraction)initWithQueue:(id)queue reason:(unsigned __int8)reason device:(id)device index:(unint64_t)index type:(unsigned __int8)type options:(unsigned __int16)options completion:(id)completion;
- (id)description;
- (id)detailedDescription;
- (void)cancelRapportRequestTimeout;
- (void)complete;
- (void)setTimeoutForRapportRequest:(id)request;
@end

@implementation CCRapportSyncInteraction

- (CCRapportSyncInteraction)initWithQueue:(id)queue reason:(unsigned __int8)reason device:(id)device index:(unint64_t)index type:(unsigned __int8)type options:(unsigned __int16)options completion:(id)completion
{
  queueCopy = queue;
  deviceCopy = device;
  completionCopy = completion;
  v26.receiver = self;
  v26.super_class = CCRapportSyncInteraction;
  v19 = [(CCRapportSyncInteraction *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_queue, queue);
    v20->_reason = reason;
    objc_storeStrong(&v20->_device, device);
    v20->_type = type;
    v20->_options = options;
    v21 = MEMORY[0x1DA74EA40](completionCopy);
    completion = v20->_completion;
    v20->_completion = v21;

    v20->_state = 1;
    v20->_index = index;
    v23 = objc_opt_new();
    discoveredResources = v20->_discoveredResources;
    v20->_discoveredResources = v23;
  }

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  index = self->_index;
  v5 = CCRapportSyncInteractionTypeDescription(self->_type);
  v6 = CCSyncReasonDescription(self->_reason);
  prefix = [(CCRapportDevice *)self->_device prefix];
  v8 = [v3 stringWithFormat:@"%lu-%@-%@-%@", index, v5, v6, prefix];

  return v8;
}

- (id)detailedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  index = self->_index;
  v5 = CCRapportSyncInteractionTypeDescription(self->_type);
  v6 = CCSyncReasonDescription(self->_reason);
  v7 = v6;
  if (self->_type)
  {
    v8 = @"->";
  }

  else
  {
    v8 = @"<-";
  }

  device = self->_device;
  if (self->_error)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@" error: %@", self->_error];
    v11 = [v3 stringWithFormat:@"%lu. [%@] %@ %@ %@%@", index, v5, v7, v8, device, v10];
  }

  else
  {
    v11 = [v3 stringWithFormat:@"%lu. [%@] %@ %@ %@%@", index, v5, v6, v8, self->_device, &stru_1F55F1328];
  }

  return v11;
}

- (void)setTimeoutForRapportRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_requestTimeout)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__CCRapportSyncInteraction_setTimeoutForRapportRequest___block_invoke;
    block[3] = &unk_1E85C2B58;
    objc_copyWeak(&v10, &location);
    v9 = requestCopy;
    v5 = dispatch_block_create(0, block);
    requestTimeout = self->_requestTimeout;
    self->_requestTimeout = v5;

    v7 = dispatch_time(0, 60000000000);
    dispatch_after(v7, self->_queue, self->_requestTimeout);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

uint64_t __56__CCRapportSyncInteraction_setTimeoutForRapportRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    if ([WeakRetained state] == 2)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Completing interaction %@ after %lf seconds waiting for request: %@", v7, 0x404E000000000000, *(a1 + 32)];
      v4 = CCRapportSyncErrorWithDetails(6, 0, v3);
      v5 = v7[7];
      v7[7] = v4;

      [v7 complete];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)cancelRapportRequestTimeout
{
  dispatch_assert_queue_V2(self->_queue);
  requestTimeout = self->_requestTimeout;
  if (requestTimeout)
  {
    dispatch_block_cancel(requestTimeout);
    v4 = self->_requestTimeout;
    self->_requestTimeout = 0;
  }
}

- (void)complete
{
  v8 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_completion)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1DA444000, v3, OS_LOG_TYPE_DEFAULT, "Completing interaction: %@", &v6, 0xCu);
    }

    (*(self->_completion + 2))();
    completion = self->_completion;
    self->_completion = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end