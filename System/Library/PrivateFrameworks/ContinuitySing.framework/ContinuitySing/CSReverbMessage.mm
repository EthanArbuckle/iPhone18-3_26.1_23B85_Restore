@interface CSReverbMessage
+ (id)requiredParameters;
- (CSReverbMessage)initWithMessage:(id)a3;
- (CSReverbMessage)initWithReverb:(double)a3;
- (CSReverbMessage)initWithReverbLevel:(int64_t)a3;
- (id)dictionaryRepresentation;
@end

@implementation CSReverbMessage

- (CSReverbMessage)initWithReverbLevel:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CSReverbMessage;
  result = [(CSReverbMessage *)&v5 init];
  if (result)
  {
    result->_reverbLevel = a3;
  }

  return result;
}

- (CSReverbMessage)initWithReverb:(double)a3
{
  v6.receiver = self;
  v6.super_class = CSReverbMessage;
  v4 = [(CSReverbMessage *)&v6 init];
  if (v4)
  {
    v4->_reverbLevel = ReverbLevelFromReverbValue(a3);
  }

  return v4;
}

- (CSReverbMessage)initWithMessage:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CSReverbMessage;
  v5 = [(CSMessage *)&v9 initWithMessage:v4];
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
  v5.receiver = a1;
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
  v3 = [(CSMessage *)&v7 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_reverbLevel];
  [v4 setObject:v5 forKey:@"ContinuitySingReverb"];

  return v4;
}

@end