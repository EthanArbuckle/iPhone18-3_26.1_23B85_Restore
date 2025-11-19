@interface GESSAlgIsometricParameterizeReport
- (GESSAlgIsometricParameterizeReport)init;
@end

@implementation GESSAlgIsometricParameterizeReport

- (GESSAlgIsometricParameterizeReport)init
{
  v38.receiver = self;
  v38.super_class = GESSAlgIsometricParameterizeReport;
  v2 = [(GESSAlgReport *)&v38 init];
  v6 = v2;
  if (v2)
  {
    objc_msgSend_setChartingTime_(v2, v3, v4, v5, 0.0);
    objc_msgSend_setInitialParameterizationTime_(v6, v7, v8, v9, 0.0);
    objc_msgSend_setSplitParameterizationTime_(v6, v10, v11, v12, 0.0);
    objc_msgSend_setChartMergingTime_(v6, v13, v14, v15, 0.0);
    objc_msgSend_setFixSelfIntersectionTime_(v6, v16, v17, v18, 0.0);
    objc_msgSend_setPackingTime_(v6, v19, v20, v21, 0.0);
    objc_msgSend_setNumOfCharts_(v6, v22, 0, v23);
    objc_msgSend_setNumOfPackedTextures_(v6, v24, 0, v25);
    objc_msgSend_setMaximumStretchRatio_(v6, v26, v27, v28, 0.0);
    objc_msgSend_setAverageStretchRatio_(v6, v29, v30, v31, 0.0);
    objc_msgSend_setSelfIntersectionRatio_(v6, v32, v33, v34, 0.0);
    objc_msgSend_setParameterizeStatus_(v6, v35, 3, v36);
  }

  return v6;
}

@end