@interface HMDCameraRecordingAnalysisNode
- (HMDCameraRecordingAnalysisNode)initWithResidentDevice:(id)a3 metrics:(id)a4;
@end

@implementation HMDCameraRecordingAnalysisNode

- (HMDCameraRecordingAnalysisNode)initWithResidentDevice:(id)a3 metrics:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
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
    objc_storeStrong(&v10->_residentDevice, a3);
    objc_storeStrong(&v11->_metrics, a4);
  }

  return v11;
}

@end