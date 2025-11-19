@interface GESSAlgAdaptiveQuadModelConvertWithGeometryEnhancementReport
- (GESSAlgAdaptiveQuadModelConvertWithGeometryEnhancementReport)init;
@end

@implementation GESSAlgAdaptiveQuadModelConvertWithGeometryEnhancementReport

- (GESSAlgAdaptiveQuadModelConvertWithGeometryEnhancementReport)init
{
  v7.receiver = self;
  v7.super_class = GESSAlgAdaptiveQuadModelConvertWithGeometryEnhancementReport;
  v2 = [(GESSAlgAdaptiveQuadModelConvertReport *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(GESSAlgSDSmoothReport);
    objc_msgSend_setSmoothReport_(v2, v4, v3, v5);
  }

  return v2;
}

@end