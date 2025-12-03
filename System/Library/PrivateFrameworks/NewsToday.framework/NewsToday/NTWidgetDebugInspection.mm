@interface NTWidgetDebugInspection
- (NTWidgetDebugInspection)init;
- (NTWidgetDebugInspection)initWithSections:(id)sections mutedTagIDs:(id)ds previouslyReadArticleIDs:(id)iDs previouslySeenArticleIDs:(id)articleIDs rankedSubscribedTagIDs:(id)tagIDs;
@end

@implementation NTWidgetDebugInspection

- (NTWidgetDebugInspection)initWithSections:(id)sections mutedTagIDs:(id)ds previouslyReadArticleIDs:(id)iDs previouslySeenArticleIDs:(id)articleIDs rankedSubscribedTagIDs:(id)tagIDs
{
  ObjectType = swift_getObjectType();
  type metadata accessor for WidgetDebugInspectionSection();
  v9 = sub_25BF6CAB0();
  v10 = sub_25BF6CAB0();
  v11 = sub_25BF6CAB0();
  v12 = sub_25BF6CAB0();
  v13 = sub_25BF6CAB0();
  *(&self->super.isa + OBJC_IVAR___NTWidgetDebugInspection_sections) = v9;
  *(&self->super.isa + OBJC_IVAR___NTWidgetDebugInspection_mutedTagIDs) = v10;
  *(&self->super.isa + OBJC_IVAR___NTWidgetDebugInspection_previouslyReadArticleIDs) = v11;
  *(&self->super.isa + OBJC_IVAR___NTWidgetDebugInspection_previouslySeenArticleIDs) = v12;
  *(&self->super.isa + OBJC_IVAR___NTWidgetDebugInspection_rankedSubscribedTagIDs) = v13;
  v15.receiver = self;
  v15.super_class = ObjectType;
  return [(NTWidgetDebugInspection *)&v15 init];
}

- (NTWidgetDebugInspection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end