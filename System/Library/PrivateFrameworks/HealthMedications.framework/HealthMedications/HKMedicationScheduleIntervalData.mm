@interface HKMedicationScheduleIntervalData
- (BOOL)isEqual:(id)a3;
- (HKMedicationScheduleIntervalData)initWithCoder:(id)a3;
- (HKMedicationScheduleIntervalData)initWithStartTimeComponent:(id)a3 daysOfWeek:(unint64_t)a4 cycleIndex:(id)a5 cycleIntervalDays:(id)a6 dose:(id)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicationScheduleIntervalData

- (HKMedicationScheduleIntervalData)initWithStartTimeComponent:(id)a3 daysOfWeek:(unint64_t)a4 cycleIndex:(id)a5 cycleIntervalDays:(id)a6 dose:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = HKMedicationScheduleIntervalData;
  v16 = [(HKMedicationScheduleIntervalData *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    startTimeComponent = v16->_startTimeComponent;
    v16->_startTimeComponent = v17;

    v16->_daysOfWeek = a4;
    v19 = [v13 copy];
    cycleIndex = v16->_cycleIndex;
    v16->_cycleIndex = v19;

    v21 = [v14 copy];
    cycleIntervalDays = v16->_cycleIntervalDays;
    v16->_cycleIntervalDays = v21;

    v23 = [v15 copy];
    dose = v16->_dose;
    v16->_dose = v23;
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      startTimeComponent = self->_startTimeComponent;
      v7 = v5->_startTimeComponent;
      if (startTimeComponent != v7 && (!v7 || ![(NSDateComponents *)startTimeComponent isEqual:?]))
      {
        goto LABEL_18;
      }

      if (self->_daysOfWeek != v5->_daysOfWeek)
      {
        goto LABEL_18;
      }

      cycleIndex = self->_cycleIndex;
      v9 = v5->_cycleIndex;
      if (cycleIndex != v9 && (!v9 || ![(NSNumber *)cycleIndex isEqual:?]))
      {
        goto LABEL_18;
      }

      cycleIntervalDays = self->_cycleIntervalDays;
      v11 = v5->_cycleIntervalDays;
      if (cycleIntervalDays != v11 && (!v11 || ![(NSNumber *)cycleIntervalDays isEqual:?]))
      {
        goto LABEL_18;
      }

      dose = self->_dose;
      v13 = v5->_dose;
      if (dose == v13)
      {
        v14 = 1;
        goto LABEL_19;
      }

      if (v13)
      {
        v14 = [(NSNumber *)dose isEqual:?];
      }

      else
      {
LABEL_18:
        v14 = 0;
      }

LABEL_19:

      goto LABEL_20;
    }

    v14 = 0;
  }

LABEL_20:

  return v14;
}

- (unint64_t)hash
{
  v3 = self->_daysOfWeek ^ [(NSDateComponents *)self->_startTimeComponent hash];
  v4 = [(NSNumber *)self->_cycleIndex hash];
  v5 = v3 ^ v4 ^ [(NSNumber *)self->_cycleIntervalDays hash];
  return v5 ^ [(NSNumber *)self->_dose hash];
}

- (void)encodeWithCoder:(id)a3
{
  startTimeComponent = self->_startTimeComponent;
  v5 = a3;
  [v5 encodeObject:startTimeComponent forKey:@"startTimeComponent"];
  [v5 encodeInteger:self->_daysOfWeek forKey:@"daysOfWeek"];
  [v5 encodeObject:self->_cycleIndex forKey:@"cycleIndex"];
  [v5 encodeObject:self->_cycleIntervalDays forKey:@"cycleIntervalDays"];
  [v5 encodeObject:self->_dose forKey:@"dose"];
}

- (HKMedicationScheduleIntervalData)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HKMedicationScheduleIntervalData;
  v5 = [(HKMedicationScheduleIntervalData *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startTimeComponent"];
    startTimeComponent = v5->_startTimeComponent;
    v5->_startTimeComponent = v6;

    v5->_daysOfWeek = [v4 decodeIntegerForKey:@"daysOfWeek"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cycleIndex"];
    cycleIndex = v5->_cycleIndex;
    v5->_cycleIndex = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cycleIntervalDays"];
    cycleIntervalDays = v5->_cycleIntervalDays;
    v5->_cycleIntervalDays = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dose"];
    dose = v5->_dose;
    v5->_dose = v12;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02d:%02d:%02d", -[NSDateComponents hour](self->_startTimeComponent, "hour"), -[NSDateComponents minute](self->_startTimeComponent, "minute"), -[NSDateComponents second](self->_startTimeComponent, "second")];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = HKStringFromReminderWeekdayOptions(self->_daysOfWeek);
  v7 = [v4 stringWithFormat:@"<%@: %p>: startTime: %@ daysOfWeek: %@ cycleIndex: %@ cycleIntervalDays: %@ dose: %@", v5, self, v3, v6, self->_cycleIndex, self->_cycleIntervalDays, self->_dose];

  return v7;
}

@end