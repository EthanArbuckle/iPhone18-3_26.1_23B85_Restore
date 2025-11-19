@interface GESSMaterialParameterData
- (BOOL)setColor:(CGColor *)a3;
- (BOOL)setTextureImage:(CGImage *)a3;
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

- (BOOL)setTextureImage:(CGImage *)a3
{
  v5 = a3;
  self->_image = a3;
  return 1;
}

- (BOOL)setColor:(CGColor *)a3
{
  Components = CGColorGetComponents(a3);
  NumberOfComponents = CGColorGetNumberOfComponents(a3);
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