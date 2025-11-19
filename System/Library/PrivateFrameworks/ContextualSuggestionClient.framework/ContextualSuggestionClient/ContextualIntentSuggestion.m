@interface ContextualIntentSuggestion
- (void)encodeWithCoder:(id)a3;
@end

@implementation ContextualIntentSuggestion

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = self;
  sub_24419660C(v7);
  v5 = *(&v4->super.super.isa + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualIntentSuggestion_intent);
  v6 = sub_2441D8C4C();
  [v7 encodeObject:v5 forKey:v6];
}

@end