@interface CCCameraConnectionInternal
- (CCCameraConnection)parent;
- (void)takePhotoWithCountdown:(unint64_t)a3;
- (void)xpc_beginBurstCaptureWithReply:(id)a3;
- (void)xpc_cancelCountdown;
- (void)xpc_endBurstCaptureWithReply:(id)a3;
- (void)xpc_ensureSwitchedToOneOfSupportedCaptureModes:(id)a3 reply:(id)a4;
- (void)xpc_pauseCaptureWithReply:(id)a3;
- (void)xpc_resumeCaptureWithReply:(id)a3;
- (void)xpc_setCaptureDevice:(int64_t)a3 reply:(id)a4;
- (void)xpc_setCaptureMode:(int64_t)a3 reply:(id)a4;
- (void)xpc_setFlashMode:(int64_t)a3;
- (void)xpc_setFocusPoint:(id)a3;
- (void)xpc_setHDRMode:(int64_t)a3;
- (void)xpc_setIrisMode:(int64_t)a3;
- (void)xpc_setPreviewEndpoint:(id)a3;
- (void)xpc_setSharedLibraryMode:(int64_t)a3;
- (void)xpc_setZoom:(float)a3 reply:(id)a4;
- (void)xpc_setZoomMagnification:(float)a3 reply:(id)a4;
- (void)xpc_startCaptureWithMode:(int64_t)a3 reply:(id)a4;
- (void)xpc_stopCaptureWithReply:(id)a3;
- (void)xpc_suspend;
- (void)xpc_toggleCameraDevice;
@end

@implementation CCCameraConnectionInternal

- (void)xpc_ensureSwitchedToOneOfSupportedCaptureModes:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_ensureSwitchedToOneOfSupportedCaptureModes:v7 reply:v6];
}

- (void)takePhotoWithCountdown:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained takePhotoWithCountdown:a3];
}

- (void)xpc_beginBurstCaptureWithReply:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_beginBurstCaptureWithReply:v4];
}

- (void)xpc_endBurstCaptureWithReply:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_endBurstCaptureWithReply:v4];
}

- (void)xpc_setCaptureDevice:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_setCaptureDevice:a3 reply:v6];
}

- (void)xpc_setCaptureMode:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_setCaptureMode:a3 reply:v6];
}

- (void)xpc_startCaptureWithMode:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_startCaptureWithMode:a3 reply:v6];
}

- (void)xpc_pauseCaptureWithReply:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_pauseCaptureWithReply:v4];
}

- (void)xpc_resumeCaptureWithReply:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_resumeCaptureWithReply:v4];
}

- (void)xpc_stopCaptureWithReply:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_stopCaptureWithReply:v4];
}

- (void)xpc_suspend
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_suspend];
}

- (void)xpc_setPreviewEndpoint:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_setPreviewEndpoint:v4];
}

- (void)xpc_setFocusPoint:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_setFocusPoint:v4];
}

- (void)xpc_cancelCountdown
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_cancelCountdown];
}

- (void)xpc_setZoom:(float)a3 reply:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  *&v7 = a3;
  [WeakRetained xpc_setZoom:v6 reply:v7];
}

- (void)xpc_setZoomMagnification:(float)a3 reply:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  *&v7 = a3;
  [WeakRetained xpc_setZoomMagnification:v6 reply:v7];
}

- (void)xpc_setFlashMode:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_setFlashMode:a3];
}

- (void)xpc_setHDRMode:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_setHDRMode:a3];
}

- (void)xpc_setIrisMode:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_setIrisMode:a3];
}

- (void)xpc_setSharedLibraryMode:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained xpc_setSharedLibraryMode:a3];
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