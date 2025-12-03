@interface HDMedicationScheduleEntityEncoder
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
@end

@implementation HDMedicationScheduleEntityEncoder

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  profile = [(HDEntityEncoder *)self profile];
  transaction = [(HDEntityEncoder *)self transaction];
  v11 = [HDMedicationScheduleEntity _codableRepresentationForMedicationScheduleID:d row:row profile:profile transaction:transaction error:error];

  return v11;
}

- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  transaction = [(HDEntityEncoder *)self transaction];
  v9 = [HDMedicationScheduleEntity _medicationScheduleFromRow:row persistentID:d transaction:transaction error:error];

  return v9;
}

@end