@interface FaceAestheticQualityFilterSVMOutput
- (FaceAestheticQualityFilterSVMOutput)initWithClassLabel:(int64_t)label classProbability:(id)probability;
- (id)featureValueForName:(id)name;
@end

@implementation FaceAestheticQualityFilterSVMOutput

- (FaceAestheticQualityFilterSVMOutput)initWithClassLabel:(int64_t)label classProbability:(id)probability
{
  probabilityCopy = probability;
  v11.receiver = self;
  v11.super_class = FaceAestheticQualityFilterSVMOutput;
  v8 = [(FaceAestheticQualityFilterSVMOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_classLabel = label;
    objc_storeStrong(&v8->_classProbability, probability);
  }

  return v9;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"classLabel"])
  {
    v5 = [MEMORY[0x277CBFEF8] featureValueWithInt64:{-[FaceAestheticQualityFilterSVMOutput classLabel](self, "classLabel")}];
  }

  else if ([nameCopy isEqualToString:@"classProbability"])
  {
    v6 = MEMORY[0x277CBFEF8];
    classProbability = [(FaceAestheticQualityFilterSVMOutput *)self classProbability];
    v5 = [v6 featureValueWithDictionary:classProbability error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end