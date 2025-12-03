@interface HKMedicationScheduleIncompatibilityResult
- (BOOL)isEqual:(id)equal;
- (HKMedicationScheduleIncompatibilityResult)init;
- (HKMedicationScheduleIncompatibilityResult)initWithCoder:(id)coder;
- (HKMedicationScheduleIncompatibilityResult)initWithSchedule:(id)schedule incompatibleDevices:(id)devices;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationScheduleIncompatibilityResult

- (HKMedicationScheduleIncompatibilityResult)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicationScheduleIncompatibilityResult)initWithSchedule:(id)schedule incompatibleDevices:(id)devices
{
  scheduleCopy = schedule;
  devicesCopy = devices;
  v12.receiver = self;
  v12.super_class = HKMedicationScheduleIncompatibilityResult;
  v9 = [(HKMedicationScheduleIncompatibilityResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_schedule, schedule);
    objc_storeStrong(&v10->_incompatibleDevices, devices);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      medicationIdentifier = [(HKMedicationSchedule *)self->_schedule medicationIdentifier];
      medicationIdentifier2 = [(HKMedicationSchedule *)v5->_schedule medicationIdentifier];
      if (medicationIdentifier == medicationIdentifier2)
      {
        incompatibleDevices = self->_incompatibleDevices;
        v15 = v5->_incompatibleDevices;
        v13 = incompatibleDevices == v15;
        if (incompatibleDevices != v15 && v15)
        {
          v13 = [(NSArray *)incompatibleDevices isEqualToArray:?];
        }
      }

      else
      {
        medicationIdentifier3 = [(HKMedicationSchedule *)v5->_schedule medicationIdentifier];
        if (medicationIdentifier3)
        {
          medicationIdentifier4 = [(HKMedicationSchedule *)self->_schedule medicationIdentifier];
          medicationIdentifier5 = [(HKMedicationSchedule *)v5->_schedule medicationIdentifier];
          if ([medicationIdentifier4 isEqual:medicationIdentifier5])
          {
            v11 = self->_incompatibleDevices;
            v12 = v5->_incompatibleDevices;
            v13 = v11 == v12;
            if (v11 != v12 && v12)
            {
              v13 = [(NSArray *)v11 isEqualToArray:?];
            }
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  schedule = self->_schedule;
  coderCopy = coder;
  [coderCopy encodeObject:schedule forKey:@"Schedule"];
  [coderCopy encodeObject:self->_incompatibleDevices forKey:@"IncompatibleDevices"];
}

- (HKMedicationScheduleIncompatibilityResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKMedicationScheduleIncompatibilityResult;
  v5 = [(HKMedicationScheduleIncompatibilityResult *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Schedule"];
    [(HKMedicationScheduleIncompatibilityResult *)v5 setSchedule:v6];

    v7 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"IncompatibleDevices"];
    [(HKMedicationScheduleIncompatibilityResult *)v5 setIncompatibleDevices:v8];
  }

  return v5;
}

@end