@interface ContextualSuggestion
- (_TtC26ContextualSuggestionClient20ContextualSuggestion)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ContextualSuggestion

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC26ContextualSuggestionClient20ContextualSuggestion_identifier);
  v5 = *&self->identifier[OBJC_IVAR____TtC26ContextualSuggestionClient20ContextualSuggestion_identifier];
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_2441D8C4C();
  v8 = sub_2441D8C4C();
  [coderCopy encodeObject:v7 forKey:v8];
}

- (_TtC26ContextualSuggestionClient20ContextualSuggestion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end