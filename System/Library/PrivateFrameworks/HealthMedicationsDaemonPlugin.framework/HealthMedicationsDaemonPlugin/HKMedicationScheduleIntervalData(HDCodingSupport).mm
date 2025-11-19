@interface HKMedicationScheduleIntervalData(HDCodingSupport)
+ (id)hd_medicationScheduleIntervalDataFromCodable:()HDCodingSupport;
- (HDCodableMedicationScheduleIntervalData)hd_codableFromIntervalData;
@end

@implementation HKMedicationScheduleIntervalData(HDCodingSupport)

- (HDCodableMedicationScheduleIntervalData)hd_codableFromIntervalData
{
  v2 = objc_alloc_init(HDCodableMedicationScheduleIntervalData);
  -[HDCodableMedicationScheduleIntervalData setDayOfWeek:](v2, "setDayOfWeek:", [a1 daysOfWeek]);
  v3 = [a1 startTimeComponent];
  v4 = [v3 hk_codableDateComponents];
  [(HDCodableMedicationScheduleIntervalData *)v2 setStartTimeComponents:v4];

  v5 = [a1 cycleIndex];

  if (v5)
  {
    v6 = [a1 cycleIndex];
    -[HDCodableMedicationScheduleIntervalData setCycleIndex:](v2, "setCycleIndex:", [v6 intValue]);
  }

  v7 = [a1 cycleIntervalDays];

  if (v7)
  {
    v8 = [a1 cycleIntervalDays];
    -[HDCodableMedicationScheduleIntervalData setCycleIntervalDays:](v2, "setCycleIntervalDays:", [v8 intValue]);
  }

  v9 = [a1 dose];

  if (v9)
  {
    v10 = [a1 dose];
    [v10 doubleValue];
    [(HDCodableMedicationScheduleIntervalData *)v2 setDose:?];
  }

  return v2;
}

+ (id)hd_medicationScheduleIntervalDataFromCodable:()HDCodingSupport
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277D11580]);
  v5 = MEMORY[0x277CBEAB8];
  v6 = [v3 startTimeComponents];
  v7 = [v5 hk_dateComponentsWithCodableDateComponents:v6];
  v8 = [v3 dayOfWeek];
  v9 = [v3 hasCycleIndex];
  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "cycleIndex")}];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v3 hasCycleIntervalDays];
  if (v11)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "cycleIntervalDays")}];
  }

  else
  {
    v12 = 0;
  }

  if (([v3 hasDose] & 1) == 0)
  {
    v15 = [v4 initWithStartTimeComponent:v7 daysOfWeek:v8 cycleIndex:v10 cycleIntervalDays:v12 dose:0];
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = MEMORY[0x277CCABB0];
  [v3 dose];
  v14 = [v13 numberWithDouble:?];
  v15 = [v4 initWithStartTimeComponent:v7 daysOfWeek:v8 cycleIndex:v10 cycleIntervalDays:v12 dose:v14];

  if (v11)
  {
LABEL_11:
  }

LABEL_12:
  if (v9)
  {
  }

  return v15;
}

@end