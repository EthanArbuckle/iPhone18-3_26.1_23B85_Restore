@interface GESSAlgInverseRenderImageSet
- (GESSAlgInverseRenderImageSet)init;
@end

@implementation GESSAlgInverseRenderImageSet

- (GESSAlgInverseRenderImageSet)init
{
  v11.receiver = self;
  v11.super_class = GESSAlgInverseRenderImageSet;
  v2 = [(GESSAlgInverseRenderImageSet *)&v11 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setColorImage_(v2, v3, 0, v4);
    objc_msgSend_setMaskImage_(v5, v6, 0, v7);
    objc_msgSend_setMraImage_(v5, v8, 0, v9);
  }

  return v5;
}

@end