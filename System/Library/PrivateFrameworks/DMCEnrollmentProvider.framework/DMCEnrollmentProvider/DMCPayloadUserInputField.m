@interface DMCPayloadUserInputField
- (DMCPayloadUserInputField)initWithFieldDictionary:(id)a3;
- (id)description;
- (id)responseDictionary;
- (int)flags;
- (int)type;
- (int64_t)keyboardType;
- (void)setUserResponse:(id)a3;
@end

@implementation DMCPayloadUserInputField

- (DMCPayloadUserInputField)initWithFieldDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DMCPayloadUserInputField;
  v5 = [(DMCPayloadUserInputField *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    fieldDictionary = v5->_fieldDictionary;
    v5->_fieldDictionary = v6;
  }

  return v5;
}

- (void)setUserResponse:(id)a3
{
  self->_response = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = DMCPayloadUserInputField;
  v3 = [(DMCPayloadUserInputField *)&v7 description];
  v4 = [(NSMutableDictionary *)self->_fieldDictionary description];
  v5 = [v3 stringByAppendingString:v4];

  return v5;
}

- (int)type
{
  v2 = [(NSMutableDictionary *)self->_fieldDictionary objectForKey:*MEMORY[0x277D26378]];
  v3 = [v2 intValue];

  return v3;
}

- (int)flags
{
  v2 = [(NSMutableDictionary *)self->_fieldDictionary objectForKey:*MEMORY[0x277D26388]];
  v3 = [v2 intValue];

  return v3;
}

- (id)responseDictionary
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = [(DMCPayloadUserInputField *)self _uuid];
  v5 = [v3 dictionaryWithObjectsAndKeys:{v4, *MEMORY[0x277D263C0], self->_response, *MEMORY[0x277D263A8], 0}];

  return v5;
}

- (int64_t)keyboardType
{
  v2 = [(DMCPayloadUserInputField *)self type]- 1;
  if (v2 > 6)
  {
    return 0;
  }

  else
  {
    return qword_247ED4380[v2];
  }
}

@end