@interface HMDUserActivityReportSetValue
- (HMDUserActivityReportSetValue)initWithReport:(id)report;
- (id)description;
@end

@implementation HMDUserActivityReportSetValue

- (id)description
{
  value = [(HMDUserActivityReportSetValue *)self value];
  v3 = [value description];

  return v3;
}

- (HMDUserActivityReportSetValue)initWithReport:(id)report
{
  reportCopy = report;
  v9.receiver = self;
  v9.super_class = HMDUserActivityReportSetValue;
  v6 = [(HMDUserActivityReportSetValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, report);
  }

  return v7;
}

@end