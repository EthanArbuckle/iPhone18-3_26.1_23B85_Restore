@interface HDSleepScheduleEntity
+ (BOOL)addCodableObject:(id)object toCollection:(id)collection;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)indices;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
+ (id)mostRecentSleepScheduleForWeekday:(unint64_t)weekday beforeDate:(id)date profile:(id)profile encodingOptions:(id)options error:(id *)error;
@end

@implementation HDSleepScheduleEntity

+ (id)indices
{
  v8[7] = *MEMORY[0x277D85DE8];
  v8[0] = @"monday";
  v8[1] = @"tuesday";
  v8[2] = @"wednesday";
  v8[3] = @"thursday";
  v8[4] = @"friday";
  v8[5] = @"saturday";
  v8[6] = @"sunday";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:7];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__HDSleepScheduleEntity_indices__block_invoke;
  v7[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v7[4] = self;
  v4 = [v3 hk_map:v7];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id __32__HDSleepScheduleEntity_indices__block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D10B40];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(a1 + 32);
  v12[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = 1", v4];
  v9 = [v5 initWithEntity:v6 name:v4 columns:v7 unique:0 predicateString:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  v28[13] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  dCopy = d;
  databaseCopy = database;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSleepScheduleEntity.m" lineNumber:96 description:{@"Subclasses must override %s", "+[HDSleepScheduleEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v28[0] = @"data_id";
  v28[1] = @"monday";
  v28[2] = @"tuesday";
  v28[3] = @"wednesday";
  v28[4] = @"thursday";
  v28[5] = @"friday";
  v28[6] = @"saturday";
  v28[7] = @"sunday";
  v28[8] = @"wake_hour";
  v28[9] = @"wake_minute";
  v28[10] = @"bed_hour";
  v28[11] = @"bed_minute";
  v28[12] = @"override_day_index";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:13];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __87__HDSleepScheduleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v25[3] = &unk_278613DE8;
  v26 = objectCopy;
  v27 = dCopy;
  v17 = dCopy;
  v18 = objectCopy;
  v19 = [self insertOrReplaceEntity:1 database:databaseCopy properties:v16 error:error bindingHandler:v25];

  if (v19)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

void __87__HDSleepScheduleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) weekdays];
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 40) longLongValue]);
  MEMORY[0x22AAC6B30](a2, @"monday", v4 & 1);
  MEMORY[0x22AAC6B30](a2, @"tuesday", (v4 >> 1) & 1);
  MEMORY[0x22AAC6B30](a2, @"wednesday", (v4 >> 2) & 1);
  MEMORY[0x22AAC6B30](a2, @"thursday", (v4 >> 3) & 1);
  MEMORY[0x22AAC6B30](a2, @"friday", (v4 >> 4) & 1);
  MEMORY[0x22AAC6B30](a2, @"saturday", (v4 >> 5) & 1);
  MEMORY[0x22AAC6B30](a2, @"sunday", (v4 >> 6) & 1);
  v5 = [*(a1 + 32) wakeTimeComponents];
  v6 = [v5 hk_hourNumber];
  MEMORY[0x22AAC6BB0](a2, @"wake_hour", v6);

  v7 = [*(a1 + 32) wakeTimeComponents];
  v8 = [v7 hk_minuteNumber];
  MEMORY[0x22AAC6BB0](a2, @"wake_minute", v8);

  v9 = [*(a1 + 32) bedTimeComponents];
  v10 = [v9 hk_hourNumber];
  MEMORY[0x22AAC6BB0](a2, @"bed_hour", v10);

  v11 = [*(a1 + 32) bedTimeComponents];
  v12 = [v11 hk_minuteNumber];
  MEMORY[0x22AAC6BB0](a2, @"bed_minute", v12);

  v13 = [*(a1 + 32) overrideDayIndex];
  MEMORY[0x22AAC6BB0](a2, @"override_day_index", v13);
}

+ (BOOL)addCodableObject:(id)object toCollection:(id)collection
{
  if (object)
  {
    [collection addSleepSchedules:object];
  }

  return object != 0;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDSleepScheduleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (id)mostRecentSleepScheduleForWeekday:(unint64_t)weekday beforeDate:(id)date profile:(id)profile encodingOptions:(id)options error:(id *)error
{
  dateCopy = date;
  optionsCopy = options;
  profileCopy = profile;
  if ((HKSleepScheduleWeekdaysIsSingleDay() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSleepScheduleEntity.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"HKSleepScheduleWeekdaysIsSingleDay(weekday)"}];
  }

  if (dateCopy)
  {
    HDSleepScheduleEntityPredicateForWeekdayBeforeDate(weekday, dateCopy);
  }

  else
  {
    HDSleepScheduleEntityPredicateForWeekday(weekday);
  }
  v16 = ;
  v17 = [MEMORY[0x277CCD720] dataTypeWithCode:198];
  v18 = [(HDSampleEntity *)HDSleepScheduleEntity mostRecentSampleWithType:v17 profile:profileCopy encodingOptions:optionsCopy predicate:v16 anchor:0 error:error];

  return v18;
}

@end