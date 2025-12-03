@interface HKMedicationDoseEvent(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableMedicationDoseEvent)codableRepresentationForSync;
@end

@implementation HKMedicationDoseEvent(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    _init = [[self alloc] _init];
    if ([v5 applyToObject:_init])
    {
      v7 = HKDefaultObjectValidationConfigurationIgnoringAllOptions();
      v9 = [_init _validateWithConfiguration:{v7, v8}];
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = _init;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HDCodableMedicationDoseEvent)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableMedicationDoseEvent);
  v18.receiver = self;
  v18.super_class = &off_283D3DD80;
  v3 = objc_msgSendSuper2(&v18, sel_codableRepresentationForSync);
  [(HDCodableMedicationDoseEvent *)v2 setSample:v3];

  -[HDCodableMedicationDoseEvent setLogOrigin:](v2, "setLogOrigin:", [self logOrigin]);
  scheduleItemIdentifier = [self scheduleItemIdentifier];

  if (scheduleItemIdentifier)
  {
    scheduleItemIdentifier2 = [self scheduleItemIdentifier];
    [(HDCodableMedicationDoseEvent *)v2 setScheduleItemIdentifier:scheduleItemIdentifier2];
  }

  medicationUUID = [self medicationUUID];
  hk_dataForUUIDBytes = [medicationUUID hk_dataForUUIDBytes];
  [(HDCodableMedicationDoseEvent *)v2 setMedicationUuid:hk_dataForUUIDBytes];

  medicationIdentifier = [self medicationIdentifier];
  [(HDCodableMedicationDoseEvent *)v2 setMedicationIdentifier:medicationIdentifier];
  scheduledDoseQuantity = [self scheduledDoseQuantity];

  if (scheduledDoseQuantity)
  {
    scheduledDoseQuantity2 = [self scheduledDoseQuantity];
    [scheduledDoseQuantity2 doubleValue];
    [(HDCodableMedicationDoseEvent *)v2 setScheduledDoseQuantity:?];
  }

  doseQuantity = [self doseQuantity];

  if (doseQuantity)
  {
    doseQuantity2 = [self doseQuantity];
    [doseQuantity2 doubleValue];
    [(HDCodableMedicationDoseEvent *)v2 setDoseQuantity:?];
  }

  scheduledDate = [self scheduledDate];

  if (scheduledDate)
  {
    scheduledDate2 = [self scheduledDate];
    [scheduledDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicationDoseEvent *)v2 setScheduledDate:?];
  }

  -[HDCodableMedicationDoseEvent setStatus:](v2, "setStatus:", [self logStatus]);
  doseUnitString = [self doseUnitString];

  if (doseUnitString)
  {
    doseUnitString2 = [self doseUnitString];
    [(HDCodableMedicationDoseEvent *)v2 setDoseUnitString:doseUnitString2];
  }

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  codableRepresentationForSync = [self codableRepresentationForSync];
  if (codableRepresentationForSync)
  {
    [v4 addMedicationDoseEvent:codableRepresentationForSync];
  }

  return codableRepresentationForSync != 0;
}

@end