@interface HMDCameraStreamManagerDataSource
- (HMDCameraStreamManagerDataSource)init;
- (id)createRemoteVideoClientWithStreamToken:(int64_t)token delegate:(id)delegate;
@end

@implementation HMDCameraStreamManagerDataSource

- (id)createRemoteVideoClientWithStreamToken:(int64_t)token delegate:(id)delegate
{
  v4 = [objc_allocWithZone(MEMORY[0x277CE5730]) initWithStreamToken:token delegate:delegate];

  return v4;
}

- (HMDCameraStreamManagerDataSource)init
{
  v3.receiver = self;
  v3.super_class = HMDCameraStreamManagerDataSource;
  return [(HMDCameraStreamManagerDataSource *)&v3 init];
}

@end