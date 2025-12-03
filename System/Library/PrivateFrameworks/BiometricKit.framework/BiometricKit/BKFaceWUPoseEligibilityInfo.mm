@interface BKFaceWUPoseEligibilityInfo
- (BKFaceWUPoseEligibilityInfo)initWithDictionary:(id)dictionary;
@end

@implementation BKFaceWUPoseEligibilityInfo

- (BKFaceWUPoseEligibilityInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = BKFaceWUPoseEligibilityInfo;
  v5 = [(BKFaceWUPoseEligibilityInfo *)&v10 init];
  v6 = v5;
  if (dictionaryCopy && v5)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"BKStatusDetailFaceWUPoseEligible"];
    v8 = v7;
    if (v7)
    {
      v6->_isEligible = [v7 BOOLValue];
    }
  }

  return v6;
}

@end