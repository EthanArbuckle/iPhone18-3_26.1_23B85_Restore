@interface CSVocalMessage
+ (id)requiredParameters;
- (CSVocalMessage)initWithMessage:(id)message;
- (CSVocalMessage)initWithVocalLevel:(double)level;
- (id)dictionaryRepresentation;
@end

@implementation CSVocalMessage

- (CSVocalMessage)initWithVocalLevel:(double)level
{
  v5.receiver = self;
  v5.super_class = CSVocalMessage;
  result = [(CSVocalMessage *)&v5 init];
  if (result)
  {
    result->_vocalLevel = level;
  }

  return result;
}

- (CSVocalMessage)initWithMessage:(id)message
{
  messageCopy = message;
  v10.receiver = self;
  v10.super_class = CSVocalMessage;
  v5 = [(CSMessage *)&v10 initWithMessage:messageCopy];
  if (v5)
  {
    v6 = NSDictionaryGetNSNumber();
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      v5->_vocalLevel = v8;
    }
  }

  return v5;
}

+ (id)requiredParameters
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CSVocalMessage;
  v2 = objc_msgSendSuper2(&v5, sel_requiredParameters);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"ContinuitySingVocal"];

  return v3;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = CSVocalMessage;
  dictionaryRepresentation = [(CSMessage *)&v7 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_vocalLevel];
  [v4 setObject:v5 forKey:@"ContinuitySingVocal"];

  return v4;
}

@end