@interface HMCameraSignificantEvent(HFAdditions)
- (__CFString)hf_reasonKey;
- (id)hf_faceClassificationName;
@end

@implementation HMCameraSignificantEvent(HFAdditions)

- (id)hf_faceClassificationName
{
  faceClassification = [self faceClassification];
  person = [faceClassification person];
  name = [person name];

  return name;
}

- (__CFString)hf_reasonKey
{
  reason = [self reason];
  if ((reason - 2) > 4)
  {
    return @"AnyMotion";
  }

  else
  {
    return off_277E00D10[reason - 2];
  }
}

@end