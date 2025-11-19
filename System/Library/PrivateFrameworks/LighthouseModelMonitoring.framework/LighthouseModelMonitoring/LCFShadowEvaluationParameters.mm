@interface LCFShadowEvaluationParameters
- (id)init:(id)a3 featureNames:(id)a4 vectorFeatureName:(id)a5 srcLabelName:(id)a6 destLabelName:(id)a7 startDate:(id)a8 endDate:(id)a9;
- (id)init:(id)a3 featureNames:(id)a4 vectorFeatureName:(id)a5 srcLabelName:(id)a6 destLabelName:(id)a7 startDate:(id)a8 endDate:(id)a9 preprocessHandler:(id)a10 inferenceHandler:(id)a11 metricsHandler:(id)a12 groundTruthLabelFeatureName:(id)a13 predictedLabelFeatureName:(id)a14;
@end

@implementation LCFShadowEvaluationParameters

- (id)init:(id)a3 featureNames:(id)a4 vectorFeatureName:(id)a5 srcLabelName:(id)a6 destLabelName:(id)a7 startDate:(id)a8 endDate:(id)a9
{
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v24 = a7;
  v16 = a8;
  v17 = a9;
  v29.receiver = self;
  v29.super_class = LCFShadowEvaluationParameters;
  v18 = [(LCFShadowEvaluationParameters *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_modelNames, a3);
    objc_storeStrong(&v19->_featureNames, a4);
    objc_storeStrong(&v19->_vectorFeatureName, a5);
    objc_storeStrong(&v19->_srcLabelName, a6);
    objc_storeStrong(&v19->_destLabelName, a7);
    objc_storeStrong(&v19->_startDate, a8);
    objc_storeStrong(&v19->_endDate, a9);
    preprocessHandler = v19->_preprocessHandler;
    v19->_preprocessHandler = 0;

    inferenceHandler = v19->_inferenceHandler;
    v19->_inferenceHandler = 0;

    metricsHandler = v19->_metricsHandler;
    v19->_metricsHandler = 0;

    objc_storeStrong(&v19->_groundTruthLabelFeatureName, a7);
    objc_storeStrong(&v19->_predictedLabelFeatureName, a7);
  }

  return v19;
}

- (id)init:(id)a3 featureNames:(id)a4 vectorFeatureName:(id)a5 srcLabelName:(id)a6 destLabelName:(id)a7 startDate:(id)a8 endDate:(id)a9 preprocessHandler:(id)a10 inferenceHandler:(id)a11 metricsHandler:(id)a12 groundTruthLabelFeatureName:(id)a13 predictedLabelFeatureName:(id)a14
{
  v50 = a3;
  v49 = a4;
  v41 = a5;
  v48 = a5;
  v47 = a6;
  v42 = a7;
  v19 = a7;
  v43 = a8;
  v46 = a8;
  v45 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  v51.receiver = self;
  v51.super_class = LCFShadowEvaluationParameters;
  v25 = [(LCFShadowEvaluationParameters *)&v51 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_modelNames, a3);
    objc_storeStrong(&v26->_featureNames, a4);
    objc_storeStrong(&v26->_vectorFeatureName, v41);
    objc_storeStrong(&v26->_srcLabelName, a6);
    objc_storeStrong(&v26->_destLabelName, v42);
    objc_storeStrong(&v26->_startDate, v43);
    objc_storeStrong(&v26->_endDate, a9);
    v27 = MEMORY[0x259C52800](v20);
    preprocessHandler = v26->_preprocessHandler;
    v26->_preprocessHandler = v27;

    v29 = MEMORY[0x259C52800](v21);
    inferenceHandler = v26->_inferenceHandler;
    v26->_inferenceHandler = v29;

    v31 = MEMORY[0x259C52800](v22);
    metricsHandler = v26->_metricsHandler;
    v26->_metricsHandler = v31;

    if (v23)
    {
      v33 = v23;
    }

    else
    {
      v33 = v19;
    }

    v34 = v33;
    groundTruthLabelFeatureName = v26->_groundTruthLabelFeatureName;
    v26->_groundTruthLabelFeatureName = v34;

    if (v24)
    {
      v36 = v24;
    }

    else
    {
      v36 = v19;
    }

    v37 = v36;
    predictedLabelFeatureName = v26->_predictedLabelFeatureName;
    v26->_predictedLabelFeatureName = v37;
  }

  return v26;
}

@end