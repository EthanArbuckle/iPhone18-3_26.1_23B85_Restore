@interface CSClientCheckinResponse
- (CSClientCheckinResponse)initWithMessage:(id)a3;
- (id)dictionaryRepresentation;
- (id)initValidCheckin:(BOOL)a3;
@end

@implementation CSClientCheckinResponse

- (id)initValidCheckin:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CSClientCheckinResponse;
  result = [(CSClientCheckinResponse *)&v5 init];
  if (result)
  {
    *(result + 8) = a3;
  }

  return result;
}

- (CSClientCheckinResponse)initWithMessage:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CSClientCheckinResponse;
  v5 = [(CSMessage *)&v10 initWithMessage:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"IsValid"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 BOOLValue];
    }

    else
    {
      v8 = 1;
    }

    v5->_valid = v8;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = CSClientCheckinResponse;
  v3 = [(CSMessage *)&v7 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_valid];
  [v4 setObject:v5 forKeyedSubscript:@"IsValid"];

  return v4;
}

@end