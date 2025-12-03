@interface DNDSModeAssertionStore
+ (id)messageDateForPeaceSyncDictionaryRepresentation:(id)representation;
+ (id)messageDateForSyncDictionaryRepresentation:(id)representation;
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
+ (id)newWithPeaceSyncDictionaryRepresentation:(id)representation;
+ (id)newWithSyncDictionaryRepresentation:(id)representation;
+ (id)upgradeDictionaryRepresentation:(id)representation fromVersionNumber:(unint64_t)number toVersionNumber:(unint64_t)versionNumber;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithStore:(id)store;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)lastUpdateDate;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)peaceSyncDictionaryRepresentationWithDate:(id)date messageUUID:(id)d userRequestedClientIdentifierHandler:(id)handler;
- (id)syncDictionaryRepresentationWithDate:(id)date messageUUID:(id)d;
- (id)sysdiagnoseDictionaryRepresentation:(BOOL)representation;
- (unint64_t)hash;
@end

@implementation DNDSModeAssertionStore

+ (id)newWithSyncDictionaryRepresentation:(id)representation
{
  v3 = [representation bs_safeDictionaryForKey:@"c"];
  v4 = [DNDSModeAssertionStoreRecord recordForDictionary:v3 keys:&kSyncRecordKeys];
  object = [v4 object];

  return object;
}

+ (id)messageDateForSyncDictionaryRepresentation:(id)representation
{
  v3 = [representation bs_safeNumberForKey:@"b"];
  v4 = v3;
  v5 = MEMORY[0x277CBEAA8];
  if (v3)
  {
    [v3 doubleValue];
    [v5 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }
  v6 = ;

  return v6;
}

- (id)syncDictionaryRepresentationWithDate:(id)date messageUUID:(id)d
{
  v19[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  v8 = [DNDSModeAssertionStoreRecord recordForAssertionStore:self];
  v9 = [v8 dictionaryWithKeys:&kSyncRecordKeys options:0];
  v18[0] = @"a";
  uUIDString = [dCopy UUIDString];

  v19[0] = uUIDString;
  v18[1] = @"b";
  v11 = MEMORY[0x277CCABB0];
  [dateCopy timeIntervalSinceReferenceDate];
  v13 = v12;

  v14 = [v11 numberWithDouble:v13];
  v18[2] = @"c";
  v19[1] = v14;
  v19[2] = v9;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  v4 = [DNDSModeAssertionStoreRecord recordForDictionary:representation keys:kBackingStoreRecordKeys];
  object = [v4 object];

  return object;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  v3 = [DNDSModeAssertionStoreRecord recordForAssertionStore:self];
  v4 = [v3 dictionaryWithKeys:kBackingStoreRecordKeys options:0];

  return v4;
}

+ (id)upgradeDictionaryRepresentation:(id)representation fromVersionNumber:(unint64_t)number toVersionNumber:(unint64_t)versionNumber
{
  v48[1] = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v7 = [representationCopy mutableCopy];
  if (number <= 1 && versionNumber >= 2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];

    v7 = dictionary;
  }

  if (number <= 2 && versionNumber >= 3)
  {
    v9 = [v7 bs_safeArrayForKey:@"storeAssertionRecords"];
    v10 = [v9 bs_mapNoNulls:&__block_literal_global_7];

    [v7 bs_setSafeObject:v10 forKey:@"storeAssertionRecords"];
  }

  if (number <= 3 && versionNumber >= 4)
  {
    v11 = [v7 bs_safeArrayForKey:@"storeAssertionRecords"];
    v12 = [v11 bs_mapNoNulls:&__block_literal_global_13];

    [v7 bs_setSafeObject:v12 forKey:@"storeAssertionRecords"];
  }

  if (number <= 4 && versionNumber >= 5)
  {
    v13 = [v7 bs_safeArrayForKey:@"storeAssertionRecords"];
    v14 = [v13 bs_mapNoNulls:&__block_literal_global_30];

    [v7 bs_setSafeObject:v14 forKey:@"storeAssertionRecords"];
  }

  if (number <= 5 && versionNumber >= 6)
  {
    v15 = [v7 bs_safeNumberForKey:@"storeLastCompleteInvalidationTimestamp"];
    if (v15)
    {
      [v7 setObject:@"user-changed-state" forKey:@"storeLastCompleteInvalidationReason"];
    }

    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__4;
    v46 = __Block_byref_object_dispose__4;
    v16 = MEMORY[0x277CBEAA8];
    if (v15)
    {
      [v15 doubleValue];
      [v16 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      [MEMORY[0x277CBEAA8] distantPast];
    }
    v47 = ;
    v17 = [v7 bs_safeArrayForKey:@"storeAssertionRecords"];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __114__DNDSModeAssertionStore_BackingRecordUpgrade__upgradeDictionaryRepresentation_fromVersionNumber_toVersionNumber___block_invoke_41;
    v41[3] = &unk_278F8A8D8;
    v41[4] = &v42;
    v18 = [v17 bs_mapNoNulls:v41];

    [v7 bs_setSafeObject:v18 forKey:@"storeAssertionRecords"];
    [v43[5] timeIntervalSinceReferenceDate];
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v7 setObject:v19 forKey:@"storeLastUpdateDate"];

    _Block_object_dispose(&v42, 8);
  }

  if (number <= 7 && versionNumber >= 8)
  {
    v35 = [v7 bs_safeNumberForKey:@"storeLastCompleteInvalidationTimestamp"];
    v20 = [v7 bs_safeStringForKey:@"storeLastCompleteInvalidationReason"];
    v21 = [v7 bs_safeStringForKey:@"storeLastCompleteInvalidationSourceClientIdentifier"];
    v22 = v21;
    if (v35 && v20 && v21)
    {
      v23 = [v7 bs_safeStringForKey:@"storeLastCompleteInvalidationSourceDeviceIdentifier"];
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      [dictionary2 setObject:v22 forKey:@"assertionClientIdentifier"];
      [dictionary2 bs_setSafeObject:v23 forKey:@"assertionSourceDeviceIdentifier"];
      dictionary3 = [MEMORY[0x277CBEB38] dictionary];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      [dictionary3 setObject:uUIDString forKey:@"invalidationRequestUUID"];

      [dictionary3 setObject:&unk_285C536B8 forKey:@"invalidationRequestPredicate"];
      [dictionary3 setObject:v35 forKey:@"invalidationRequestDateTimestamp"];
      [dictionary3 setObject:dictionary2 forKey:@"invalidationRequestSource"];
      [dictionary3 setObject:v20 forKey:@"invalidationRequestReason"];
      v48[0] = dictionary3;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
      [v7 setObject:v28 forKey:@"storeInvalidationRequestRecords"];
    }

    [v7 removeObjectForKey:@"storeLastCompleteInvalidationTimestamp"];
    [v7 removeObjectForKey:@"storeLastCompleteInvalidationReason"];
    [v7 removeObjectForKey:@"storeLastCompleteInvalidationSourceClientIdentifier"];
    [v7 removeObjectForKey:@"storeLastCompleteInvalidationSourceDeviceIdentifier"];
    v29 = [v7 bs_safeArrayForKey:@"storeAssertionRecords"];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __114__DNDSModeAssertionStore_BackingRecordUpgrade__upgradeDictionaryRepresentation_fromVersionNumber_toVersionNumber___block_invoke_3_131;
    v39[3] = &unk_278F8A920;
    v40 = &__block_literal_global_94;
    v30 = [v29 bs_mapNoNulls:v39];

    [v7 bs_setSafeObject:v30 forKey:@"storeAssertionRecords"];
    v31 = [v7 bs_safeArrayForKey:@"storeInvalidationRecords"];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __114__DNDSModeAssertionStore_BackingRecordUpgrade__upgradeDictionaryRepresentation_fromVersionNumber_toVersionNumber___block_invoke_4;
    v37[3] = &unk_278F8A920;
    v38 = &__block_literal_global_94;
    v32 = [v31 bs_mapNoNulls:v37];

    [v7 bs_setSafeObject:v32 forKey:@"storeInvalidationRecords"];
    [v7 removeObjectForKey:@"storeLastUpdateDate"];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v7;
}

id __114__DNDSModeAssertionStore_BackingRecordUpgrade__upgradeDictionaryRepresentation_fromVersionNumber_toVersionNumber___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 bs_safeStringForKey:@"assertionDetailsLifetimeType"];
  v5 = v4;
  if (v4)
  {
    if ([v4 isEqualToString:@"user-requested"])
    {
      [v3 removeObjectForKey:@"assertionDetailsLifetimeType"];
    }

    [v3 setObject:MEMORY[0x277CBEC38] forKey:@"assertionDetailsUserRequested"];
  }

  return v3;
}

id __114__DNDSModeAssertionStore_BackingRecordUpgrade__upgradeDictionaryRepresentation_fromVersionNumber_toVersionNumber___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 bs_safeNumberForKey:@"assertionDetailsUserRequested"];
  v5 = [v4 BOOLValue];

  v6 = [v3 bs_safeStringForKey:@"assertionDetailsLifetimeType"];
  v7 = v6;
  if (v5 && !v6)
  {
    [v3 setObject:@"schedule" forKey:@"assertionDetailsLifetimeType"];
    [v3 setObject:@"com.apple.donotdisturb.schedule.default" forKey:@"assertionDetailsScheduleLifetimeScheduleIdentifier"];
    [v3 setObject:@"expire-on-end" forKey:@"assertionDetailsScheduleLifetimeBehavior"];
  }

  return v3;
}

id __114__DNDSModeAssertionStore_BackingRecordUpgrade__upgradeDictionaryRepresentation_fromVersionNumber_toVersionNumber___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = 0;
  }

  [v3 removeObjectForKey:@"assertionDetailsUserRequested"];

  return v3;
}

id __114__DNDSModeAssertionStore_BackingRecordUpgrade__upgradeDictionaryRepresentation_fromVersionNumber_toVersionNumber___block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 mutableCopy];
  }

  else
  {
    v4 = 0;
  }

  [v4 removeObjectForKey:@"assertionDetailsSyncSuppressionOptions"];
  v5 = [v4 bs_safeNumberForKey:@"assertionStartDateTimestamp"];
  v6 = v5;
  v7 = MEMORY[0x277CBEAA8];
  if (v5)
  {
    [v5 doubleValue];
    [v7 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }
  v8 = ;
  v9 = [*(*(*(a1 + 32) + 8) + 40) laterDate:v8];
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return v4;
}

id __114__DNDSModeAssertionStore_BackingRecordUpgrade__upgradeDictionaryRepresentation_fromVersionNumber_toVersionNumber___block_invoke_2_91(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [v2 bs_takeObjectForKey:@"assertionDetailsLifetimeType"];
  [v3 bs_setSafeObject:v4 forKey:@"assertionDetailsLifetimeType"];

  v5 = [v2 bs_takeObjectForKey:@"assertionDetailsCalendarEventLifetimeEventUniqueIdentifier"];
  [v3 bs_setSafeObject:v5 forKey:@"assertionDetailsCalendarEventLifetimeEventUniqueIdentifier"];

  v6 = [v2 bs_takeObjectForKey:@"assertionDetailsCalendarEventLifetimeOccurrenceDateTimestamp"];
  [v3 bs_setSafeObject:v6 forKey:@"assertionDetailsCalendarEventLifetimeOccurrenceDateTimestamp"];

  v7 = [v2 bs_takeObjectForKey:@"assertionDetailsCalendarEventLifetimeOnlyDuringEvent"];
  [v3 bs_setSafeObject:v7 forKey:@"assertionDetailsCalendarEventLifetimeOnlyDuringEvent"];

  v8 = [v2 bs_takeObjectForKey:@"assertionDetailsDateIntervalLifetimeStartDateTimestamp"];
  [v3 bs_setSafeObject:v8 forKey:@"assertionDetailsDateIntervalLifetimeStartDateTimestamp"];

  v9 = [v2 bs_takeObjectForKey:@"assertionDetailsDateIntervalLifetimeEndDateTimestamp"];
  [v3 bs_setSafeObject:v9 forKey:@"assertionDetailsDateIntervalLifetimeEndDateTimestamp"];

  v10 = [v2 bs_takeObjectForKey:@"assertionDetailsScheduleLifetimeScheduleIdentifier"];
  [v3 bs_setSafeObject:v10 forKey:@"assertionDetailsScheduleLifetimeScheduleIdentifier"];

  v11 = [v2 bs_takeObjectForKey:@"assertionDetailsScheduleLifetimeBehavior"];
  [v3 bs_setSafeObject:v11 forKey:@"assertionDetailsScheduleLifetimeBehavior"];

  if (![v3 count])
  {

    v3 = 0;
  }

  v12 = [MEMORY[0x277CBEB38] dictionary];
  v13 = [v2 bs_takeObjectForKey:@"assertionDetailsIdentifier"];
  [v12 bs_setSafeObject:v13 forKey:@"assertionDetailsIdentifier"];

  v14 = [v2 bs_takeObjectForKey:@"assertionDetailsModeIdentifier"];
  [v12 bs_setSafeObject:v14 forKey:@"assertionDetailsModeIdentifier"];

  v15 = [v2 bs_takeObjectForKey:@"assertionDetailsUserVisibleEndDate"];
  [v12 bs_setSafeObject:v15 forKey:@"assertionDetailsUserVisibleEndDate"];

  [v12 bs_setSafeObject:v3 forKey:@"assertionDetailsLifetime"];
  if (![v12 count])
  {

    v12 = 0;
  }

  v16 = [MEMORY[0x277CBEB38] dictionary];
  v17 = [v2 bs_takeObjectForKey:@"assertionClientIdentifier"];
  [v16 bs_setSafeObject:v17 forKey:@"assertionClientIdentifier"];

  v18 = [v2 bs_takeObjectForKey:@"assertionSourceDeviceIdentifier"];
  [v16 bs_setSafeObject:v18 forKey:@"assertionSourceDeviceIdentifier"];

  if (![v16 count])
  {

    v16 = 0;
  }

  v19 = [MEMORY[0x277CBEB38] dictionary];
  v20 = [v2 bs_takeObjectForKey:@"assertionUUID"];
  [v19 bs_setSafeObject:v20 forKey:@"assertionUUID"];

  v21 = [v2 bs_takeObjectForKey:@"assertionStartDateTimestamp"];
  [v19 bs_setSafeObject:v21 forKey:@"assertionStartDateTimestamp"];

  [v19 bs_setSafeObject:v12 forKey:@"assertionDetails"];
  [v19 bs_setSafeObject:v16 forKey:@"assertionSource"];

  return v19;
}

id __114__DNDSModeAssertionStore_BackingRecordUpgrade__upgradeDictionaryRepresentation_fromVersionNumber_toVersionNumber___block_invoke_3_131(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    v6 = v5;
    v7 = *(a1 + 32);
    v8 = [v5 mutableCopy];
    v9 = (*(v7 + 16))(v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __114__DNDSModeAssertionStore_BackingRecordUpgrade__upgradeDictionaryRepresentation_fromVersionNumber_toVersionNumber___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 mutableCopy];
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(*(a1 + 32) + 16))();
  [v4 bs_setSafeObject:v5 forKey:@"invalidationAssertion"];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [v4 bs_takeObjectForKey:@"invalidationSourceClientIdentifier"];
  [v6 bs_setSafeObject:v7 forKey:@"assertionClientIdentifier"];

  v8 = [v4 bs_takeObjectForKey:@"invalidationSourceDeviceIdentifier"];
  [v6 bs_setSafeObject:v8 forKey:@"assertionSourceDeviceIdentifier"];

  if (![v6 count])
  {

    v6 = 0;
  }

  [v4 bs_setSafeObject:v6 forKey:@"invalidationSource"];

  return v4;
}

- (id)sysdiagnoseDictionaryRepresentation:(BOOL)representation
{
  representationCopy = representation;
  v4 = [DNDSModeAssertionStoreRecord recordForAssertionStore:self];
  v5 = v4;
  if (representationCopy)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = [v4 dictionaryWithKeys:kSysdiagnoseRecordKeys options:v6];

  return v7;
}

+ (id)newWithPeaceSyncDictionaryRepresentation:(id)representation
{
  v19[1] = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v4 = objc_alloc_init(DNDSModeAssertionStoreRecord);
  v5 = [representationCopy bs_safeDictionaryForKey:@"d"];

  v6 = [v5 bs_safeArrayForKey:@"b"];
  v7 = [v6 bs_mapNoNulls:&__block_literal_global_10];
  [(DNDSModeAssertionStoreRecord *)v4 setAssertions:v7];
  v8 = [v5 bs_safeNumberForKey:@"a"];
  dnds_dateValue = [v8 dnds_dateValue];

  if (dnds_dateValue)
  {
    v10 = +[DNDSModeAssertionInvalidationPredicate predicateForAnyAssertion];
    v11 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:@"com.apple.donotdisturb.legacy-watch-toggle" deviceIdentifier:0];
    v12 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:v10 requestDate:dnds_dateValue source:v11 reason:2];
    v13 = [DNDSModeAssertionInvalidationRequestRecord recordForInvalidationRequest:v12];
    v14 = v13;
    if (v13)
    {
      v19[0] = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
      [(DNDSModeAssertionStoreRecord *)v4 setInvalidationRequests:v15];
    }
  }

  object = [(DNDSModeAssertionStoreRecord *)v4 object];

  v17 = *MEMORY[0x277D85DE8];
  return object;
}

DNDSModeAssertionRecord *__85__DNDSModeAssertionStore_PeaceSyncMessage__newWithPeaceSyncDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    v16 = 0;
    goto LABEL_14;
  }

  v7 = [v6 bs_safeStringForKey:@"f"];
  v8 = [v6 bs_safeNumberForKey:@"l"];
  v9 = [v8 BOOLValue];

  if (v7)
  {
    v10 = objc_alloc_init(DNDSModeAssertionLifetimeRecord);
    [(DNDSModeAssertionLifetimeRecord *)v10 setLifetimeType:v7];
    v11 = [v6 bs_safeStringForKey:@"g"];
    [(DNDSModeAssertionLifetimeRecord *)v10 setEventUniqueID:v11];

    v12 = [v6 bs_safeNumberForKey:@"h"];
    [(DNDSModeAssertionLifetimeRecord *)v10 setOnlyDuringEvent:v12];

    v13 = [v6 bs_safeNumberForKey:@"k"];
    [(DNDSModeAssertionLifetimeRecord *)v10 setOccurrenceDate:v13];

    v14 = [v6 bs_safeNumberForKey:@"i"];
    [(DNDSModeAssertionLifetimeRecord *)v10 setStartDate:v14];

    v15 = [v6 bs_safeNumberForKey:@"j"];
    [(DNDSModeAssertionLifetimeRecord *)v10 setEndDate:v15];
  }

  else
  {
    if (!v9)
    {
      v10 = 0;
      goto LABEL_13;
    }

    v10 = objc_alloc_init(DNDSModeAssertionLifetimeRecord);
    v17 = [MEMORY[0x277CCACA8] dnds_stringForLifetimeType:4];
    [(DNDSModeAssertionLifetimeRecord *)v10 setLifetimeType:v17];

    [(DNDSModeAssertionLifetimeRecord *)v10 setScheduleIdentifier:*MEMORY[0x277D05838]];
    v15 = [MEMORY[0x277CCACA8] dnds_stringForScheduleLifetimeBehavior:1];
    [(DNDSModeAssertionLifetimeRecord *)v10 setBehavior:v15];
  }

LABEL_13:
  v18 = objc_alloc_init(DNDSModeAssertionDetailsRecord);
  v19 = [v6 bs_safeStringForKey:@"d"];
  [(DNDSModeAssertionDetailsRecord *)v18 setIdentifier:v19];

  v20 = [v6 bs_safeStringForKey:@"e"];
  [(DNDSModeAssertionDetailsRecord *)v18 setModeIdentifier:v20];

  [(DNDSModeAssertionDetailsRecord *)v18 setLifetime:v10];
  v21 = objc_alloc_init(DNDSModeAssertionSourceRecord);
  v22 = [v6 bs_safeStringForKey:@"c"];
  [(DNDSModeAssertionSourceRecord *)v21 setClientIdentifier:v22];

  v16 = objc_alloc_init(DNDSModeAssertionRecord);
  v23 = [v6 bs_safeStringForKey:@"a"];
  [(DNDSModeAssertionRecord *)v16 setUUID:v23];

  v24 = [v6 bs_safeNumberForKey:@"b"];
  [(DNDSModeAssertionRecord *)v16 setStartDate:v24];

  [(DNDSModeAssertionRecord *)v16 setDetails:v18];
  [(DNDSModeAssertionRecord *)v16 setSource:v21];

LABEL_14:

  return v16;
}

+ (id)messageDateForPeaceSyncDictionaryRepresentation:(id)representation
{
  v3 = [representation bs_safeNumberForKey:@"b"];
  v4 = v3;
  v5 = MEMORY[0x277CBEAA8];
  if (v3)
  {
    [v3 doubleValue];
    [v5 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }
  v6 = ;

  return v6;
}

- (id)peaceSyncDictionaryRepresentationWithDate:(id)date messageUUID:(id)d userRequestedClientIdentifierHandler:(id)handler
{
  v44 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  handlerCopy = handler;
  v32 = [DNDSModeAssertionStoreRecord recordForAssertionStore:self];
  assertions = [v32 assertions];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __135__DNDSModeAssertionStore_PeaceSyncMessage__peaceSyncDictionaryRepresentationWithDate_messageUUID_userRequestedClientIdentifierHandler___block_invoke;
  v39[3] = &unk_278F8AAE8;
  v10 = handlerCopy;
  v40 = v10;
  v11 = [assertions bs_mapNoNulls:v39];

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  invalidationRequests = [(DNDSModeAssertionStore *)self invalidationRequests];
  v14 = [invalidationRequests countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(invalidationRequests);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        predicate = [v18 predicate];
        predicateType = [predicate predicateType];

        if (!predicateType)
        {
          requestDate = [v18 requestDate];
          v22 = [distantPast laterDate:requestDate];

          distantPast = v22;
        }
      }

      v15 = [invalidationRequests countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v15);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [distantPast timeIntervalSinceReferenceDate];
  v25 = [MEMORY[0x277CCABB0] numberWithDouble:ceil(v24)];
  [dictionary setObject:v25 forKey:@"a"];

  [dictionary bs_setSafeObject:v11 forKey:@"b"];
  v41[0] = @"a";
  uUIDString = [dCopy UUIDString];
  v42[0] = uUIDString;
  v41[1] = @"b";
  v27 = MEMORY[0x277CCABB0];
  [dateCopy timeIntervalSinceReferenceDate];
  v28 = [v27 numberWithDouble:?];
  v41[2] = @"d";
  v42[1] = v28;
  v42[2] = dictionary;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

id __135__DNDSModeAssertionStore_PeaceSyncMessage__peaceSyncDictionaryRepresentationWithDate_messageUUID_userRequestedClientIdentifierHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 UUID];
  [v4 bs_setSafeObject:v5 forKey:@"a"];

  v6 = [v3 startDate];
  [v4 bs_setSafeObject:v6 forKey:@"b"];

  v7 = [v3 details];
  v8 = [v7 identifier];
  [v4 bs_setSafeObject:v8 forKey:@"d"];

  v9 = [v7 modeIdentifier];
  [v4 bs_setSafeObject:v9 forKey:@"e"];

  v10 = [v7 lifetime];
  v11 = [v10 lifetimeType];
  v12 = [MEMORY[0x277CCACA8] dnds_stringForLifetimeType:4];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKey:@"l"];
  }

  else
  {
    [v4 bs_setSafeObject:v11 forKey:@"f"];
    v14 = [v10 eventUniqueID];
    [v4 bs_setSafeObject:v14 forKey:@"g"];

    v15 = [v10 onlyDuringEvent];
    [v4 bs_setSafeObject:v15 forKey:@"h"];

    v16 = [v10 occurrenceDate];
    [v4 bs_setSafeObject:v16 forKey:@"k"];

    v17 = [v10 startDate];
    [v4 bs_setSafeObject:v17 forKey:@"i"];

    v18 = [v10 endDate];
    [v4 bs_setSafeObject:v18 forKey:@"j"];
  }

  v19 = [v3 source];
  v20 = [v19 clientIdentifier];
  [v4 bs_setSafeObject:v20 forKey:@"c"];
  if ((*(*(a1 + 32) + 16))())
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKey:@"l"];
  }

  return v4;
}

- (id)_initWithStore:(id)store
{
  storeCopy = store;
  v20.receiver = self;
  v20.super_class = DNDSModeAssertionStore;
  v5 = [(DNDSModeAssertionStore *)&v20 init];
  if (v5)
  {
    assertions = [storeCopy assertions];
    v7 = [assertions copy];
    v8 = v7;
    v9 = MEMORY[0x277CBEBF8];
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v5->_assertions, v10);

    invalidations = [storeCopy invalidations];
    v12 = [invalidations copy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v9;
    }

    objc_storeStrong(&v5->_invalidations, v14);

    invalidationRequests = [storeCopy invalidationRequests];
    v16 = [invalidationRequests copy];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v9;
    }

    objc_storeStrong(&v5->_invalidationRequests, v18);
  }

  return v5;
}

- (unint64_t)hash
{
  assertions = [(DNDSModeAssertionStore *)self assertions];
  v4 = [assertions hash];
  invalidations = [(DNDSModeAssertionStore *)self invalidations];
  v6 = [invalidations hash] ^ v4;
  invalidationRequests = [(DNDSModeAssertionStore *)self invalidationRequests];
  v8 = [invalidationRequests hash];

  return v6 ^ v8;
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
      v6 = equalCopy;
      assertions = [(DNDSModeAssertionStore *)self assertions];
      assertions2 = [(DNDSModeAssertionStore *)v6 assertions];
      if (assertions != assertions2)
      {
        assertions3 = [(DNDSModeAssertionStore *)self assertions];
        if (!assertions3)
        {
          v13 = 0;
          goto LABEL_37;
        }

        v10 = assertions3;
        assertions4 = [(DNDSModeAssertionStore *)v6 assertions];
        if (!assertions4)
        {
          v13 = 0;
LABEL_36:

          goto LABEL_37;
        }

        assertions5 = [(DNDSModeAssertionStore *)self assertions];
        assertions6 = [(DNDSModeAssertionStore *)v6 assertions];
        if (![assertions5 isEqual:assertions6])
        {
          v13 = 0;
LABEL_35:

          goto LABEL_36;
        }

        v36 = assertions6;
        v37 = assertions5;
        v38 = assertions4;
        v39 = v10;
      }

      invalidations = [(DNDSModeAssertionStore *)self invalidations];
      invalidations2 = [(DNDSModeAssertionStore *)v6 invalidations];
      if (invalidations != invalidations2)
      {
        invalidations3 = [(DNDSModeAssertionStore *)self invalidations];
        if (invalidations3)
        {
          v17 = invalidations3;
          invalidations4 = [(DNDSModeAssertionStore *)v6 invalidations];
          if (invalidations4)
          {
            v35 = invalidations;
            invalidations5 = [(DNDSModeAssertionStore *)self invalidations];
            assertions6 = [(DNDSModeAssertionStore *)v6 invalidations];
            if ([invalidations5 isEqual:assertions6])
            {
              v31 = invalidations5;
              v32 = invalidations4;
              v33 = v17;
LABEL_17:
              invalidationRequests = [(DNDSModeAssertionStore *)self invalidationRequests];
              invalidationRequests2 = [(DNDSModeAssertionStore *)v6 invalidationRequests];
              v22 = invalidationRequests2;
              if (invalidationRequests == invalidationRequests2)
              {

                v13 = 1;
                v27 = v35;
              }

              else
              {
                v34 = assertions6;
                invalidationRequests3 = [(DNDSModeAssertionStore *)self invalidationRequests];
                if (invalidationRequests3)
                {
                  v24 = invalidationRequests3;
                  invalidationRequests4 = [(DNDSModeAssertionStore *)v6 invalidationRequests];
                  if (invalidationRequests4)
                  {
                    v30 = invalidationRequests4;
                    invalidationRequests5 = [(DNDSModeAssertionStore *)self invalidationRequests];
                    invalidationRequests6 = [(DNDSModeAssertionStore *)v6 invalidationRequests];
                    v13 = [invalidationRequests5 isEqual:invalidationRequests6];

                    invalidationRequests4 = v30;
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

                assertions6 = v34;
                v27 = v35;
              }

              if (v27 != invalidations2)
              {
              }

LABEL_34:
              assertions4 = v38;
              v10 = v39;
              assertions6 = v36;
              assertions5 = v37;
              if (assertions != assertions2)
              {
                goto LABEL_35;
              }

LABEL_37:

              goto LABEL_38;
            }

            invalidations = v35;
          }
        }

        v13 = 0;
        goto LABEL_34;
      }

      v35 = invalidations;
      goto LABEL_17;
    }

    v13 = 0;
  }

LABEL_38:

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  assertions = [(DNDSModeAssertionStore *)self assertions];
  invalidations = [(DNDSModeAssertionStore *)self invalidations];
  invalidationRequests = [(DNDSModeAssertionStore *)self invalidationRequests];
  v8 = [v3 stringWithFormat:@"<%@: %p assertions: %@; invalidations: %@; invalidationRequests: %@>", v4, self, assertions, invalidations, invalidationRequests];;

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableModeAssertionStore alloc];

  return [(DNDSModeAssertionStore *)v4 _initWithStore:self];
}

- (id)lastUpdateDate
{
  v42 = *MEMORY[0x277D85DE8];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  assertions = [(DNDSModeAssertionStore *)self assertions];
  v5 = [assertions countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    do
    {
      v8 = 0;
      v9 = distantPast;
      do
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(assertions);
        }

        startDate = [*(*(&v35 + 1) + 8 * v8) startDate];
        distantPast = [v9 laterDate:startDate];

        ++v8;
        v9 = distantPast;
      }

      while (v6 != v8);
      v6 = [assertions countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v6);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  invalidations = [(DNDSModeAssertionStore *)self invalidations];
  v12 = [invalidations countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      v15 = 0;
      v16 = distantPast;
      do
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(invalidations);
        }

        invalidationDate = [*(*(&v31 + 1) + 8 * v15) invalidationDate];
        distantPast = [v16 laterDate:invalidationDate];

        ++v15;
        v16 = distantPast;
      }

      while (v13 != v15);
      v13 = [invalidations countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v13);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  invalidationRequests = [(DNDSModeAssertionStore *)self invalidationRequests];
  v19 = [invalidationRequests countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      v22 = 0;
      v23 = distantPast;
      do
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(invalidationRequests);
        }

        requestDate = [*(*(&v27 + 1) + 8 * v22) requestDate];
        distantPast = [v23 laterDate:requestDate];

        ++v22;
        v23 = distantPast;
      }

      while (v20 != v22);
      v20 = [invalidationRequests countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v20);
  }

  v25 = *MEMORY[0x277D85DE8];

  return distantPast;
}

@end