@interface HMCameraSignificantEvent(HFAdditions)
- (__CFString)hf_reasonKey;
- (id)hf_faceClassificationName;
@end

@implementation HMCameraSignificantEvent(HFAdditions)

- (id)hf_faceClassificationName
{
  v1 = [a1 faceClassification];
  v2 = [v1 person];
  v3 = [v2 name];

  return v3;
}

- (__CFString)hf_reasonKey
{
  v1 = [a1 reason];
  if ((v1 - 2) > 4)
  {
    return @"AnyMotion";
  }

  else
  {
    return off_277E00D10[v1 - 2];
  }
}

@end