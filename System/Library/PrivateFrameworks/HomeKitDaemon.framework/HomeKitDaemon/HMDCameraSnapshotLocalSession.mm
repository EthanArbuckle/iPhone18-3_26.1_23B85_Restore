@interface HMDCameraSnapshotLocalSession
- (void)addMessage:(id)message;
@end

@implementation HMDCameraSnapshotLocalSession

- (void)addMessage:(id)message
{
  messageCopy = message;
  sessionMessages = [(HMDCameraSnapshotSession *)self sessionMessages];
  [sessionMessages addObject:messageCopy];
}

@end