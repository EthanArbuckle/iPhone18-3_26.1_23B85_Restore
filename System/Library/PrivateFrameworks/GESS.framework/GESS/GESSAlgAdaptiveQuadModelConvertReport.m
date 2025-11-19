@interface GESSAlgAdaptiveQuadModelConvertReport
- (GESSAlgAdaptiveQuadModelConvertReport)init;
@end

@implementation GESSAlgAdaptiveQuadModelConvertReport

- (GESSAlgAdaptiveQuadModelConvertReport)init
{
  v46.receiver = self;
  v46.super_class = GESSAlgAdaptiveQuadModelConvertReport;
  v2 = [(GESSAlgReport *)&v46 init];
  v6 = v2;
  if (v2)
  {
    objc_msgSend_setPreProcessingTime_(v2, v3, v4, v5, 0.0);
    objc_msgSend_setTangentialFieldTime_(v6, v7, v8, v9, 0.0);
    objc_msgSend_setDeformationTime_(v6, v10, v11, v12, 0.0);
    objc_msgSend_setQuadrangulationTime_(v6, v13, v14, v15, 0.0);
    objc_msgSend_setDiscretizationTime_(v6, v16, v17, v18, 0.0);
    objc_msgSend_setQuadComponentsMergingTime_(v6, v19, v20, v21, 0.0);
    objc_msgSend_setBakingTime_(v6, v22, v23, v24, 0.0);
    objc_msgSend_setTotalTime_(v6, v25, v26, v27, 0.0);
    objc_msgSend_setNumOfOutputComponents_(v6, v28, 1, v29);
    objc_msgSend_setNumOfSingularity_(v6, v30, 0, v31);
    objc_msgSend_setNumOfIntegerVariables_(v6, v32, 0, v33);
    objc_msgSend_setNumOfTotalVariables_(v6, v34, 0, v35);
    objc_msgSend_setQualityMetricSolverMAE_(v6, v36, v37, v38, 0.0);
    objc_msgSend_setQualityMetricAngleMean_(v6, v39, v40, v41, 0.0);
    objc_msgSend_setQualityMetricAngleSTD_(v6, v42, v43, v44, 0.0);
  }

  return v6;
}

@end