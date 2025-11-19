@interface HMDCameraSnapshotMetrics
- (void)dealloc;
@end

@implementation HMDCameraSnapshotMetrics

- (void)dealloc
{
  v3 = +[HMDMetricsManager sharedLogEventSubmitter];
  v4 = [(HMDCameraSnapshotMetrics *)self cameraSnapshotMetricsLogEvent];
  v5 = [(HMDCameraSnapshotMetrics *)self error];
  [v3 submitLogEvent:v4 error:v5];

  v6.receiver = self;
  v6.super_class = HMDCameraSnapshotMetrics;
  [(HMDCameraSnapshotMetrics *)&v6 dealloc];
}

@end