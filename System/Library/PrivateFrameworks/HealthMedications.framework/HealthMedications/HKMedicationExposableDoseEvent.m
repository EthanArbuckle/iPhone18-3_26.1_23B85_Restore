@interface HKMedicationExposableDoseEvent
+ (id)asNeededExposableDoseEventForMedication:(id)a3 doseQuantity:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HKMedicationExposableDoseEvent)initWithCoder:(id)a3;
- (HKMedicationExposableDoseEvent)initWithDoseEvent:(id)a3;
- (id)_initWithLogOrigin:(int64_t)a3 scheduleItemIdentifier:(id)a4 semanticIdentifier:(id)a5 medicationIdentifier:(id)a6 scheduledDoseQuantity:(id)a7 doseQuantity:(id)a8 scheduledDate:(id)a9 startDate:(id)a10 status:(int64_t)a11 persistedUUID:(id)a12;
- (id)_updateForNewStatus:(void *)a3 doseQuantity:(void *)a4 startDate:(void *)a5 semanticIdentifier:;
- (id)updateForNewDoseQuantity:(id)a3;
- (id)updateForNewStartDate:(id)a3;
- (id)updateForSemanticIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicationExposableDoseEvent

+ (id)asNeededExposableDoseEventForMedication:(id)a3 doseQuantity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [HKMedicationExposableDoseEvent alloc];
  v8 = [v6 medication];

  v9 = [v8 identifier];
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = [(HKMedicationExposableDoseEvent *)v7 _initWithLogOrigin:1 scheduleItemIdentifier:0 semanticIdentifier:0 medicationIdentifier:v9 scheduledDoseQuantity:0 doseQuantity:v5 scheduledDate:0 startDate:v10 status:2 persistedUUID:0];

  return v11;
}

- (HKMedicationExposableDoseEvent)initWithDoseEvent:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(HKMedicationExposableDoseEvent *)a2 initWithDoseEvent:?];
  }

  v6 = objc_alloc(MEMORY[0x277CCD660]);
  v7 = [v5 medicationIdentifier];
  v19 = [v6 initWithSemanticIdentifierString:v7];

  v18 = [v5 logOrigin];
  v8 = [v5 scheduleItemIdentifier];
  v9 = [v5 medicationIdentifier];
  v10 = [v5 scheduledDoseQuantity];
  v11 = [v5 doseQuantity];
  v12 = [v5 scheduledDate];
  v13 = [v5 startDate];
  v14 = [v5 logStatus];
  v15 = [v5 UUID];
  v16 = [(HKMedicationExposableDoseEvent *)self _initWithLogOrigin:v18 scheduleItemIdentifier:v8 semanticIdentifier:v9 medicationIdentifier:v19 scheduledDoseQuantity:v10 doseQuantity:v11 scheduledDate:v12 startDate:v13 status:v14 persistedUUID:v15];

  return v16;
}

- (id)_initWithLogOrigin:(int64_t)a3 scheduleItemIdentifier:(id)a4 semanticIdentifier:(id)a5 medicationIdentifier:(id)a6 scheduledDoseQuantity:(id)a7 doseQuantity:(id)a8 scheduledDate:(id)a9 startDate:(id)a10 status:(int64_t)a11 persistedUUID:(id)a12
{
  v17 = a7;
  v44.receiver = self;
  v44.super_class = HKMedicationExposableDoseEvent;
  v43 = a12;
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = [(HKMedicationExposableDoseEvent *)&v44 init];
  v24->_logOrigin = a3;
  v25 = [v23 copy];

  scheduleItemIdentifier = v24->_scheduleItemIdentifier;
  v24->_scheduleItemIdentifier = v25;

  v27 = [v22 copy];
  semanticIdentifier = v24->_semanticIdentifier;
  v24->_semanticIdentifier = v27;

  v29 = [v21 copy];
  medicationIdentifier = v24->_medicationIdentifier;
  v24->_medicationIdentifier = v29;

  scheduledDoseQuantity = v24->_scheduledDoseQuantity;
  v24->_scheduledDoseQuantity = v17;
  v32 = v17;

  v33 = [v20 copy];
  doseQuantity = v24->_doseQuantity;
  v24->_doseQuantity = v33;

  v35 = [v19 copy];
  scheduledDate = v24->_scheduledDate;
  v24->_scheduledDate = v35;

  v37 = [v18 copy];
  startDate = v24->_startDate;
  v24->_startDate = v37;

  v24->_status = a11;
  v39 = [v43 copy];

  persistedUUID = v24->_persistedUUID;
  v24->_persistedUUID = v39;

  return v24;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      medicationIdentifier = v5->_medicationIdentifier;
      v7 = self->_medicationIdentifier;
      if (medicationIdentifier != v7 && (!v7 || ![(HKMedicationIdentifier *)medicationIdentifier isEqual:?]))
      {
        goto LABEL_32;
      }

      semanticIdentifier = v5->_semanticIdentifier;
      v9 = self->_semanticIdentifier;
      if (semanticIdentifier != v9 && (!v9 || ![(NSString *)semanticIdentifier isEqual:?]))
      {
        goto LABEL_32;
      }

      scheduledDoseQuantity = v5->_scheduledDoseQuantity;
      v11 = self->_scheduledDoseQuantity;
      if (scheduledDoseQuantity != v11 && (!v11 || ![(NSNumber *)scheduledDoseQuantity isEqual:?]))
      {
        goto LABEL_32;
      }

      doseQuantity = v5->_doseQuantity;
      v13 = self->_doseQuantity;
      if (doseQuantity != v13 && (!v13 || ![(NSNumber *)doseQuantity isEqual:?]))
      {
        goto LABEL_32;
      }

      scheduleItemIdentifier = v5->_scheduleItemIdentifier;
      v15 = self->_scheduleItemIdentifier;
      if (scheduleItemIdentifier != v15 && (!v15 || ![(NSString *)scheduleItemIdentifier isEqual:?]))
      {
        goto LABEL_32;
      }

      if (((scheduledDate = v5->_scheduledDate, v17 = self->_scheduledDate, scheduledDate == v17) || v17 && [(NSDate *)scheduledDate isEqual:?]) && ((startDate = v5->_startDate, v19 = self->_startDate, startDate == v19) || v19 && [(NSDate *)startDate isEqual:?]) && v5->_status == self->_status && v5->_logOrigin == self->_logOrigin && ((persistedUUID = v5->_persistedUUID, v21 = self->_persistedUUID, persistedUUID == v21) || v21 && [(NSUUID *)persistedUUID isEqual:?]))
      {
        v22 = 1;
      }

      else
      {
LABEL_32:
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  logOrigin = self->_logOrigin;
  v5 = a3;
  [v5 encodeInteger:logOrigin forKey:@"LogOrigin"];
  [v5 encodeObject:self->_scheduleItemIdentifier forKey:@"ScheduleItemIdentifier"];
  [v5 encodeObject:self->_semanticIdentifier forKey:@"SemanticIdentifier"];
  [v5 encodeObject:self->_medicationIdentifier forKey:@"MedicationIdentifier"];
  [v5 encodeObject:self->_scheduledDoseQuantity forKey:@"ScheduledDoseQuantity"];
  [v5 encodeObject:self->_doseQuantity forKey:@"DoseQuantity"];
  [v5 encodeObject:self->_scheduledDate forKey:@"ScheduledDate"];
  [v5 encodeObject:self->_startDate forKey:@"StartDate"];
  [v5 encodeInteger:self->_status forKey:@"Status"];
  [v5 encodeObject:self->_persistedUUID forKey:@"PersistedUUID"];
}

- (HKMedicationExposableDoseEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HKMedicationExposableDoseEvent;
  v5 = [(HKMedicationExposableDoseEvent *)&v23 init];
  if (v5)
  {
    v5->_logOrigin = [v4 decodeIntegerForKey:@"LogOrigin"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ScheduleItemIdentifier"];
    scheduleItemIdentifier = v5->_scheduleItemIdentifier;
    v5->_scheduleItemIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SemanticIdentifier"];
    semanticIdentifier = v5->_semanticIdentifier;
    v5->_semanticIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MedicationIdentifier"];
    medicationIdentifier = v5->_medicationIdentifier;
    v5->_medicationIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ScheduledDoseQuantity"];
    scheduledDoseQuantity = v5->_scheduledDoseQuantity;
    v5->_scheduledDoseQuantity = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DoseQuantity"];
    doseQuantity = v5->_doseQuantity;
    v5->_doseQuantity = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ScheduledDate"];
    scheduledDate = v5->_scheduledDate;
    v5->_scheduledDate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StartDate"];
    startDate = v5->_startDate;
    v5->_startDate = v18;

    v5->_status = [v4 decodeIntegerForKey:@"Status"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PersistedUUID"];
    persistedUUID = v5->_persistedUUID;
    v5->_persistedUUID = v20;
  }

  return v5;
}

- (id)_updateForNewStatus:(void *)a3 doseQuantity:(void *)a4 startDate:(void *)a5 semanticIdentifier:
{
  if (a1)
  {
    v10 = a3;
    if (!a3)
    {
      v10 = a1[5];
    }

    v11 = a4;
    if (!a4)
    {
      v11 = a1[7];
    }

    v12 = a5;
    if (!a5)
    {
      v12 = a1[10];
    }

    v13 = v12;
    v14 = v11;
    v15 = v10;
    v16 = a5;
    v17 = a4;
    v18 = a3;
    v19 = [[HKMedicationExposableDoseEvent alloc] _initWithLogOrigin:a1[1] scheduleItemIdentifier:a1[2] semanticIdentifier:v13 medicationIdentifier:a1[3] scheduledDoseQuantity:a1[4] doseQuantity:v15 scheduledDate:a1[6] startDate:v14 status:a2 persistedUUID:a1[9]];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)updateForNewDoseQuantity:(id)a3
{
  v4 = a3;
  v5 = [(HKMedicationExposableDoseEvent *)self _updateForNewStatus:v4 doseQuantity:0 startDate:0 semanticIdentifier:?];

  return v5;
}

- (id)updateForNewStartDate:(id)a3
{
  v4 = a3;
  v5 = [(HKMedicationExposableDoseEvent *)self _updateForNewStatus:0 doseQuantity:v4 startDate:0 semanticIdentifier:?];

  return v5;
}

- (id)updateForSemanticIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HKMedicationExposableDoseEvent *)self _updateForNewStatus:0 doseQuantity:0 startDate:v4 semanticIdentifier:?];

  return v5;
}

- (void)initWithDoseEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicationExposableDoseEvent.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"doseEvent"}];
}

@end