@interface HMDUserActivityReportSetValue
- (HMDUserActivityReportSetValue)initWithReport:(id)a3;
- (id)description;
@end

@implementation HMDUserActivityReportSetValue

- (id)description
{
  v2 = [(HMDUserActivityReportSetValue *)self value];
  v3 = [v2 description];

  return v3;
}

- (HMDUserActivityReportSetValue)initWithReport:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDUserActivityReportSetValue;
  v6 = [(HMDUserActivityReportSetValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
  }

  return v7;
}

@end