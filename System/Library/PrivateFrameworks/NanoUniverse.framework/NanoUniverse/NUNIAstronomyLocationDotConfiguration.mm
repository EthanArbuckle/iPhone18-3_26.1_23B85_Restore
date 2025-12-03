@interface NUNIAstronomyLocationDotConfiguration
+ (CGSize)_defaultSizeForDevice:(id)device;
- (CGSize)defaultSize;
- (NUNIAstronomyLocationDotConfiguration)init;
@end

@implementation NUNIAstronomyLocationDotConfiguration

- (NUNIAstronomyLocationDotConfiguration)init
{
  v11.receiver = self;
  v11.super_class = NUNIAstronomyLocationDotConfiguration;
  v2 = [(NUNIAstronomyLocationDotConfiguration *)&v11 init];
  if (v2)
  {
    mEMORY[0x277CBBB68] = [MEMORY[0x277CBBB68] sharedRenderingContext];
    device = [mEMORY[0x277CBBB68] device];

    [device screenScale];
    v2->_screenScale = v5;
    [objc_opt_class() _defaultSizeForDevice:device];
    v2->_defaultSize.width = v6;
    v2->_defaultSize.height = v7;
    [objc_opt_class() _defaultOuterDotDiameterForDevice:device];
    v2->_defaultOuterDotDiameter = v8;
    [objc_opt_class() _defaultInnerDotDiameterForDevice:device];
    v2->_defaultInnerDotDiameter = v9;
  }

  return v2;
}

+ (CGSize)_defaultSizeForDevice:(id)device
{
  ___LayoutConstants_block_invoke(self, device);
  v3 = *&_LayoutConstants_constants_0;
  v4 = *&_LayoutConstants_constants_1;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)defaultSize
{
  width = self->_defaultSize.width;
  height = self->_defaultSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end