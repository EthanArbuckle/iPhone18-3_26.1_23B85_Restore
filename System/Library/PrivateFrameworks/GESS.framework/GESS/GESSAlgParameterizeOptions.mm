@interface GESSAlgParameterizeOptions
- (GESSAlgParameterizeOptions)init;
@end

@implementation GESSAlgParameterizeOptions

- (GESSAlgParameterizeOptions)init
{
  v19.receiver = self;
  v19.super_class = GESSAlgParameterizeOptions;
  v2 = [(GESSAlgParameterizeOptions *)&v19 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setPackingMethod_(v2, v3, 0, v4);
    objc_msgSend_setOverlapCheckMode_(v5, v6, 0, v7);
    objc_msgSend_setEnableUVUtilizationOptimization_(v5, v8, 1, v9);
    objc_msgSend_setTextureResolution_(v5, v10, 4096, v11);
    objc_msgSend_setNumOfTextures_(v5, v12, 1, v13);
    LODWORD(v14) = 8.0;
    objc_msgSend_setGutter_(v5, v15, v16, v17, v14);
  }

  return v5;
}

@end