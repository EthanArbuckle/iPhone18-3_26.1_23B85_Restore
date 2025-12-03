@interface HKMedicationSchedule
+ (HKMedicationSchedule)_activeXDaysPauseYDaysWithUUID:(void *)d medicationIdentifier:(void *)identifier createdUTCOffset:(void *)offset startDateTime:(void *)time endDateTime:(void *)dateTime timeIntervals:(void *)intervals cycleStartDateComponents:(void *)components note:(unint64_t)self0 scheduleType:;
+ (HKMedicationSchedule)_deletedScheduleWithUUID:(void *)d medicationUUID:(void *)iD creationTimestamp:;
+ (HKMedicationSchedule)_invalidScheduleWithUUID:(void *)d medicationUUID:(void *)iD medicationIdentifier:(void *)identifier creationTimestamp:;
+ (HKMedicationSchedule)_unavailableScheduleWithUUID:(void *)d medicationUUID:(void *)iD medicationIdentifier:(void *)identifier creationTimestamp:(uint64_t)timestamp compatibilityRange:;
+ (id)activeXWeeksPauseYWeeksWithUUID:(id)d medicationIdentifier:(id)identifier createdUTCOffset:(id)offset startDateTime:(id)time endDateTime:(id)dateTime timeIntervals:(id)intervals cycleStartDateComponents:(id)components note:(id)self0;
+ (id)dailyScheduleWithUUID:(id)d medicationIdentifier:(id)identifier createdUTCOffset:(id)offset startDateTime:(id)time endDateTime:(id)dateTime timeIntervals:(id)intervals note:(id)note;
+ (id)daysOfWeekScheduleWithUUID:(id)d medicationIdentifier:(id)identifier createdUTCOffset:(id)offset startDateTime:(id)time endDateTime:(id)dateTime timeIntervals:(id)intervals note:(id)note;
+ (id)differentDosesDaysOfWeekScheduleWithUUID:(id)d medicationIdentifier:(id)identifier createdUTCOffset:(id)offset startDateTime:(id)time endDateTime:(id)dateTime timeIntervals:(id)intervals note:(id)note;
+ (id)everyXDaysScheduleWithUUID:(id)d medicationIdentifier:(id)identifier createdUTCOffset:(id)offset startDateTime:(id)time endDateTime:(id)dateTime timeIntervals:(id)intervals cycleStartDateComponents:(id)components note:(id)self0;
+ (void)_assertCycleIndexIsNilForInterval:(unint64_t)interval scheduleType:;
+ (void)_assertCycleIntervalDaysIsNilForInterval:(unint64_t)interval scheduleType:;
+ (void)_assertDaysOfTheWeekNoneForInterval:(unint64_t)interval scheduleType:;
+ (void)_assertDoseGreaterThanZeroForInterval:(unint64_t)interval scheduleType:;
+ (void)_validateActiveXPauseYScheduleTimeIntervals:(unint64_t)intervals scheduleType:;
+ (void)_validateActiveXWeeksPauseYWeeksTimeIntervals:(unint64_t)intervals scheduleType:;
+ (void)_validateDailyScheduleTimeIntervals:(uint64_t)intervals;
+ (void)_validateDaysOfWeekScheduleTimeIntervals:(unint64_t)intervals scheduleType:;
+ (void)_validateEveryXDaysScheduleTimeIntervals:(uint64_t)intervals;
- ($0AC6E346AE4835514AAA8AC86D8F4844)compatibilityRange;
- (BOOL)isEqual:(id)equal;
- (BOOL)isIdenticalToMedicationSchedule:(id)schedule;
- (BOOL)isInvalid;
- (BOOL)needsToBeMadeUnavailable;
- (HKMedicationSchedule)init;
- (HKMedicationSchedule)initWithCoder:(id)coder;
- (HKMedicationSchedule)initWithUUID:(id)d medicationIdentifier:(id)identifier createdUTCOffset:(id)offset startDateTime:(id)time endDateTime:(id)dateTime timeIntervals:(id)intervals scheduleType:(int64_t)type cycleStartDateComponents:(id)self0 note:(id)self1;
- (HKMedicationSchedule)initWithUUID:(id)d medicationUUID:(id)iD medicationIdentifier:(id)identifier createdUTCOffset:(id)offset startDateTime:(id)time endDateTime:(id)dateTime timeIntervals:(id)intervals scheduleType:(int64_t)self0 displayOptions:(unint64_t)self1 cycleStartDateComponents:(id)self2 deleted:(BOOL)self3 creationTimestamp:(double)self4 note:(id)self5 compatibilityVersionRange:(id)self6;
- (id)_copyByReplacingCompatibilityVersionRange:(id)range;
- (id)_getIntervalLengths;
- (id)_timeIntervalsString;
- (id)copyByRemovingEndDateAndSetStartDateToToday;
- (id)copyScheduleForMedication:(id)medication;
- (id)dayInCycleFor:(id)for calendar:(id)calendar;
- (id)deletedSchedule;
- (id)description;
- (id)unavailableSchedule;
- (uint64_t)_daysFromCycleStartForCalendar:(void *)calendar toDate:;
- (void)_setMedicationUUID:(id)d;
- (void)encodeWithCoder:(id)coder;
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

- (HKMedicationSchedule)initWithUUID:(id)d medicationUUID:(id)iD medicationIdentifier:(id)identifier createdUTCOffset:(id)offset startDateTime:(id)time endDateTime:(id)dateTime timeIntervals:(id)intervals scheduleType:(int64_t)self0 displayOptions:(unint64_t)self1 cycleStartDateComponents:(id)self2 deleted:(BOOL)self3 creationTimestamp:(double)self4 note:(id)self5 compatibilityVersionRange:(id)self6
{
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  offsetCopy = offset;
  timeCopy = time;
  dateTimeCopy = dateTime;
  intervalsCopy = intervals;
  componentsCopy = components;
  noteCopy = note;
  v52.receiver = self;
  v52.super_class = HKMedicationSchedule;
  v31 = [(HKMedicationSchedule *)&v52 init];
  if (v31)
  {
    v32 = [dCopy copy];
    v33 = *(v31 + 3);
    *(v31 + 3) = v32;

    v34 = [iDCopy copy];
    v35 = *(v31 + 1);
    *(v31 + 1) = v34;

    v36 = [identifierCopy copy];
    v37 = *(v31 + 4);
    *(v31 + 4) = v36;

    v38 = [offsetCopy copy];
    v39 = *(v31 + 5);
    *(v31 + 5) = v38;

    v40 = [timeCopy copy];
    v41 = *(v31 + 6);
    *(v31 + 6) = v40;

    v42 = [dateTimeCopy copy];
    v43 = *(v31 + 7);
    *(v31 + 7) = v42;

    v44 = [intervalsCopy copy];
    v45 = *(v31 + 8);
    *(v31 + 8) = v44;

    *(v31 + 9) = HKMedicationScheduleFrequencyTypeForScheduleType(type);
    *(v31 + 11) = options;
    v46 = [componentsCopy copy];
    v47 = *(v31 + 12);
    *(v31 + 12) = v46;

    v48 = [noteCopy copy];
    v49 = *(v31 + 13);
    *(v31 + 13) = v48;

    *(v31 + 14) = timestamp;
    v31[16] = deleted;
    *(v31 + 120) = range;
    *(v31 + 10) = type;
  }

  return v31;
}

- (HKMedicationSchedule)initWithUUID:(id)d medicationIdentifier:(id)identifier createdUTCOffset:(id)offset startDateTime:(id)time endDateTime:(id)dateTime timeIntervals:(id)intervals scheduleType:(int64_t)type cycleStartDateComponents:(id)self0 note:(id)self1
{
  noteCopy = note;
  componentsCopy = components;
  intervalsCopy = intervals;
  dateTimeCopy = dateTime;
  timeCopy = time;
  offsetCopy = offset;
  identifierCopy = identifier;
  dCopy = d;
  v25 = HKMedicationScheduleCompatibilityVersionForMedicationScheduleType(type, dateTimeCopy);
  LOBYTE(v28) = 0;
  v26 = [(HKMedicationSchedule *)self initWithUUID:dCopy medicationUUID:0 medicationIdentifier:identifierCopy createdUTCOffset:offsetCopy startDateTime:timeCopy endDateTime:dateTimeCopy timeIntervals:CFAbsoluteTimeGetCurrent() scheduleType:intervalsCopy displayOptions:type cycleStartDateComponents:0 deleted:componentsCopy creationTimestamp:v28 note:noteCopy compatibilityVersionRange:v25, 1];

  return v26;
}

- (id)copyByRemovingEndDateAndSetStartDateToToday
{
  v3 = [HKMedicationSchedule alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  medicationUUID = [(HKMedicationSchedule *)self medicationUUID];
  medicationIdentifier = [(HKMedicationSchedule *)self medicationIdentifier];
  createdUTCOffset = [(HKMedicationSchedule *)self createdUTCOffset];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [currentCalendar startOfDayForDate:v4];
  timeIntervals = [(HKMedicationSchedule *)self timeIntervals];
  scheduleType = [(HKMedicationSchedule *)self scheduleType];
  displayOptions = [(HKMedicationSchedule *)self displayOptions];
  cycleStartDate = [(HKMedicationSchedule *)self cycleStartDate];
  isDeleted = [(HKMedicationSchedule *)self isDeleted];
  [(HKMedicationSchedule *)self creationTimestamp];
  v12 = v11;
  note = [(HKMedicationSchedule *)self note];
  compatibilityRange = [(HKMedicationSchedule *)self compatibilityRange];
  LOBYTE(v17) = isDeleted;
  v15 = [(HKMedicationSchedule *)v3 initWithUUID:uUID medicationUUID:medicationUUID medicationIdentifier:medicationIdentifier createdUTCOffset:createdUTCOffset startDateTime:v5 endDateTime:0 timeIntervals:v12 scheduleType:timeIntervals displayOptions:scheduleType cycleStartDateComponents:displayOptions deleted:cycleStartDate creationTimestamp:v17 note:note compatibilityVersionRange:compatibilityRange, v14];

  return v15;
}

- (id)copyScheduleForMedication:(id)medication
{
  medicationCopy = medication;
  v17 = [HKMedicationSchedule alloc];
  uUID = [(HKMedicationSchedule *)self UUID];
  semanticIdentifier = [medicationCopy semanticIdentifier];

  stringValue = [semanticIdentifier stringValue];
  createdUTCOffset = [(HKMedicationSchedule *)self createdUTCOffset];
  startDateTime = [(HKMedicationSchedule *)self startDateTime];
  endDateTime = [(HKMedicationSchedule *)self endDateTime];
  timeIntervals = [(HKMedicationSchedule *)self timeIntervals];
  scheduleType = [(HKMedicationSchedule *)self scheduleType];
  cycleStartDate = [(HKMedicationSchedule *)self cycleStartDate];
  note = [(HKMedicationSchedule *)self note];
  v15 = [(HKMedicationSchedule *)v17 initWithUUID:uUID medicationIdentifier:stringValue createdUTCOffset:createdUTCOffset startDateTime:startDateTime endDateTime:endDateTime timeIntervals:timeIntervals scheduleType:scheduleType cycleStartDateComponents:cycleStartDate note:note];

  return v15;
}

- (id)_copyByReplacingCompatibilityVersionRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v21 = [HKMedicationSchedule alloc];
  uUID = [(HKMedicationSchedule *)self UUID];
  medicationUUID = [(HKMedicationSchedule *)self medicationUUID];
  medicationIdentifier = [(HKMedicationSchedule *)self medicationIdentifier];
  createdUTCOffset = [(HKMedicationSchedule *)self createdUTCOffset];
  startDateTime = [(HKMedicationSchedule *)self startDateTime];
  endDateTime = [(HKMedicationSchedule *)self endDateTime];
  timeIntervals = [(HKMedicationSchedule *)self timeIntervals];
  scheduleType = [(HKMedicationSchedule *)self scheduleType];
  displayOptions = [(HKMedicationSchedule *)self displayOptions];
  cycleStartDate = [(HKMedicationSchedule *)self cycleStartDate];
  isDeleted = [(HKMedicationSchedule *)self isDeleted];
  [(HKMedicationSchedule *)self creationTimestamp];
  v14 = v13;
  note = [(HKMedicationSchedule *)self note];
  LOBYTE(v18) = isDeleted;
  var1 = [(HKMedicationSchedule *)v21 initWithUUID:uUID medicationUUID:medicationUUID medicationIdentifier:medicationIdentifier createdUTCOffset:createdUTCOffset startDateTime:startDateTime endDateTime:endDateTime timeIntervals:v14 scheduleType:timeIntervals displayOptions:scheduleType cycleStartDateComponents:displayOptions deleted:cycleStartDate creationTimestamp:v18 note:note compatibilityVersionRange:var0, var1];

  return var1;
}

- (void)_setMedicationUUID:(id)d
{
  v4 = [d copy];
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
    selfCopy = self;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_2517E7000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] deleting: %{public}@ -> %{public}@", &v10, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (HKMedicationSchedule)_deletedScheduleWithUUID:(void *)d medicationUUID:(void *)iD creationTimestamp:
{
  iDCopy = iD;
  dCopy = d;
  objc_opt_self();
  v8 = [HKMedicationSchedule alloc];
  v9 = iDCopy;
  if (!iDCopy)
  {
    v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  }

  v10 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
  LOBYTE(v14) = 1;
  v12 = [(HKMedicationSchedule *)v8 initWithUUID:dCopy medicationUUID:v9 medicationIdentifier:0 createdUTCOffset:v10 startDateTime:v11 endDateTime:0 timeIntervals:self scheduleType:MEMORY[0x277CBEBF8] displayOptions:0 cycleStartDateComponents:0 deleted:0 creationTimestamp:v14 note:0 compatibilityVersionRange:0, 1];

  if (!iDCopy)
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
  isInvalid = [(HKMedicationSchedule *)self isInvalid];
  medicationUUID = self->_medicationUUID;
  UUID = self->_UUID;
  medicationIdentifier = self->_medicationIdentifier;
  creationTimestamp = self->_creationTimestamp;
  if (isInvalid)
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
      selfCopy = self;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_2517E7000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] unavailable-ing: %{public}@ -> %{public}@", &v13, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (HKMedicationSchedule)_invalidScheduleWithUUID:(void *)d medicationUUID:(void *)iD medicationIdentifier:(void *)identifier creationTimestamp:
{
  identifierCopy = identifier;
  iDCopy = iD;
  dCopy = d;
  objc_opt_self();
  v11 = [HKMedicationSchedule alloc];
  v12 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
  LOBYTE(v16) = 0;
  v14 = [(HKMedicationSchedule *)v11 initWithUUID:dCopy medicationUUID:iDCopy medicationIdentifier:identifierCopy createdUTCOffset:v12 startDateTime:v13 endDateTime:0 timeIntervals:self scheduleType:MEMORY[0x277CBEBF8] displayOptions:0 cycleStartDateComponents:0 deleted:0 creationTimestamp:v16 note:0 compatibilityVersionRange:0x7FFFFFFFLL, 1];

  return v14;
}

+ (HKMedicationSchedule)_unavailableScheduleWithUUID:(void *)d medicationUUID:(void *)iD medicationIdentifier:(void *)identifier creationTimestamp:(uint64_t)timestamp compatibilityRange:
{
  identifierCopy = identifier;
  iDCopy = iD;
  dCopy = d;
  v13 = objc_opt_self();
  if (timestamp <= 1)
  {
    [HKMedicationSchedule _unavailableScheduleWithUUID:v13 medicationUUID:? medicationIdentifier:? creationTimestamp:? compatibilityRange:?];
  }

  v14 = [HKMedicationSchedule alloc];
  v15 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
  LOBYTE(v19) = 0;
  v17 = [(HKMedicationSchedule *)v14 initWithUUID:dCopy medicationUUID:iDCopy medicationIdentifier:identifierCopy createdUTCOffset:v15 startDateTime:v16 endDateTime:0 timeIntervals:self scheduleType:MEMORY[0x277CBEBF8] displayOptions:0 cycleStartDateComponents:0 deleted:0 creationTimestamp:v19 note:0 compatibilityVersionRange:timestamp, 1];

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

- (id)dayInCycleFor:(id)for calendar:(id)calendar
{
  v5 = [(HKMedicationSchedule *)self _daysFromCycleStartForCalendar:calendar toDate:for];
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
    _getIntervalLengths = [(HKMedicationSchedule *)self _getIntervalLengths];
    v8 = 0;
    v9 = -1;
    do
    {
      v9 = (v9 + 1) % [_getIntervalLengths count];
      v10 = [_getIntervalLengths objectAtIndexedSubscript:v9];
      v8 += [v10 integerValue];
    }

    while (v8 <= v6);
    v11 = [_getIntervalLengths objectAtIndexedSubscript:v9];
    v12 = v6 - v8 + [v11 integerValue];

    v13 = -[HKMedicationDayInCycleResult initWithDaysIntoCycle:isInPauseInterval:]([HKMedicationDayInCycleResult alloc], "initWithDaysIntoCycle:isInPauseInterval:", v12 + 1, v9 == [_getIntervalLengths count] - 1);
  }

  return v13;
}

- (id)_getIntervalLengths
{
  selfCopy = self;
  if (self)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0x8000000000000000;
    timeIntervals = [self timeIntervals];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__HKMedicationSchedule__getIntervalLengths__block_invoke;
    v11[3] = &unk_2796CA460;
    v11[4] = v12;
    v3 = [timeIntervals hk_map:v11];

    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    scheduleType = [selfCopy scheduleType];
    v6 = v3;
    if (scheduleType == 8)
    {
      v7 = [v3 count];
      v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:(7 * ((v7 - 1) / 2))];
      [v4 addObject:v8];

      v9 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "count") - 1}];
      [v4 addObject:v9];

      v6 = v4;
    }

    selfCopy = v6;

    _Block_object_dispose(v12, 8);
  }

  return selfCopy;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSUUID *)equalCopy->_UUID isEqual:self->_UUID];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isIdenticalToMedicationSchedule:(id)schedule
{
  scheduleCopy = schedule;
  if (!scheduleCopy)
  {
    goto LABEL_30;
  }

  if (![(HKMedicationSchedule *)self isEqual:scheduleCopy])
  {
    goto LABEL_30;
  }

  UUID = self->_UUID;
  v6 = scheduleCopy[3];
  if (UUID != v6 && (!v6 || ![(NSUUID *)UUID isEqual:?]))
  {
    goto LABEL_30;
  }

  medicationIdentifier = self->_medicationIdentifier;
  v8 = scheduleCopy[4];
  if (medicationIdentifier != v8 && (!v8 || ![(NSString *)medicationIdentifier isEqual:?]))
  {
    goto LABEL_30;
  }

  createdUTCOffset = self->_createdUTCOffset;
  v10 = scheduleCopy[5];
  if (createdUTCOffset != v10 && (!v10 || ![(NSTimeZone *)createdUTCOffset isEqual:?]))
  {
    goto LABEL_30;
  }

  startDateTime = self->_startDateTime;
  v12 = scheduleCopy[6];
  if (startDateTime != v12 && (!v12 || ![(NSDate *)startDateTime isEqual:?]))
  {
    goto LABEL_30;
  }

  endDateTime = self->_endDateTime;
  v14 = scheduleCopy[7];
  if (endDateTime != v14 && (!v14 || ![(NSDate *)endDateTime isEqual:?]))
  {
    goto LABEL_30;
  }

  timeIntervals = self->_timeIntervals;
  v16 = scheduleCopy[8];
  if (timeIntervals != v16 && (!v16 || ![(NSArray *)timeIntervals isEqualToArray:?]))
  {
    goto LABEL_30;
  }

  if (self->_frequencyType != scheduleCopy[9])
  {
    goto LABEL_30;
  }

  if (self->_scheduleType != scheduleCopy[10])
  {
    goto LABEL_30;
  }

  if (self->_displayOptions != scheduleCopy[11])
  {
    goto LABEL_30;
  }

  cycleStartDate = self->_cycleStartDate;
  v18 = scheduleCopy[12];
  if (cycleStartDate != v18 && (!v18 || ![(NSDateComponents *)cycleStartDate isEqual:?]))
  {
    goto LABEL_30;
  }

  note = self->_note;
  v20 = scheduleCopy[13];
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

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"uuid"];
  [coderCopy encodeObject:self->_medicationUUID forKey:@"medicationUUID"];
  [coderCopy encodeObject:self->_medicationIdentifier forKey:@"medicationIdentifier"];
  [coderCopy encodeObject:self->_createdUTCOffset forKey:@"createdUTCOffset"];
  [coderCopy encodeObject:self->_startDateTime forKey:@"startDateTime"];
  [coderCopy encodeObject:self->_endDateTime forKey:@"endDateTime"];
  [coderCopy encodeObject:self->_timeIntervals forKey:@"timeIntervals"];
  [coderCopy encodeInteger:self->_frequencyType forKey:@"frequencyType"];
  [coderCopy encodeObject:self->_cycleStartDate forKey:@"cycleStartDate"];
  [coderCopy encodeObject:self->_note forKey:@"note"];
  [coderCopy encodeDouble:@"creationTimestamp" forKey:self->_creationTimestamp];
  [coderCopy encodeBool:self->_deleted forKey:@"deleted"];
  [coderCopy encodeInteger:self->_compatibilityRange.minimum forKey:@"compatibilityVersionMinimum"];
  [coderCopy encodeInteger:self->_compatibilityRange.origin forKey:@"compatibilityVersionOrigin"];
  [coderCopy encodeInteger:self->_scheduleType forKey:@"scheduleType"];
  [coderCopy encodeInteger:self->_displayOptions forKey:@"displayOptions"];
}

- (HKMedicationSchedule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = HKMedicationSchedule;
  v5 = [(HKMedicationSchedule *)&v31 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"medicationUUID"];
    medicationUUID = v5->_medicationUUID;
    v5->_medicationUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"medicationIdentifier"];
    medicationIdentifier = v5->_medicationIdentifier;
    v5->_medicationIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"createdUTCOffset"];
    createdUTCOffset = v5->_createdUTCOffset;
    v5->_createdUTCOffset = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDateTime"];
    startDateTime = v5->_startDateTime;
    v5->_startDateTime = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDateTime"];
    endDateTime = v5->_endDateTime;
    v5->_endDateTime = v16;

    v18 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"timeIntervals"];
    timeIntervals = v5->_timeIntervals;
    v5->_timeIntervals = v19;

    v5->_frequencyType = [coderCopy decodeIntegerForKey:@"frequencyType"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cycleStartDate"];
    cycleStartDate = v5->_cycleStartDate;
    v5->_cycleStartDate = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"note"];
    note = v5->_note;
    v5->_note = v23;

    [coderCopy decodeDoubleForKey:@"creationTimestamp"];
    v5->_creationTimestamp = v25;
    v5->_deleted = [coderCopy decodeBoolForKey:@"deleted"];
    if ([coderCopy containsValueForKey:@"scheduleType"])
    {
      frequencyType = [coderCopy decodeIntegerForKey:@"scheduleType"];
    }

    else
    {
      frequencyType = v5->_frequencyType;
    }

    v5->_scheduleType = frequencyType;
    if ([coderCopy containsValueForKey:@"displayOptions"])
    {
      v27 = [coderCopy decodeIntegerForKey:@"displayOptions"];
    }

    else
    {
      v27 = 0;
    }

    v5->_displayOptions = v27;
    v28 = [coderCopy decodeIntegerForKey:@"compatibilityVersionMinimum"];
    v29 = [coderCopy decodeIntegerForKey:@"compatibilityVersionOrigin"];
    v5->_compatibilityRange.minimum = v28;
    v5->_compatibilityRange.origin = v29;
  }

  return v5;
}

- (id)description
{
  v19 = MEMORY[0x277CCACA8];
  v18 = objc_opt_class();
  uUIDString = [(NSUUID *)self->_UUID UUIDString];
  uUIDString2 = [(NSUUID *)self->_medicationUUID UUIDString];
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
  _timeIntervalsString = [(HKMedicationSchedule *)&self->super.isa _timeIntervalsString];
  v14 = [v19 stringWithFormat:@"<%@: %p>: UUID: %@, medUUID: %@, medID: %@, timezoneOffset: %ld, startDateTime: %@, endDateTime: %@, frequencyType: %i, scheduleType: %i, displayOptions: %i, cycleStartDate: %@ creationTimestamp: %f, deleted: %@, compatibilityVersionRange: %@, timeIntervals:\n%@", v18, self, uUIDString, uUIDString2, v6, v7, v17, v16, displayOptions, cycleStartDate, *&creationTimestamp, v11, v12, _timeIntervalsString];

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

+ (id)dailyScheduleWithUUID:(id)d medicationIdentifier:(id)identifier createdUTCOffset:(id)offset startDateTime:(id)time endDateTime:(id)dateTime timeIntervals:(id)intervals note:(id)note
{
  noteCopy = note;
  intervalsCopy = intervals;
  dateTimeCopy = dateTime;
  timeCopy = time;
  offsetCopy = offset;
  identifierCopy = identifier;
  dCopy = d;
  [(HKMedicationSchedule *)self _validateDailyScheduleTimeIntervals:intervalsCopy];
  v23 = [[HKMedicationSchedule alloc] initWithUUID:dCopy medicationIdentifier:identifierCopy createdUTCOffset:offsetCopy startDateTime:timeCopy endDateTime:dateTimeCopy timeIntervals:intervalsCopy scheduleType:2 cycleStartDateComponents:0 note:noteCopy];

  return v23;
}

+ (void)_validateDailyScheduleTimeIntervals:(uint64_t)intervals
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

+ (id)everyXDaysScheduleWithUUID:(id)d medicationIdentifier:(id)identifier createdUTCOffset:(id)offset startDateTime:(id)time endDateTime:(id)dateTime timeIntervals:(id)intervals cycleStartDateComponents:(id)components note:(id)self0
{
  noteCopy = note;
  componentsCopy = components;
  intervalsCopy = intervals;
  dateTimeCopy = dateTime;
  timeCopy = time;
  offsetCopy = offset;
  identifierCopy = identifier;
  dCopy = d;
  [(HKMedicationSchedule *)self _validateEveryXDaysScheduleTimeIntervals:intervalsCopy];
  v25 = [[HKMedicationSchedule alloc] initWithUUID:dCopy medicationIdentifier:identifierCopy createdUTCOffset:offsetCopy startDateTime:timeCopy endDateTime:dateTimeCopy timeIntervals:intervalsCopy scheduleType:1 cycleStartDateComponents:componentsCopy note:noteCopy];

  return v25;
}

+ (void)_validateEveryXDaysScheduleTimeIntervals:(uint64_t)intervals
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
        cycleIndex = [v9 cycleIndex];
        if ([cycleIndex integerValue])
        {
          cycleIndex2 = [v9 cycleIndex];
          integerValue = [cycleIndex2 integerValue];

          if (integerValue == 1)
          {
            goto LABEL_10;
          }

          v13 = MEMORY[0x277CBEAD8];
          v14 = objc_opt_class();
          cycleIndex = HKStringFromMedicationScheduleType(1uLL);
          cycleIndex3 = [v9 cycleIndex];
          [v13 raise:v7 format:{@"%@ with type %@ cannot have an interval with cycle index %ld", v14, cycleIndex, objc_msgSend(cycleIndex3, "longValue")}];
        }

LABEL_10:
        cycleIndex4 = [v9 cycleIndex];
        integerValue2 = [cycleIndex4 integerValue];

        if (!integerValue2)
        {
          dose = [v9 dose];
          [dose doubleValue];
          v20 = v19;

          if (v20 <= 0.0)
          {
            v21 = MEMORY[0x277CBEAD8];
            v22 = objc_opt_class();
            v23 = HKStringFromMedicationScheduleType(1uLL);
            dose2 = [v9 dose];
            [dose2 doubleValue];
            [v21 raise:v7 format:{@"%@ with type %@ cannot have an interval for the on phase with dose %f <= 0", v22, v23, v25}];
          }

          cycleIntervalDays = [v9 cycleIntervalDays];
          integerValue3 = [cycleIntervalDays integerValue];

          if (integerValue3 != 1)
          {
            v28 = MEMORY[0x277CBEAD8];
            v29 = objc_opt_class();
            v30 = HKStringFromMedicationScheduleType(1uLL);
            cycleIntervalDays2 = [v9 cycleIntervalDays];
            [v28 raise:v7 format:{@"%@ with type %@ cannot have an interval for the on phase with cycleIntervalDays %ld != 1", v29, v30, objc_msgSend(cycleIntervalDays2, "longValue")}];
          }
        }

        cycleIndex5 = [v9 cycleIndex];
        integerValue4 = [cycleIndex5 integerValue];

        if (integerValue4 == 1)
        {
          dose3 = [v9 dose];
          [dose3 doubleValue];
          v36 = v35;

          if (v36 != 0.0)
          {
            v37 = MEMORY[0x277CBEAD8];
            v38 = objc_opt_class();
            v39 = HKStringFromMedicationScheduleType(1uLL);
            dose4 = [v9 dose];
            [dose4 doubleValue];
            [v37 raise:v7 format:{@"%@ with type %@ cannot have an interval for the off phase with dose %f != 0", v38, v39, v41}];
          }

          cycleIntervalDays3 = [v9 cycleIntervalDays];
          integerValue5 = [cycleIntervalDays3 integerValue];

          if (integerValue5 <= 0)
          {
            v44 = MEMORY[0x277CBEAD8];
            v45 = objc_opt_class();
            v46 = HKStringFromMedicationScheduleType(1uLL);
            cycleIntervalDays4 = [v9 cycleIntervalDays];
            [v44 raise:v7 format:{@"%@ with type %@ cannot have an interval for the off phase with cycleIntervalDays %ld < 1", v45, v46, objc_msgSend(cycleIntervalDays4, "longValue")}];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v5);
  }

  v48 = *MEMORY[0x277D85DE8];
}

+ (id)daysOfWeekScheduleWithUUID:(id)d medicationIdentifier:(id)identifier createdUTCOffset:(id)offset startDateTime:(id)time endDateTime:(id)dateTime timeIntervals:(id)intervals note:(id)note
{
  noteCopy = note;
  intervalsCopy = intervals;
  dateTimeCopy = dateTime;
  timeCopy = time;
  offsetCopy = offset;
  identifierCopy = identifier;
  dCopy = d;
  [(HKMedicationSchedule *)self _validateDaysOfWeekScheduleTimeIntervals:intervalsCopy scheduleType:3uLL];
  v23 = [[HKMedicationSchedule alloc] initWithUUID:dCopy medicationIdentifier:identifierCopy createdUTCOffset:offsetCopy startDateTime:timeCopy endDateTime:dateTimeCopy timeIntervals:intervalsCopy scheduleType:3 cycleStartDateComponents:0 note:noteCopy];

  return v23;
}

+ (void)_validateDaysOfWeekScheduleTimeIntervals:(unint64_t)intervals scheduleType:
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_opt_self();
  if (intervals != 3 && intervals != 5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__validateDaysOfWeekScheduleTimeIntervals_scheduleType_ object:v5 file:@"HKMedicationSchedule+Convenience.m" lineNumber:226 description:{@"Invalid parameter not satisfying: %@", @"scheduleType == HKMedicationScheduleTypeDaysOfWeek || scheduleType == HKMedicationScheduleTypeDifferentDosesDaysOfWeek"}];
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
    daysOfWeek = 0;
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
          v14 = HKStringFromMedicationScheduleType(intervals);
          v15 = HKStringFromReminderWeekdayOptions([v11 daysOfWeek]);
          [v12 raise:v22 format:{@"%@ with type %@ cannot have an interval with daysOfWeek %@", v13, v14, v15}];
        }

        [(HKMedicationSchedule *)v5 _assertCycleIndexIsNilForInterval:v11 scheduleType:intervals];
        [(HKMedicationSchedule *)v5 _assertCycleIntervalDaysIsNilForInterval:v11 scheduleType:intervals];
        [(HKMedicationSchedule *)v5 _assertDoseGreaterThanZeroForInterval:v11 scheduleType:intervals];
        if (daysOfWeek)
        {
          if (intervals == 3 && [v11 daysOfWeek] != daysOfWeek)
          {
            v16 = MEMORY[0x277CBEAD8];
            v17 = objc_opt_class();
            v18 = HKStringFromMedicationScheduleType(3uLL);
            v19 = HKStringFromReminderWeekdayOptions([v11 daysOfWeek]);
            v20 = HKStringFromReminderWeekdayOptions(daysOfWeek);
            [v16 raise:v22 format:{@"%@ with type %@ cannot have an interval for days %@. All intervals must be for days %@", v17, v18, v19, v20}];
          }
        }

        else
        {
          daysOfWeek = [v11 daysOfWeek];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (id)differentDosesDaysOfWeekScheduleWithUUID:(id)d medicationIdentifier:(id)identifier createdUTCOffset:(id)offset startDateTime:(id)time endDateTime:(id)dateTime timeIntervals:(id)intervals note:(id)note
{
  noteCopy = note;
  intervalsCopy = intervals;
  dateTimeCopy = dateTime;
  timeCopy = time;
  offsetCopy = offset;
  identifierCopy = identifier;
  dCopy = d;
  [(HKMedicationSchedule *)self _validateDaysOfWeekScheduleTimeIntervals:intervalsCopy scheduleType:5uLL];
  v23 = [[HKMedicationSchedule alloc] initWithUUID:dCopy medicationIdentifier:identifierCopy createdUTCOffset:offsetCopy startDateTime:timeCopy endDateTime:dateTimeCopy timeIntervals:intervalsCopy scheduleType:5 cycleStartDateComponents:0 note:noteCopy];

  return v23;
}

+ (HKMedicationSchedule)_activeXDaysPauseYDaysWithUUID:(void *)d medicationIdentifier:(void *)identifier createdUTCOffset:(void *)offset startDateTime:(void *)time endDateTime:(void *)dateTime timeIntervals:(void *)intervals cycleStartDateComponents:(void *)components note:(unint64_t)self0 scheduleType:
{
  componentsCopy = components;
  intervalsCopy = intervals;
  dateTimeCopy = dateTime;
  timeCopy = time;
  offsetCopy = offset;
  identifierCopy = identifier;
  dCopy = d;
  v24 = a2;
  v25 = objc_opt_self();
  [(HKMedicationSchedule *)v25 _validateActiveXPauseYScheduleTimeIntervals:dateTimeCopy scheduleType:note];
  v26 = [[HKMedicationSchedule alloc] initWithUUID:v24 medicationIdentifier:dCopy createdUTCOffset:identifierCopy startDateTime:offsetCopy endDateTime:timeCopy timeIntervals:dateTimeCopy scheduleType:note cycleStartDateComponents:intervalsCopy note:componentsCopy];

  return v26;
}

+ (id)activeXWeeksPauseYWeeksWithUUID:(id)d medicationIdentifier:(id)identifier createdUTCOffset:(id)offset startDateTime:(id)time endDateTime:(id)dateTime timeIntervals:(id)intervals cycleStartDateComponents:(id)components note:(id)self0
{
  noteCopy = note;
  componentsCopy = components;
  intervalsCopy = intervals;
  dateTimeCopy = dateTime;
  timeCopy = time;
  offsetCopy = offset;
  identifierCopy = identifier;
  dCopy = d;
  [(HKMedicationSchedule *)self _validateActiveXWeeksPauseYWeeksTimeIntervals:intervalsCopy scheduleType:8uLL];
  v25 = [(HKMedicationSchedule *)self _activeXDaysPauseYDaysWithUUID:dCopy medicationIdentifier:identifierCopy createdUTCOffset:offsetCopy startDateTime:timeCopy endDateTime:dateTimeCopy timeIntervals:intervalsCopy cycleStartDateComponents:componentsCopy note:noteCopy scheduleType:8uLL];

  return v25;
}

+ (void)_validateActiveXWeeksPauseYWeeksTimeIntervals:(unint64_t)intervals scheduleType:
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
    v9 = HKStringFromMedicationScheduleType(intervals);
    [v6 raise:v7 format:{@"%@ with type %@ must have at least 3 timeInterval objects for 1 day active, 6 days paused, and the week pause object.", v8, v9}];
  }

  v10 = [v3 objectAtIndexedSubscript:0];
  cycleIndex = [v10 cycleIndex];
  integerValue = [cycleIndex integerValue];

  if ([v3 count])
  {
    v13 = 0;
    do
    {
      v14 = [v3 objectAtIndexedSubscript:v13];
      cycleIndex2 = [v14 cycleIndex];
      integerValue2 = [cycleIndex2 integerValue];

      if (integerValue2 > integerValue)
      {
        v17 = [v3 objectAtIndexedSubscript:v13];
        cycleIndex3 = [v17 cycleIndex];
        integerValue = [cycleIndex3 integerValue];
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
        cycleIndex4 = [v23 cycleIndex];
        if (([cycleIndex4 integerValue] & 0x8000000000000001) == 1)
        {
          dose = [v23 dose];
          [dose doubleValue];
          v27 = v26;

          if (v27 == 0.0)
          {
            goto LABEL_17;
          }

          v28 = MEMORY[0x277CBEAD8];
          v29 = objc_opt_class();
          cycleIndex4 = HKStringFromMedicationScheduleType(intervals);
          cycleIndex5 = [v23 cycleIndex];
          [v28 raise:v21 format:{@"%@ with type %@ cannot have a zero value dose in an odd numbered interval. It must be a pause %ld", v29, cycleIndex4, objc_msgSend(cycleIndex5, "integerValue")}];
        }

LABEL_17:
        cycleIndex6 = [v23 cycleIndex];
        if (([cycleIndex6 integerValue] & 0x8000000000000001) == 1)
        {
          cycleIntervalDays = [v23 cycleIntervalDays];
          integerValue3 = [cycleIntervalDays integerValue];

          if (integerValue3 == 6)
          {
            goto LABEL_21;
          }

          v34 = MEMORY[0x277CBEAD8];
          v35 = objc_opt_class();
          cycleIndex6 = HKStringFromMedicationScheduleType(intervals);
          cycleIndex7 = [v23 cycleIndex];
          [v34 raise:v21 format:{@"%@ with type %@ must have odd numbered intervals of length 6 days. %ld", v35, cycleIndex6, objc_msgSend(cycleIndex7, "integerValue")}];
        }

LABEL_21:
        cycleIndex8 = [v23 cycleIndex];
        if (([cycleIndex8 integerValue] & 1) == 0)
        {
          cycleIndex9 = [v23 cycleIndex];
          if ([cycleIndex9 integerValue] != integerValue)
          {
            dose2 = [v23 dose];
            [dose2 doubleValue];
            v41 = v40;

            if (v41 > 0.0)
            {
              goto LABEL_27;
            }

            v42 = MEMORY[0x277CBEAD8];
            v43 = objc_opt_class();
            cycleIndex8 = HKStringFromMedicationScheduleType(intervals);
            cycleIndex9 = [v23 dose];
            [cycleIndex9 doubleValue];
            v45 = v44;
            cycleIndex10 = [v23 cycleIndex];
            [v42 raise:v21 format:{@"%@ with type %@ and dose value %f must have a non-zero value dose in an even numbered interval. It must be active %ld", v43, cycleIndex8, v45, objc_msgSend(cycleIndex10, "integerValue")}];
          }
        }

LABEL_27:
        cycleIndex11 = [v23 cycleIndex];
        if (([cycleIndex11 integerValue] & 1) == 0)
        {
          cycleIndex12 = [v23 cycleIndex];
          if ([cycleIndex12 integerValue] != integerValue)
          {
            cycleIntervalDays2 = [v23 cycleIntervalDays];
            integerValue4 = [cycleIntervalDays2 integerValue];

            if (integerValue4 == 1)
            {
              goto LABEL_33;
            }

            v51 = MEMORY[0x277CBEAD8];
            v52 = objc_opt_class();
            cycleIndex11 = HKStringFromMedicationScheduleType(intervals);
            cycleIndex12 = [v23 cycleIndex];
            [v51 raise:v21 format:{@"%@ with type %@ must have even numbered intervals of length 1 day. %ld", v52, cycleIndex11, objc_msgSend(cycleIndex12, "integerValue")}];
          }
        }

LABEL_33:
        cycleIndex13 = [v23 cycleIndex];
        if ([cycleIndex13 integerValue] == integerValue)
        {
          cycleIntervalDays3 = [v23 cycleIntervalDays];
          integerValue5 = [cycleIntervalDays3 integerValue];

          if ((0x6DB6DB6DB6DB6DB7 * integerValue5 + 0x1249249249249249) < 0x2492492492492493)
          {
            continue;
          }

          v56 = MEMORY[0x277CBEAD8];
          v57 = objc_opt_class();
          cycleIndex13 = HKStringFromMedicationScheduleType(intervals);
          cycleIndex14 = [v23 cycleIndex];
          [v56 raise:v21 format:{@"%@ with type %@ cannot have a weeks pause interval that is not divisible by 7 days. %ld", v57, cycleIndex13, objc_msgSend(cycleIndex14, "integerValue")}];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v20);
  }

  v59 = *MEMORY[0x277D85DE8];
}

+ (void)_validateActiveXPauseYScheduleTimeIntervals:(unint64_t)intervals scheduleType:
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_opt_self();
  v6 = v5;
  if (intervals - 9 <= 0xFFFFFFFFFFFFFFFDLL)
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
        [(HKMedicationSchedule *)v6 _assertDaysOfTheWeekNoneForInterval:v11 scheduleType:intervals];
        cycleIndex = [v11 cycleIndex];
        if (![cycleIndex integerValue])
        {
          goto LABEL_12;
        }

        cycleIndex2 = [v11 cycleIndex];
        integerValue = [cycleIndex2 integerValue];

        if (intervals == 7 && integerValue != 1)
        {
          v15 = MEMORY[0x277CBEAD8];
          v16 = objc_opt_class();
          cycleIndex = HKStringFromMedicationScheduleType(7uLL);
          cycleIndex3 = [v11 cycleIndex];
          [v15 raise:v36 format:{@"%@ with type %@ cannot have an interval with cycleIndex %ld", v16, cycleIndex, objc_msgSend(cycleIndex3, "integerValue")}];

LABEL_12:
        }

        cycleIndex4 = [v11 cycleIndex];
        if (![cycleIndex4 integerValue])
        {
          dose = [v11 dose];
          [dose doubleValue];
          v21 = v20;

          if (v21 > 0.0)
          {
            goto LABEL_17;
          }

          v22 = MEMORY[0x277CBEAD8];
          v23 = objc_opt_class();
          cycleIndex4 = HKStringFromMedicationScheduleType(intervals);
          dose2 = [v11 dose];
          [dose2 doubleValue];
          [v22 raise:v36 format:{@"%@ with type %@ cannot have a %f value dose in cycle 0", v23, cycleIndex4, v25}];
        }

LABEL_17:
        cycleIndex5 = [v11 cycleIndex];
        if ([cycleIndex5 integerValue] == 1)
        {
          dose3 = [v11 dose];
          [dose3 doubleValue];
          v29 = v28;

          if (v29 == 0.0)
          {
            continue;
          }

          v30 = MEMORY[0x277CBEAD8];
          v31 = objc_opt_class();
          cycleIndex5 = HKStringFromMedicationScheduleType(intervals);
          dose4 = [v11 dose];
          [dose4 doubleValue];
          [v30 raise:v36 format:{@"%@ with type %@ cannot have a non-zero value dose %f in cycle 1", v31, cycleIndex5, v33}];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v8);
  }

  v34 = *MEMORY[0x277D85DE8];
}

+ (void)_assertDaysOfTheWeekNoneForInterval:(unint64_t)interval scheduleType:
{
  v9 = a2;
  objc_opt_self();
  if ([v9 daysOfWeek])
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = *MEMORY[0x277CBE660];
    v6 = objc_opt_class();
    v7 = HKStringFromMedicationScheduleType(interval);
    v8 = HKStringFromReminderWeekdayOptions([v9 daysOfWeek]);
    [v4 raise:v5 format:{@"%@ with type %@ cannot have an interval with daysOfWeek %@", v6, v7, v8}];
  }
}

+ (void)_assertCycleIndexIsNilForInterval:(unint64_t)interval scheduleType:
{
  v10 = a2;
  objc_opt_self();
  cycleIndex = [v10 cycleIndex];

  if (cycleIndex)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE660];
    v7 = objc_opt_class();
    v8 = HKStringFromMedicationScheduleType(interval);
    cycleIndex2 = [v10 cycleIndex];
    [v5 raise:v6 format:{@"%@ with type %@ cannot have an interval with non-nil cycle index %ld", v7, v8, objc_msgSend(cycleIndex2, "longValue")}];
  }
}

+ (void)_assertCycleIntervalDaysIsNilForInterval:(unint64_t)interval scheduleType:
{
  v10 = a2;
  objc_opt_self();
  cycleIntervalDays = [v10 cycleIntervalDays];

  if (cycleIntervalDays)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE660];
    v7 = objc_opt_class();
    v8 = HKStringFromMedicationScheduleType(interval);
    cycleIntervalDays2 = [v10 cycleIntervalDays];
    [v5 raise:v6 format:{@"%@ with type %@ cannot have an interval with non-nil cycleIntervalDays %ld", v7, v8, objc_msgSend(cycleIntervalDays2, "longValue")}];
  }
}

+ (void)_assertDoseGreaterThanZeroForInterval:(unint64_t)interval scheduleType:
{
  v13 = a2;
  objc_opt_self();
  dose = [v13 dose];
  [dose doubleValue];
  v6 = v5;

  if (v6 <= 0.0)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    v9 = objc_opt_class();
    v10 = HKStringFromMedicationScheduleType(interval);
    dose2 = [v13 dose];
    [dose2 doubleValue];
    [v7 raise:v8 format:{@"%@ with type %@ cannot have an interval with dose %f <= 0", v9, v10, v12}];
  }
}

- (uint64_t)_daysFromCycleStartForCalendar:(void *)calendar toDate:
{
  v5 = a2;
  if (self)
  {
    calendarCopy = calendar;
    startDateTime = [self startDateTime];
    v8 = [v5 components:124 fromDate:startDateTime];

    cycleStartDate = [self cycleStartDate];
    if (cycleStartDate)
    {
      cycleStartDate2 = [self cycleStartDate];
    }

    else
    {
      cycleStartDate2 = v8;
    }

    v11 = cycleStartDate2;

    v12 = [v5 dateFromComponents:v11];
    v13 = [v5 components:16 fromDate:v12 toDate:calendarCopy options:2];

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
  selfCopy = self;
  v18 = *MEMORY[0x277D85DE8];
  if (self)
  {
    string = [MEMORY[0x277CCAB68] string];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = selfCopy[8];
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
          [string appendString:v10];
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    selfCopy = [MEMORY[0x277CCACA8] stringWithString:string];
  }

  v11 = *MEMORY[0x277D85DE8];

  return selfCopy;
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