@interface HDNotificationInstructionUUIDCriteria
- (BOOL)isEqual:(id)a3;
- (HDNotificationInstructionUUIDCriteria)initWithCodableNotificationInstructionCriteria:(id)a3;
- (HDNotificationInstructionUUIDCriteria)initWithCoder:(id)a3;
- (HDNotificationInstructionUUIDCriteria)initWithMessageDictionary:(id)a3;
- (HDNotificationInstructionUUIDCriteria)initWithUUID:(id)a3;
- (id)_initWithUUID:(id)a1;
- (id)_initWithUUIDString:(id)a1;
- (id)codableCriteria;
- (id)messageDictionary;
@end

@implementation HDNotificationInstructionUUIDCriteria

- (HDNotificationInstructionUUIDCriteria)initWithUUID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDNotificationInstructionUUIDCriteria;
  v5 = [(HDNotificationInstructionUUIDCriteria *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    UUID = v5->_UUID;
    v5->_UUID = v6;
  }

  return v5;
}

- (id)_initWithUUID:(id)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    a1 = [a1 initWithUUID:v3];
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_initWithUUIDString:(id)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v3];
    a1 = [(HDNotificationInstructionUUIDCriteria *)a1 _initWithUUID:v5];

    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDNotificationInstructionUUIDCriteria;
  if (![(HDNotificationInstructionCriteria *)&v9 isEqual:v4])
  {
    goto LABEL_5;
  }

  UUID = self->_UUID;
  v6 = v4[1];
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

- (HDNotificationInstructionUUIDCriteria)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];

  v6 = [(HDNotificationInstructionUUIDCriteria *)self _initWithUUID:v5];
  return v6;
}

- (HDNotificationInstructionUUIDCriteria)initWithMessageDictionary:(id)a3
{
  v4 = [a3 hk_safeStringForKeyPath:@"UUID" error:0];
  v5 = [(HDNotificationInstructionUUIDCriteria *)self _initWithUUIDString:v4];

  return v5;
}

- (id)messageDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"UUID";
  v2 = [(NSUUID *)self->_UUID UUIDString];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HDNotificationInstructionUUIDCriteria)initWithCodableNotificationInstructionCriteria:(id)a3
{
  v4 = a3;
  if ([v4 hasUUIDString])
  {
    v5 = [v4 uUIDString];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(HDNotificationInstructionUUIDCriteria *)self _initWithUUIDString:v5];

  return v6;
}

- (id)codableCriteria
{
  v6.receiver = self;
  v6.super_class = HDNotificationInstructionUUIDCriteria;
  v3 = [(HDNotificationInstructionCriteria *)&v6 codableCriteria];
  v4 = [(NSUUID *)self->_UUID UUIDString];
  [v3 setUUIDString:v4];

  return v3;
}

@end