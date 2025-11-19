@interface HMDCameraSnapshotLocalSession
- (void)addMessage:(id)a3;
@end

@implementation HMDCameraSnapshotLocalSession

- (void)addMessage:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraSnapshotSession *)self sessionMessages];
  [v5 addObject:v4];
}

@end