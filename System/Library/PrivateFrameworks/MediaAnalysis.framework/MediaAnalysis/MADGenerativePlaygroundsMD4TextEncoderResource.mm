@interface MADGenerativePlaygroundsMD4TextEncoderResource
- (id)tokensForAgeType_:(unsigned __int16)type_;
@end

@implementation MADGenerativePlaygroundsMD4TextEncoderResource

- (id)tokensForAgeType_:(unsigned __int16)type_
{
  v3 = &unk_1F49BF0A0;
  if (type_ != 2)
  {
    v3 = 0;
  }

  if (type_ == 1)
  {
    return &unk_1F49BF088;
  }

  else
  {
    return v3;
  }
}

@end