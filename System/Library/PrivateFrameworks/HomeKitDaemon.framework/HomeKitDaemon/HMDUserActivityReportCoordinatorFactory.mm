@interface HMDUserActivityReportCoordinatorFactory
+ (id)coordinatorWithHome:(id)a3;
- (HMDUserActivityReportCoordinatorFactory)init;
@end

@implementation HMDUserActivityReportCoordinatorFactory

+ (id)coordinatorWithHome:(id)a3
{
  v3 = a3;
  v4 = sub_229793830(v3);

  return v4;
}

- (HMDUserActivityReportCoordinatorFactory)init
{
  v3.receiver = self;
  v3.super_class = HMDUserActivityReportCoordinatorFactory;
  return [(HMDUserActivityReportCoordinatorFactory *)&v3 init];
}

@end