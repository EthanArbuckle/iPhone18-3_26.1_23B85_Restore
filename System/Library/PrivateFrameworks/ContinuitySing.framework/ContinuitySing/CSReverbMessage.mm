@interface CSReverbMessage
+ (id)requiredParameters;
- (CSReverbMessage)initWithMessage:(id)message;
- (CSReverbMessage)initWithReverb:(double)reverb;
- (CSReverbMessage)initWithReverbLevel:(int64_t)level;
- (id)dictionaryRepresentation;
@end

@implementation CSReverbMessage

- (CSReverbMessage)initWithReverbLevel:(int64_t)level
{
  v5.receiver = self;
  v5.super_class = CSReverbMessage;
  result = [(CSReverbMessage *)&v5 init];
  if (result)
  {
    result->_reverbLevel = level;
  }

  return result;
}

- (CSReverbMessage)initWithReverb:(double)reverb
{
  v6.receiver = self;
  v6.super_class = CSReverbMessage;
  v4 = [(CSReverbMessage *)&v6 init];
  if (v4)
  {
    v4->_reverbLevel = ReverbLevelFromReverbValue(reverb);
  }

  return v4;
}

- (CSReverbMessage)initWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = CSReverbMessage;
  v5 = [(CSMessage *)&v9 initWithMessage:messageCopy];
  if (v5)
  {
    v6 = NSDictionaryGetNSNumber();
    v7 = v6;
    if (v6)
    {
      v5->_reverbLevel = [v6 integerValue];
    }
  }

  return v5;
}

+ (id)requiredParameters
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CSReverbMessage;
  v2 = objc_msgSendSuper2(&v5, sel_requiredParameters);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"ContinuitySingReverb"];

  return v3;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = CSReverbMessage;
  dictionaryRepresentation = [(CSMessage *)&v7 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_reverbLevel];
  [v4 setObject:v5 forKey:@"ContinuitySingReverb"];

  return v4;
}

@end