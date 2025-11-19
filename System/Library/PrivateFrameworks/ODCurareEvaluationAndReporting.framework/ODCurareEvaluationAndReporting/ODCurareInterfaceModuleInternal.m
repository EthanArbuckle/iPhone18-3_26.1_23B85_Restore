@interface ODCurareInterfaceModuleInternal
- (BOOL)generateCAReportAndReturnError:(id *)a3;
- (ODCurareInterfaceModuleInternal)init;
- (ODCurareInterfaceModuleInternal)initWithBundleIdentifier:(id)a3 evaluationInstance:(id)a4 personalizationInstance:(id)a5 pruningPolicy:(id)a6 error:(id *)a7;
- (id)evaluateModelsWithEvaluationModels:(id)a3 error:(id *)a4;
- (id)getSelectedModelWithDefaultModel:(id)a3 selectionPolicy:(id)a4 error:(id *)a5;
- (id)personalizeModelsWithPersonalizableModels:(id)a3 personalizationPolicy:(id)a4 error:(id *)a5;
@end

@implementation ODCurareInterfaceModuleInternal

- (ODCurareInterfaceModuleInternal)initWithBundleIdentifier:(id)a3 evaluationInstance:(id)a4 personalizationInstance:(id)a5 pruningPolicy:(id)a6 error:(id *)a7
{
  v10 = sub_25C82E0AC();
  v12 = v11;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = a6;
  return ODCurareInterfaceModule.init(bundleIdentifier:evaluationInstance:personalizationInstance:pruningPolicy:)(v10, v12, a4, a5, a6);
}

- (id)personalizeModelsWithPersonalizableModels:(id)a3 personalizationPolicy:(id)a4 error:(id *)a5
{
  sub_25C7E96B8(0, &qword_281559498, off_2799B9778);
  v7 = sub_25C82E1DC();
  v8 = a4;
  v9 = self;
  v10 = sub_25C7DFC38(v7, v8);

  return v10;
}

- (id)evaluateModelsWithEvaluationModels:(id)a3 error:(id *)a4
{
  sub_25C7E96B8(0, &qword_281559498, off_2799B9778);
  v5 = sub_25C82E1DC();
  v6 = self;
  sub_25C7E159C(v5);
  v8 = v7;

  return v8;
}

- (id)getSelectedModelWithDefaultModel:(id)a3 selectionPolicy:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_25C7E35E8(a3, a4);
  v12 = v11;

  return v12;
}

- (BOOL)generateCAReportAndReturnError:(id *)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___ODCurareInterfaceModuleInternal_shouldReportFailure);
  v5 = *(&self->super.isa + OBJC_IVAR___ODCurareInterfaceModuleInternal_clientBundleIdentifier);
  v6 = *&self->evaluationInstance[OBJC_IVAR___ODCurareInterfaceModuleInternal_clientBundleIdentifier];
  v7 = OBJC_IVAR___ODCurareInterfaceModuleInternal_modelStore;
  v8 = OBJC_IVAR___ODCurareInterfaceModuleInternal_metadataStore;
  v9 = OBJC_IVAR___ODCurareInterfaceModuleInternal_modelEvaluationSummaryStore;
  v10 = self;
  sub_25C81475C(v5, v6, (&self->super.isa + v7), (&self->super.isa + v8), (&self->super.isa + v9), v4);

  return 1;
}

- (ODCurareInterfaceModuleInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end