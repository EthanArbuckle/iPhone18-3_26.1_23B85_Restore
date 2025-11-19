@interface MADGenerativePlaygroundsMD5TextEncoderResource
- (id)tokensForAgeType_:(unsigned __int16)a3;
@end

@implementation MADGenerativePlaygroundsMD5TextEncoderResource

- (id)tokensForAgeType_:(unsigned __int16)a3
{
  v3 = &unk_1F49BF0E8;
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return &unk_1F49BF0D0;
  }

  else
  {
    return v3;
  }
}

@end