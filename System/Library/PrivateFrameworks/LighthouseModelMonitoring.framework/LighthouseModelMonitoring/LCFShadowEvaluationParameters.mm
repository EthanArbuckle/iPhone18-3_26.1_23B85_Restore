@interface LCFShadowEvaluationParameters
- (id)init:(id)init featureNames:(id)names vectorFeatureName:(id)name srcLabelName:(id)labelName destLabelName:(id)destLabelName startDate:(id)date endDate:(id)endDate;
- (id)init:(id)init featureNames:(id)names vectorFeatureName:(id)name srcLabelName:(id)labelName destLabelName:(id)destLabelName startDate:(id)date endDate:(id)endDate preprocessHandler:(id)self0 inferenceHandler:(id)self1 metricsHandler:(id)self2 groundTruthLabelFeatureName:(id)self3 predictedLabelFeatureName:(id)self4;
@end

@implementation LCFShadowEvaluationParameters

- (id)init:(id)init featureNames:(id)names vectorFeatureName:(id)name srcLabelName:(id)labelName destLabelName:(id)destLabelName startDate:(id)date endDate:(id)endDate
{
  initCopy = init;
  namesCopy = names;
  nameCopy = name;
  labelNameCopy = labelName;
  destLabelNameCopy = destLabelName;
  dateCopy = date;
  endDateCopy = endDate;
  v29.receiver = self;
  v29.super_class = LCFShadowEvaluationParameters;
  v18 = [(LCFShadowEvaluationParameters *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_modelNames, init);
    objc_storeStrong(&v19->_featureNames, names);
    objc_storeStrong(&v19->_vectorFeatureName, name);
    objc_storeStrong(&v19->_srcLabelName, labelName);
    objc_storeStrong(&v19->_destLabelName, destLabelName);
    objc_storeStrong(&v19->_startDate, date);
    objc_storeStrong(&v19->_endDate, endDate);
    preprocessHandler = v19->_preprocessHandler;
    v19->_preprocessHandler = 0;

    inferenceHandler = v19->_inferenceHandler;
    v19->_inferenceHandler = 0;

    metricsHandler = v19->_metricsHandler;
    v19->_metricsHandler = 0;

    objc_storeStrong(&v19->_groundTruthLabelFeatureName, destLabelName);
    objc_storeStrong(&v19->_predictedLabelFeatureName, destLabelName);
  }

  return v19;
}

- (id)init:(id)init featureNames:(id)names vectorFeatureName:(id)name srcLabelName:(id)labelName destLabelName:(id)destLabelName startDate:(id)date endDate:(id)endDate preprocessHandler:(id)self0 inferenceHandler:(id)self1 metricsHandler:(id)self2 groundTruthLabelFeatureName:(id)self3 predictedLabelFeatureName:(id)self4
{
  initCopy = init;
  namesCopy = names;
  nameCopy = name;
  nameCopy2 = name;
  labelNameCopy = labelName;
  destLabelNameCopy = destLabelName;
  destLabelNameCopy2 = destLabelName;
  dateCopy = date;
  dateCopy2 = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  inferenceHandlerCopy = inferenceHandler;
  metricsHandlerCopy = metricsHandler;
  featureNameCopy = featureName;
  labelFeatureNameCopy = labelFeatureName;
  v51.receiver = self;
  v51.super_class = LCFShadowEvaluationParameters;
  v25 = [(LCFShadowEvaluationParameters *)&v51 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_modelNames, init);
    objc_storeStrong(&v26->_featureNames, names);
    objc_storeStrong(&v26->_vectorFeatureName, nameCopy);
    objc_storeStrong(&v26->_srcLabelName, labelName);
    objc_storeStrong(&v26->_destLabelName, destLabelNameCopy);
    objc_storeStrong(&v26->_startDate, dateCopy);
    objc_storeStrong(&v26->_endDate, endDate);
    v27 = MEMORY[0x259C52800](handlerCopy);
    preprocessHandler = v26->_preprocessHandler;
    v26->_preprocessHandler = v27;

    v29 = MEMORY[0x259C52800](inferenceHandlerCopy);
    inferenceHandler = v26->_inferenceHandler;
    v26->_inferenceHandler = v29;

    v31 = MEMORY[0x259C52800](metricsHandlerCopy);
    metricsHandler = v26->_metricsHandler;
    v26->_metricsHandler = v31;

    if (featureNameCopy)
    {
      v33 = featureNameCopy;
    }

    else
    {
      v33 = destLabelNameCopy2;
    }

    v34 = v33;
    groundTruthLabelFeatureName = v26->_groundTruthLabelFeatureName;
    v26->_groundTruthLabelFeatureName = v34;

    if (labelFeatureNameCopy)
    {
      v36 = labelFeatureNameCopy;
    }

    else
    {
      v36 = destLabelNameCopy2;
    }

    v37 = v36;
    predictedLabelFeatureName = v26->_predictedLabelFeatureName;
    v26->_predictedLabelFeatureName = v37;
  }

  return v26;
}

@end