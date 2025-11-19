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
  v10 = [v8 database];
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
  [v9 performWriteTransactionWithHealthDatabase:v10 error:&v21 block:v16];
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

  v8 = [v4 compatibilityVersionRange];

  if (v8)
  {
    v9 = [v4 compatibilityVersionRange];
    v41 = [v9 minimum];
    v10 = [v4 compatibilityVersionRange];
    v40 = [v10 origin];
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  v11 = [v4 medicationIdentifier];
  if (![v11 length])
  {

    v11 = 0;
  }

  v42 = v11;
  v43 = v7;
  if ([v4 hasScheduleType])
  {
    v12 = [v4 scheduleType];
  }

  else
  {
    [v4 frequencyType];
    v12 = v13;
  }

  v14 = objc_alloc(MEMORY[0x277D11570]);
  v37 = [v4 decodedUUID];
  v38 = [v4 decodedMedicationUUID];
  v15 = MEMORY[0x277CBEBB0];
  v39 = [v4 createdTimeZone];
  v35 = [v15 timeZoneWithName:v39];
  v16 = MEMORY[0x277CBEAA8];
  [v4 startDateTime];
  v34 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
  v36 = [v4 intervalDatas];
  v33 = a1;
  v17 = [(HKMedicationSchedule *)a1 _medicationScheduleIntervalDataFromCodable:v36];
  v18 = [v4 displayOptions];
  v19 = MEMORY[0x277CBEAB8];
  v20 = [v4 cycleStartDateComponents];
  v21 = [v19 hk_dateComponentsWithCodableDateComponents:v20];
  v22 = [v4 deleted];
  [v4 creationDate];
  v24 = v23;
  v25 = [v4 note];
  LOBYTE(v32) = v22;
  v26 = [v14 initWithUUID:v37 medicationUUID:v38 medicationIdentifier:v42 createdUTCOffset:v35 startDateTime:v34 endDateTime:v43 timeIntervals:v24 scheduleType:v17 displayOptions:v12 cycleStartDateComponents:v18 deleted:v21 creationTimestamp:v32 note:v25 compatibilityVersionRange:{v41, v40}];

  if ([v26 isUnavailable])
  {
    _HKInitializeLogging();
    v27 = HKLogMedication();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v45 = v33;
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
      [(HKMedicationSchedule(HDCodingSupport) *)v33 hd_medicationScheduleFromCodable:v26, v28];
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
  v3 = [a1 UUID];
  v4 = [v3 hk_dataForUUIDBytes];
  [(HDCodableMedicationSchedule *)v2 setUuid:v4];

  v5 = [a1 medicationUUID];
  v6 = [v5 hk_dataForUUIDBytes];
  [(HDCodableMedicationSchedule *)v2 setMedicationUUID:v6];

  v7 = [a1 medicationIdentifier];
  if (v7)
  {
    v8 = [a1 medicationIdentifier];
    [(HDCodableMedicationSchedule *)v2 setMedicationIdentifier:v8];
  }

  else
  {
    [(HDCodableMedicationSchedule *)v2 setMedicationIdentifier:&stru_2863B7AF8];
  }

  v9 = [a1 startDateTime];
  [v9 timeIntervalSinceReferenceDate];
  [(HDCodableMedicationSchedule *)v2 setStartDateTime:?];

  v10 = [a1 endDateTime];
  [v10 timeIntervalSinceReferenceDate];
  [(HDCodableMedicationSchedule *)v2 setEndDateTime:?];

  v11 = [a1 createdUTCOffset];
  v12 = [v11 name];
  [(HDCodableMedicationSchedule *)v2 setCreatedTimeZone:v12];

  -[HDCodableMedicationSchedule setFrequencyType:](v2, "setFrequencyType:", [a1 frequencyType]);
  -[HDCodableMedicationSchedule setScheduleType:](v2, "setScheduleType:", [a1 scheduleType]);
  v13 = [a1 cycleStartDate];
  v14 = [v13 hk_codableDateComponents];
  [(HDCodableMedicationSchedule *)v2 setCycleStartDateComponents:v14];

  v15 = [a1 note];
  [(HDCodableMedicationSchedule *)v2 setNote:v15];

  v16 = MEMORY[0x277D11570];
  v17 = [a1 timeIntervals];
  v18 = [(HKMedicationSchedule *)v16 _codableArrayForMedicationScheduleIntervalDatas:v17];
  v19 = [v18 mutableCopy];
  [(HDCodableMedicationSchedule *)v2 setIntervalDatas:v19];

  [a1 creationTimestamp];
  [(HDCodableMedicationSchedule *)v2 setCreationDate:?];
  -[HDCodableMedicationSchedule setDeleted:](v2, "setDeleted:", [a1 isDeleted]);
  v20 = objc_alloc_init(HDCodableMedicationScheduleCompatibilityVersionRange);
  -[HDCodableMedicationScheduleCompatibilityVersionRange setMinimum:](v20, "setMinimum:", [a1 compatibilityRange]);
  [a1 compatibilityRange];
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