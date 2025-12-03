@interface HDMedicationScheduleLogUnloggedMedicationsOperation
- (HDMedicationScheduleLogUnloggedMedicationsOperation)init;
- (HDMedicationScheduleLogUnloggedMedicationsOperation)initWithCoder:(id)coder;
- (HDMedicationScheduleLogUnloggedMedicationsOperation)initWithScheduledItemIdentifier:(id)identifier status:(int64_t)status logDate:(id)date;
- (void)encodeWithCoder:(id)coder;
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

- (HDMedicationScheduleLogUnloggedMedicationsOperation)initWithScheduledItemIdentifier:(id)identifier status:(int64_t)status logDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = HDMedicationScheduleLogUnloggedMedicationsOperation;
  v10 = [(HDMedicationScheduleLogUnloggedMedicationsOperation *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    scheduledItemIdentifier = v10->_scheduledItemIdentifier;
    v10->_scheduledItemIdentifier = v11;

    v10->_status = status;
    v13 = [dateCopy copy];
    logDate = v10->_logDate;
    v10->_logDate = v13;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  scheduledItemIdentifier = self->_scheduledItemIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:scheduledItemIdentifier forKey:@"ScheduledItemIdentifier"];
  [coderCopy encodeInteger:self->_status forKey:@"Status"];
  [coderCopy encodeObject:self->_logDate forKey:@"LogDate"];
}

- (HDMedicationScheduleLogUnloggedMedicationsOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HDMedicationScheduleLogUnloggedMedicationsOperation;
  v5 = [(HDMedicationScheduleLogUnloggedMedicationsOperation *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ScheduledItemIdentifier"];
    scheduledItemIdentifier = v5->_scheduledItemIdentifier;
    v5->_scheduledItemIdentifier = v6;

    v5->_status = [coderCopy decodeIntegerForKey:@"Status"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LogDate"];
    logDate = v5->_logDate;
    v5->_logDate = v8;
  }

  return v5;
}

@end