@interface HMDUserActivityReportCoordinatorFactory
+ (id)coordinatorWithHome:(id)home;
- (HMDUserActivityReportCoordinatorFactory)init;
@end

@implementation HMDUserActivityReportCoordinatorFactory

+ (id)coordinatorWithHome:(id)home
{
  homeCopy = home;
  v4 = sub_229793830(homeCopy);

  return v4;
}

- (HMDUserActivityReportCoordinatorFactory)init
{
  v3.receiver = self;
  v3.super_class = HMDUserActivityReportCoordinatorFactory;
  return [(HMDUserActivityReportCoordinatorFactory *)&v3 init];
}

@end