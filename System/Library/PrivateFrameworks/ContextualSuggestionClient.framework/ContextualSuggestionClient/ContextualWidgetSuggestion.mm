@interface ContextualWidgetSuggestion
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ContextualWidgetSuggestion

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2441963F4(v4);
}

- (NSString)description
{
  v2 = self;
  sub_24419C708();

  v3 = sub_2441D8C4C();

  return v3;
}

@end