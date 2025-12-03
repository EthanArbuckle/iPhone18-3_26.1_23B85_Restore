@interface CoverIssueView
- (NSString)accessibilityValue;
- (void)setAccessibilityValue:(id)value;
@end

@implementation CoverIssueView

- (NSString)accessibilityValue
{
  selfCopy = self;
  CoverIssueView.accessibilityValue.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1D726203C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityValue:(id)value
{
  ObjectType = swift_getObjectType();
  if (value)
  {
    sub_1D726207C();
    selfCopy = self;
    value = sub_1D726203C();
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(CoverIssueView *)&v8 setAccessibilityValue:value];
}

@end