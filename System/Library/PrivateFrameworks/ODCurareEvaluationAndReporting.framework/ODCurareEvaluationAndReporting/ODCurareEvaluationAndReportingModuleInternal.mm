@interface ODCurareEvaluationAndReportingModuleInternal
- (BOOL)generatePETReportAndReturnError:(id *)a3;
- (ODCurareEvaluationAndReportingModuleInternal)init;
- (ODCurareEvaluationAndReportingModuleInternal)initWithBundleIdentifier:(id)a3 dataProviderInstance:(id)a4 evaluationInstance:(id)a5 personalizationInstance:(id)a6 pruningPolicy:(id)a7 error:(id *)a8;
- (id)evaluateDefaultModelWithDefaultModelPath:(id)a3 modelConfiguration:(id)a4 error:(id *)a5;
- (id)getEvaluationResults;
- (id)getSelectedModelAndReturnError:(id *)a3;
- (id)trainAndEvaluateAdaptedModelsWithAdaptableModelPath:(id)a3 modelConfiguration:(id)a4 error:(id *)a5;
- (id)trainAndEvaluateModelsWithCandidateModels:(id)a3 personalizationPolicy:(id)a4 modelSelectionPolicy:(id)a5 error:(id *)a6;
@end

@implementation ODCurareEvaluationAndReportingModuleInternal

- (ODCurareEvaluationAndReportingModuleInternal)initWithBundleIdentifier:(id)a3 dataProviderInstance:(id)a4 evaluationInstance:(id)a5 personalizationInstance:(id)a6 pruningPolicy:(id)a7 error:(id *)a8
{
  v12 = sub_25C82E0AC();
  v14 = v13;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15 = a7;
  return ODCurareEvaluationAndReportingModule.init(bundleIdentifier:dataProviderInstance:evaluationInstance:personalizationInstance:pruningPolicy:)(v12, v14, a4, a5, a6, a7);
}

- (id)getSelectedModelAndReturnError:(id *)a3
{
  v3 = self;
  sub_25C7EA7A0();
  v5 = v4;

  return v5;
}

- (id)trainAndEvaluateModelsWithCandidateModels:(id)a3 personalizationPolicy:(id)a4 modelSelectionPolicy:(id)a5 error:(id *)a6
{
  sub_25C7E96B8(0, &qword_281559498, off_2799B9778);
  v9 = sub_25C82E1DC();
  v10 = a4;
  v11 = a5;
  v12 = self;
  sub_25C7EC4B4(v9, v10, v11);
  v14 = v13;

  return v14;
}

- (id)evaluateDefaultModelWithDefaultModelPath:(id)a3 modelConfiguration:(id)a4 error:(id *)a5
{
  v7 = sub_25C82DEAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C82DE7C();
  v12 = a4;
  v13 = self;
  v14 = sub_25C7ECD40(v11, a4);
  (*(v8 + 8))(v11, v7);

  return v14;
}

- (id)trainAndEvaluateAdaptedModelsWithAdaptableModelPath:(id)a3 modelConfiguration:(id)a4 error:(id *)a5
{
  v7 = sub_25C82DEAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C82DE7C();
  v12 = a4;
  v13 = self;
  sub_25C7ED28C(v13, a4);
  v15 = v14;
  (*(v8 + 8))(v11, v7);

  return v15;
}

- (BOOL)generatePETReportAndReturnError:(id *)a3
{
  v3 = self;
  sub_25C7EF3D0();

  return 1;
}

- (id)getEvaluationResults
{
  v2 = self;
  sub_25C7EF5EC();

  v3 = sub_25C82E01C();

  return v3;
}

- (ODCurareEvaluationAndReportingModuleInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end