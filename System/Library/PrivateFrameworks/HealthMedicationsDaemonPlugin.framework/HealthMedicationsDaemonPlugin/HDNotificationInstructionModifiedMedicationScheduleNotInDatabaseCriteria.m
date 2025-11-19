@interface HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria
- (BOOL)isEqual:(id)a3;
- (HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria)initWithCodableNotificationInstructionCriteria:(id)a3;
- (HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria)initWithCoder:(id)a3;
- (HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria)initWithMessageDictionary:(id)a3;
- (HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria)initWithUUID:(id)a3 modificationDate:(id)a4;
- (id)_initWithUUID:(void *)a3 modificationDate:;
- (id)_initWithUUIDString:(void *)a3 modificationTimeInterval:;
- (id)codableCriteria;
- (id)description;
- (id)messageDictionary;
- (int64_t)isValidWithDatabaseTransaction:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria

- (int64_t)isValidWithDatabaseTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v7 = [v6 protectedDatabase];
  v8 = v7;
  if (!v7)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:6 description:@"Protected database is inaccessible"];
    goto LABEL_5;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __113__HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria_isValidWithDatabaseTransaction_error___block_invoke_2;
  v12[3] = &unk_2796CE028;
  v12[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __113__HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria_isValidWithDatabaseTransaction_error___block_invoke_3;
  v11[3] = &unk_2796CE5C8;
  v11[4] = &v13;
  if (![v7 executeCachedStatementForKey:&isValidWithDatabaseTransaction_error__lookupKey error:a4 SQLGenerator:&__block_literal_global_14 bindingHandler:v12 enumerationHandler:v11])
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = v14[3];
LABEL_6:

  _Block_object_dispose(&v13, 8);
  return v9;
}

id __113__HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria_isValidWithDatabaseTransaction_error___block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = +[(HDSQLiteSchemaEntity *)HDMedicationScheduleEntity];
  v2 = [v0 stringWithFormat:@"SELECT 1 FROM %@ WHERE %@ = ? AND %@ >= ? LIMIT 1", v1, @"uuid", @"creation_date"];

  return v2;
}

uint64_t __113__HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria_isValidWithDatabaseTransaction_error___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  HDSQLiteBindFoundationValueToStatement();
  v3 = *(*(a1 + 32) + 16);

  return HDSQLiteBindFoundationValueToStatement();
}

- (HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria)initWithUUID:(id)a3 modificationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria;
  v8 = [(HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    UUID = v8->_UUID;
    v8->_UUID = v9;

    v11 = [v7 copy];
    modificationDate = v8->_modificationDate;
    v8->_modificationDate = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria;
  if ([(HDNotificationInstructionCriteria *)&v12 isEqual:v4])
  {
    v5 = v4;
    UUID = self->_UUID;
    v7 = v5[1];
    if (UUID != v7 && (!v7 || ![(NSUUID *)UUID isEqual:?]))
    {
      goto LABEL_9;
    }

    modificationDate = self->_modificationDate;
    v9 = v5[2];
    if (modificationDate == v9)
    {
      v10 = 1;
      goto LABEL_11;
    }

    if (v9)
    {
      v10 = [(NSDate *)modificationDate isEqual:?];
    }

    else
    {
LABEL_9:
      v10 = 0;
    }

LABEL_11:

    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria;
  v3 = [(HDNotificationInstructionCriteria *)&v6 hash];
  v4 = [(NSUUID *)self->_UUID hash]^ v3;
  return v4 ^ [(NSDate *)self->_modificationDate hash];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  UUID = self->_UUID;
  return [v3 stringWithFormat:@"<%@ %@ mtime:%@>", v4, UUID, self->_modificationDate];
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"UUID"];
  [v5 encodeObject:self->_modificationDate forKey:@"ModificationDate"];
}

- (id)messageDictionary
{
  v13[2] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria;
  v3 = [(HDNotificationInstructionCriteria *)&v11 messageDictionary];
  v12[0] = @"UUID";
  v4 = [(NSUUID *)self->_UUID UUIDString];
  v12[1] = @"ModificationDate";
  v13[0] = v4;
  v5 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_modificationDate timeIntervalSinceReferenceDate];
  v6 = [v5 numberWithDouble:?];
  v13[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v8 = [v3 hk_dictionaryByAddingEntriesFromDictionary:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)codableCriteria
{
  v6.receiver = self;
  v6.super_class = HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria;
  v3 = [(HDNotificationInstructionCriteria *)&v6 codableCriteria];
  v4 = [(NSUUID *)self->_UUID UUIDString];
  [v3 setUUIDString:v4];

  [(NSDate *)self->_modificationDate timeIntervalSinceReferenceDate];
  [v3 setModificationTimeInterval:?];

  return v3;
}

- (id)_initWithUUIDString:(void *)a3 modificationTimeInterval:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (a1 && v5 && v6)
  {
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
    v11 = MEMORY[0x277CBEAA8];
    [v7 doubleValue];
    v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
    a1 = [(HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria *)a1 _initWithUUID:v10 modificationDate:v12];

    v8 = a1;
  }

  return v8;
}

- (id)_initWithUUID:(void *)a3 modificationDate:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (a1 && v5 && v6)
  {
    a1 = [a1 initWithUUID:v5 modificationDate:v6];
    v8 = a1;
  }

  return v8;
}

- (HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ModificationDate"];

  v7 = [(HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria *)self _initWithUUID:v5 modificationDate:v6];
  return v7;
}

- (HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria)initWithMessageDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 hk_safeStringForKeyPath:@"UUID" error:0];
  v6 = [v4 hk_safeNumberForKeyPath:@"ModificationDate" error:0];

  v7 = [(HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria *)self _initWithUUIDString:v5 modificationTimeInterval:v6];
  return v7;
}

- (HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria)initWithCodableNotificationInstructionCriteria:(id)a3
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

  if ([v4 hasModificationTimeInterval])
  {
    v6 = MEMORY[0x277CCABB0];
    [v4 modificationTimeInterval];
    v7 = [v6 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria *)self _initWithUUIDString:v5 modificationTimeInterval:v7];

  return v8;
}

@end