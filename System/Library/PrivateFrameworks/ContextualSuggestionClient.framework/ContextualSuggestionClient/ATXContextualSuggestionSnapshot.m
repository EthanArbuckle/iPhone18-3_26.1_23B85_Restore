@interface ATXContextualSuggestionSnapshot
- (ATXContextualSuggestionSnapshot)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXContextualSuggestionSnapshot

- (void)encodeWithCoder:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR___ATXContextualSuggestionSnapshot_contexts);
  type metadata accessor for ContextualSuggestionContext();
  v6 = a3;
  v9 = self;
  v7 = sub_2441D8CFC();
  v8 = sub_2441D8C4C();
  [v6 encodeObject:v7 forKey:v8];
}

- (ATXContextualSuggestionSnapshot)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end