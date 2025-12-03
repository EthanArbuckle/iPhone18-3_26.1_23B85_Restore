@interface CSClientCheckinResponse
- (CSClientCheckinResponse)initWithMessage:(id)message;
- (id)dictionaryRepresentation;
- (id)initValidCheckin:(BOOL)checkin;
@end

@implementation CSClientCheckinResponse

- (id)initValidCheckin:(BOOL)checkin
{
  v5.receiver = self;
  v5.super_class = CSClientCheckinResponse;
  result = [(CSClientCheckinResponse *)&v5 init];
  if (result)
  {
    *(result + 8) = checkin;
  }

  return result;
}

- (CSClientCheckinResponse)initWithMessage:(id)message
{
  messageCopy = message;
  v10.receiver = self;
  v10.super_class = CSClientCheckinResponse;
  v5 = [(CSMessage *)&v10 initWithMessage:messageCopy];
  if (v5)
  {
    v6 = [messageCopy objectForKeyedSubscript:@"IsValid"];
    v7 = v6;
    if (v6)
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v5->_valid = bOOLValue;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = CSClientCheckinResponse;
  dictionaryRepresentation = [(CSMessage *)&v7 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_valid];
  [v4 setObject:v5 forKeyedSubscript:@"IsValid"];

  return v4;
}

@end