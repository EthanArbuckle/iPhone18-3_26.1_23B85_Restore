@interface HDPauseRingsScheduleEntity
+ (BOOL)addCodableObject:(id)object toCollection:(id)collection;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)foreignKeys;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
+ (id)orderingTermForSortDescriptor:(id)descriptor;
@end

@implementation HDPauseRingsScheduleEntity

+ (id)orderingTermForSortDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [descriptorCopy key];
  ascending = [descriptorCopy ascending];
  if ([v5 isEqualToString:*MEMORY[0x277CCC650]])
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    v9 = @"start_date_index";
LABEL_5:
    v10 = [v7 orderingTermWithProperty:v9 entityClass:v8 ascending:ascending];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CCC648]])
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    v9 = @"end_date_index";
    goto LABEL_5;
  }

  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___HDPauseRingsScheduleEntity;
  v10 = objc_msgSendSuper2(&v13, sel_orderingTermForSortDescriptor_, descriptorCopy);
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

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  v28[3] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  dCopy = d;
  databaseCopy = database;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDPauseRingsScheduleEntity.m" lineNumber:62 description:{@"Subclasses must override %s", "+[HDPauseRingsScheduleEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v28[0] = @"data_id";
  v28[1] = @"start_date_index";
  v28[2] = @"end_date_index";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __92__HDPauseRingsScheduleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
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

void __92__HDPauseRingsScheduleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 32) longLongValue]);
  MEMORY[0x22AAC6B90](a2, @"start_date_index", [*(a1 + 40) startDateIndex]);
  [*(a1 + 40) endDateIndex];

  JUMPOUT(0x22AAC6B90);
}

+ (BOOL)addCodableObject:(id)object toCollection:(id)collection
{
  if (object)
  {
    [collection addPauseRingsSchedules:object];
  }

  return object != 0;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDPauseRingsScheduleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

@end