@interface WidgetPersonality
- (BOOL)matchesPersonality:(id)a3;
- (_TtC26ContextualSuggestionClient17WidgetPersonality)init;
@end

@implementation WidgetPersonality

- (BOOL)matchesPersonality:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_2441C39BC(a3);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (_TtC26ContextualSuggestionClient17WidgetPersonality)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end