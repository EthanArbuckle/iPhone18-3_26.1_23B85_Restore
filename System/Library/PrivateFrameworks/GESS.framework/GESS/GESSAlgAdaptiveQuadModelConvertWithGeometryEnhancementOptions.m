@interface GESSAlgAdaptiveQuadModelConvertWithGeometryEnhancementOptions
- (GESSAlgAdaptiveQuadModelConvertWithGeometryEnhancementOptions)init;
@end

@implementation GESSAlgAdaptiveQuadModelConvertWithGeometryEnhancementOptions

- (GESSAlgAdaptiveQuadModelConvertWithGeometryEnhancementOptions)init
{
  v7.receiver = self;
  v7.super_class = GESSAlgAdaptiveQuadModelConvertWithGeometryEnhancementOptions;
  v2 = [(GESSAlgAdaptiveQuadModelConvertOptions *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(GESSAlgSDSmoothOptions);
    objc_msgSend_setSmoothOptions_(v2, v4, v3, v5);
  }

  return v2;
}

@end