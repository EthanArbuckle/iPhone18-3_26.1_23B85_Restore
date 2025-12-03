@interface LACUIPackagedViewStateAnimationOptions
- (LACUIPackagedViewStateAnimationOptions)initWithMaxDuration:(id)duration;
- (id)description;
@end

@implementation LACUIPackagedViewStateAnimationOptions

- (LACUIPackagedViewStateAnimationOptions)initWithMaxDuration:(id)duration
{
  durationCopy = duration;
  v9.receiver = self;
  v9.super_class = LACUIPackagedViewStateAnimationOptions;
  v6 = [(LACUIPackagedViewStateAnimationOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_maxDuration, duration);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  maxDuration = [(LACUIPackagedViewStateAnimationOptions *)self maxDuration];
  [maxDuration floatValue];
  v7 = [v3 stringWithFormat:@"<%@ %p; maxDuration:%.2f>", v4, self, v6];;

  return v7;
}

@end