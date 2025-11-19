@interface HMDCameraStreamMetrics
- (void)dealloc;
- (void)setError:(id)a3;
@end

@implementation HMDCameraStreamMetrics

- (void)setError:(id)a3
{
  v5 = a3;
  if (!self->_error)
  {
    v6 = v5;
    objc_storeStrong(&self->_error, a3);
    v5 = v6;
  }
}

- (void)dealloc
{
  v3 = +[HMDMetricsManager sharedLogEventSubmitter];
  v4 = [(HMDCameraStreamMetrics *)self cameraStreamMetricsLogEvent];
  v5 = [(HMDCameraStreamMetrics *)self error];
  [v3 submitLogEvent:v4 error:v5];

  v6.receiver = self;
  v6.super_class = HMDCameraStreamMetrics;
  [(HMDCameraStreamMetrics *)&v6 dealloc];
}

@end