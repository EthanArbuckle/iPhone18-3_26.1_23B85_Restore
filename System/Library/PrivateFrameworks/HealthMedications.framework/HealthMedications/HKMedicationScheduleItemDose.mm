@interface HKMedicationScheduleItemDose
- (BOOL)isEqual:(id)equal;
- (HKMedicationScheduleItemDose)initWithCoder:(id)coder;
- (HKMedicationScheduleItemDose)initWithScheduleUUID:(id)d dose:(id)dose medicationIdentifier:(id)identifier isLastScheduledDose:(BOOL)scheduledDose;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationScheduleItemDose

- (HKMedicationScheduleItemDose)initWithScheduleUUID:(id)d dose:(id)dose medicationIdentifier:(id)identifier isLastScheduledDose:(BOOL)scheduledDose
{
  dCopy = d;
  doseCopy = dose;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = HKMedicationScheduleItemDose;
  v14 = [(HKMedicationScheduleItemDose *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_scheduleUUID, d);
    objc_storeStrong(&v15->_dose, dose);
    objc_storeStrong(&v15->_medicationIdentifier, identifier);
    v15->_isLastScheduledDose = scheduledDose;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(NSUUID *)v5->_scheduleUUID isEqual:self->_scheduleUUID]&& [(NSString *)v5->_medicationIdentifier isEqual:self->_medicationIdentifier]&& [(NSNumber *)v5->_dose isEqualToNumber:self->_dose]&& v5->_isLastScheduledDose == self->_isLastScheduledDose;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_scheduleUUID hash];
  v4 = [(NSString *)self->_medicationIdentifier hash]^ v3;
  return v4 ^ [(NSNumber *)self->_dose hash]^ self->_isLastScheduledDose;
}

- (void)encodeWithCoder:(id)coder
{
  dose = self->_dose;
  coderCopy = coder;
  [coderCopy encodeObject:dose forKey:@"dose"];
  [coderCopy encodeObject:self->_scheduleUUID forKey:@"scheduleUuid"];
  [coderCopy encodeObject:self->_medicationIdentifier forKey:@"medicationIdentifier"];
  [coderCopy encodeBool:self->_isLastScheduledDose forKey:@"isLastScheduledDose"];
}

- (HKMedicationScheduleItemDose)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = HKMedicationScheduleItemDose;
  v5 = [(HKMedicationScheduleItemDose *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dose"];
    dose = v5->_dose;
    v5->_dose = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scheduleUuid"];
    scheduleUUID = v5->_scheduleUUID;
    v5->_scheduleUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"medicationIdentifier"];
    if (!v10)
    {
      v12 = 0;
      goto LABEL_6;
    }

    medicationIdentifier = v5->_medicationIdentifier;
    v5->_medicationIdentifier = v10;

    v5->_isLastScheduledDose = [coderCopy decodeBoolForKey:@"isLastScheduledDose"];
  }

  v12 = v5;
LABEL_6:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  scheduleUUID = [(HKMedicationScheduleItemDose *)self scheduleUUID];
  dose = [(HKMedicationScheduleItemDose *)self dose];
  v7 = [v3 stringWithFormat:@"<%@: %p>: scheduleUUID: %@ dose: %@ isLastScheduledDose: %d", v4, self, scheduleUUID, dose, -[HKMedicationScheduleItemDose isLastScheduledDose](self, "isLastScheduledDose")];

  return v7;
}

@end