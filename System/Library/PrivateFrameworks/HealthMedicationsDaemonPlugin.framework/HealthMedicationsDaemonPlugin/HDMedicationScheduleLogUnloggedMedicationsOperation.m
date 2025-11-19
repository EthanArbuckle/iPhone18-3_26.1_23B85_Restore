@interface HDMedicationScheduleLogUnloggedMedicationsOperation
- (HDMedicationScheduleLogUnloggedMedicationsOperation)init;
- (HDMedicationScheduleLogUnloggedMedicationsOperation)initWithCoder:(id)a3;
- (HDMedicationScheduleLogUnloggedMedicationsOperation)initWithScheduledItemIdentifier:(id)a3 status:(int64_t)a4 logDate:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDMedicationScheduleLogUnloggedMedicationsOperation

- (HDMedicationScheduleLogUnloggedMedicationsOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDMedicationScheduleLogUnloggedMedicationsOperation)initWithScheduledItemIdentifier:(id)a3 status:(int64_t)a4 logDate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = HDMedicationScheduleLogUnloggedMedicationsOperation;
  v10 = [(HDMedicationScheduleLogUnloggedMedicationsOperation *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    scheduledItemIdentifier = v10->_scheduledItemIdentifier;
    v10->_scheduledItemIdentifier = v11;

    v10->_status = a4;
    v13 = [v9 copy];
    logDate = v10->_logDate;
    v10->_logDate = v13;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  scheduledItemIdentifier = self->_scheduledItemIdentifier;
  v5 = a3;
  [v5 encodeObject:scheduledItemIdentifier forKey:@"ScheduledItemIdentifier"];
  [v5 encodeInteger:self->_status forKey:@"Status"];
  [v5 encodeObject:self->_logDate forKey:@"LogDate"];
}

- (HDMedicationScheduleLogUnloggedMedicationsOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HDMedicationScheduleLogUnloggedMedicationsOperation;
  v5 = [(HDMedicationScheduleLogUnloggedMedicationsOperation *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ScheduledItemIdentifier"];
    scheduledItemIdentifier = v5->_scheduledItemIdentifier;
    v5->_scheduledItemIdentifier = v6;

    v5->_status = [v4 decodeIntegerForKey:@"Status"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LogDate"];
    logDate = v5->_logDate;
    v5->_logDate = v8;
  }

  return v5;
}

@end