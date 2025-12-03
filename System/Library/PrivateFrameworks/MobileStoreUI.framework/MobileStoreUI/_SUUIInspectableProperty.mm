@interface _SUUIInspectableProperty
- (NSString)valueString;
@end

@implementation _SUUIInspectableProperty

- (NSString)valueString
{
  value = [(_SUUIInspectableProperty *)self value];

  if (value)
  {
    value2 = [(_SUUIInspectableProperty *)self value];
    v5 = [value2 debugDescription];
  }

  else
  {
    v5 = @"<nil>";
  }

  return v5;
}

@end