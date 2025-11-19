@interface HDMedicationScheduleInsertOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDMedicationScheduleInsertOperation)init;
- (HDMedicationScheduleInsertOperation)initWithCoder:(id)a3;
- (HDMedicationScheduleInsertOperation)initWithMedicationSchedules:(id)a3 syncProvenance:(int64_t)a4 syncIdentity:(int64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDMedicationScheduleInsertOperation

- (HDMedicationScheduleInsertOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDMedicationScheduleInsertOperation)initWithMedicationSchedules:(id)a3 syncProvenance:(int64_t)a4 syncIdentity:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HDMedicationScheduleInsertOperation;
  v10 = [(HDMedicationScheduleInsertOperation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_schedules, a3);
    v11->_syncProvenance = a4;
    v11->_syncIdentity = a5;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  schedules = self->_schedules;
  v5 = a3;
  [v5 encodeObject:schedules forKey:@"schedules"];
  [v5 encodeInt64:self->_syncIdentity forKey:@"sync_identity"];
  [v5 encodeInt64:self->_syncProvenance forKey:@"sync_provenance"];
}

- (HDMedicationScheduleInsertOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDMedicationScheduleInsertOperation;
  v5 = [(HDMedicationScheduleInsertOperation *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"schedules"];
    schedules = v5->_schedules;
    v5->_schedules = v7;

    v5->_syncProvenance = [v4 decodeInt64ForKey:@"sync_provenance"];
    v5->_syncIdentity = -1;
    if ([v4 containsValueForKey:@"sync_identity"])
    {
      v5->_syncIdentity = [v4 decodeInt64ForKey:@"sync_identity"];
    }
  }

  return v5;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 healthMedicationsProfileExtension];
  v10 = [v9 medicationScheduleManager];
  LOBYTE(a5) = [(HDMedicationScheduleManager *)v10 _insertMedicationSchedules:self->_syncProvenance syncProvenance:self->_syncIdentity syncIdentity:v8 transaction:a5 error:?];

  return a5;
}

@end