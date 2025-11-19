@interface NSString(ACCNavigation)
- (__CFString)stringByEllipsingPastMaxLength:()ACCNavigation;
@end

@implementation NSString(ACCNavigation)

- (__CFString)stringByEllipsingPastMaxLength:()ACCNavigation
{
  if (a3 && [a1 length] > a3)
  {
    if (a3 < 3)
    {
      v6 = @"…";
    }

    else
    {
      v5 = [a1 substringToIndex:a3 - 2];
      v6 = [v5 stringByAppendingString:@"…"];
    }
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

@end