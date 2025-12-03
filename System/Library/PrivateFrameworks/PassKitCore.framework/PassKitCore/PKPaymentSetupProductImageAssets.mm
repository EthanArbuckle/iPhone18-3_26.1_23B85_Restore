@interface PKPaymentSetupProductImageAssets
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setDigitalCardImage:(CGImage *)image;
- (void)setLogoImage:(CGImage *)image;
- (void)setPlasticCardImage:(CGImage *)image;
- (void)setThumbnailImage:(CGImage *)image;
@end

@implementation PKPaymentSetupProductImageAssets

- (id)copyWithZone:(_NSZone *)zone
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

- (void)setDigitalCardImage:(CGImage *)image
{
  digitalCardImage = self->_digitalCardImage;
  if (digitalCardImage)
  {
    CGImageRelease(digitalCardImage);
    self->_digitalCardImage = 0;
  }

  if (image)
  {
    self->_digitalCardImage = CGImageRetain(image);
  }
}

- (void)setPlasticCardImage:(CGImage *)image
{
  plasticCardImage = self->_plasticCardImage;
  if (plasticCardImage)
  {
    CGImageRelease(plasticCardImage);
    self->_plasticCardImage = 0;
  }

  if (image)
  {
    self->_plasticCardImage = CGImageRetain(image);
  }
}

- (void)setThumbnailImage:(CGImage *)image
{
  thumbnailImage = self->_thumbnailImage;
  if (thumbnailImage)
  {
    CGImageRelease(thumbnailImage);
    self->_thumbnailImage = 0;
  }

  if (image)
  {
    self->_thumbnailImage = CGImageRetain(image);
  }
}

- (void)setLogoImage:(CGImage *)image
{
  logoImage = self->_logoImage;
  if (logoImage)
  {
    CGImageRelease(logoImage);
    self->_logoImage = 0;
  }

  if (image)
  {
    self->_logoImage = CGImageRetain(image);
  }
}

@end