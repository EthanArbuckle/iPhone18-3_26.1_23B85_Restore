@interface LACDTOSensorRepairStateProviderDefaultsDecorator
- (LACDTOSensorRepairStateProviderDefaultsDecorator)initWithStateProvider:(id)a3 flags:(id)a4 replyQueue:(id)a5;
- (void)fetchRepairStateWithCompletion:(id)a3;
@end

@implementation LACDTOSensorRepairStateProviderDefaultsDecorator

- (LACDTOSensorRepairStateProviderDefaultsDecorator)initWithStateProvider:(id)a3 flags:(id)a4 replyQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = LACDTOSensorRepairStateProviderDefaultsDecorator;
  v12 = [(LACDTOSensorRepairStateProviderDefaultsDecorator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_stateProvider, a3);
    objc_storeStrong(&v13->_flags, a4);
    objc_storeStrong(&v13->_replyQueue, a5);
  }

  return v13;
}

- (void)fetchRepairStateWithCompletion:(id)a3
{
  v4 = a3;
  if (os_variant_allows_internal_security_policies() && ([(LACFlagsProvider *)self->_flags valueForFlagDTOSecureRepairMockRepairType], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __83__LACDTOSensorRepairStateProviderDefaultsDecorator_fetchRepairStateWithCompletion___block_invoke;
    v19[3] = &unk_1E7A96C78;
    v19[4] = self;
    v6 = __83__LACDTOSensorRepairStateProviderDefaultsDecorator_fetchRepairStateWithCompletion___block_invoke(v19);
    v7 = [(LACFlagsProvider *)self->_flags valueForFlagDTOSecureRepairMockRepairTypeQueryLatency];
    v8 = v7;
    v9 = &unk_1F2693670;
    if (v7)
    {
      v9 = v7;
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
    v18 = v4;
    v15 = v6;
    dispatch_after(v13, replyQueue, block);
  }

  else
  {
    [(LACDTOSensorRepairStateProvider *)self->_stateProvider fetchRepairStateWithCompletion:v4];
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