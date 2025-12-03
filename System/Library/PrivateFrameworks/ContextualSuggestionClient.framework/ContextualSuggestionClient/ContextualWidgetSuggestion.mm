@interface ContextualWidgetSuggestion
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ContextualWidgetSuggestion

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2441963F4(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  sub_24419C708();

  v3 = sub_2441D8C4C();

  return v3;
}

@end