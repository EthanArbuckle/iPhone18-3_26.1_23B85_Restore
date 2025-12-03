@interface CHSensorData
- (CHSensorData)init;
- (void)aggregatedMotionAndAppLaunchDataFromDate:(id)date toDate:(id)toDate completion:(id)completion;
- (void)embeddingVectorForBundleId:(id)id completion:(id)completion;
@end

@implementation CHSensorData

- (void)embeddingVectorForBundleId:(id)id completion:(id)completion
{
  completionCopy = completion;
  idCopy = id;
  v8 = ch_sensor_data_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_243B92000, v8, OS_LOG_TYPE_DEFAULT, "CHSensorData embeddingVectorForBundleId api called", v9, 2u);
  }

  [(CHSensorDataProtocol *)self->_xpcClient embeddingVectorForBundleId:idCopy completion:completionCopy];
}

- (void)aggregatedMotionAndAppLaunchDataFromDate:(id)date toDate:(id)toDate completion:(id)completion
{
  completionCopy = completion;
  toDateCopy = toDate;
  dateCopy = date;
  v11 = ch_sensor_data_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_243B92000, v11, OS_LOG_TYPE_DEFAULT, "CHSensorData aggregatedMotionAndAppLaunchData api called", v12, 2u);
  }

  [(CHSensorDataProtocol *)self->_xpcClient aggregatedMotionAndAppLaunchDataFromDate:dateCopy toDate:toDateCopy completion:completionCopy];
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