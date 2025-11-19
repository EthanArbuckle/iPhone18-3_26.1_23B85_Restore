@interface GESSAlgInverseRenderReport
- (GESSAlgInverseRenderReport)init;
@end

@implementation GESSAlgInverseRenderReport

- (GESSAlgInverseRenderReport)init
{
  v23.receiver = self;
  v23.super_class = GESSAlgInverseRenderReport;
  v2 = [(GESSAlgReport *)&v23 init];
  v6 = v2;
  if (v2)
  {
    objc_msgSend_setParameterizeTime_(v2, v3, v4, v5, 0.0);
    objc_msgSend_setDataConvertTime_(v6, v7, v8, v9, 0.0);
    objc_msgSend_setTextureOptimizationPreparationTime_(v6, v10, v11, v12, 0.0);
    objc_msgSend_setTextureOptimizationTime_(v6, v13, v14, v15, 0.0);
    objc_msgSend_setBuildMaterialMapsTime_(v6, v16, v17, v18, 0.0);
    objc_msgSend_setTotalTime_(v6, v19, v20, v21, 0.0);
  }

  return v6;
}

@end