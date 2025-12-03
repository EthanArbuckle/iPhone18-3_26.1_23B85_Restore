@interface HKMedicationSchedule(HDCodingSupport)
+ (NSObject)hd_medicationScheduleFromCodable:()HDCodingSupport;
+ (id)hd_medicationSchedulesFromCodables:()HDCodingSupport profile:ignoreDuplicates:;
- (HDCodableMedicationSchedule)hd_codableMedicationSchedule;
@end

@implementation HKMedicationSchedule(HDCodingSupport)

+ (id)hd_medicationSchedulesFromCodables:()HDCodingSupport profile:ignoreDuplicates:
{
  v7 = a3;
  v8 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = MEMORY[0x277D108E8];
  database = [v8 database];
  v21 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __101__HKMedicationSchedule_HDCodingSupport__hd_medicationSchedulesFromCodables_profile_ignoreDuplicates___block_invoke;
  v16[3] = &unk_2796CD400;
  v11 = v7;
  v17 = v11;
  v20 = a5;
  v12 = v8;
  v18 = v12;
  v19 = &v22;
  [v9 performWriteTransactionWithHealthDatabase:database error:&v21 block:v16];
  v13 = v21;

  v14 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v14;
}

+ (NSObject)hd_medicationScheduleFromCodable:()HDCodingSupport
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 endDateTime];
  if (fabs(v5) < 2.22044605e-16)
  {
    v7 = 0;
  }

  else
  {
    v6 = MEMORY[0x277CBEAA8];
    [v4 endDateTime];
    v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
  }

  compatibilityVersionRange = [v4 compatibilityVersionRange];

  if (compatibilityVersionRange)
  {
    compatibilityVersionRange2 = [v4 compatibilityVersionRange];
    minimum = [compatibilityVersionRange2 minimum];
    compatibilityVersionRange3 = [v4 compatibilityVersionRange];
    origin = [compatibilityVersionRange3 origin];
  }

  else
  {
    origin = 0;
    minimum = 0;
  }

  medicationIdentifier = [v4 medicationIdentifier];
  if (![medicationIdentifier length])
  {

    medicationIdentifier = 0;
  }

  v42 = medicationIdentifier;
  v43 = v7;
  if ([v4 hasScheduleType])
  {
    scheduleType = [v4 scheduleType];
  }

  else
  {
    [v4 frequencyType];
    scheduleType = v13;
  }

  v14 = objc_alloc(MEMORY[0x277D11570]);
  decodedUUID = [v4 decodedUUID];
  decodedMedicationUUID = [v4 decodedMedicationUUID];
  v15 = MEMORY[0x277CBEBB0];
  createdTimeZone = [v4 createdTimeZone];
  v35 = [v15 timeZoneWithName:createdTimeZone];
  v16 = MEMORY[0x277CBEAA8];
  [v4 startDateTime];
  v34 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
  intervalDatas = [v4 intervalDatas];
  selfCopy = self;
  v17 = [(HKMedicationSchedule *)self _medicationScheduleIntervalDataFromCodable:intervalDatas];
  displayOptions = [v4 displayOptions];
  v19 = MEMORY[0x277CBEAB8];
  cycleStartDateComponents = [v4 cycleStartDateComponents];
  v21 = [v19 hk_dateComponentsWithCodableDateComponents:cycleStartDateComponents];
  deleted = [v4 deleted];
  [v4 creationDate];
  v24 = v23;
  note = [v4 note];
  LOBYTE(v32) = deleted;
  v26 = [v14 initWithUUID:decodedUUID medicationUUID:decodedMedicationUUID medicationIdentifier:v42 createdUTCOffset:v35 startDateTime:v34 endDateTime:v43 timeIntervals:v24 scheduleType:v17 displayOptions:scheduleType cycleStartDateComponents:displayOptions deleted:v21 creationTimestamp:v32 note:note compatibilityVersionRange:{minimum, origin}];

  if ([v26 isUnavailable])
  {
    _HKInitializeLogging();
    v27 = HKLogMedication();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v45 = selfCopy;
      v46 = 2114;
      v47 = v26;
      _os_log_impl(&dword_25181C000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Receiving a schedule that has already been marked as unavailable. %{public}@", buf, 0x16u);
    }

    goto LABEL_21;
  }

  if ([v26 isInvalid])
  {
    _HKInitializeLogging();
    v28 = HKLogMedication();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(HKMedicationSchedule(HDCodingSupport) *)selfCopy hd_medicationScheduleFromCodable:v26, v28];
    }
  }

  if ([v26 needsToBeMadeUnavailable])
  {
    [v26 unavailableSchedule];
    v26 = v27 = v26;
LABEL_21:
  }

  v29 = v26;

  v30 = *MEMORY[0x277D85DE8];
  return v26;
}

- (HDCodableMedicationSchedule)hd_codableMedicationSchedule
{
  v2 = objc_alloc_init(HDCodableMedicationSchedule);
  uUID = [self UUID];
  hk_dataForUUIDBytes = [uUID hk_dataForUUIDBytes];
  [(HDCodableMedicationSchedule *)v2 setUuid:hk_dataForUUIDBytes];

  medicationUUID = [self medicationUUID];
  hk_dataForUUIDBytes2 = [medicationUUID hk_dataForUUIDBytes];
  [(HDCodableMedicationSchedule *)v2 setMedicationUUID:hk_dataForUUIDBytes2];

  medicationIdentifier = [self medicationIdentifier];
  if (medicationIdentifier)
  {
    medicationIdentifier2 = [self medicationIdentifier];
    [(HDCodableMedicationSchedule *)v2 setMedicationIdentifier:medicationIdentifier2];
  }

  else
  {
    [(HDCodableMedicationSchedule *)v2 setMedicationIdentifier:&stru_2863B7AF8];
  }

  startDateTime = [self startDateTime];
  [startDateTime timeIntervalSinceReferenceDate];
  [(HDCodableMedicationSchedule *)v2 setStartDateTime:?];

  endDateTime = [self endDateTime];
  [endDateTime timeIntervalSinceReferenceDate];
  [(HDCodableMedicationSchedule *)v2 setEndDateTime:?];

  createdUTCOffset = [self createdUTCOffset];
  name = [createdUTCOffset name];
  [(HDCodableMedicationSchedule *)v2 setCreatedTimeZone:name];

  -[HDCodableMedicationSchedule setFrequencyType:](v2, "setFrequencyType:", [self frequencyType]);
  -[HDCodableMedicationSchedule setScheduleType:](v2, "setScheduleType:", [self scheduleType]);
  cycleStartDate = [self cycleStartDate];
  hk_codableDateComponents = [cycleStartDate hk_codableDateComponents];
  [(HDCodableMedicationSchedule *)v2 setCycleStartDateComponents:hk_codableDateComponents];

  note = [self note];
  [(HDCodableMedicationSchedule *)v2 setNote:note];

  v16 = MEMORY[0x277D11570];
  timeIntervals = [self timeIntervals];
  v18 = [(HKMedicationSchedule *)v16 _codableArrayForMedicationScheduleIntervalDatas:timeIntervals];
  v19 = [v18 mutableCopy];
  [(HDCodableMedicationSchedule *)v2 setIntervalDatas:v19];

  [self creationTimestamp];
  [(HDCodableMedicationSchedule *)v2 setCreationDate:?];
  -[HDCodableMedicationSchedule setDeleted:](v2, "setDeleted:", [self isDeleted]);
  v20 = objc_alloc_init(HDCodableMedicationScheduleCompatibilityVersionRange);
  -[HDCodableMedicationScheduleCompatibilityVersionRange setMinimum:](v20, "setMinimum:", [self compatibilityRange]);
  [self compatibilityRange];
  [(HDCodableMedicationScheduleCompatibilityVersionRange *)v20 setOrigin:v21];
  [(HDCodableMedicationSchedule *)v2 setCompatibilityVersionRange:v20];

  return v2;
}

+ (void)hd_medicationScheduleFromCodable:()HDCodingSupport .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_25181C000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Received invalid schedule: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end