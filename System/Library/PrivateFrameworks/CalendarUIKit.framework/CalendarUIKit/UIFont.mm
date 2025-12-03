@interface UIFont
- (double)cuik_lineHeight;
@end

@implementation UIFont

- (double)cuik_lineHeight
{
  if (!self)
  {
    return 0.0;
  }

  [self lineHeight];
  return result;
}

@end