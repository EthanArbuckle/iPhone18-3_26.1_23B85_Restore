@interface CHSensorData
- (CHSensorData)init;
- (void)aggregatedMotionAndAppLaunchDataFromDate:(id)a3 toDate:(id)a4 completion:(id)a5;
- (void)embeddingVectorForBundleId:(id)a3 completion:(id)a4;
@end

@implementation CHSensorData

- (void)embeddingVectorForBundleId:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = ch_sensor_data_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_243B92000, v8, OS_LOG_TYPE_DEFAULT, "CHSensorData embeddingVectorForBundleId api called", v9, 2u);
  }

  [(CHSensorDataProtocol *)self->_xpcClient embeddingVectorForBundleId:v7 completion:v6];
}

- (void)aggregatedMotionAndAppLaunchDataFromDate:(id)a3 toDate:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = ch_sensor_data_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_243B92000, v11, OS_LOG_TYPE_DEFAULT, "CHSensorData aggregatedMotionAndAppLaunchData api called", v12, 2u);
  }

  [(CHSensorDataProtocol *)self->_xpcClient aggregatedMotionAndAppLaunchDataFromDate:v10 toDate:v9 completion:v8];
}

- (CHSensorData)init
{
  v6.receiver = self;
  v6.super_class = CHSensorData;
  v2 = [(CHSensorData *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CHSensorDataClient);
    xpcClient = v2->_xpcClient;
    v2->_xpcClient = v3;
  }

  return v2;
}

@end