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
    return [(HMDMemoryDiagnostic *)v13 _nextLevelFromPreviousLevel:v14, v15];
  }

  v16.receiver = self;
  v16.super_class = HMDCameraRecordingAnalysisNode;
  v10 = [(HMDCameraRecordingAnalysisNode *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_residentDevice, device);
    objc_storeStrong(&v11->_metrics, metrics);
  }

  return v11;
}

@end