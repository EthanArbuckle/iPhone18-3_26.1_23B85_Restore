@interface HDActivityGoalScheduleEntity
+ (BOOL)addCodableObject:(id)object toCollection:(id)collection;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)foreignKeys;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
@end

@implementation HDActivityGoalScheduleEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"data_id";
  v2 = +[(HDDataEntity *)HDSampleEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  v28[10] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  dCopy = d;
  databaseCopy = database;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDActivityGoalScheduleEntity.m" lineNumber:65 description:{@"Subclasses must override %s", "+[HDActivityGoalScheduleEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v28[0] = @"data_id";
  v28[1] = @"goal_type";
  v28[2] = @"unit_string";
  v28[3] = @"monday_goal";
  v28[4] = @"tuesday_goal";
  v28[5] = @"wednesday_goal";
  v28[6] = @"thursday_goal";
  v28[7] = @"friday_goal";
  v28[8] = @"saturday_goal";
  v28[9] = @"sunday_goal";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:10];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __94__HDActivityGoalScheduleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v25[3] = &unk_278613DE8;
  v26 = dCopy;
  v27 = objectCopy;
  v17 = objectCopy;
  v18 = dCopy;
  v19 = [self insertOrReplaceEntity:1 database:databaseCopy properties:v16 error:error bindingHandler:v25];

  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

void __94__HDActivityGoalScheduleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 32) longLongValue]);
  MEMORY[0x22AAC6B90](a2, @"goal_type", [*(a1 + 40) goalType]);
  v4 = [*(a1 + 40) mondayGoal];
  v13 = [v4 _unit];

  v5 = [v13 unitString];
  MEMORY[0x22AAC6BD0](a2, @"unit_string", v5);

  v6 = [*(a1 + 40) mondayGoal];
  [v6 doubleValueForUnit:v13];
  MEMORY[0x22AAC6B60](a2, @"monday_goal");

  v7 = [*(a1 + 40) tuesdayGoal];
  [v7 doubleValueForUnit:v13];
  MEMORY[0x22AAC6B60](a2, @"tuesday_goal");

  v8 = [*(a1 + 40) wednesdayGoal];
  [v8 doubleValueForUnit:v13];
  MEMORY[0x22AAC6B60](a2, @"wednesday_goal");

  v9 = [*(a1 + 40) thursdayGoal];
  [v9 doubleValueForUnit:v13];
  MEMORY[0x22AAC6B60](a2, @"thursday_goal");

  v10 = [*(a1 + 40) fridayGoal];
  [v10 doubleValueForUnit:v13];
  MEMORY[0x22AAC6B60](a2, @"friday_goal");

  v11 = [*(a1 + 40) saturdayGoal];
  [v11 doubleValueForUnit:v13];
  MEMORY[0x22AAC6B60](a2, @"saturday_goal");

  v12 = [*(a1 + 40) sundayGoal];
  [v12 doubleValueForUnit:v13];
  MEMORY[0x22AAC6B60](a2, @"sunday_goal");
}

+ (BOOL)addCodableObject:(id)object toCollection:(id)collection
{
  if (object)
  {
    [collection addActivityGoalSchedules:object];
  }

  return object != 0;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDActivityGoalScheduleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

@end