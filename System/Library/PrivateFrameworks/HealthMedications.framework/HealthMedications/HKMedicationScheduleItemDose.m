@interface HKMedicationScheduleItemDose
- (BOOL)isEqual:(id)a3;
- (HKMedicationScheduleItemDose)initWithCoder:(id)a3;
- (HKMedicationScheduleItemDose)initWithScheduleUUID:(id)a3 dose:(id)a4 medicationIdentifier:(id)a5 isLastScheduledDose:(BOOL)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicationScheduleItemDose

- (HKMedicationScheduleItemDose)initWithScheduleUUID:(id)a3 dose:(id)a4 medicationIdentifier:(id)a5 isLastScheduledDose:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = HKMedicationScheduleItemDose;
  v14 = [(HKMedicationScheduleItemDose *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_scheduleUUID, a3);
    objc_storeStrong(&v15->_dose, a4);
    objc_storeStrong(&v15->_medicationIdentifier, a5);
    v15->_isLastScheduledDose = a6;
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  dose = self->_dose;
  v5 = a3;
  [v5 encodeObject:dose forKey:@"dose"];
  [v5 encodeObject:self->_scheduleUUID forKey:@"scheduleUuid"];
  [v5 encodeObject:self->_medicationIdentifier forKey:@"medicationIdentifier"];
  [v5 encodeBool:self->_isLastScheduledDose forKey:@"isLastScheduledDose"];
}

- (HKMedicationScheduleItemDose)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HKMedicationScheduleItemDose;
  v5 = [(HKMedicationScheduleItemDose *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dose"];
    dose = v5->_dose;
    v5->_dose = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scheduleUuid"];
    scheduleUUID = v5->_scheduleUUID;
    v5->_scheduleUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"medicationIdentifier"];
    if (!v10)
    {
      v12 = 0;
      goto LABEL_6;
    }

    medicationIdentifier = v5->_medicationIdentifier;
    v5->_medicationIdentifier = v10;

    v5->_isLastScheduledDose = [v4 decodeBoolForKey:@"isLastScheduledDose"];
  }

  v12 = v5;
LABEL_6:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HKMedicationScheduleItemDose *)self scheduleUUID];
  v6 = [(HKMedicationScheduleItemDose *)self dose];
  v7 = [v3 stringWithFormat:@"<%@: %p>: scheduleUUID: %@ dose: %@ isLastScheduledDose: %d", v4, self, v5, v6, -[HKMedicationScheduleItemDose isLastScheduledDose](self, "isLastScheduledDose")];

  return v7;
}

@end