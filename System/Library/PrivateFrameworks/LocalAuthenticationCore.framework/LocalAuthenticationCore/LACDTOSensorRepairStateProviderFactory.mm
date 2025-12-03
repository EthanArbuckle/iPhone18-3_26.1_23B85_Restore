@interface LACDTOSensorRepairStateProviderFactory
+ (id)repairStateProviderWithReplyQueue:(id)queue flags:(id)flags;
@end

@implementation LACDTOSensorRepairStateProviderFactory

+ (id)repairStateProviderWithReplyQueue:(id)queue flags:(id)flags
{
  queueCopy = queue;
  flagsCopy = flags;
  v7 = [LACDTOSensorRepairStateProviderTaskDecorator alloc];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __82__LACDTOSensorRepairStateProviderFactory_repairStateProviderWithReplyQueue_flags___block_invoke;
  v16 = &unk_1E7A96958;
  v17 = queueCopy;
  v18 = flagsCopy;
  v8 = flagsCopy;
  v9 = queueCopy;
  v10 = __82__LACDTOSensorRepairStateProviderFactory_repairStateProviderWithReplyQueue_flags___block_invoke(&v13);
  v11 = [(LACDTOSensorRepairStateProviderTaskDecorator *)v7 initWithProvider:v10 replyQueue:v9, v13, v14, v15, v16];

  return v11;
}

LACDTOSensorRepairStateProviderDefaultsDecorator *__82__LACDTOSensorRepairStateProviderFactory_repairStateProviderWithReplyQueue_flags___block_invoke(uint64_t a1)
{
  v2 = [LACDTOSensorRepairStateProviderDefaultsDecorator alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__LACDTOSensorRepairStateProviderFactory_repairStateProviderWithReplyQueue_flags___block_invoke_2;
  v6[3] = &unk_1E7A96930;
  v7 = *(a1 + 32);
  v3 = __82__LACDTOSensorRepairStateProviderFactory_repairStateProviderWithReplyQueue_flags___block_invoke_2(v6);
  v4 = [(LACDTOSensorRepairStateProviderDefaultsDecorator *)v2 initWithStateProvider:v3 flags:*(a1 + 40) replyQueue:*(a1 + 32)];

  return v4;
}

LACDTOSensorRepairStateProviderCRAdapter *__82__LACDTOSensorRepairStateProviderFactory_repairStateProviderWithReplyQueue_flags___block_invoke_2(uint64_t a1)
{
  v1 = [[LACDTOSensorRepairStateProviderCRAdapter alloc] initWithReplyQueue:*(a1 + 32)];

  return v1;
}

@end