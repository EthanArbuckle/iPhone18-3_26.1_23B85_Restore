@interface BKFaceWUPoseEligibilityInfo
- (BKFaceWUPoseEligibilityInfo)initWithDictionary:(id)a3;
@end

@implementation BKFaceWUPoseEligibilityInfo

- (BKFaceWUPoseEligibilityInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BKFaceWUPoseEligibilityInfo;
  v5 = [(BKFaceWUPoseEligibilityInfo *)&v10 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 objectForKeyedSubscript:@"BKStatusDetailFaceWUPoseEligible"];
    v8 = v7;
    if (v7)
    {
      v6->_isEligible = [v7 BOOLValue];
    }
  }

  return v6;
}

@end