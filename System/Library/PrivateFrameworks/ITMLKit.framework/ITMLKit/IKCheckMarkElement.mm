@interface IKCheckMarkElement
- (unint64_t)alignment;
@end

@implementation IKCheckMarkElement

- (unint64_t)alignment
{
  attributes = [(IKViewElement *)self attributes];
  v3 = [attributes objectForKey:@"alignment"];

  if ([v3 isEqualToString:@"left"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"right"];
  }

  return v4;
}

@end