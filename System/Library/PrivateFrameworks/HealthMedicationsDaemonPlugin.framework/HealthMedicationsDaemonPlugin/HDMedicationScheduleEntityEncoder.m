@interface HDMedicationScheduleEntityEncoder
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
@end

@implementation HDMedicationScheduleEntityEncoder

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v9 = [(HDEntityEncoder *)self profile];
  v10 = [(HDEntityEncoder *)self transaction];
  v11 = [HDMedicationScheduleEntity _codableRepresentationForMedicationScheduleID:a3 row:a4 profile:v9 transaction:v10 error:a5];

  return v11;
}

- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v8 = [(HDEntityEncoder *)self transaction];
  v9 = [HDMedicationScheduleEntity _medicationScheduleFromRow:a4 persistentID:a3 transaction:v8 error:a5];

  return v9;
}

@end