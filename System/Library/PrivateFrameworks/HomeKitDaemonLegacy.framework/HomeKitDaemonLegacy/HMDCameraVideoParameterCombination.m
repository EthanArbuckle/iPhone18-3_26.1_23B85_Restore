@interface HMDCameraVideoParameterCombination
- (BOOL)isEqual:(id)a3;
- (HMDCameraVideoParameterCombination)initWithProfile:(id)a3 level:(id)a4 videoTier:(id)a5;
- (id)description;
@end

@implementation HMDCameraVideoParameterCombination

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMDCameraVideoParameterCombination *)self profile];
      v7 = [(HMDCameraVideoParameterCombination *)v5 profile];
      if ([v6 isEqual:v7])
      {
        v8 = [(HMDCameraVideoParameterCombination *)self level];
        v9 = [(HMDCameraVideoParameterCombination *)v5 level];
        if ([v8 isEqual:v9])
        {
          v10 = [(HMDCameraVideoParameterCombination *)self videoTier];
          v11 = [(HMDCameraVideoParameterCombination *)v5 videoTier];
          v12 = [v10 isEqual:v11];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDCameraVideoParameterCombination *)self profile];
  v5 = [(HMDCameraVideoParameterCombination *)self level];
  v6 = [(HMDCameraVideoParameterCombination *)self videoTier];
  v7 = [v3 stringWithFormat:@"<profile = %@, level = %@, tier = %@>", v4, v5, v6];

  return v7;
}

- (HMDCameraVideoParameterCombination)initWithProfile:(id)a3 level:(id)a4 videoTier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDCameraVideoParameterCombination;
  v12 = [(HMDCameraVideoParameterCombination *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_profile, a3);
    objc_storeStrong(&v13->_level, a4);
    objc_storeStrong(&v13->_videoTier, a5);
  }

  return v13;
}

@end