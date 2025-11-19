@interface HDPauseRingsScheduleEntity
+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)foreignKeys;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
+ (id)orderingTermForSortDescriptor:(id)a3;
@end

@implementation HDPauseRingsScheduleEntity

+ (id)orderingTermForSortDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 key];
  v6 = [v4 ascending];
  if ([v5 isEqualToString:*MEMORY[0x277CCC650]])
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    v9 = @"start_date_index";
LABEL_5:
    v10 = [v7 orderingTermWithProperty:v9 entityClass:v8 ascending:v6];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CCC648]])
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    v9 = @"end_date_index";
    goto LABEL_5;
  }

  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___HDPauseRingsScheduleEntity;
  v10 = objc_msgSendSuper2(&v13, sel_orderingTermForSortDescriptor_, v4);
LABEL_7:
  v11 = v10;

  return v11;
}

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

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v28[3] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a5;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"HDPauseRingsScheduleEntity.m" lineNumber:62 description:{@"Subclasses must override %s", "+[HDPauseRingsScheduleEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v28[0] = @"data_id";
  v28[1] = @"start_date_index";
  v28[2] = @"end_date_index";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __92__HDPauseRingsScheduleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v25[3] = &unk_278613DE8;
  v26 = v13;
  v27 = v12;
  v17 = v12;
  v18 = v13;
  v19 = [a1 insertOrReplaceEntity:1 database:v14 properties:v16 error:a7 bindingHandler:v25];

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

void __92__HDPauseRingsScheduleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 32) longLongValue]);
  MEMORY[0x22AAC6B90](a2, @"start_date_index", [*(a1 + 40) startDateIndex]);
  [*(a1 + 40) endDateIndex];

  JUMPOUT(0x22AAC6B90);
}

+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4
{
  if (a3)
  {
    [a4 addPauseRingsSchedules:a3];
  }

  return a3 != 0;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[_HDPauseRingsScheduleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

@end