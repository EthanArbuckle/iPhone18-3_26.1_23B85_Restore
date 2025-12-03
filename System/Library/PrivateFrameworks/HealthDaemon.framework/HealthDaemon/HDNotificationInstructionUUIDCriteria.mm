@interface HDNotificationInstructionUUIDCriteria
- (BOOL)isEqual:(id)equal;
- (HDNotificationInstructionUUIDCriteria)initWithCodableNotificationInstructionCriteria:(id)criteria;
- (HDNotificationInstructionUUIDCriteria)initWithCoder:(id)coder;
- (HDNotificationInstructionUUIDCriteria)initWithMessageDictionary:(id)dictionary;
- (HDNotificationInstructionUUIDCriteria)initWithUUID:(id)d;
- (id)_initWithUUID:(id)d;
- (id)_initWithUUIDString:(id)string;
- (id)codableCriteria;
- (id)messageDictionary;
@end

@implementation HDNotificationInstructionUUIDCriteria

- (HDNotificationInstructionUUIDCriteria)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = HDNotificationInstructionUUIDCriteria;
  v5 = [(HDNotificationInstructionUUIDCriteria *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    UUID = v5->_UUID;
    v5->_UUID = v6;
  }

  return v5;
}

- (id)_initWithUUID:(id)d
{
  v3 = a2;
  v4 = v3;
  if (d && v3)
  {
    d = [d initWithUUID:v3];
    dCopy = d;
  }

  else
  {
    dCopy = 0;
  }

  return dCopy;
}

- (id)_initWithUUIDString:(id)string
{
  v3 = a2;
  v4 = v3;
  if (string && v3)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v3];
    string = [(HDNotificationInstructionUUIDCriteria *)string _initWithUUID:v5];

    stringCopy = string;
  }

  else
  {
    stringCopy = 0;
  }

  return stringCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = HDNotificationInstructionUUIDCriteria;
  if (![(HDNotificationInstructionCriteria *)&v9 isEqual:equalCopy])
  {
    goto LABEL_5;
  }

  UUID = self->_UUID;
  v6 = equalCopy[1];
  if (UUID == v6)
  {
    v7 = 1;
    goto LABEL_7;
  }

  if (v6)
  {
    v7 = [(NSUUID *)UUID isEqual:?];
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (HDNotificationInstructionUUIDCriteria)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];

  v6 = [(HDNotificationInstructionUUIDCriteria *)self _initWithUUID:v5];
  return v6;
}

- (HDNotificationInstructionUUIDCriteria)initWithMessageDictionary:(id)dictionary
{
  v4 = [dictionary hk_safeStringForKeyPath:@"UUID" error:0];
  v5 = [(HDNotificationInstructionUUIDCriteria *)self _initWithUUIDString:v4];

  return v5;
}

- (id)messageDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"UUID";
  uUIDString = [(NSUUID *)self->_UUID UUIDString];
  v7[0] = uUIDString;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HDNotificationInstructionUUIDCriteria)initWithCodableNotificationInstructionCriteria:(id)criteria
{
  criteriaCopy = criteria;
  if ([criteriaCopy hasUUIDString])
  {
    uUIDString = [criteriaCopy uUIDString];
  }

  else
  {
    uUIDString = 0;
  }

  v6 = [(HDNotificationInstructionUUIDCriteria *)self _initWithUUIDString:uUIDString];

  return v6;
}

- (id)codableCriteria
{
  v6.receiver = self;
  v6.super_class = HDNotificationInstructionUUIDCriteria;
  codableCriteria = [(HDNotificationInstructionCriteria *)&v6 codableCriteria];
  uUIDString = [(NSUUID *)self->_UUID UUIDString];
  [codableCriteria setUUIDString:uUIDString];

  return codableCriteria;
}

@end