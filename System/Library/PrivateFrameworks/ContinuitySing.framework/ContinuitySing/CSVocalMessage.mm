@interface CSVocalMessage
+ (id)requiredParameters;
- (CSVocalMessage)initWithMessage:(id)a3;
- (CSVocalMessage)initWithVocalLevel:(double)a3;
- (id)dictionaryRepresentation;
@end

@implementation CSVocalMessage

- (CSVocalMessage)initWithVocalLevel:(double)a3
{
  v5.receiver = self;
  v5.super_class = CSVocalMessage;
  result = [(CSVocalMessage *)&v5 init];
  if (result)
  {
    result->_vocalLevel = a3;
  }

  return result;
}

- (CSVocalMessage)initWithMessage:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CSVocalMessage;
  v5 = [(CSMessage *)&v10 initWithMessage:v4];
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
  v5.receiver = a1;
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
  v3 = [(CSMessage *)&v7 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_vocalLevel];
  [v4 setObject:v5 forKey:@"ContinuitySingVocal"];

  return v4;
}

@end