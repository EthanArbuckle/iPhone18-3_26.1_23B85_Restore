@interface DRClientItemViewModel
- (BOOL)createImageRequest;
- (BOOL)invalidateImage;
- (CGPoint)anchorPoint;
- (DRClientItemViewModel)initWithClient:(id)client;
- (void)fulfillImageRequest;
@end

@implementation DRClientItemViewModel

- (DRClientItemViewModel)initWithClient:(id)client
{
  clientCopy = client;
  v14.receiver = self;
  v14.super_class = DRClientItemViewModel;
  v6 = [(DRClientItemViewModel *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, client);
    __asm { FMOV            V0.2D, #0.5 }

    v7->_anchorPoint = _Q0;
    v7->_imageDirty = [clientCopy isSource];
  }

  return v7;
}

- (BOOL)invalidateImage
{
  p_imageDirty = &self->_imageDirty;
  if (!self->_imageDirty)
  {
    goto LABEL_4;
  }

  if (self->_pendingRequestCount)
  {
    p_imageDirty = &self->_invalidatedDuringRequest;
LABEL_4:
    result = 1;
    *p_imageDirty = 1;
    return result;
  }

  return 0;
}

- (BOOL)createImageRequest
{
  if (!self->_imageDirty)
  {
    return 0;
  }

  pendingRequestCount = self->_pendingRequestCount;
  if (pendingRequestCount)
  {
    if (!self->_invalidatedDuringRequest)
    {
      return 0;
    }
  }

  self->_pendingRequestCount = pendingRequestCount + 1;
  self->_invalidatedDuringRequest = 0;
  return 1;
}

- (void)fulfillImageRequest
{
  pendingRequestCount = self->_pendingRequestCount;
  if (pendingRequestCount)
  {
    v3 = pendingRequestCount - 1;
    self->_pendingRequestCount = v3;
    if (!v3)
    {
      self->_imageDirty = 0;
    }
  }
}

- (CGPoint)anchorPoint
{
  x = self->_anchorPoint.x;
  y = self->_anchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end