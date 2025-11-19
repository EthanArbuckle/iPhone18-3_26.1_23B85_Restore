@interface LACDTOSensorTrustStoreKVSAdapter
- (LACDTOSensorTrustStoreKVSAdapter)initWithKVStore:(id)a3;
- (void)storeSensorTrustState:(id)a3 completion:(id)a4;
@end

@implementation LACDTOSensorTrustStoreKVSAdapter

- (LACDTOSensorTrustStoreKVSAdapter)initWithKVStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LACDTOSensorTrustStoreKVSAdapter;
  v6 = [(LACDTOSensorTrustStoreKVSAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_kvStore, a3);
  }

  return v7;
}

- (void)storeSensorTrustState:(id)a3 completion:(id)a4
{
  v6 = a4;
  if ([a3 isDisapproved])
  {
    v8 = [[LACDTOKVStoreValue alloc] initWithBoolValue:0];
    [(LACDTOKVStoreWriter *)self->_kvStore setValue:v8 forKey:6 completion:v6];
  }

  else
  {
    v7 = LACLogDTOSensor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [LACDTOSensorTrustStoreKVSAdapter storeSensorTrustState:v7 completion:?];
    }

    (*(v6 + 2))(v6, 0);
  }
}

@end