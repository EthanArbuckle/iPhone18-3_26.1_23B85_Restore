@interface GESSAlgInverseRenderOptions
- (GESSAlgInverseRenderOptions)init;
@end

@implementation GESSAlgInverseRenderOptions

- (GESSAlgInverseRenderOptions)init
{
  v11.receiver = self;
  v11.super_class = GESSAlgInverseRenderOptions;
  v2 = [(GESSAlgInverseRenderOptions *)&v11 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setIterations_(v2, v3, 200, v4);
    objc_msgSend_setParameterizeTextureResolution_(v5, v6, 2048, v7);
    objc_msgSend_setTextureBorderConstraint_(v5, v8, 1, v9);
  }

  return v5;
}

@end