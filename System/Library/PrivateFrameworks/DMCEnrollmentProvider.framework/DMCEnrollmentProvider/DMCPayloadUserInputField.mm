@interface DMCPayloadUserInputField
- (DMCPayloadUserInputField)initWithFieldDictionary:(id)dictionary;
- (id)description;
- (id)responseDictionary;
- (int)flags;
- (int)type;
- (int64_t)keyboardType;
- (void)setUserResponse:(id)response;
@end

@implementation DMCPayloadUserInputField

- (DMCPayloadUserInputField)initWithFieldDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = DMCPayloadUserInputField;
  v5 = [(DMCPayloadUserInputField *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy mutableCopy];
    fieldDictionary = v5->_fieldDictionary;
    v5->_fieldDictionary = v6;
  }

  return v5;
}

- (void)setUserResponse:(id)response
{
  self->_response = [response copy];

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
  intValue = [v2 intValue];

  return intValue;
}

- (int)flags
{
  v2 = [(NSMutableDictionary *)self->_fieldDictionary objectForKey:*MEMORY[0x277D26388]];
  intValue = [v2 intValue];

  return intValue;
}

- (id)responseDictionary
{
  v3 = MEMORY[0x277CBEAC0];
  _uuid = [(DMCPayloadUserInputField *)self _uuid];
  v5 = [v3 dictionaryWithObjectsAndKeys:{_uuid, *MEMORY[0x277D263C0], self->_response, *MEMORY[0x277D263A8], 0}];

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