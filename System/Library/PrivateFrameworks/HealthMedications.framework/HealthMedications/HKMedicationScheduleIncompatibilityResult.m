@interface HKMedicationScheduleIncompatibilityResult
- (BOOL)isEqual:(id)a3;
- (HKMedicationScheduleIncompatibilityResult)init;
- (HKMedicationScheduleIncompatibilityResult)initWithCoder:(id)a3;
- (HKMedicationScheduleIncompatibilityResult)initWithSchedule:(id)a3 incompatibleDevices:(id)a4;
- (void)encodeWithCoder:(id)a3;
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

- (HKMedicationScheduleIncompatibilityResult)initWithSchedule:(id)a3 incompatibleDevices:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKMedicationScheduleIncompatibilityResult;
  v9 = [(HKMedicationScheduleIncompatibilityResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_schedule, a3);
    objc_storeStrong(&v10->_incompatibleDevices, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKMedicationSchedule *)self->_schedule medicationIdentifier];
      v7 = [(HKMedicationSchedule *)v5->_schedule medicationIdentifier];
      if (v6 == v7)
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
        v8 = [(HKMedicationSchedule *)v5->_schedule medicationIdentifier];
        if (v8)
        {
          v9 = [(HKMedicationSchedule *)self->_schedule medicationIdentifier];
          v10 = [(HKMedicationSchedule *)v5->_schedule medicationIdentifier];
          if ([v9 isEqual:v10])
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

- (void)encodeWithCoder:(id)a3
{
  schedule = self->_schedule;
  v5 = a3;
  [v5 encodeObject:schedule forKey:@"Schedule"];
  [v5 encodeObject:self->_incompatibleDevices forKey:@"IncompatibleDevices"];
}

- (HKMedicationScheduleIncompatibilityResult)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKMedicationScheduleIncompatibilityResult;
  v5 = [(HKMedicationScheduleIncompatibilityResult *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Schedule"];
    [(HKMedicationScheduleIncompatibilityResult *)v5 setSchedule:v6];

    v7 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"IncompatibleDevices"];
    [(HKMedicationScheduleIncompatibilityResult *)v5 setIncompatibleDevices:v8];
  }

  return v5;
}

@end