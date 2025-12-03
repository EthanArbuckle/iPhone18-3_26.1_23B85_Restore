@interface HMMTRDuration
- (HMMTRDuration)initWithName:(id)name duration:(id)duration;
@end

@implementation HMMTRDuration

- (HMMTRDuration)initWithName:(id)name duration:(id)duration
{
  nameCopy = name;
  durationCopy = duration;
  v12.receiver = self;
  v12.super_class = HMMTRDuration;
  v9 = [(HMMTRDuration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_duration, duration);
  }

  return v10;
}

@end