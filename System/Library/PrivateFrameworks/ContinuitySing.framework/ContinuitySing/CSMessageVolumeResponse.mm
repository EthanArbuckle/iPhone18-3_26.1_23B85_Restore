@interface CSMessageVolumeResponse
+ (id)requiredParameters;
- (CSMessageVolumeResponse)initWithMessage:(id)a3;
- (CSMessageVolumeResponse)initWithVolume:(double)a3;
- (id)dictionaryRepresentation;
@end

@implementation CSMessageVolumeResponse

- (CSMessageVolumeResponse)initWithVolume:(double)a3
{
  v5.receiver = self;
  v5.super_class = CSMessageVolumeResponse;
  result = [(CSMessageVolumeResponse *)&v5 init];
  if (result)
  {
    result->_volume = a3;
  }

  return result;
}

- (CSMessageVolumeResponse)initWithMessage:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CSMessageVolumeResponse;
  v5 = [(CSMessage *)&v10 initWithMessage:v4];
  if (v5)
  {
    v6 = NSDictionaryGetNSNumber();
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      v5->_volume = v8;
    }
  }

  return v5;
}

+ (id)requiredParameters
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CSMessageVolumeResponse;
  v2 = objc_msgSendSuper2(&v5, sel_requiredParameters);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"ContinuitySingMicrophoneVolume"];

  return v3;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = CSMessageVolumeResponse;
  v3 = [(CSMessage *)&v7 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_volume];
  [v4 setObject:v5 forKey:@"ContinuitySingMicrophoneVolume"];

  return v4;
}

@end