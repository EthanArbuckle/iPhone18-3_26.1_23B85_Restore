@interface CSIHelper
- (void)dealloc;
@end

@implementation CSIHelper

- (void)dealloc
{
  objc_storeWeak(&self->rendition, 0);
  objc_storeWeak(&self->sharedBlockDataBGRX, 0);
  objc_storeWeak(&self->sharedBlockDataRGBX, 0);
  objc_storeWeak(&self->sharedBlockDataGray, 0);
  v3.receiver = self;
  v3.super_class = CSIHelper;
  [(CSIHelper *)&v3 dealloc];
}

@end