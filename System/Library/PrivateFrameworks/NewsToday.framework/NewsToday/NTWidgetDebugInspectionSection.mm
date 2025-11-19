@interface NTWidgetDebugInspectionSection
- (NTWidgetDebugInspectionSection)init;
- (NTWidgetDebugInspectionSection)initWithArticleIDs:(id)a3 name:(id)a4 sortedCandidates:(id)a5;
@end

@implementation NTWidgetDebugInspectionSection

- (NTWidgetDebugInspectionSection)initWithArticleIDs:(id)a3 name:(id)a4 sortedCandidates:(id)a5
{
  v5 = sub_25BF6CAB0();
  v6 = sub_25BF6CA70();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED880, &qword_25BF73F58);
  v9 = sub_25BF6CAB0();
  return WidgetDebugInspectionSection.init(articleIDs:name:sortedCandidates:)(v5, v6, v8, v9);
}

- (NTWidgetDebugInspectionSection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end