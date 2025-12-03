@interface CSMessageVolumeResponse
+ (id)requiredParameters;
- (CSMessageVolumeResponse)initWithMessage:(id)message;
- (CSMessageVolumeResponse)initWithVolume:(double)volume;
- (id)dictionaryRepresentation;
@end

@implementation CSMessageVolumeResponse

- (CSMessageVolumeResponse)initWithVolume:(double)volume
{
  v5.receiver = self;
  v5.super_class = CSMessageVolumeResponse;
  result = [(CSMessageVolumeResponse *)&v5 init];
  if (result)
  {
    result->_volume = volume;
  }

  return result;
}

- (CSMessageVolumeResponse)initWithMessage:(id)message
{
  messageCopy = message;
  v10.receiver = self;
  v10.super_class = CSMessageVolumeResponse;
  v5 = [(CSMessage *)&v10 initWithMessage:messageCopy];
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
  v5.receiver = self;
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
  dictionaryRepresentation = [(CSMessage *)&v7 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_volume];
  [v4 setObject:v5 forKey:@"ContinuitySingMicrophoneVolume"];

  return v4;
}

@end