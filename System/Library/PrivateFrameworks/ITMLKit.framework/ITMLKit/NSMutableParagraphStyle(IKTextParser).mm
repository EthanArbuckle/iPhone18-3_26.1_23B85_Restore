@interface NSMutableParagraphStyle(IKTextParser)
- (void)ik_applyViewElementStyle:()IKTextParser;
@end

@implementation NSMutableParagraphStyle(IKTextParser)

- (void)ik_applyViewElementStyle:()IKTextParser
{
  v4 = [a3 lineHeight];
  if (v4)
  {
    v10 = v4;
    v5 = [v4 ik_unit];
    [v10 doubleValue];
    v7 = v6;
    if (v5 == 1)
    {
      [a1 setMaximumLineHeight:v6];
      [v10 doubleValue];
      [a1 setMinimumLineHeight:?];
    }

    else
    {
      v8 = [v10 ik_unit];
      v9 = v7 / 100.0;
      if (v8 != 2)
      {
        v9 = v7;
      }

      [a1 setLineHeightMultiple:v9];
    }

    v4 = v10;
  }
}

@end