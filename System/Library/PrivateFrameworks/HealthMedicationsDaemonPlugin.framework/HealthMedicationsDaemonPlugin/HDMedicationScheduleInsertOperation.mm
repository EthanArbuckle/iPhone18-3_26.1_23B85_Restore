@interface HDMedicationScheduleInsertOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDMedicationScheduleInsertOperation)init;
- (HDMedicationScheduleInsertOperation)initWithCoder:(id)coder;
- (HDMedicationScheduleInsertOperation)initWithMedicationSchedules:(id)schedules syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity;
- (void)encodeWithCoder:(id)coder;
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

- (HDMedicationScheduleInsertOperation)initWithMedicationSchedules:(id)schedules syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity
{
  schedulesCopy = schedules;
  v13.receiver = self;
  v13.super_class = HDMedicationScheduleInsertOperation;
  v10 = [(HDMedicationScheduleInsertOperation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_schedules, schedules);
    v11->_syncProvenance = provenance;
    v11->_syncIdentity = identity;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  schedules = self->_schedules;
  coderCopy = coder;
  [coderCopy encodeObject:schedules forKey:@"schedules"];
  [coderCopy encodeInt64:self->_syncIdentity forKey:@"sync_identity"];
  [coderCopy encodeInt64:self->_syncProvenance forKey:@"sync_provenance"];
}

- (HDMedicationScheduleInsertOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HDMedicationScheduleInsertOperation;
  v5 = [(HDMedicationScheduleInsertOperation *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"schedules"];
    schedules = v5->_schedules;
    v5->_schedules = v7;

    v5->_syncProvenance = [coderCopy decodeInt64ForKey:@"sync_provenance"];
    v5->_syncIdentity = -1;
    if ([coderCopy containsValueForKey:@"sync_identity"])
    {
      v5->_syncIdentity = [coderCopy decodeInt64ForKey:@"sync_identity"];
    }
  }

  return v5;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  healthMedicationsProfileExtension = [profile healthMedicationsProfileExtension];
  medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];
  LOBYTE(error) = [(HDMedicationScheduleManager *)medicationScheduleManager _insertMedicationSchedules:self->_syncProvenance syncProvenance:self->_syncIdentity syncIdentity:transactionCopy transaction:error error:?];

  return error;
}

@end