@interface BKFaceOcclusionInfo
- (BKFaceOcclusionInfo)initWithDictionary:(id)dictionary;
@end

@implementation BKFaceOcclusionInfo

- (BKFaceOcclusionInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = BKFaceOcclusionInfo;
  v5 = [(BKFaceOcclusionInfo *)&v10 init];
  v6 = v5;
  if (dictionaryCopy && v5)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"BKStatusDetailFaceOcclusionState"];
    v8 = v7;
    if (v7)
    {
      v6->_hasFaceOcclusion = [v7 BOOLValue];
    }
  }

  return v6;
}

@end