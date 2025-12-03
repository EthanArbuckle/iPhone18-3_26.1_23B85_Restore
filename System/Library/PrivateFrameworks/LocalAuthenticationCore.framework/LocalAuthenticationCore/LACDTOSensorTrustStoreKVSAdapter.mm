@interface LACDTOSensorTrustStoreKVSAdapter
- (LACDTOSensorTrustStoreKVSAdapter)initWithKVStore:(id)store;
- (void)storeSensorTrustState:(id)state completion:(id)completion;
@end

@implementation LACDTOSensorTrustStoreKVSAdapter

- (LACDTOSensorTrustStoreKVSAdapter)initWithKVStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = LACDTOSensorTrustStoreKVSAdapter;
  v6 = [(LACDTOSensorTrustStoreKVSAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_kvStore, store);
  }

  return v7;
}

- (void)storeSensorTrustState:(id)state completion:(id)completion
{
  completionCopy = completion;
  if ([state isDisapproved])
  {
    v8 = [[LACDTOKVStoreValue alloc] initWithBoolValue:0];
    [(LACDTOKVStoreWriter *)self->_kvStore setValue:v8 forKey:6 completion:completionCopy];
  }

  else
  {
    v7 = LACLogDTOSensor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [LACDTOSensorTrustStoreKVSAdapter storeSensorTrustState:v7 completion:?];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

@end