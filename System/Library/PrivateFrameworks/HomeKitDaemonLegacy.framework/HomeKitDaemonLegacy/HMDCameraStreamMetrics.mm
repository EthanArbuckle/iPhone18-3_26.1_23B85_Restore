@interface HMDCameraStreamMetrics
- (void)dealloc;
- (void)setError:(id)error;
@end

@implementation HMDCameraStreamMetrics

- (void)setError:(id)error
{
  errorCopy = error;
  if (!self->_error)
  {
    v6 = errorCopy;
    objc_storeStrong(&self->_error, error);
    errorCopy = v6;
  }
}

- (void)dealloc
{
  v3 = +[HMDMetricsManager sharedLogEventSubmitter];
  cameraStreamMetricsLogEvent = [(HMDCameraStreamMetrics *)self cameraStreamMetricsLogEvent];
  error = [(HMDCameraStreamMetrics *)self error];
  [v3 submitLogEvent:cameraStreamMetricsLogEvent error:error];

  v6.receiver = self;
  v6.super_class = HMDCameraStreamMetrics;
  [(HMDCameraStreamMetrics *)&v6 dealloc];
}

@end