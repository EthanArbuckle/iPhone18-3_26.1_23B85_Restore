@interface GESSAlgAdaptiveQuadModelConvertOptions
- (GESSAlgAdaptiveQuadModelConvertOptions)init;
@end

@implementation GESSAlgAdaptiveQuadModelConvertOptions

- (GESSAlgAdaptiveQuadModelConvertOptions)init
{
  v14.receiver = self;
  v14.super_class = GESSAlgAdaptiveQuadModelConvertOptions;
  v2 = [(GESSAlgAdaptiveQuadModelConvertOptions *)&v14 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setOutputFaceNumber_(v2, v3, 10000, v4);
    objc_msgSend_setEnableSimplify_(v5, v6, 1, v7);
    objc_msgSend_setTextureResolution_(v5, v8, 2048, v9);
    v10 = objc_alloc_init(GESSTextureTransferOptions);
    objc_msgSend_setTextureTransferOptions_(v5, v11, v10, v12);
  }

  return v5;
}

@end