@interface ODCurareEvaluationAndReportingModule
- (BOOL)evaluateDefaultModelWithDefaultModelPath:(id)path modelConfiguration:(id)configuration error:(id *)error;
- (BOOL)trainAndEvaluateAdaptedModelsWithAdaptableModelPath:(id)path modelConfiguration:(id)configuration error:(id *)error;
- (BOOL)trainAndEvaluateModelsWithCandidateModels:(id)models personalizationPolicy:(id)policy selectionPolicy:(id)selectionPolicy error:(id *)error;
- (ODCurareEvaluationAndReportingModule)initWithBundleIdentifier:(id)identifier dataProviderInstance:(id)instance evaluationInstance:(id)evaluationInstance personalizationInstance:(id)personalizationInstance pruningPolicy:(id)policy error:(id *)error;
- (id)getEvaluationResults;
- (id)getSelectedModel:(id *)model;
@end

@implementation ODCurareEvaluationAndReportingModule

- (ODCurareEvaluationAndReportingModule)initWithBundleIdentifier:(id)identifier dataProviderInstance:(id)instance evaluationInstance:(id)evaluationInstance personalizationInstance:(id)personalizationInstance pruningPolicy:(id)policy error:(id *)error
{
  identifierCopy = identifier;
  instanceCopy = instance;
  evaluationInstanceCopy = evaluationInstance;
  personalizationInstanceCopy = personalizationInstance;
  policyCopy = policy;
  v23.receiver = self;
  v23.super_class = ODCurareEvaluationAndReportingModule;
  v19 = [(ODCurareEvaluationAndReportingModule *)&v23 init];
  if (v19)
  {
    v20 = [[ODCurareEvaluationAndReportingModuleInternal alloc] initWithBundleIdentifier:identifierCopy dataProviderInstance:instanceCopy evaluationInstance:evaluationInstanceCopy personalizationInstance:personalizationInstanceCopy pruningPolicy:policyCopy error:error];
    underlyingObject = v19->_underlyingObject;
    v19->_underlyingObject = v20;
  }

  return v19;
}

- (id)getSelectedModel:(id *)model
{
  underlyingObject = [(ODCurareEvaluationAndReportingModule *)self underlyingObject];
  v5 = [underlyingObject getSelectedModelAndReturnError:model];

  return v5;
}

- (BOOL)trainAndEvaluateModelsWithCandidateModels:(id)models personalizationPolicy:(id)policy selectionPolicy:(id)selectionPolicy error:(id *)error
{
  selectionPolicyCopy = selectionPolicy;
  policyCopy = policy;
  modelsCopy = models;
  underlyingObject = [(ODCurareEvaluationAndReportingModule *)self underlyingObject];
  v14 = [underlyingObject trainAndEvaluateModelsWithCandidateModels:modelsCopy personalizationPolicy:policyCopy modelSelectionPolicy:selectionPolicyCopy error:error];

  LOBYTE(policyCopy) = [v14 BOOLValue];
  return policyCopy;
}

- (BOOL)evaluateDefaultModelWithDefaultModelPath:(id)path modelConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  pathCopy = path;
  underlyingObject = [(ODCurareEvaluationAndReportingModule *)self underlyingObject];
  v11 = [underlyingObject evaluateDefaultModelWithDefaultModelPath:pathCopy modelConfiguration:configurationCopy error:error];

  LOBYTE(pathCopy) = [v11 BOOLValue];
  return pathCopy;
}

- (BOOL)trainAndEvaluateAdaptedModelsWithAdaptableModelPath:(id)path modelConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  pathCopy = path;
  underlyingObject = [(ODCurareEvaluationAndReportingModule *)self underlyingObject];
  v11 = [underlyingObject trainAndEvaluateAdaptedModelsWithAdaptableModelPath:pathCopy modelConfiguration:configurationCopy error:error];

  LOBYTE(pathCopy) = [v11 BOOLValue];
  return pathCopy;
}

- (id)getEvaluationResults
{
  underlyingObject = [(ODCurareEvaluationAndReportingModule *)self underlyingObject];
  getEvaluationResults = [underlyingObject getEvaluationResults];

  return getEvaluationResults;
}

@end