@interface LACDTOSensorRepairStateProviderDefaultsDecorator
- (LACDTOSensorRepairStateProviderDefaultsDecorator)initWithStateProvider:(id)provider flags:(id)flags replyQueue:(id)queue;
- (void)fetchRepairStateWithCompletion:(id)completion;
@end

@implementation LACDTOSensorRepairStateProviderDefaultsDecorator

- (LACDTOSensorRepairStateProviderDefaultsDecorator)initWithStateProvider:(id)provider flags:(id)flags replyQueue:(id)queue
{
  providerCopy = provider;
  flagsCopy = flags;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = LACDTOSensorRepairStateProviderDefaultsDecorator;
  v12 = [(LACDTOSensorRepairStateProviderDefaultsDecorator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_stateProvider, provider);
    objc_storeStrong(&v13->_flags, flags);
    objc_storeStrong(&v13->_replyQueue, queue);
  }

  return v13;
}

- (void)fetchRepairStateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (os_variant_allows_internal_security_policies() && ([(LACFlagsProvider *)self->_flags valueForFlagDTOSecureRepairMockRepairType], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __83__LACDTOSensorRepairStateProviderDefaultsDecorator_fetchRepairStateWithCompletion___block_invoke;
    v19[3] = &unk_1E7A96C78;
    v19[4] = self;
    v6 = __83__LACDTOSensorRepairStateProviderDefaultsDecorator_fetchRepairStateWithCompletion___block_invoke(v19);
    valueForFlagDTOSecureRepairMockRepairTypeQueryLatency = [(LACFlagsProvider *)self->_flags valueForFlagDTOSecureRepairMockRepairTypeQueryLatency];
    v8 = valueForFlagDTOSecureRepairMockRepairTypeQueryLatency;
    v9 = &unk_1F2693670;
    if (valueForFlagDTOSecureRepairMockRepairTypeQueryLatency)
    {
      v9 = valueForFlagDTOSecureRepairMockRepairTypeQueryLatency;
    }

    v10 = v9;

    [v10 doubleValue];
    v12 = v11;

    v13 = dispatch_time(0, (v12 * 1000000000.0));
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__LACDTOSensorRepairStateProviderDefaultsDecorator_fetchRepairStateWithCompletion___block_invoke_2;
    block[3] = &unk_1E7A95798;
    v17 = v6;
    v18 = completionCopy;
    v15 = v6;
    dispatch_after(v13, replyQueue, block);
  }

  else
  {
    [(LACDTOSensorRepairStateProvider *)self->_stateProvider fetchRepairStateWithCompletion:completionCopy];
  }
}

LACDTOMutableSensorRepairState *__83__LACDTOSensorRepairStateProviderDefaultsDecorator_fetchRepairStateWithCompletion___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 16) valueForFlagDTOSecureRepairMockRepairType];
  v2 = [v1 integerValue];

  v3 = objc_alloc_init(LACDTOMutableSensorRepairState);
  [(LACDTOMutableSensorRepairState *)v3 setRepairFlag:v2];

  return v3;
}

@end