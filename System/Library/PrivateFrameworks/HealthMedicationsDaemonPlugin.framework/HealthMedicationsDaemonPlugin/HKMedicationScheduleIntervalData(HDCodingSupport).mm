@interface HKMedicationScheduleIntervalData(HDCodingSupport)
+ (id)hd_medicationScheduleIntervalDataFromCodable:()HDCodingSupport;
- (HDCodableMedicationScheduleIntervalData)hd_codableFromIntervalData;
@end

@implementation HKMedicationScheduleIntervalData(HDCodingSupport)

- (HDCodableMedicationScheduleIntervalData)hd_codableFromIntervalData
{
  v2 = objc_alloc_init(HDCodableMedicationScheduleIntervalData);
  -[HDCodableMedicationScheduleIntervalData setDayOfWeek:](v2, "setDayOfWeek:", [self daysOfWeek]);
  startTimeComponent = [self startTimeComponent];
  hk_codableDateComponents = [startTimeComponent hk_codableDateComponents];
  [(HDCodableMedicationScheduleIntervalData *)v2 setStartTimeComponents:hk_codableDateComponents];

  cycleIndex = [self cycleIndex];

  if (cycleIndex)
  {
    cycleIndex2 = [self cycleIndex];
    -[HDCodableMedicationScheduleIntervalData setCycleIndex:](v2, "setCycleIndex:", [cycleIndex2 intValue]);
  }

  cycleIntervalDays = [self cycleIntervalDays];

  if (cycleIntervalDays)
  {
    cycleIntervalDays2 = [self cycleIntervalDays];
    -[HDCodableMedicationScheduleIntervalData setCycleIntervalDays:](v2, "setCycleIntervalDays:", [cycleIntervalDays2 intValue]);
  }

  dose = [self dose];

  if (dose)
  {
    dose2 = [self dose];
    [dose2 doubleValue];
    [(HDCodableMedicationScheduleIntervalData *)v2 setDose:?];
  }

  return v2;
}

+ (id)hd_medicationScheduleIntervalDataFromCodable:()HDCodingSupport
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277D11580]);
  v5 = MEMORY[0x277CBEAB8];
  startTimeComponents = [v3 startTimeComponents];
  v7 = [v5 hk_dateComponentsWithCodableDateComponents:startTimeComponents];
  dayOfWeek = [v3 dayOfWeek];
  hasCycleIndex = [v3 hasCycleIndex];
  if (hasCycleIndex)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "cycleIndex")}];
  }

  else
  {
    v10 = 0;
  }

  hasCycleIntervalDays = [v3 hasCycleIntervalDays];
  if (hasCycleIntervalDays)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "cycleIntervalDays")}];
  }

  else
  {
    v12 = 0;
  }

  if (([v3 hasDose] & 1) == 0)
  {
    v15 = [v4 initWithStartTimeComponent:v7 daysOfWeek:dayOfWeek cycleIndex:v10 cycleIntervalDays:v12 dose:0];
    if (!hasCycleIntervalDays)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = MEMORY[0x277CCABB0];
  [v3 dose];
  v14 = [v13 numberWithDouble:?];
  v15 = [v4 initWithStartTimeComponent:v7 daysOfWeek:dayOfWeek cycleIndex:v10 cycleIntervalDays:v12 dose:v14];

  if (hasCycleIntervalDays)
  {
LABEL_11:
  }

LABEL_12:
  if (hasCycleIndex)
  {
  }

  return v15;
}

@end