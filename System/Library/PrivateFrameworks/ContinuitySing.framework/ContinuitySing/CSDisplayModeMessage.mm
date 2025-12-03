@interface CSDisplayModeMessage
+ (id)requiredParameters;
- (CSDisplayModeMessage)initWithEnableSDR:(BOOL)r;
- (CSDisplayModeMessage)initWithMessage:(id)message;
- (id)dictionaryRepresentation;
@end

@implementation CSDisplayModeMessage

- (CSDisplayModeMessage)initWithEnableSDR:(BOOL)r
{
  v5.receiver = self;
  v5.super_class = CSDisplayModeMessage;
  result = [(CSDisplayModeMessage *)&v5 init];
  if (result)
  {
    result->_enableSDR = r;
  }

  return result;
}

- (CSDisplayModeMessage)initWithMessage:(id)message
{
  messageCopy = message;
  v7.receiver = self;
  v7.super_class = CSDisplayModeMessage;
  v5 = [(CSMessage *)&v7 initWithMessage:messageCopy];
  if (v5)
  {
    v5->_enableSDR = CFDictionaryGetInt64() != 0;
  }

  return v5;
}

+ (id)requiredParameters
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CSDisplayModeMessage;
  v2 = objc_msgSendSuper2(&v5, sel_requiredParameters);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"ContinuitySingSDR"];

  return v3;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = CSDisplayModeMessage;
  dictionaryRepresentation = [(CSMessage *)&v7 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableSDR];
  [v4 setObject:v5 forKey:@"ContinuitySingSDR"];

  return v4;
}

@end