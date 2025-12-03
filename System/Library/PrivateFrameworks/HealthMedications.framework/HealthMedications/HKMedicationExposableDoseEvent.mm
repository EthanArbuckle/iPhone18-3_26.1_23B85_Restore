@interface HKMedicationExposableDoseEvent
+ (id)asNeededExposableDoseEventForMedication:(id)medication doseQuantity:(id)quantity;
- (BOOL)isEqual:(id)equal;
- (HKMedicationExposableDoseEvent)initWithCoder:(id)coder;
- (HKMedicationExposableDoseEvent)initWithDoseEvent:(id)event;
- (id)_initWithLogOrigin:(int64_t)origin scheduleItemIdentifier:(id)identifier semanticIdentifier:(id)semanticIdentifier medicationIdentifier:(id)medicationIdentifier scheduledDoseQuantity:(id)quantity doseQuantity:(id)doseQuantity scheduledDate:(id)date startDate:(id)self0 status:(int64_t)self1 persistedUUID:(id)self2;
- (id)_updateForNewStatus:(void *)status doseQuantity:(void *)quantity startDate:(void *)date semanticIdentifier:;
- (id)updateForNewDoseQuantity:(id)quantity;
- (id)updateForNewStartDate:(id)date;
- (id)updateForSemanticIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationExposableDoseEvent

+ (id)asNeededExposableDoseEventForMedication:(id)medication doseQuantity:(id)quantity
{
  quantityCopy = quantity;
  medicationCopy = medication;
  v7 = [HKMedicationExposableDoseEvent alloc];
  medication = [medicationCopy medication];

  identifier = [medication identifier];
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = [(HKMedicationExposableDoseEvent *)v7 _initWithLogOrigin:1 scheduleItemIdentifier:0 semanticIdentifier:0 medicationIdentifier:identifier scheduledDoseQuantity:0 doseQuantity:quantityCopy scheduledDate:0 startDate:v10 status:2 persistedUUID:0];

  return v11;
}

- (HKMedicationExposableDoseEvent)initWithDoseEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    [(HKMedicationExposableDoseEvent *)a2 initWithDoseEvent:?];
  }

  v6 = objc_alloc(MEMORY[0x277CCD660]);
  medicationIdentifier = [eventCopy medicationIdentifier];
  v19 = [v6 initWithSemanticIdentifierString:medicationIdentifier];

  logOrigin = [eventCopy logOrigin];
  scheduleItemIdentifier = [eventCopy scheduleItemIdentifier];
  medicationIdentifier2 = [eventCopy medicationIdentifier];
  scheduledDoseQuantity = [eventCopy scheduledDoseQuantity];
  doseQuantity = [eventCopy doseQuantity];
  scheduledDate = [eventCopy scheduledDate];
  startDate = [eventCopy startDate];
  logStatus = [eventCopy logStatus];
  uUID = [eventCopy UUID];
  v16 = [(HKMedicationExposableDoseEvent *)self _initWithLogOrigin:logOrigin scheduleItemIdentifier:scheduleItemIdentifier semanticIdentifier:medicationIdentifier2 medicationIdentifier:v19 scheduledDoseQuantity:scheduledDoseQuantity doseQuantity:doseQuantity scheduledDate:scheduledDate startDate:startDate status:logStatus persistedUUID:uUID];

  return v16;
}

- (id)_initWithLogOrigin:(int64_t)origin scheduleItemIdentifier:(id)identifier semanticIdentifier:(id)semanticIdentifier medicationIdentifier:(id)medicationIdentifier scheduledDoseQuantity:(id)quantity doseQuantity:(id)doseQuantity scheduledDate:(id)date startDate:(id)self0 status:(int64_t)self1 persistedUUID:(id)self2
{
  quantityCopy = quantity;
  v44.receiver = self;
  v44.super_class = HKMedicationExposableDoseEvent;
  dCopy = d;
  startDateCopy = startDate;
  dateCopy = date;
  doseQuantityCopy = doseQuantity;
  medicationIdentifierCopy = medicationIdentifier;
  semanticIdentifierCopy = semanticIdentifier;
  identifierCopy = identifier;
  v24 = [(HKMedicationExposableDoseEvent *)&v44 init];
  v24->_logOrigin = origin;
  v25 = [identifierCopy copy];

  scheduleItemIdentifier = v24->_scheduleItemIdentifier;
  v24->_scheduleItemIdentifier = v25;

  v27 = [semanticIdentifierCopy copy];
  semanticIdentifier = v24->_semanticIdentifier;
  v24->_semanticIdentifier = v27;

  v29 = [medicationIdentifierCopy copy];
  medicationIdentifier = v24->_medicationIdentifier;
  v24->_medicationIdentifier = v29;

  scheduledDoseQuantity = v24->_scheduledDoseQuantity;
  v24->_scheduledDoseQuantity = quantityCopy;
  v32 = quantityCopy;

  v33 = [doseQuantityCopy copy];
  doseQuantity = v24->_doseQuantity;
  v24->_doseQuantity = v33;

  v35 = [dateCopy copy];
  scheduledDate = v24->_scheduledDate;
  v24->_scheduledDate = v35;

  v37 = [startDateCopy copy];
  startDate = v24->_startDate;
  v24->_startDate = v37;

  v24->_status = status;
  v39 = [dCopy copy];

  persistedUUID = v24->_persistedUUID;
  v24->_persistedUUID = v39;

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  logOrigin = self->_logOrigin;
  coderCopy = coder;
  [coderCopy encodeInteger:logOrigin forKey:@"LogOrigin"];
  [coderCopy encodeObject:self->_scheduleItemIdentifier forKey:@"ScheduleItemIdentifier"];
  [coderCopy encodeObject:self->_semanticIdentifier forKey:@"SemanticIdentifier"];
  [coderCopy encodeObject:self->_medicationIdentifier forKey:@"MedicationIdentifier"];
  [coderCopy encodeObject:self->_scheduledDoseQuantity forKey:@"ScheduledDoseQuantity"];
  [coderCopy encodeObject:self->_doseQuantity forKey:@"DoseQuantity"];
  [coderCopy encodeObject:self->_scheduledDate forKey:@"ScheduledDate"];
  [coderCopy encodeObject:self->_startDate forKey:@"StartDate"];
  [coderCopy encodeInteger:self->_status forKey:@"Status"];
  [coderCopy encodeObject:self->_persistedUUID forKey:@"PersistedUUID"];
}

- (HKMedicationExposableDoseEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = HKMedicationExposableDoseEvent;
  v5 = [(HKMedicationExposableDoseEvent *)&v23 init];
  if (v5)
  {
    v5->_logOrigin = [coderCopy decodeIntegerForKey:@"LogOrigin"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ScheduleItemIdentifier"];
    scheduleItemIdentifier = v5->_scheduleItemIdentifier;
    v5->_scheduleItemIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SemanticIdentifier"];
    semanticIdentifier = v5->_semanticIdentifier;
    v5->_semanticIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MedicationIdentifier"];
    medicationIdentifier = v5->_medicationIdentifier;
    v5->_medicationIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ScheduledDoseQuantity"];
    scheduledDoseQuantity = v5->_scheduledDoseQuantity;
    v5->_scheduledDoseQuantity = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DoseQuantity"];
    doseQuantity = v5->_doseQuantity;
    v5->_doseQuantity = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ScheduledDate"];
    scheduledDate = v5->_scheduledDate;
    v5->_scheduledDate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StartDate"];
    startDate = v5->_startDate;
    v5->_startDate = v18;

    v5->_status = [coderCopy decodeIntegerForKey:@"Status"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PersistedUUID"];
    persistedUUID = v5->_persistedUUID;
    v5->_persistedUUID = v20;
  }

  return v5;
}

- (id)_updateForNewStatus:(void *)status doseQuantity:(void *)quantity startDate:(void *)date semanticIdentifier:
{
  if (self)
  {
    statusCopy = status;
    if (!status)
    {
      statusCopy = self[5];
    }

    quantityCopy = quantity;
    if (!quantity)
    {
      quantityCopy = self[7];
    }

    dateCopy = date;
    if (!date)
    {
      dateCopy = self[10];
    }

    v13 = dateCopy;
    v14 = quantityCopy;
    v15 = statusCopy;
    dateCopy2 = date;
    quantityCopy2 = quantity;
    statusCopy2 = status;
    v19 = [[HKMedicationExposableDoseEvent alloc] _initWithLogOrigin:self[1] scheduleItemIdentifier:self[2] semanticIdentifier:v13 medicationIdentifier:self[3] scheduledDoseQuantity:self[4] doseQuantity:v15 scheduledDate:self[6] startDate:v14 status:a2 persistedUUID:self[9]];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)updateForNewDoseQuantity:(id)quantity
{
  quantityCopy = quantity;
  v5 = [(HKMedicationExposableDoseEvent *)self _updateForNewStatus:quantityCopy doseQuantity:0 startDate:0 semanticIdentifier:?];

  return v5;
}

- (id)updateForNewStartDate:(id)date
{
  dateCopy = date;
  v5 = [(HKMedicationExposableDoseEvent *)self _updateForNewStatus:0 doseQuantity:dateCopy startDate:0 semanticIdentifier:?];

  return v5;
}

- (id)updateForSemanticIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(HKMedicationExposableDoseEvent *)self _updateForNewStatus:0 doseQuantity:0 startDate:identifierCopy semanticIdentifier:?];

  return v5;
}

- (void)initWithDoseEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicationExposableDoseEvent.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"doseEvent"}];
}

@end