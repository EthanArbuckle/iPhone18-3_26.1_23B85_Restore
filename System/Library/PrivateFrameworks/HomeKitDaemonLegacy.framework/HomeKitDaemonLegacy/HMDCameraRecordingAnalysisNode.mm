@interface HMDCameraRecordingAnalysisNode
- (HMDCameraRecordingAnalysisNode)initWithResidentDevice:(id)device metrics:(id)metrics;
@end

@implementation HMDCameraRecordingAnalysisNode

- (HMDCameraRecordingAnalysisNode)initWithResidentDevice:(id)device metrics:(id)metrics
{
  deviceCopy = device;
  metricsCopy = metrics;
  if (!deviceCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = metricsCopy;
  if (!metricsCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    [(HMDWoLANInvalidConfigurationLogEvent *)v13 .cxx_destruct];
    return result;
  }

  v15.receiver = self;
  v15.super_class = HMDCameraRecordingAnalysisNode;
  v10 = [(HMDCameraRecordingAnalysisNode *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_residentDevice, device);
    objc_storeStrong(&v11->_metrics, metrics);
  }

  return v11;
}

@end