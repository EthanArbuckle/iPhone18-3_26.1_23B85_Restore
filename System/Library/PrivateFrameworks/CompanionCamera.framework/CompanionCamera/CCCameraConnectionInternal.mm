@interface CCCameraConnectionInternal
- (CCCameraConnection)parent;
- (void)takePhotoWithCountdown:(unint64_t)countdown;
- (void)xpc_beginBurstCaptureWithReply:(id)reply;
- (void)xpc_cancelCountdown;
- (void)xpc_endBurstCaptureWithReply:(id)reply;
- (void)xpc_ensureSwitchedToOneOfSupportedCaptureModes:(id)modes reply:(id)reply;
- (void)xpc_pauseCaptureWithReply:(id)reply;
- (void)xpc_resumeCaptureWithReply:(id)reply;
- (void)xpc_setCaptureDevice:(int64_t)device reply:(id)reply;
- (void)xpc_setCaptureMode:(int64_t)mode reply:(id)reply;
- (void)xpc_setFlashMode:(int64_t)mode;
- (void)xpc_setFocusPoint:(id)point;
- (void)xpc_setHDRMode:(int64_t)mode;
- (void)xpc_setIrisMode:(int64_t)mode;
- (void)xpc_setPreviewEndpoint:(id)endpoint;
- (void)xpc_setSharedLibraryMode:(int64_t)mode;
- (void)xpc_setZoom:(float)zoom reply:(id)reply;
- (void)xpc_setZoomMagnification:(float)magnification reply:(id)reply;
- (void)xpc_startCaptureWithMode:(int64_t)mode reply:(id)reply;
- (void)xpc_stopCaptureWithReply:(id)reply;
- (void)xpc_suspend;
- (void)xpc_toggleCameraDevice;
@end

@implementation CCCameraConnectionInternal

- (void)xpc_ensureSwitchedToOneOfSupportedCaptureModes:(id)modes reply:(id)reply
{
  replyCopy = reply;
  modesCopy = modes;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_ensureSwitchedToOneOfSupportedCaptureModes:modesCopy reply:replyCopy];
}

- (void)takePhotoWithCountdown:(unint64_t)countdown
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained takePhotoWithCountdown:countdown];
}

- (void)xpc_beginBurstCaptureWithReply:(id)reply
{
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_beginBurstCaptureWithReply:replyCopy];
}

- (void)xpc_endBurstCaptureWithReply:(id)reply
{
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_endBurstCaptureWithReply:replyCopy];
}

- (void)xpc_setCaptureDevice:(int64_t)device reply:(id)reply
{
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_setCaptureDevice:device reply:replyCopy];
}

- (void)xpc_setCaptureMode:(int64_t)mode reply:(id)reply
{
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_setCaptureMode:mode reply:replyCopy];
}

- (void)xpc_startCaptureWithMode:(int64_t)mode reply:(id)reply
{
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_startCaptureWithMode:mode reply:replyCopy];
}

- (void)xpc_pauseCaptureWithReply:(id)reply
{
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_pauseCaptureWithReply:replyCopy];
}

- (void)xpc_resumeCaptureWithReply:(id)reply
{
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_resumeCaptureWithReply:replyCopy];
}

- (void)xpc_stopCaptureWithReply:(id)reply
{
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_stopCaptureWithReply:replyCopy];
}

- (void)xpc_suspend
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_suspend];
}

- (void)xpc_setPreviewEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_setPreviewEndpoint:endpointCopy];
}

- (void)xpc_setFocusPoint:(id)point
{
  pointCopy = point;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_setFocusPoint:pointCopy];
}

- (void)xpc_cancelCountdown
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_cancelCountdown];
}

- (void)xpc_setZoom:(float)zoom reply:(id)reply
{
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  *&v7 = zoom;
  [WeakRetained xpc_setZoom:replyCopy reply:v7];
}

- (void)xpc_setZoomMagnification:(float)magnification reply:(id)reply
{
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  *&v7 = magnification;
  [WeakRetained xpc_setZoomMagnification:replyCopy reply:v7];
}

- (void)xpc_setFlashMode:(int64_t)mode
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_setFlashMode:mode];
}

- (void)xpc_setHDRMode:(int64_t)mode
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_setHDRMode:mode];
}

- (void)xpc_setIrisMode:(int64_t)mode
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_setIrisMode:mode];
}

- (void)xpc_setSharedLibraryMode:(int64_t)mode
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_setSharedLibraryMode:mode];
}

- (void)xpc_toggleCameraDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_toggleCameraDevice];
}

- (CCCameraConnection)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end