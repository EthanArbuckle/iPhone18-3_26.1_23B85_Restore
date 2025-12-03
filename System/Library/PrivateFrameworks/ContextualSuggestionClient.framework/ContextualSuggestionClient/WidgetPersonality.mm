@interface WidgetPersonality
- (BOOL)matchesPersonality:(id)personality;
- (_TtC26ContextualSuggestionClient17WidgetPersonality)init;
@end

@implementation WidgetPersonality

- (BOOL)matchesPersonality:(id)personality
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_2441C39BC(personality);
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