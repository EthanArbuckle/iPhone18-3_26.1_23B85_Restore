@interface ODCurareInterfaceModule
- (BOOL)evaluateModelsWithEvaluationModels:(id)models error:(id *)error;
- (BOOL)personalizeModelsWithPersonalizableModels:(id)models personalizationPolicy:(id)policy error:(id *)error;
- (ODCurareInterfaceModule)initWithBundleIdentifier:(id)identifier evaluationInstance:(id)instance personalizationInstance:(id)personalizationInstance pruningPolicy:(id)policy error:(id *)error;
- (id)getSelectedModelWithDefaultModel:(id)model selectionPolicy:(id)policy error:(id *)error;
- (void)generateCAReportAndReturnError:(id *)error;
@end

@implementation ODCurareInterfaceModule

- (ODCurareInterfaceModule)initWithBundleIdentifier:(id)identifier evaluationInstance:(id)instance personalizationInstance:(id)personalizationInstance pruningPolicy:(id)policy error:(id *)error
{
  identifierCopy = identifier;
  instanceCopy = instance;
  personalizationInstanceCopy = personalizationInstance;
  policyCopy = policy;
  v20.receiver = self;
  v20.super_class = ODCurareInterfaceModule;
  v16 = [(ODCurareInterfaceModule *)&v20 init];
  if (v16)
  {
    v17 = [[ODCurareInterfaceModuleInternal alloc] initWithBundleIdentifier:identifierCopy evaluationInstance:instanceCopy personalizationInstance:personalizationInstanceCopy pruningPolicy:policyCopy error:error];
    underlyingObject = v16->_underlyingObject;
    v16->_underlyingObject = v17;
  }

  return v16;
}

- (BOOL)evaluateModelsWithEvaluationModels:(id)models error:(id *)error
{
  modelsCopy = models;
  underlyingObject = [(ODCurareInterfaceModule *)self underlyingObject];
  v8 = [underlyingObject evaluateModelsWithEvaluationModels:modelsCopy error:error];

  LOBYTE(underlyingObject) = [v8 BOOLValue];
  return underlyingObject;
}

- (BOOL)personalizeModelsWithPersonalizableModels:(id)models personalizationPolicy:(id)policy error:(id *)error
{
  policyCopy = policy;
  modelsCopy = models;
  underlyingObject = [(ODCurareInterfaceModule *)self underlyingObject];
  v11 = [underlyingObject personalizeModelsWithPersonalizableModels:modelsCopy personalizationPolicy:policyCopy error:error];

  LOBYTE(modelsCopy) = [v11 BOOLValue];
  return modelsCopy;
}

- (id)getSelectedModelWithDefaultModel:(id)model selectionPolicy:(id)policy error:(id *)error
{
  policyCopy = policy;
  modelCopy = model;
  underlyingObject = [(ODCurareInterfaceModule *)self underlyingObject];
  v11 = [underlyingObject getSelectedModelWithDefaultModel:modelCopy selectionPolicy:policyCopy error:error];

  return v11;
}

- (void)generateCAReportAndReturnError:(id *)error
{
  underlyingObject = [(ODCurareInterfaceModule *)self underlyingObject];
  [underlyingObject generateCAReportAndReturnError:error];
}

@end