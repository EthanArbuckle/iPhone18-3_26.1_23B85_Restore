@interface GESSMaterialParameterData
- (BOOL)setColor:(CGColor *)color;
- (BOOL)setTextureImage:(CGImage *)image;
- (GESSMaterialParameterData)init;
@end

@implementation GESSMaterialParameterData

- (GESSMaterialParameterData)init
{
  v3.receiver = self;
  v3.super_class = GESSMaterialParameterData;
  result = [(GESSMaterialParameterData *)&v3 init];
  if (result)
  {
    result->_image = 0;
  }

  return result;
}

- (BOOL)setTextureImage:(CGImage *)image
{
  imageCopy = image;
  self->_image = image;
  return 1;
}

- (BOOL)setColor:(CGColor *)color
{
  Components = CGColorGetComponents(color);
  NumberOfComponents = CGColorGetNumberOfComponents(color);
  if (NumberOfComponents)
  {
    v6 = *Components;
    if (NumberOfComponents >= 3)
    {
      v9 = Components[1];
      v10 = Components[2];
      v7 = 3;
    }

    else
    {
      v7 = 1;
      v8 = *Components;
    }

    v14 = 0;
    v12 = 0x1000000010;
    v13 = v7;
    sub_24BCBF640(&v12);
  }

  return 0;
}

@end