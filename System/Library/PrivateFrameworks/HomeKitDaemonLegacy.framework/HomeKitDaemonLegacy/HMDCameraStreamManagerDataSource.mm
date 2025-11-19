@interface HMDCameraStreamManagerDataSource
- (HMDCameraStreamManagerDataSource)init;
- (id)createRemoteVideoClientWithStreamToken:(int64_t)a3 delegate:(id)a4;
@end

@implementation HMDCameraStreamManagerDataSource

- (id)createRemoteVideoClientWithStreamToken:(int64_t)a3 delegate:(id)a4
{
  v4 = [objc_allocWithZone(MEMORY[0x277CE5730]) initWithStreamToken:a3 delegate:a4];

  return v4;
}

- (HMDCameraStreamManagerDataSource)init
{
  v3.receiver = self;
  v3.super_class = HMDCameraStreamManagerDataSource;
  return [(HMDCameraStreamManagerDataSource *)&v3 init];
}

@end