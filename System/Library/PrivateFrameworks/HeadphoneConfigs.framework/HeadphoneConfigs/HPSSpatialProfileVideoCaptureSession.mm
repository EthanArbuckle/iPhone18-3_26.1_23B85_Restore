@interface HPSSpatialProfileVideoCaptureSession
- (BKUIVideoCaptureSesssionDelegate)delegate;
- (HPSSpatialProfileVideoCaptureSession)init;
- (id)_frontCamera;
@end

@implementation HPSSpatialProfileVideoCaptureSession

- (HPSSpatialProfileVideoCaptureSession)init
{
  v7.receiver = self;
  v7.super_class = HPSSpatialProfileVideoCaptureSession;
  v2 = [(HPSSpatialProfileVideoCaptureSession *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.biometrickitui.AirPodPearlVideoCaptureSessionQueue", v3);
    captureQueue = v2->_captureQueue;
    v2->_captureQueue = v4;
  }

  return v2;
}

- (id)_frontCamera
{
  v9[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_captureQueue);
  v2 = MEMORY[0x277CE5AD0];
  v9[0] = *MEMORY[0x277CE5878];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v4 = [v2 discoverySessionWithDeviceTypes:v3 mediaType:*MEMORY[0x277CE5EA8] position:2];

  devices = [v4 devices];
  firstObject = [devices firstObject];

  v7 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (BKUIVideoCaptureSesssionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end