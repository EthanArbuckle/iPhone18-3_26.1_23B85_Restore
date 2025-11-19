@interface GESSAlgAdaptiveCubeInferenceReport
- (GESSAlgAdaptiveCubeInferenceReport)init;
@end

@implementation GESSAlgAdaptiveCubeInferenceReport

- (GESSAlgAdaptiveCubeInferenceReport)init
{
  v17.receiver = self;
  v17.super_class = GESSAlgAdaptiveCubeInferenceReport;
  v2 = [(GESSAlgReport *)&v17 init];
  v6 = v2;
  if (v2)
  {
    objc_msgSend_setTotalTime_(v2, v3, v4, v5, 0.0);
    objc_msgSend_setDataConvertTime_(v6, v7, v8, v9, 0.0);
    objc_msgSend_setConstructVerticesAndFacesTime_(v6, v10, v11, v12, 0.0);
    objc_msgSend_setConstructMeshTime_(v6, v13, v14, v15, 0.0);
  }

  return v6;
}

@end