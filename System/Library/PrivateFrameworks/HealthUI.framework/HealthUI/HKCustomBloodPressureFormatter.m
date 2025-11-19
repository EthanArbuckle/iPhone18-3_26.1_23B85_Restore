@interface HKCustomBloodPressureFormatter
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
@end

@implementation HKCustomBloodPressureFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v6 = a3;
  if ([(HKCustomBloodPressureFormatter *)self contextOverlaySelected])
  {
    v12 = self;
    v7 = &selRef_formattedSelectedAverageLabelDataWithChartData_context_;
    v8 = &v12;
  }

  else
  {
    v11 = self;
    v7 = &selRef_formattedSelectedRangeLabelDataWithChartData_context_;
    v8 = &v11;
  }

  v8[1] = HKCustomBloodPressureFormatter;
  v9 = objc_msgSendSuper2(v8, *v7, v6, a4, v11);

  return v9;
}

@end