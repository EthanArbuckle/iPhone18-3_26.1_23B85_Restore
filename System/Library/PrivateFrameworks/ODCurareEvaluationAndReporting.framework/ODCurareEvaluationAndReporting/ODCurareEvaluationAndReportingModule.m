@interface ODCurareEvaluationAndReportingModule
- (BOOL)evaluateDefaultModelWithDefaultModelPath:(id)a3 modelConfiguration:(id)a4 error:(id *)a5;
- (BOOL)trainAndEvaluateAdaptedModelsWithAdaptableModelPath:(id)a3 modelConfiguration:(id)a4 error:(id *)a5;
- (BOOL)trainAndEvaluateModelsWithCandidateModels:(id)a3 personalizationPolicy:(id)a4 selectionPolicy:(id)a5 error:(id *)a6;
- (ODCurareEvaluationAndReportingModule)initWithBundleIdentifier:(id)a3 dataProviderInstance:(id)a4 evaluationInstance:(id)a5 personalizationInstance:(id)a6 pruningPolicy:(id)a7 error:(id *)a8;
- (id)getEvaluationResults;
- (id)getSelectedModel:(id *)a3;
@end

@implementation ODCurareEvaluationAndReportingModule

- (ODCurareEvaluationAndReportingModule)initWithBundleIdentifier:(id)a3 dataProviderInstance:(id)a4 evaluationInstance:(id)a5 personalizationInstance:(id)a6 pruningPolicy:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v23.receiver = self;
  v23.super_class = ODCurareEvaluationAndReportingModule;
  v19 = [(ODCurareEvaluationAndReportingModule *)&v23 init];
  if (v19)
  {
    v20 = [[ODCurareEvaluationAndReportingModuleInternal alloc] initWithBundleIdentifier:v14 dataProviderInstance:v15 evaluationInstance:v16 personalizationInstance:v17 pruningPolicy:v18 error:a8];
    underlyingObject = v19->_underlyingObject;
    v19->_underlyingObject = v20;
  }

  return v19;
}

- (id)getSelectedModel:(id *)a3
{
  v4 = [(ODCurareEvaluationAndReportingModule *)self underlyingObject];
  v5 = [v4 getSelectedModelAndReturnError:a3];

  return v5;
}

- (BOOL)trainAndEvaluateModelsWithCandidateModels:(id)a3 personalizationPolicy:(id)a4 selectionPolicy:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(ODCurareEvaluationAndReportingModule *)self underlyingObject];
  v14 = [v13 trainAndEvaluateModelsWithCandidateModels:v12 personalizationPolicy:v11 modelSelectionPolicy:v10 error:a6];

  LOBYTE(v11) = [v14 BOOLValue];
  return v11;
}

- (BOOL)evaluateDefaultModelWithDefaultModelPath:(id)a3 modelConfiguration:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(ODCurareEvaluationAndReportingModule *)self underlyingObject];
  v11 = [v10 evaluateDefaultModelWithDefaultModelPath:v9 modelConfiguration:v8 error:a5];

  LOBYTE(v9) = [v11 BOOLValue];
  return v9;
}

- (BOOL)trainAndEvaluateAdaptedModelsWithAdaptableModelPath:(id)a3 modelConfiguration:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(ODCurareEvaluationAndReportingModule *)self underlyingObject];
  v11 = [v10 trainAndEvaluateAdaptedModelsWithAdaptableModelPath:v9 modelConfiguration:v8 error:a5];

  LOBYTE(v9) = [v11 BOOLValue];
  return v9;
}

- (id)getEvaluationResults
{
  v2 = [(ODCurareEvaluationAndReportingModule *)self underlyingObject];
  v3 = [v2 getEvaluationResults];

  return v3;
}

@end