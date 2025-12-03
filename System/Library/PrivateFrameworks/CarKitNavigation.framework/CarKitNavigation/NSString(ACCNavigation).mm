@interface NSString(ACCNavigation)
- (__CFString)stringByEllipsingPastMaxLength:()ACCNavigation;
@end

@implementation NSString(ACCNavigation)

- (__CFString)stringByEllipsingPastMaxLength:()ACCNavigation
{
  if (a3 && [self length] > a3)
  {
    if (a3 < 3)
    {
      selfCopy = @"…";
    }

    else
    {
      v5 = [self substringToIndex:a3 - 2];
      selfCopy = [v5 stringByAppendingString:@"…"];
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end