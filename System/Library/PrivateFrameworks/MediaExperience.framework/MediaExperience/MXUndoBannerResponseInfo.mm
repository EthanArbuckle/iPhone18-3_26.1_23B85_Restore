@interface MXUndoBannerResponseInfo
- (MXUndoBannerResponseInfo)init;
- (void)dealloc;
@end

@implementation MXUndoBannerResponseInfo

- (MXUndoBannerResponseInfo)init
{
  v4.receiver = self;
  v4.super_class = MXUndoBannerResponseInfo;
  v2 = [(MXBannerResponseInfoBase *)&v4 init];
  if (v2)
  {
    v2->_fromPorts = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v2;
}

- (void)dealloc
{
  self->_fromPorts = 0;
  v3.receiver = self;
  v3.super_class = MXUndoBannerResponseInfo;
  [(MXBannerResponseInfoBase *)&v3 dealloc];
}

@end