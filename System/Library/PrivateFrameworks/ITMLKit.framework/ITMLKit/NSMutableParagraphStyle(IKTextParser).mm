@interface NSMutableParagraphStyle(IKTextParser)
- (void)ik_applyViewElementStyle:()IKTextParser;
@end

@implementation NSMutableParagraphStyle(IKTextParser)

- (void)ik_applyViewElementStyle:()IKTextParser
{
  lineHeight = [a3 lineHeight];
  if (lineHeight)
  {
    v10 = lineHeight;
    ik_unit = [lineHeight ik_unit];
    [v10 doubleValue];
    v7 = v6;
    if (ik_unit == 1)
    {
      [self setMaximumLineHeight:v6];
      [v10 doubleValue];
      [self setMinimumLineHeight:?];
    }

    else
    {
      ik_unit2 = [v10 ik_unit];
      v9 = v7 / 100.0;
      if (ik_unit2 != 2)
      {
        v9 = v7;
      }

      [self setLineHeightMultiple:v9];
    }

    lineHeight = v10;
  }
}

@end