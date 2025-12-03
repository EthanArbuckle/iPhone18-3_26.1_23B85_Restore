@interface HMDCameraSnapshotMetrics
- (void)dealloc;
@end

@implementation HMDCameraSnapshotMetrics

- (void)dealloc
{
  v3 = +[HMDMetricsManager sharedLogEventSubmitter];
  cameraSnapshotMetricsLogEvent = [(HMDCameraSnapshotMetrics *)self cameraSnapshotMetricsLogEvent];
  error = [(HMDCameraSnapshotMetrics *)self error];
  [v3 submitLogEvent:cameraSnapshotMetricsLogEvent error:error];

  v6.receiver = self;
  v6.super_class = HMDCameraSnapshotMetrics;
  [(HMDCameraSnapshotMetrics *)&v6 dealloc];
}

@end