@interface CoverIssueView
- (NSString)accessibilityValue;
- (void)setAccessibilityValue:(id)a3;
@end

@implementation CoverIssueView

- (NSString)accessibilityValue
{
  v2 = self;
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

- (void)setAccessibilityValue:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_1D726207C();
    v6 = self;
    a3 = sub_1D726203C();
  }

  else
  {
    v7 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(CoverIssueView *)&v8 setAccessibilityValue:a3];
}

@end