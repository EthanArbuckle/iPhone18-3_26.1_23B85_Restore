@interface CMCaptureFrameSenderEndpointObserver
- (CMCaptureFrameSenderEndpointObserver)initWithEndpointsChangedHandler:(id)a3;
- (void)_handleFrameServerEndpointsChangedNotification:(id)a3;
- (void)dealloc;
@end

@implementation CMCaptureFrameSenderEndpointObserver

- (CMCaptureFrameSenderEndpointObserver)initWithEndpointsChangedHandler:(id)a3
{
  v8.receiver = self;
  v8.super_class = CMCaptureFrameSenderEndpointObserver;
  v4 = [(CMCaptureFrameSenderEndpointObserver *)&v8 init];
  if (v4)
  {
    v4->_endpointsChangedHandler = [a3 copy];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4->_frameSenderEndpointsChangedNotificationQueue = dispatch_queue_create("com.apple.cmio.frame-sender-endpoint-observer", v5);
    [objc_msgSend(MEMORY[0x1E696ABB0] "defaultCenter")];
    v6 = FigCaptureSourceRemoteCopyFrameSenderEndpoints();
    (*(v4->_endpointsChangedHandler + 2))();
  }

  return v4;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696ABB0] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = CMCaptureFrameSenderEndpointObserver;
  [(CMCaptureFrameSenderEndpointObserver *)&v3 dealloc];
}

- (void)_handleFrameServerEndpointsChangedNotification:(id)a3
{
  frameSenderEndpointsChangedNotificationQueue = self->_frameSenderEndpointsChangedNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__CMCaptureFrameSenderEndpointObserver__handleFrameServerEndpointsChangedNotification___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(frameSenderEndpointsChangedNotificationQueue, block);
}

void __87__CMCaptureFrameSenderEndpointObserver__handleFrameServerEndpointsChangedNotification___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    v2 = FigCaptureSourceRemoteCopyFrameSenderEndpoints();
    (*(*(*(a1 + 32) + 8) + 16))();
  }
}

@end