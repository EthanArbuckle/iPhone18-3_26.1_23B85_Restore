@interface _SUUIInspectableProperty
- (NSString)valueString;
@end

@implementation _SUUIInspectableProperty

- (NSString)valueString
{
  v3 = [(_SUUIInspectableProperty *)self value];

  if (v3)
  {
    v4 = [(_SUUIInspectableProperty *)self value];
    v5 = [v4 debugDescription];
  }

  else
  {
    v5 = @"<nil>";
  }

  return v5;
}

@end