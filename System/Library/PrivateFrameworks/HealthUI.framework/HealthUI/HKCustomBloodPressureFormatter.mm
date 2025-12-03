@interface HKCustomBloodPressureFormatter
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
@end

@implementation HKCustomBloodPressureFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  dataCopy = data;
  if ([(HKCustomBloodPressureFormatter *)self contextOverlaySelected])
  {
    selfCopy = self;
    v7 = &selRef_formattedSelectedAverageLabelDataWithChartData_context_;
    v8 = &selfCopy;
  }

  else
  {
    selfCopy2 = self;
    v7 = &selRef_formattedSelectedRangeLabelDataWithChartData_context_;
    v8 = &selfCopy2;
  }

  v8[1] = HKCustomBloodPressureFormatter;
  v9 = objc_msgSendSuper2(v8, *v7, dataCopy, context, selfCopy2);

  return v9;
}

@end