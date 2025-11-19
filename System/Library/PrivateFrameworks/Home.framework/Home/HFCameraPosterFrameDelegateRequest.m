@interface HFCameraPosterFrameDelegateRequest
- (HFCameraPosterFrameDelegate)delegate;
@end

@implementation HFCameraPosterFrameDelegateRequest

- (HFCameraPosterFrameDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end