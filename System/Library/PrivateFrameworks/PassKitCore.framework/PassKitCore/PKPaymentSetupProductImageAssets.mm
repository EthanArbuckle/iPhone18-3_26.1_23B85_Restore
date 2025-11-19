@interface PKPaymentSetupProductImageAssets
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setDigitalCardImage:(CGImage *)a3;
- (void)setLogoImage:(CGImage *)a3;
- (void)setPlasticCardImage:(CGImage *)a3;
- (void)setThumbnailImage:(CGImage *)a3;
@end

@implementation PKPaymentSetupProductImageAssets

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PKPaymentSetupProductImageAssets allocWithZone:?]];
  v4->_digitalCardImage = CGImageRetain(self->_digitalCardImage);
  v4->_plasticCardImage = CGImageRetain(self->_plasticCardImage);
  v4->_thumbnailImage = CGImageRetain(self->_thumbnailImage);
  v4->_logoImage = CGImageRetain(self->_logoImage);
  return v4;
}

- (void)dealloc
{
  digitalCardImage = self->_digitalCardImage;
  if (digitalCardImage)
  {
    CGImageRelease(digitalCardImage);
  }

  plasticCardImage = self->_plasticCardImage;
  if (plasticCardImage)
  {
    CGImageRelease(plasticCardImage);
  }

  thumbnailImage = self->_thumbnailImage;
  if (thumbnailImage)
  {
    CGImageRelease(thumbnailImage);
  }

  logoImage = self->_logoImage;
  if (logoImage)
  {
    CGImageRelease(logoImage);
  }

  v7.receiver = self;
  v7.super_class = PKPaymentSetupProductImageAssets;
  [(PKPaymentSetupProductImageAssets *)&v7 dealloc];
}

- (void)setDigitalCardImage:(CGImage *)a3
{
  digitalCardImage = self->_digitalCardImage;
  if (digitalCardImage)
  {
    CGImageRelease(digitalCardImage);
    self->_digitalCardImage = 0;
  }

  if (a3)
  {
    self->_digitalCardImage = CGImageRetain(a3);
  }
}

- (void)setPlasticCardImage:(CGImage *)a3
{
  plasticCardImage = self->_plasticCardImage;
  if (plasticCardImage)
  {
    CGImageRelease(plasticCardImage);
    self->_plasticCardImage = 0;
  }

  if (a3)
  {
    self->_plasticCardImage = CGImageRetain(a3);
  }
}

- (void)setThumbnailImage:(CGImage *)a3
{
  thumbnailImage = self->_thumbnailImage;
  if (thumbnailImage)
  {
    CGImageRelease(thumbnailImage);
    self->_thumbnailImage = 0;
  }

  if (a3)
  {
    self->_thumbnailImage = CGImageRetain(a3);
  }
}

- (void)setLogoImage:(CGImage *)a3
{
  logoImage = self->_logoImage;
  if (logoImage)
  {
    CGImageRelease(logoImage);
    self->_logoImage = 0;
  }

  if (a3)
  {
    self->_logoImage = CGImageRetain(a3);
  }
}

@end