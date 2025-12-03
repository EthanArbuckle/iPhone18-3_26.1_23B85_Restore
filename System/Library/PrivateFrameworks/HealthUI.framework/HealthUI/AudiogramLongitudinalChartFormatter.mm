@interface AudiogramLongitudinalChartFormatter
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
@end

@implementation AudiogramLongitudinalChartFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  sub_1C3C82884();
  v6 = sub_1C3D202B4();
  if (context)
  {
    if (context != 1)
    {
      goto LABEL_6;
    }

    selfCopy = self;
    sub_1C3C87940(v6);
  }

  else
  {
    selfCopy2 = self;
    sub_1C3C87F1C(v6);
  }

LABEL_6:

  sub_1C3C88488();
  v9 = sub_1C3D202A4();

  return v9;
}

@end