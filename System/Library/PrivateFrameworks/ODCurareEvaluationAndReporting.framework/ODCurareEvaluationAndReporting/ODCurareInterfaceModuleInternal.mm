@interface ODCurareInterfaceModuleInternal
- (BOOL)generateCAReportAndReturnError:(id *)error;
- (ODCurareInterfaceModuleInternal)init;
- (ODCurareInterfaceModuleInternal)initWithBundleIdentifier:(id)identifier evaluationInstance:(id)instance personalizationInstance:(id)personalizationInstance pruningPolicy:(id)policy error:(id *)error;
- (id)evaluateModelsWithEvaluationModels:(id)models error:(id *)error;
- (id)getSelectedModelWithDefaultModel:(id)model selectionPolicy:(id)policy error:(id *)error;
- (id)personalizeModelsWithPersonalizableModels:(id)models personalizationPolicy:(id)policy error:(id *)error;
@end

@implementation ODCurareInterfaceModuleInternal

- (ODCurareInterfaceModuleInternal)initWithBundleIdentifier:(id)identifier evaluationInstance:(id)instance personalizationInstance:(id)personalizationInstance pruningPolicy:(id)policy error:(id *)error
{
  v10 = sub_25C82E0AC();
  v12 = v11;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  policyCopy = policy;
  return ODCurareInterfaceModule.init(bundleIdentifier:evaluationInstance:personalizationInstance:pruningPolicy:)(v10, v12, instance, personalizationInstance, policy);
}

- (id)personalizeModelsWithPersonalizableModels:(id)models personalizationPolicy:(id)policy error:(id *)error
{
  sub_25C7E96B8(0, &qword_281559498, off_2799B9778);
  v7 = sub_25C82E1DC();
  policyCopy = policy;
  selfCopy = self;
  v10 = sub_25C7DFC38(v7, policyCopy);

  return v10;
}

- (id)evaluateModelsWithEvaluationModels:(id)models error:(id *)error
{
  sub_25C7E96B8(0, &qword_281559498, off_2799B9778);
  v5 = sub_25C82E1DC();
  selfCopy = self;
  sub_25C7E159C(v5);
  v8 = v7;

  return v8;
}

- (id)getSelectedModelWithDefaultModel:(id)model selectionPolicy:(id)policy error:(id *)error
{
  modelCopy = model;
  policyCopy = policy;
  selfCopy = self;
  sub_25C7E35E8(model, policy);
  v12 = v11;

  return v12;
}

- (BOOL)generateCAReportAndReturnError:(id *)error
{
  v4 = *(&self->super.isa + OBJC_IVAR___ODCurareInterfaceModuleInternal_shouldReportFailure);
  v5 = *(&self->super.isa + OBJC_IVAR___ODCurareInterfaceModuleInternal_clientBundleIdentifier);
  v6 = *&self->evaluationInstance[OBJC_IVAR___ODCurareInterfaceModuleInternal_clientBundleIdentifier];
  v7 = OBJC_IVAR___ODCurareInterfaceModuleInternal_modelStore;
  v8 = OBJC_IVAR___ODCurareInterfaceModuleInternal_metadataStore;
  v9 = OBJC_IVAR___ODCurareInterfaceModuleInternal_modelEvaluationSummaryStore;
  selfCopy = self;
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