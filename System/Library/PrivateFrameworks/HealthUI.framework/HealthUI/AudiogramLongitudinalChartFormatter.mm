@interface AudiogramLongitudinalChartFormatter
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
@end

@implementation AudiogramLongitudinalChartFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  sub_1C3C82884();
  v6 = sub_1C3D202B4();
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v7 = self;
    sub_1C3C87940(v6);
  }

  else
  {
    v8 = self;
    sub_1C3C87F1C(v6);
  }

LABEL_6:

  sub_1C3C88488();
  v9 = sub_1C3D202A4();

  return v9;
}

@end