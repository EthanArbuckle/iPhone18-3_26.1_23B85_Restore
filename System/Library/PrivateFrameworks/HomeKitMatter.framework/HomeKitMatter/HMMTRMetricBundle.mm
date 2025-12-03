@interface HMMTRMetricBundle
- (HMMTRMetricBundle)initWithTime:(id)time name:(id)name;
@end

@implementation HMMTRMetricBundle

- (HMMTRMetricBundle)initWithTime:(id)time name:(id)name
{
  timeCopy = time;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = HMMTRMetricBundle;
  v9 = [(HMMTRMetricBundle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_time, time);
    objc_storeStrong(&v10->_name, name);
  }

  return v10;
}

@end