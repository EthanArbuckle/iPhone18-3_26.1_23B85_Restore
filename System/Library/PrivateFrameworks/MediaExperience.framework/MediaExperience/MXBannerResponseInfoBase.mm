@interface MXBannerResponseInfoBase
- (MXBannerResponseInfoBase)init;
- (void)dealloc;
@end

@implementation MXBannerResponseInfoBase

- (MXBannerResponseInfoBase)init
{
  v5.receiver = self;
  v5.super_class = MXBannerResponseInfoBase;
  v2 = [(MXBannerResponseInfoBase *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_bannerResponse = 0;
    v2->_routeSemaphore = dispatch_semaphore_create(0);
    v3->_txid = 0;
  }

  return v3;
}

- (void)dealloc
{
  self->_bannerResponse = 0;
  dispatch_semaphore_signal(self->_routeSemaphore);
  routeSemaphore = self->_routeSemaphore;
  if (routeSemaphore)
  {
    dispatch_release(routeSemaphore);
  }

  self->_routeSemaphore = 0;

  v4.receiver = self;
  v4.super_class = MXBannerResponseInfoBase;
  [(MXBannerResponseInfoBase *)&v4 dealloc];
}

@end