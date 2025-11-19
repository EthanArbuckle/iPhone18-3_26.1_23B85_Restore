@interface HKMedicationSchedule
+ (HKMedicationSchedule)_activeXDaysPauseYDaysWithUUID:(void *)a3 medicationIdentifier:(void *)a4 createdUTCOffset:(void *)a5 startDateTime:(void *)a6 endDateTime:(void *)a7 timeIntervals:(void *)a8 cycleStartDateComponents:(void *)a9 note:(unint64_t)a10 scheduleType:;
+ (HKMedicationSchedule)_deletedScheduleWithUUID:(void *)a3 medicationUUID:(void *)a4 creationTimestamp:;
+ (HKMedicationSchedule)_invalidScheduleWithUUID:(void *)a3 medicationUUID:(void *)a4 medicationIdentifier:(void *)a5 creationTimestamp:;
+ (HKMedicationSchedule)_unavailableScheduleWithUUID:(void *)a3 medicationUUID:(void *)a4 medicationIdentifier:(void *)a5 creationTimestamp:(uint64_t)a6 compatibilityRange:;
+ (id)activeXWeeksPauseYWeeksWithUUID:(id)a3 medicationIdentifier:(id)a4 createdUTCOffset:(id)a5 startDateTime:(id)a6 endDateTime:(id)a7 timeIntervals:(id)a8 cycleStartDateComponents:(id)a9 note:(id)a10;
+ (id)dailyScheduleWithUUID:(id)a3 medicationIdentifier:(id)a4 createdUTCOffset:(id)a5 startDateTime:(id)a6 endDateTime:(id)a7 timeIntervals:(id)a8 note:(id)a9;
+ (id)daysOfWeekScheduleWithUUID:(id)a3 medicationIdentifier:(id)a4 createdUTCOffset:(id)a5 startDateTime:(id)a6 endDateTime:(id)a7 timeIntervals:(id)a8 note:(id)a9;
+ (id)differentDosesDaysOfWeekScheduleWithUUID:(id)a3 medicationIdentifier:(id)a4 createdUTCOffset:(id)a5 startDateTime:(id)a6 endDateTime:(id)a7 timeIntervals:(id)a8 note:(id)a9;
+ (id)everyXDaysScheduleWithUUID:(id)a3 medicationIdentifier:(id)a4 createdUTCOffset:(id)a5 startDateTime:(id)a6 endDateTime:(id)a7 timeIntervals:(id)a8 cycleStartDateComponents:(id)a9 note:(id)a10;
+ (void)_assertCycleIndexIsNilForInterval:(unint64_t)a3 scheduleType:;
+ (void)_assertCycleIntervalDaysIsNilForInterval:(unint64_t)a3 scheduleType:;
+ (void)_assertDaysOfTheWeekNoneForInterval:(unint64_t)a3 scheduleType:;
+ (void)_assertDoseGreaterThanZeroForInterval:(unint64_t)a3 scheduleType:;
+ (void)_validateActiveXPauseYScheduleTimeIntervals:(unint64_t)a3 scheduleType:;
+ (void)_validateActiveXWeeksPauseYWeeksTimeIntervals:(unint64_t)a3 scheduleType:;
+ (void)_validateDailyScheduleTimeIntervals:(uint64_t)a1;
+ (void)_validateDaysOfWeekScheduleTimeIntervals:(unint64_t)a3 scheduleType:;
+ (void)_validateEveryXDaysScheduleTimeIntervals:(uint64_t)a1;
- ($0AC6E346AE4835514AAA8AC86D8F4844)compatibilityRange;
- (BOOL)isEqual:(id)a3;
- (BOOL)isIdenticalToMedicationSchedule:(id)a3;
- (BOOL)isInvalid;
- (BOOL)needsToBeMadeUnavailable;
- (HKMedicationSchedule)init;
- (HKMedicationSchedule)initWithCoder:(id)a3;
- (HKMedicationSchedule)initWithUUID:(id)a3 medicationIdentifier:(id)a4 createdUTCOffset:(id)a5 startDateTime:(id)a6 endDateTime:(id)a7 timeIntervals:(id)a8 scheduleType:(int64_t)a9 cycleStartDateComponents:(id)a10 note:(id)a11;
- (HKMedicationSchedule)initWithUUID:(id)a3 medicationUUID:(id)a4 medicationIdentifier:(id)a5 createdUTCOffset:(id)a6 startDateTime:(id)a7 endDateTime:(id)a8 timeIntervals:(id)a9 scheduleType:(int64_t)a10 displayOptions:(unint64_t)a11 cycleStartDateComponents:(id)a12 deleted:(BOOL)a13 creationTimestamp:(double)a14 note:(id)a15 compatibilityVersionRange:(id)a16;
- (id)_copyByReplacingCompatibilityVersionRange:(id)a3;
- (id)_getIntervalLengths;
- (id)_timeIntervalsString;
- (id)copyByRemovingEndDateAndSetStartDateToToday;
- (id)copyScheduleForMedication:(id)a3;
- (id)dayInCycleFor:(id)a3 calendar:(id)a4;
- (id)deletedSchedule;
- (id)description;
- (id)unavailableSchedule;
- (uint64_t)_daysFromCycleStartForCalendar:(void *)a3 toDate:;
- (void)_setMedicationUUID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicationSchedule

- (HKMedicationSchedule)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicationSchedule)initWithUUID:(id)a3 medicationUUID:(id)a4 medicationIdentifier:(id)a5 createdUTCOffset:(id)a6 startDateTime:(id)a7 endDateTime:(id)a8 timeIntervals:(id)a9 scheduleType:(int64_t)a10 displayOptions:(unint64_t)a11 cycleStartDateComponents:(id)a12 deleted:(BOOL)a13 creationTimestamp:(double)a14 note:(id)a15 compatibilityVersionRange:(id)a16
{
  v51 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v29 = a12;
  v30 = a15;
  v52.receiver = self;
  v52.super_class = HKMedicationSchedule;
  v31 = [(HKMedicationSchedule *)&v52 init];
  if (v31)
  {
    v32 = [v51 copy];
    v33 = *(v31 + 3);
    *(v31 + 3) = v32;

    v34 = [v23 copy];
    v35 = *(v31 + 1);
    *(v31 + 1) = v34;

    v36 = [v24 copy];
    v37 = *(v31 + 4);
    *(v31 + 4) = v36;

    v38 = [v25 copy];
    v39 = *(v31 + 5);
    *(v31 + 5) = v38;

    v40 = [v26 copy];
    v41 = *(v31 + 6);
    *(v31 + 6) = v40;

    v42 = [v27 copy];
    v43 = *(v31 + 7);
    *(v31 + 7) = v42;

    v44 = [v28 copy];
    v45 = *(v31 + 8);
    *(v31 + 8) = v44;

    *(v31 + 9) = HKMedicationScheduleFrequencyTypeForScheduleType(a10);
    *(v31 + 11) = a11;
    v46 = [v29 copy];
    v47 = *(v31 + 12);
    *(v31 + 12) = v46;

    v48 = [v30 copy];
    v49 = *(v31 + 13);
    *(v31 + 13) = v48;

    *(v31 + 14) = a14;
    v31[16] = a13;
    *(v31 + 120) = a16;
    *(v31 + 10) = a10;
  }

  return v31;
}

- (HKMedicationSchedule)initWithUUID:(id)a3 medicationIdentifier:(id)a4 createdUTCOffset:(id)a5 startDateTime:(id)a6 endDateTime:(id)a7 timeIntervals:(id)a8 scheduleType:(int64_t)a9 cycleStartDateComponents:(id)a10 note:(id)a11
{
  v17 = a11;
  v18 = a10;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = HKMedicationScheduleCompatibilityVersionForMedicationScheduleType(a9, v20);
  LOBYTE(v28) = 0;
  v26 = [(HKMedicationSchedule *)self initWithUUID:v24 medicationUUID:0 medicationIdentifier:v23 createdUTCOffset:v22 startDateTime:v21 endDateTime:v20 timeIntervals:CFAbsoluteTimeGetCurrent() scheduleType:v19 displayOptions:a9 cycleStartDateComponents:0 deleted:v18 creationTimestamp:v28 note:v17 compatibilityVersionRange:v25, 1];

  return v26;
}

- (id)copyByRemovingEndDateAndSetStartDateToToday
{
  v3 = [HKMedicationSchedule alloc];
  v21 = [MEMORY[0x277CCAD78] UUID];
  v22 = [(HKMedicationSchedule *)self medicationUUID];
  v20 = [(HKMedicationSchedule *)self medicationIdentifier];
  v19 = [(HKMedicationSchedule *)self createdUTCOffset];
  v23 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [v23 startOfDayForDate:v4];
  v6 = [(HKMedicationSchedule *)self timeIntervals];
  v7 = [(HKMedicationSchedule *)self scheduleType];
  v8 = [(HKMedicationSchedule *)self displayOptions];
  v9 = [(HKMedicationSchedule *)self cycleStartDate];
  v10 = [(HKMedicationSchedule *)self isDeleted];
  [(HKMedicationSchedule *)self creationTimestamp];
  v12 = v11;
  v13 = [(HKMedicationSchedule *)self note];
  v18 = [(HKMedicationSchedule *)self compatibilityRange];
  LOBYTE(v17) = v10;
  v15 = [(HKMedicationSchedule *)v3 initWithUUID:v21 medicationUUID:v22 medicationIdentifier:v20 createdUTCOffset:v19 startDateTime:v5 endDateTime:0 timeIntervals:v12 scheduleType:v6 displayOptions:v7 cycleStartDateComponents:v8 deleted:v9 creationTimestamp:v17 note:v13 compatibilityVersionRange:v18, v14];

  return v15;
}

- (id)copyScheduleForMedication:(id)a3
{
  v4 = a3;
  v17 = [HKMedicationSchedule alloc];
  v5 = [(HKMedicationSchedule *)self UUID];
  v6 = [v4 semanticIdentifier];

  v7 = [v6 stringValue];
  v8 = [(HKMedicationSchedule *)self createdUTCOffset];
  v9 = [(HKMedicationSchedule *)self startDateTime];
  v10 = [(HKMedicationSchedule *)self endDateTime];
  v11 = [(HKMedicationSchedule *)self timeIntervals];
  v12 = [(HKMedicationSchedule *)self scheduleType];
  v13 = [(HKMedicationSchedule *)self cycleStartDate];
  v14 = [(HKMedicationSchedule *)self note];
  v15 = [(HKMedicationSchedule *)v17 initWithUUID:v5 medicationIdentifier:v7 createdUTCOffset:v8 startDateTime:v9 endDateTime:v10 timeIntervals:v11 scheduleType:v12 cycleStartDateComponents:v13 note:v14];

  return v15;
}

- (id)_copyByReplacingCompatibilityVersionRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v21 = [HKMedicationSchedule alloc];
  v19 = [(HKMedicationSchedule *)self UUID];
  v20 = [(HKMedicationSchedule *)self medicationUUID];
  v4 = [(HKMedicationSchedule *)self medicationIdentifier];
  v5 = [(HKMedicationSchedule *)self createdUTCOffset];
  v6 = [(HKMedicationSchedule *)self startDateTime];
  v7 = [(HKMedicationSchedule *)self endDateTime];
  v8 = [(HKMedicationSchedule *)self timeIntervals];
  v9 = [(HKMedicationSchedule *)self scheduleType];
  v10 = [(HKMedicationSchedule *)self displayOptions];
  v11 = [(HKMedicationSchedule *)self cycleStartDate];
  v12 = [(HKMedicationSchedule *)self isDeleted];
  [(HKMedicationSchedule *)self creationTimestamp];
  v14 = v13;
  v15 = [(HKMedicationSchedule *)self note];
  LOBYTE(v18) = v12;
  v16 = [(HKMedicationSchedule *)v21 initWithUUID:v19 medicationUUID:v20 medicationIdentifier:v4 createdUTCOffset:v5 startDateTime:v6 endDateTime:v7 timeIntervals:v14 scheduleType:v8 displayOptions:v9 cycleStartDateComponents:v10 deleted:v11 creationTimestamp:v18 note:v15 compatibilityVersionRange:var0, var1];

  return v16;
}

- (void)_setMedicationUUID:(id)a3
{
  v4 = [a3 copy];
  medicationUUID = self->_medicationUUID;
  self->_medicationUUID = v4;

  MEMORY[0x2821F96F8]();
}

- (id)deletedSchedule
{
  v16 = *MEMORY[0x277D85DE8];
  UUID = self->_UUID;
  medicationUUID = self->_medicationUUID;
  Current = CFAbsoluteTimeGetCurrent();
  v6 = [(HKMedicationSchedule *)Current _deletedScheduleWithUUID:UUID medicationUUID:medicationUUID creationTimestamp:?];
  _HKInitializeLogging();
  v7 = HKLogMedication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543874;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = self;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_2517E7000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] deleting: %{public}@ -> %{public}@", &v10, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (HKMedicationSchedule)_deletedScheduleWithUUID:(void *)a3 medicationUUID:(void *)a4 creationTimestamp:
{
  v6 = a4;
  v7 = a3;
  objc_opt_self();
  v8 = [HKMedicationSchedule alloc];
  v9 = v6;
  if (!v6)
  {
    v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  }

  v10 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
  LOBYTE(v14) = 1;
  v12 = [(HKMedicationSchedule *)v8 initWithUUID:v7 medicationUUID:v9 medicationIdentifier:0 createdUTCOffset:v10 startDateTime:v11 endDateTime:0 timeIntervals:a1 scheduleType:MEMORY[0x277CBEBF8] displayOptions:0 cycleStartDateComponents:0 deleted:0 creationTimestamp:v14 note:0 compatibilityVersionRange:0, 1];

  if (!v6)
  {
  }

  return v12;
}

- (BOOL)needsToBeMadeUnavailable
{
  if ([(HKMedicationSchedule *)self isUnavailable])
  {
    return 0;
  }

  if (self->_compatibilityRange.minimum > 1)
  {
    return 1;
  }

  return [(HKMedicationSchedule *)self isInvalid];
}

- (id)unavailableSchedule
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HKMedicationSchedule *)self isInvalid];
  medicationUUID = self->_medicationUUID;
  UUID = self->_UUID;
  medicationIdentifier = self->_medicationIdentifier;
  creationTimestamp = self->_creationTimestamp;
  if (v3)
  {
    v8 = [(HKMedicationSchedule *)creationTimestamp _invalidScheduleWithUUID:UUID medicationUUID:medicationUUID medicationIdentifier:medicationIdentifier creationTimestamp:?];
  }

  else
  {
    origin = self->_compatibilityRange.origin;
    v8 = [(HKMedicationSchedule *)creationTimestamp _unavailableScheduleWithUUID:UUID medicationUUID:medicationUUID medicationIdentifier:medicationIdentifier creationTimestamp:self->_compatibilityRange.minimum compatibilityRange:?];
    _HKInitializeLogging();
    v10 = HKLogMedication();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543874;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = self;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_2517E7000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] unavailable-ing: %{public}@ -> %{public}@", &v13, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (HKMedicationSchedule)_invalidScheduleWithUUID:(void *)a3 medicationUUID:(void *)a4 medicationIdentifier:(void *)a5 creationTimestamp:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  objc_opt_self();
  v11 = [HKMedicationSchedule alloc];
  v12 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
  LOBYTE(v16) = 0;
  v14 = [(HKMedicationSchedule *)v11 initWithUUID:v10 medicationUUID:v9 medicationIdentifier:v8 createdUTCOffset:v12 startDateTime:v13 endDateTime:0 timeIntervals:a1 scheduleType:MEMORY[0x277CBEBF8] displayOptions:0 cycleStartDateComponents:0 deleted:0 creationTimestamp:v16 note:0 compatibilityVersionRange:0x7FFFFFFFLL, 1];

  return v14;
}

+ (HKMedicationSchedule)_unavailableScheduleWithUUID:(void *)a3 medicationUUID:(void *)a4 medicationIdentifier:(void *)a5 creationTimestamp:(uint64_t)a6 compatibilityRange:
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_self();
  if (a6 <= 1)
  {
    [HKMedicationSchedule _unavailableScheduleWithUUID:v13 medicationUUID:? medicationIdentifier:? creationTimestamp:? compatibilityRange:?];
  }

  v14 = [HKMedicationSchedule alloc];
  v15 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
  LOBYTE(v19) = 0;
  v17 = [(HKMedicationSchedule *)v14 initWithUUID:v12 medicationUUID:v11 medicationIdentifier:v10 createdUTCOffset:v15 startDateTime:v16 endDateTime:0 timeIntervals:a1 scheduleType:MEMORY[0x277CBEBF8] displayOptions:0 cycleStartDateComponents:0 deleted:0 creationTimestamp:v19 note:0 compatibilityVersionRange:a6, 1];

  return v17;
}

- (BOOL)isInvalid
{
  if (self->_frequencyType)
  {
    return 0;
  }

  else
  {
    return !self->_scheduleType && ![(HKMedicationSchedule *)self isUnavailable]&& !self->_deleted;
  }
}

- (id)dayInCycleFor:(id)a3 calendar:(id)a4
{
  v5 = [(HKMedicationSchedule *)self _daysFromCycleStartForCalendar:a4 toDate:a3];
  if (v5 < 0 || (v6 = v5, [(HKMedicationSchedule *)self frequencyType]!= 1))
  {
    _HKInitializeLogging();
    v14 = HKLogMedication();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [HKMedicationSchedule dayInCycleFor:v14 calendar:?];
    }

    v13 = 0;
  }

  else
  {
    v7 = [(HKMedicationSchedule *)self _getIntervalLengths];
    v8 = 0;
    v9 = -1;
    do
    {
      v9 = (v9 + 1) % [v7 count];
      v10 = [v7 objectAtIndexedSubscript:v9];
      v8 += [v10 integerValue];
    }

    while (v8 <= v6);
    v11 = [v7 objectAtIndexedSubscript:v9];
    v12 = v6 - v8 + [v11 integerValue];

    v13 = -[HKMedicationDayInCycleResult initWithDaysIntoCycle:isInPauseInterval:]([HKMedicationDayInCycleResult alloc], "initWithDaysIntoCycle:isInPauseInterval:", v12 + 1, v9 == [v7 count] - 1);
  }

  return v13;
}

- (id)_getIntervalLengths
{
  v1 = a1;
  if (a1)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0x8000000000000000;
    v2 = [a1 timeIntervals];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__HKMedicationSchedule__getIntervalLengths__block_invoke;
    v11[3] = &unk_2796CA460;
    v11[4] = v12;
    v3 = [v2 hk_map:v11];

    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [v1 scheduleType];
    v6 = v3;
    if (v5 == 8)
    {
      v7 = [v3 count];
      v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:(7 * ((v7 - 1) / 2))];
      [v4 addObject:v8];

      v9 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "count") - 1}];
      [v4 addObject:v9];

      v6 = v4;
    }

    v1 = v6;

    _Block_object_dispose(v12, 8);
  }

  return v1;
}

id __43__HKMedicationSchedule__getIntervalLengths__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 cycleIndex];
  v5 = v4;
  if (v4 && [v4 integerValue] == *(*(*(a1 + 32) + 8) + 24))
  {
    v6 = 0;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = [v5 integerValue];
    v6 = [v3 cycleIntervalDays];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSUUID *)v4->_UUID isEqual:self->_UUID];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isIdenticalToMedicationSchedule:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_30;
  }

  if (![(HKMedicationSchedule *)self isEqual:v4])
  {
    goto LABEL_30;
  }

  UUID = self->_UUID;
  v6 = v4[3];
  if (UUID != v6 && (!v6 || ![(NSUUID *)UUID isEqual:?]))
  {
    goto LABEL_30;
  }

  medicationIdentifier = self->_medicationIdentifier;
  v8 = v4[4];
  if (medicationIdentifier != v8 && (!v8 || ![(NSString *)medicationIdentifier isEqual:?]))
  {
    goto LABEL_30;
  }

  createdUTCOffset = self->_createdUTCOffset;
  v10 = v4[5];
  if (createdUTCOffset != v10 && (!v10 || ![(NSTimeZone *)createdUTCOffset isEqual:?]))
  {
    goto LABEL_30;
  }

  startDateTime = self->_startDateTime;
  v12 = v4[6];
  if (startDateTime != v12 && (!v12 || ![(NSDate *)startDateTime isEqual:?]))
  {
    goto LABEL_30;
  }

  endDateTime = self->_endDateTime;
  v14 = v4[7];
  if (endDateTime != v14 && (!v14 || ![(NSDate *)endDateTime isEqual:?]))
  {
    goto LABEL_30;
  }

  timeIntervals = self->_timeIntervals;
  v16 = v4[8];
  if (timeIntervals != v16 && (!v16 || ![(NSArray *)timeIntervals isEqualToArray:?]))
  {
    goto LABEL_30;
  }

  if (self->_frequencyType != v4[9])
  {
    goto LABEL_30;
  }

  if (self->_scheduleType != v4[10])
  {
    goto LABEL_30;
  }

  if (self->_displayOptions != v4[11])
  {
    goto LABEL_30;
  }

  cycleStartDate = self->_cycleStartDate;
  v18 = v4[12];
  if (cycleStartDate != v18 && (!v18 || ![(NSDateComponents *)cycleStartDate isEqual:?]))
  {
    goto LABEL_30;
  }

  note = self->_note;
  v20 = v4[13];
  if (note == v20)
  {
    v21 = 1;
    goto LABEL_31;
  }

  if (v20)
  {
    v21 = [(NSString *)note isEqual:?];
  }

  else
  {
LABEL_30:
    v21 = 0;
  }

LABEL_31:

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"uuid"];
  [v5 encodeObject:self->_medicationUUID forKey:@"medicationUUID"];
  [v5 encodeObject:self->_medicationIdentifier forKey:@"medicationIdentifier"];
  [v5 encodeObject:self->_createdUTCOffset forKey:@"createdUTCOffset"];
  [v5 encodeObject:self->_startDateTime forKey:@"startDateTime"];
  [v5 encodeObject:self->_endDateTime forKey:@"endDateTime"];
  [v5 encodeObject:self->_timeIntervals forKey:@"timeIntervals"];
  [v5 encodeInteger:self->_frequencyType forKey:@"frequencyType"];
  [v5 encodeObject:self->_cycleStartDate forKey:@"cycleStartDate"];
  [v5 encodeObject:self->_note forKey:@"note"];
  [v5 encodeDouble:@"creationTimestamp" forKey:self->_creationTimestamp];
  [v5 encodeBool:self->_deleted forKey:@"deleted"];
  [v5 encodeInteger:self->_compatibilityRange.minimum forKey:@"compatibilityVersionMinimum"];
  [v5 encodeInteger:self->_compatibilityRange.origin forKey:@"compatibilityVersionOrigin"];
  [v5 encodeInteger:self->_scheduleType forKey:@"scheduleType"];
  [v5 encodeInteger:self->_displayOptions forKey:@"displayOptions"];
}

- (HKMedicationSchedule)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = HKMedicationSchedule;
  v5 = [(HKMedicationSchedule *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"medicationUUID"];
    medicationUUID = v5->_medicationUUID;
    v5->_medicationUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"medicationIdentifier"];
    medicationIdentifier = v5->_medicationIdentifier;
    v5->_medicationIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"createdUTCOffset"];
    createdUTCOffset = v5->_createdUTCOffset;
    v5->_createdUTCOffset = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDateTime"];
    startDateTime = v5->_startDateTime;
    v5->_startDateTime = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDateTime"];
    endDateTime = v5->_endDateTime;
    v5->_endDateTime = v16;

    v18 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"timeIntervals"];
    timeIntervals = v5->_timeIntervals;
    v5->_timeIntervals = v19;

    v5->_frequencyType = [v4 decodeIntegerForKey:@"frequencyType"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cycleStartDate"];
    cycleStartDate = v5->_cycleStartDate;
    v5->_cycleStartDate = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"note"];
    note = v5->_note;
    v5->_note = v23;

    [v4 decodeDoubleForKey:@"creationTimestamp"];
    v5->_creationTimestamp = v25;
    v5->_deleted = [v4 decodeBoolForKey:@"deleted"];
    if ([v4 containsValueForKey:@"scheduleType"])
    {
      frequencyType = [v4 decodeIntegerForKey:@"scheduleType"];
    }

    else
    {
      frequencyType = v5->_frequencyType;
    }

    v5->_scheduleType = frequencyType;
    if ([v4 containsValueForKey:@"displayOptions"])
    {
      v27 = [v4 decodeIntegerForKey:@"displayOptions"];
    }

    else
    {
      v27 = 0;
    }

    v5->_displayOptions = v27;
    v28 = [v4 decodeIntegerForKey:@"compatibilityVersionMinimum"];
    v29 = [v4 decodeIntegerForKey:@"compatibilityVersionOrigin"];
    v5->_compatibilityRange.minimum = v28;
    v5->_compatibilityRange.origin = v29;
  }

  return v5;
}

- (id)description
{
  v19 = MEMORY[0x277CCACA8];
  v18 = objc_opt_class();
  v3 = [(NSUUID *)self->_UUID UUIDString];
  v4 = [(NSUUID *)self->_medicationUUID UUIDString];
  medicationIdentifier = self->_medicationIdentifier;
  v6 = HKSensitiveLogItem();
  v7 = [(NSTimeZone *)self->_createdUTCOffset secondsFromGMT]/ 3600;
  v17 = *&self->_startDateTime;
  v16 = *&self->_frequencyType;
  displayOptions = self->_displayOptions;
  cycleStartDate = self->_cycleStartDate;
  creationTimestamp = self->_creationTimestamp;
  if (self->_deleted)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = HKMedicationScheduleCompatibilityRangeToString(self->_compatibilityRange.minimum, self->_compatibilityRange.origin);
  v13 = [(HKMedicationSchedule *)&self->super.isa _timeIntervalsString];
  v14 = [v19 stringWithFormat:@"<%@: %p>: UUID: %@, medUUID: %@, medID: %@, timezoneOffset: %ld, startDateTime: %@, endDateTime: %@, frequencyType: %i, scheduleType: %i, displayOptions: %i, cycleStartDate: %@ creationTimestamp: %f, deleted: %@, compatibilityVersionRange: %@, timeIntervals:\n%@", v18, self, v3, v4, v6, v7, v17, v16, displayOptions, cycleStartDate, *&creationTimestamp, v11, v12, v13];

  return v14;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)compatibilityRange
{
  origin = self->_compatibilityRange.origin;
  minimum = self->_compatibilityRange.minimum;
  result.var1 = origin;
  result.var0 = minimum;
  return result;
}

+ (id)dailyScheduleWithUUID:(id)a3 medicationIdentifier:(id)a4 createdUTCOffset:(id)a5 startDateTime:(id)a6 endDateTime:(id)a7 timeIntervals:(id)a8 note:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  [(HKMedicationSchedule *)a1 _validateDailyScheduleTimeIntervals:v17];
  v23 = [[HKMedicationSchedule alloc] initWithUUID:v22 medicationIdentifier:v21 createdUTCOffset:v20 startDateTime:v19 endDateTime:v18 timeIntervals:v17 scheduleType:2 cycleStartDateComponents:0 note:v16];

  return v23;
}

+ (void)_validateDailyScheduleTimeIntervals:(uint64_t)a1
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_self();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [(HKMedicationSchedule *)v3 _assertDaysOfTheWeekNoneForInterval:v9 scheduleType:2uLL];
        [(HKMedicationSchedule *)v3 _assertCycleIndexIsNilForInterval:v9 scheduleType:2uLL];
        [(HKMedicationSchedule *)v3 _assertCycleIntervalDaysIsNilForInterval:v9 scheduleType:2uLL];
        [(HKMedicationSchedule *)v3 _assertDoseGreaterThanZeroForInterval:v9 scheduleType:2uLL];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)everyXDaysScheduleWithUUID:(id)a3 medicationIdentifier:(id)a4 createdUTCOffset:(id)a5 startDateTime:(id)a6 endDateTime:(id)a7 timeIntervals:(id)a8 cycleStartDateComponents:(id)a9 note:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  [(HKMedicationSchedule *)a1 _validateEveryXDaysScheduleTimeIntervals:v19];
  v25 = [[HKMedicationSchedule alloc] initWithUUID:v24 medicationIdentifier:v23 createdUTCOffset:v22 startDateTime:v21 endDateTime:v20 timeIntervals:v19 scheduleType:1 cycleStartDateComponents:v18 note:v17];

  return v25;
}

+ (void)_validateEveryXDaysScheduleTimeIntervals:(uint64_t)a1
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_self();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v51;
    v7 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v51 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v50 + 1) + 8 * i);
        [(HKMedicationSchedule *)v3 _assertDaysOfTheWeekNoneForInterval:v9 scheduleType:1uLL];
        v10 = [v9 cycleIndex];
        if ([v10 integerValue])
        {
          v11 = [v9 cycleIndex];
          v12 = [v11 integerValue];

          if (v12 == 1)
          {
            goto LABEL_10;
          }

          v13 = MEMORY[0x277CBEAD8];
          v14 = objc_opt_class();
          v10 = HKStringFromMedicationScheduleType(1uLL);
          v15 = [v9 cycleIndex];
          [v13 raise:v7 format:{@"%@ with type %@ cannot have an interval with cycle index %ld", v14, v10, objc_msgSend(v15, "longValue")}];
        }

LABEL_10:
        v16 = [v9 cycleIndex];
        v17 = [v16 integerValue];

        if (!v17)
        {
          v18 = [v9 dose];
          [v18 doubleValue];
          v20 = v19;

          if (v20 <= 0.0)
          {
            v21 = MEMORY[0x277CBEAD8];
            v22 = objc_opt_class();
            v23 = HKStringFromMedicationScheduleType(1uLL);
            v24 = [v9 dose];
            [v24 doubleValue];
            [v21 raise:v7 format:{@"%@ with type %@ cannot have an interval for the on phase with dose %f <= 0", v22, v23, v25}];
          }

          v26 = [v9 cycleIntervalDays];
          v27 = [v26 integerValue];

          if (v27 != 1)
          {
            v28 = MEMORY[0x277CBEAD8];
            v29 = objc_opt_class();
            v30 = HKStringFromMedicationScheduleType(1uLL);
            v31 = [v9 cycleIntervalDays];
            [v28 raise:v7 format:{@"%@ with type %@ cannot have an interval for the on phase with cycleIntervalDays %ld != 1", v29, v30, objc_msgSend(v31, "longValue")}];
          }
        }

        v32 = [v9 cycleIndex];
        v33 = [v32 integerValue];

        if (v33 == 1)
        {
          v34 = [v9 dose];
          [v34 doubleValue];
          v36 = v35;

          if (v36 != 0.0)
          {
            v37 = MEMORY[0x277CBEAD8];
            v38 = objc_opt_class();
            v39 = HKStringFromMedicationScheduleType(1uLL);
            v40 = [v9 dose];
            [v40 doubleValue];
            [v37 raise:v7 format:{@"%@ with type %@ cannot have an interval for the off phase with dose %f != 0", v38, v39, v41}];
          }

          v42 = [v9 cycleIntervalDays];
          v43 = [v42 integerValue];

          if (v43 <= 0)
          {
            v44 = MEMORY[0x277CBEAD8];
            v45 = objc_opt_class();
            v46 = HKStringFromMedicationScheduleType(1uLL);
            v47 = [v9 cycleIntervalDays];
            [v44 raise:v7 format:{@"%@ with type %@ cannot have an interval for the off phase with cycleIntervalDays %ld < 1", v45, v46, objc_msgSend(v47, "longValue")}];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v5);
  }

  v48 = *MEMORY[0x277D85DE8];
}

+ (id)daysOfWeekScheduleWithUUID:(id)a3 medicationIdentifier:(id)a4 createdUTCOffset:(id)a5 startDateTime:(id)a6 endDateTime:(id)a7 timeIntervals:(id)a8 note:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  [(HKMedicationSchedule *)a1 _validateDaysOfWeekScheduleTimeIntervals:v17 scheduleType:3uLL];
  v23 = [[HKMedicationSchedule alloc] initWithUUID:v22 medicationIdentifier:v21 createdUTCOffset:v20 startDateTime:v19 endDateTime:v18 timeIntervals:v17 scheduleType:3 cycleStartDateComponents:0 note:v16];

  return v23;
}

+ (void)_validateDaysOfWeekScheduleTimeIntervals:(unint64_t)a3 scheduleType:
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_opt_self();
  if (a3 != 3 && a3 != 5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:sel__validateDaysOfWeekScheduleTimeIntervals_scheduleType_ object:v5 file:@"HKMedicationSchedule+Convenience.m" lineNumber:226 description:{@"Invalid parameter not satisfying: %@", @"scheduleType == HKMedicationScheduleTypeDaysOfWeek || scheduleType == HKMedicationScheduleTypeDifferentDosesDaysOfWeek"}];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v24 = *v26;
    v22 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        if (![v11 daysOfWeek])
        {
          v12 = MEMORY[0x277CBEAD8];
          v13 = objc_opt_class();
          v14 = HKStringFromMedicationScheduleType(a3);
          v15 = HKStringFromReminderWeekdayOptions([v11 daysOfWeek]);
          [v12 raise:v22 format:{@"%@ with type %@ cannot have an interval with daysOfWeek %@", v13, v14, v15}];
        }

        [(HKMedicationSchedule *)v5 _assertCycleIndexIsNilForInterval:v11 scheduleType:a3];
        [(HKMedicationSchedule *)v5 _assertCycleIntervalDaysIsNilForInterval:v11 scheduleType:a3];
        [(HKMedicationSchedule *)v5 _assertDoseGreaterThanZeroForInterval:v11 scheduleType:a3];
        if (v9)
        {
          if (a3 == 3 && [v11 daysOfWeek] != v9)
          {
            v16 = MEMORY[0x277CBEAD8];
            v17 = objc_opt_class();
            v18 = HKStringFromMedicationScheduleType(3uLL);
            v19 = HKStringFromReminderWeekdayOptions([v11 daysOfWeek]);
            v20 = HKStringFromReminderWeekdayOptions(v9);
            [v16 raise:v22 format:{@"%@ with type %@ cannot have an interval for days %@. All intervals must be for days %@", v17, v18, v19, v20}];
          }
        }

        else
        {
          v9 = [v11 daysOfWeek];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (id)differentDosesDaysOfWeekScheduleWithUUID:(id)a3 medicationIdentifier:(id)a4 createdUTCOffset:(id)a5 startDateTime:(id)a6 endDateTime:(id)a7 timeIntervals:(id)a8 note:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  [(HKMedicationSchedule *)a1 _validateDaysOfWeekScheduleTimeIntervals:v17 scheduleType:5uLL];
  v23 = [[HKMedicationSchedule alloc] initWithUUID:v22 medicationIdentifier:v21 createdUTCOffset:v20 startDateTime:v19 endDateTime:v18 timeIntervals:v17 scheduleType:5 cycleStartDateComponents:0 note:v16];

  return v23;
}

+ (HKMedicationSchedule)_activeXDaysPauseYDaysWithUUID:(void *)a3 medicationIdentifier:(void *)a4 createdUTCOffset:(void *)a5 startDateTime:(void *)a6 endDateTime:(void *)a7 timeIntervals:(void *)a8 cycleStartDateComponents:(void *)a9 note:(unint64_t)a10 scheduleType:
{
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = a2;
  v25 = objc_opt_self();
  [(HKMedicationSchedule *)v25 _validateActiveXPauseYScheduleTimeIntervals:v19 scheduleType:a10];
  v26 = [[HKMedicationSchedule alloc] initWithUUID:v24 medicationIdentifier:v23 createdUTCOffset:v22 startDateTime:v21 endDateTime:v20 timeIntervals:v19 scheduleType:a10 cycleStartDateComponents:v18 note:v17];

  return v26;
}

+ (id)activeXWeeksPauseYWeeksWithUUID:(id)a3 medicationIdentifier:(id)a4 createdUTCOffset:(id)a5 startDateTime:(id)a6 endDateTime:(id)a7 timeIntervals:(id)a8 cycleStartDateComponents:(id)a9 note:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  [(HKMedicationSchedule *)a1 _validateActiveXWeeksPauseYWeeksTimeIntervals:v19 scheduleType:8uLL];
  v25 = [(HKMedicationSchedule *)a1 _activeXDaysPauseYDaysWithUUID:v24 medicationIdentifier:v23 createdUTCOffset:v22 startDateTime:v21 endDateTime:v20 timeIntervals:v19 cycleStartDateComponents:v18 note:v17 scheduleType:8uLL];

  return v25;
}

+ (void)_validateActiveXWeeksPauseYWeeksTimeIntervals:(unint64_t)a3 scheduleType:
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_self();
  v4 = [v3 count];
  v5 = MEMORY[0x277CBE660];
  if (v4 <= 2)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE660];
    v8 = objc_opt_class();
    v9 = HKStringFromMedicationScheduleType(a3);
    [v6 raise:v7 format:{@"%@ with type %@ must have at least 3 timeInterval objects for 1 day active, 6 days paused, and the week pause object.", v8, v9}];
  }

  v10 = [v3 objectAtIndexedSubscript:0];
  v11 = [v10 cycleIndex];
  v12 = [v11 integerValue];

  if ([v3 count])
  {
    v13 = 0;
    do
    {
      v14 = [v3 objectAtIndexedSubscript:v13];
      v15 = [v14 cycleIndex];
      v16 = [v15 integerValue];

      if (v16 > v12)
      {
        v17 = [v3 objectAtIndexedSubscript:v13];
        v18 = [v17 cycleIndex];
        v12 = [v18 integerValue];
      }

      ++v13;
    }

    while ([v3 count] > v13);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v3;
  v19 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v19)
  {
    v20 = v19;
    v61 = *v64;
    v21 = *v5;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v64 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v63 + 1) + 8 * i);
        v24 = [v23 cycleIndex];
        if (([v24 integerValue] & 0x8000000000000001) == 1)
        {
          v25 = [v23 dose];
          [v25 doubleValue];
          v27 = v26;

          if (v27 == 0.0)
          {
            goto LABEL_17;
          }

          v28 = MEMORY[0x277CBEAD8];
          v29 = objc_opt_class();
          v24 = HKStringFromMedicationScheduleType(a3);
          v30 = [v23 cycleIndex];
          [v28 raise:v21 format:{@"%@ with type %@ cannot have a zero value dose in an odd numbered interval. It must be a pause %ld", v29, v24, objc_msgSend(v30, "integerValue")}];
        }

LABEL_17:
        v31 = [v23 cycleIndex];
        if (([v31 integerValue] & 0x8000000000000001) == 1)
        {
          v32 = [v23 cycleIntervalDays];
          v33 = [v32 integerValue];

          if (v33 == 6)
          {
            goto LABEL_21;
          }

          v34 = MEMORY[0x277CBEAD8];
          v35 = objc_opt_class();
          v31 = HKStringFromMedicationScheduleType(a3);
          v36 = [v23 cycleIndex];
          [v34 raise:v21 format:{@"%@ with type %@ must have odd numbered intervals of length 6 days. %ld", v35, v31, objc_msgSend(v36, "integerValue")}];
        }

LABEL_21:
        v37 = [v23 cycleIndex];
        if (([v37 integerValue] & 1) == 0)
        {
          v38 = [v23 cycleIndex];
          if ([v38 integerValue] != v12)
          {
            v39 = [v23 dose];
            [v39 doubleValue];
            v41 = v40;

            if (v41 > 0.0)
            {
              goto LABEL_27;
            }

            v42 = MEMORY[0x277CBEAD8];
            v43 = objc_opt_class();
            v37 = HKStringFromMedicationScheduleType(a3);
            v38 = [v23 dose];
            [v38 doubleValue];
            v45 = v44;
            v46 = [v23 cycleIndex];
            [v42 raise:v21 format:{@"%@ with type %@ and dose value %f must have a non-zero value dose in an even numbered interval. It must be active %ld", v43, v37, v45, objc_msgSend(v46, "integerValue")}];
          }
        }

LABEL_27:
        v47 = [v23 cycleIndex];
        if (([v47 integerValue] & 1) == 0)
        {
          v48 = [v23 cycleIndex];
          if ([v48 integerValue] != v12)
          {
            v49 = [v23 cycleIntervalDays];
            v50 = [v49 integerValue];

            if (v50 == 1)
            {
              goto LABEL_33;
            }

            v51 = MEMORY[0x277CBEAD8];
            v52 = objc_opt_class();
            v47 = HKStringFromMedicationScheduleType(a3);
            v48 = [v23 cycleIndex];
            [v51 raise:v21 format:{@"%@ with type %@ must have even numbered intervals of length 1 day. %ld", v52, v47, objc_msgSend(v48, "integerValue")}];
          }
        }

LABEL_33:
        v53 = [v23 cycleIndex];
        if ([v53 integerValue] == v12)
        {
          v54 = [v23 cycleIntervalDays];
          v55 = [v54 integerValue];

          if ((0x6DB6DB6DB6DB6DB7 * v55 + 0x1249249249249249) < 0x2492492492492493)
          {
            continue;
          }

          v56 = MEMORY[0x277CBEAD8];
          v57 = objc_opt_class();
          v53 = HKStringFromMedicationScheduleType(a3);
          v58 = [v23 cycleIndex];
          [v56 raise:v21 format:{@"%@ with type %@ cannot have a weeks pause interval that is not divisible by 7 days. %ld", v57, v53, objc_msgSend(v58, "integerValue")}];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v20);
  }

  v59 = *MEMORY[0x277D85DE8];
}

+ (void)_validateActiveXPauseYScheduleTimeIntervals:(unint64_t)a3 scheduleType:
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_opt_self();
  v6 = v5;
  if (a3 - 9 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [HKMedicationSchedule _validateActiveXPauseYScheduleTimeIntervals:v5 scheduleType:?];
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    v36 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        [(HKMedicationSchedule *)v6 _assertDaysOfTheWeekNoneForInterval:v11 scheduleType:a3];
        v12 = [v11 cycleIndex];
        if (![v12 integerValue])
        {
          goto LABEL_12;
        }

        v13 = [v11 cycleIndex];
        v14 = [v13 integerValue];

        if (a3 == 7 && v14 != 1)
        {
          v15 = MEMORY[0x277CBEAD8];
          v16 = objc_opt_class();
          v12 = HKStringFromMedicationScheduleType(7uLL);
          v17 = [v11 cycleIndex];
          [v15 raise:v36 format:{@"%@ with type %@ cannot have an interval with cycleIndex %ld", v16, v12, objc_msgSend(v17, "integerValue")}];

LABEL_12:
        }

        v18 = [v11 cycleIndex];
        if (![v18 integerValue])
        {
          v19 = [v11 dose];
          [v19 doubleValue];
          v21 = v20;

          if (v21 > 0.0)
          {
            goto LABEL_17;
          }

          v22 = MEMORY[0x277CBEAD8];
          v23 = objc_opt_class();
          v18 = HKStringFromMedicationScheduleType(a3);
          v24 = [v11 dose];
          [v24 doubleValue];
          [v22 raise:v36 format:{@"%@ with type %@ cannot have a %f value dose in cycle 0", v23, v18, v25}];
        }

LABEL_17:
        v26 = [v11 cycleIndex];
        if ([v26 integerValue] == 1)
        {
          v27 = [v11 dose];
          [v27 doubleValue];
          v29 = v28;

          if (v29 == 0.0)
          {
            continue;
          }

          v30 = MEMORY[0x277CBEAD8];
          v31 = objc_opt_class();
          v26 = HKStringFromMedicationScheduleType(a3);
          v32 = [v11 dose];
          [v32 doubleValue];
          [v30 raise:v36 format:{@"%@ with type %@ cannot have a non-zero value dose %f in cycle 1", v31, v26, v33}];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v8);
  }

  v34 = *MEMORY[0x277D85DE8];
}

+ (void)_assertDaysOfTheWeekNoneForInterval:(unint64_t)a3 scheduleType:
{
  v9 = a2;
  objc_opt_self();
  if ([v9 daysOfWeek])
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = *MEMORY[0x277CBE660];
    v6 = objc_opt_class();
    v7 = HKStringFromMedicationScheduleType(a3);
    v8 = HKStringFromReminderWeekdayOptions([v9 daysOfWeek]);
    [v4 raise:v5 format:{@"%@ with type %@ cannot have an interval with daysOfWeek %@", v6, v7, v8}];
  }
}

+ (void)_assertCycleIndexIsNilForInterval:(unint64_t)a3 scheduleType:
{
  v10 = a2;
  objc_opt_self();
  v4 = [v10 cycleIndex];

  if (v4)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE660];
    v7 = objc_opt_class();
    v8 = HKStringFromMedicationScheduleType(a3);
    v9 = [v10 cycleIndex];
    [v5 raise:v6 format:{@"%@ with type %@ cannot have an interval with non-nil cycle index %ld", v7, v8, objc_msgSend(v9, "longValue")}];
  }
}

+ (void)_assertCycleIntervalDaysIsNilForInterval:(unint64_t)a3 scheduleType:
{
  v10 = a2;
  objc_opt_self();
  v4 = [v10 cycleIntervalDays];

  if (v4)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE660];
    v7 = objc_opt_class();
    v8 = HKStringFromMedicationScheduleType(a3);
    v9 = [v10 cycleIntervalDays];
    [v5 raise:v6 format:{@"%@ with type %@ cannot have an interval with non-nil cycleIntervalDays %ld", v7, v8, objc_msgSend(v9, "longValue")}];
  }
}

+ (void)_assertDoseGreaterThanZeroForInterval:(unint64_t)a3 scheduleType:
{
  v13 = a2;
  objc_opt_self();
  v4 = [v13 dose];
  [v4 doubleValue];
  v6 = v5;

  if (v6 <= 0.0)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    v9 = objc_opt_class();
    v10 = HKStringFromMedicationScheduleType(a3);
    v11 = [v13 dose];
    [v11 doubleValue];
    [v7 raise:v8 format:{@"%@ with type %@ cannot have an interval with dose %f <= 0", v9, v10, v12}];
  }
}

- (uint64_t)_daysFromCycleStartForCalendar:(void *)a3 toDate:
{
  v5 = a2;
  if (a1)
  {
    v6 = a3;
    v7 = [a1 startDateTime];
    v8 = [v5 components:124 fromDate:v7];

    v9 = [a1 cycleStartDate];
    if (v9)
    {
      v10 = [a1 cycleStartDate];
    }

    else
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = [v5 dateFromComponents:v11];
    v13 = [v5 components:16 fromDate:v12 toDate:v6 options:2];

    v14 = [v13 day];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_timeIntervalsString
{
  v1 = a1;
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [MEMORY[0x277CCAB68] string];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = v1[8];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = MEMORY[0x277CCACA8];
          v9 = [*(*(&v13 + 1) + 8 * i) description];
          v10 = [v8 stringWithFormat:@"%@\n", v9];
          [v2 appendString:v10];
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    v1 = [MEMORY[0x277CCACA8] stringWithString:v2];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v1;
}

+ (void)_unavailableScheduleWithUUID:(uint64_t)a1 medicationUUID:medicationIdentifier:creationTimestamp:compatibilityRange:.cold.1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:sel__unavailableScheduleWithUUID_medicationUUID_medicationIdentifier_creationTimestamp_compatibilityRange_ object:a1 file:@"HKMedicationSchedule.m" lineNumber:266 description:{@"Invalid parameter not satisfying: %@", @"compatibilityRange.minimum > HKMedicationScheduleCompatibilityVersionCurrent"}];
}

- (void)dayInCycleFor:(uint64_t)a1 calendar:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 138543362;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_error_impl(&dword_2517E7000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] dayInCycle() called for a schedule that has not yet started or a non cyclic schedule type.", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)_validateActiveXPauseYScheduleTimeIntervals:(uint64_t)a1 scheduleType:.cold.1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:sel__validateActiveXPauseYScheduleTimeIntervals_scheduleType_ object:a1 file:@"HKMedicationSchedule+Convenience.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"scheduleType == HKMedicationScheduleTypeActiveXDaysPauseYDays || scheduleType == HKMedicationScheduleTypeActiveXWeeksPauseYWeeks"}];
}

@end