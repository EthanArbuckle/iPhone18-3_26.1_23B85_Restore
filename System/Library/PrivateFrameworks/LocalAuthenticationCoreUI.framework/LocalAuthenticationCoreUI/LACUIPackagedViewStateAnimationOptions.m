@interface LACUIPackagedViewStateAnimationOptions
- (LACUIPackagedViewStateAnimationOptions)initWithMaxDuration:(id)a3;
- (id)description;
@end

@implementation LACUIPackagedViewStateAnimationOptions

- (LACUIPackagedViewStateAnimationOptions)initWithMaxDuration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LACUIPackagedViewStateAnimationOptions;
  v6 = [(LACUIPackagedViewStateAnimationOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_maxDuration, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(LACUIPackagedViewStateAnimationOptions *)self maxDuration];
  [v5 floatValue];
  v7 = [v3 stringWithFormat:@"<%@ %p; maxDuration:%.2f>", v4, self, v6];;

  return v7;
}

@end