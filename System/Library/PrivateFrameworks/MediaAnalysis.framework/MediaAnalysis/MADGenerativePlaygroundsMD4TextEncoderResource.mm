@interface MADGenerativePlaygroundsMD4TextEncoderResource
- (id)tokensForAgeType_:(unsigned __int16)a3;
@end

@implementation MADGenerativePlaygroundsMD4TextEncoderResource

- (id)tokensForAgeType_:(unsigned __int16)a3
{
  v3 = &unk_1F49BF0A0;
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return &unk_1F49BF088;
  }

  else
  {
    return v3;
  }
}

@end