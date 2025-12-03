@interface ContextualIntentSuggestion
- (void)encodeWithCoder:(id)coder;
@end

@implementation ContextualIntentSuggestion

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_24419660C(coderCopy);
  v5 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualIntentSuggestion_intent);
  v6 = sub_2441D8C4C();
  [coderCopy encodeObject:v5 forKey:v6];
}

@end