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
    v6 = [[a1 alloc] _init];
    if ([v5 applyToObject:v6])
    {
      v7 = HKDefaultObjectValidationConfigurationIgnoringAllOptions();
      v9 = [v6 _validateWithConfiguration:{v7, v8}];
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = v6;
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
  v18.receiver = a1;
  v18.super_class = &off_283D3DD80;
  v3 = objc_msgSendSuper2(&v18, sel_codableRepresentationForSync);
  [(HDCodableMedicationDoseEvent *)v2 setSample:v3];

  -[HDCodableMedicationDoseEvent setLogOrigin:](v2, "setLogOrigin:", [a1 logOrigin]);
  v4 = [a1 scheduleItemIdentifier];

  if (v4)
  {
    v5 = [a1 scheduleItemIdentifier];
    [(HDCodableMedicationDoseEvent *)v2 setScheduleItemIdentifier:v5];
  }

  v6 = [a1 medicationUUID];
  v7 = [v6 hk_dataForUUIDBytes];
  [(HDCodableMedicationDoseEvent *)v2 setMedicationUuid:v7];

  v8 = [a1 medicationIdentifier];
  [(HDCodableMedicationDoseEvent *)v2 setMedicationIdentifier:v8];
  v9 = [a1 scheduledDoseQuantity];

  if (v9)
  {
    v10 = [a1 scheduledDoseQuantity];
    [v10 doubleValue];
    [(HDCodableMedicationDoseEvent *)v2 setScheduledDoseQuantity:?];
  }

  v11 = [a1 doseQuantity];

  if (v11)
  {
    v12 = [a1 doseQuantity];
    [v12 doubleValue];
    [(HDCodableMedicationDoseEvent *)v2 setDoseQuantity:?];
  }

  v13 = [a1 scheduledDate];

  if (v13)
  {
    v14 = [a1 scheduledDate];
    [v14 timeIntervalSinceReferenceDate];
    [(HDCodableMedicationDoseEvent *)v2 setScheduledDate:?];
  }

  -[HDCodableMedicationDoseEvent setStatus:](v2, "setStatus:", [a1 logStatus]);
  v15 = [a1 doseUnitString];

  if (v15)
  {
    v16 = [a1 doseUnitString];
    [(HDCodableMedicationDoseEvent *)v2 setDoseUnitString:v16];
  }

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  v5 = [a1 codableRepresentationForSync];
  if (v5)
  {
    [v4 addMedicationDoseEvent:v5];
  }

  return v5 != 0;
}

@end