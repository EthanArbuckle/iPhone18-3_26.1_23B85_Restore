@interface HPSUISpatialProfileVideoCaptureSession
- (BKUIVideoCaptureSesssionDelegate)delegate;
- (HPSUISpatialProfileVideoCaptureSession)init;
- (id)_frontCamera;
@end

@implementation HPSUISpatialProfileVideoCaptureSession

- (HPSUISpatialProfileVideoCaptureSession)init
{
  v7.receiver = self;
  v7.super_class = HPSUISpatialProfileVideoCaptureSession;
  v2 = [(HPSUISpatialProfileVideoCaptureSession *)&v7 init];
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
  v8[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_captureQueue);
  v2 = MEMORY[0x1E69870A8];
  v8[0] = *MEMORY[0x1E6986950];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v2 discoverySessionWithDeviceTypes:v3 mediaType:*MEMORY[0x1E6987608] position:2];

  devices = [v4 devices];
  firstObject = [devices firstObject];

  return firstObject;
}

- (BKUIVideoCaptureSesssionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end