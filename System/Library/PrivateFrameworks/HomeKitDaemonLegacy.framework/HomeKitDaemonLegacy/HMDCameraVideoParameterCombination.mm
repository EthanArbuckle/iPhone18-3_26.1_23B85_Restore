@interface HMDCameraVideoParameterCombination
- (BOOL)isEqual:(id)equal;
- (HMDCameraVideoParameterCombination)initWithProfile:(id)profile level:(id)level videoTier:(id)tier;
- (id)description;
@end

@implementation HMDCameraVideoParameterCombination

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      profile = [(HMDCameraVideoParameterCombination *)self profile];
      profile2 = [(HMDCameraVideoParameterCombination *)v5 profile];
      if ([profile isEqual:profile2])
      {
        level = [(HMDCameraVideoParameterCombination *)self level];
        level2 = [(HMDCameraVideoParameterCombination *)v5 level];
        if ([level isEqual:level2])
        {
          videoTier = [(HMDCameraVideoParameterCombination *)self videoTier];
          videoTier2 = [(HMDCameraVideoParameterCombination *)v5 videoTier];
          v12 = [videoTier isEqual:videoTier2];
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
  profile = [(HMDCameraVideoParameterCombination *)self profile];
  level = [(HMDCameraVideoParameterCombination *)self level];
  videoTier = [(HMDCameraVideoParameterCombination *)self videoTier];
  v7 = [v3 stringWithFormat:@"<profile = %@, level = %@, tier = %@>", profile, level, videoTier];

  return v7;
}

- (HMDCameraVideoParameterCombination)initWithProfile:(id)profile level:(id)level videoTier:(id)tier
{
  profileCopy = profile;
  levelCopy = level;
  tierCopy = tier;
  v15.receiver = self;
  v15.super_class = HMDCameraVideoParameterCombination;
  v12 = [(HMDCameraVideoParameterCombination *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_profile, profile);
    objc_storeStrong(&v13->_level, level);
    objc_storeStrong(&v13->_videoTier, tier);
  }

  return v13;
}

@end