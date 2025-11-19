@interface NSString(WFContentProperty)
- (__CFString)stringByAppendingAsNewLine:()WFContentProperty;
@end

@implementation NSString(WFContentProperty)

- (__CFString)stringByAppendingAsNewLine:()WFContentProperty
{
  v4 = a3;
  if ([a1 length])
  {
    v5 = [a1 stringByAppendingString:@"\n"];
    v6 = v5;
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = &stru_282F53518;
    }

    v8 = [v5 stringByAppendingString:v7];
  }

  else
  {
    v9 = &stru_282F53518;
    if (v4)
    {
      v9 = v4;
    }

    v8 = v9;
  }

  return v8;
}

@end