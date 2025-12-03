@interface AudiogramAverageSensitivityChartFormatter
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
@end

@implementation AudiogramAverageSensitivityChartFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  sub_1C3C77FEC(0, &qword_1EC086910);
  v5 = sub_1C3D202B4();
  selfCopy = self;
  sub_1C3CC2060(v5);

  sub_1C3C27CB4(0, &qword_1EC0866B0);
  v7 = sub_1C3D202A4();

  return v7;
}

@end