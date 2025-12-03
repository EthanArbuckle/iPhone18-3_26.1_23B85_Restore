@interface HDCategorySampleEntity
+ (BOOL)addCodableObject:(id)object toCollection:(id)collection;
+ (BOOL)validateEntityWithProfile:(id)profile error:(id *)error validationErrorHandler:(id)handler;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
@end

@implementation HDCategorySampleEntity

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  objectCopy = object;
  databaseCopy = database;
  dCopy = d;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCategorySampleEntity.m" lineNumber:59 description:{@"Subclasses must override %s", "+[HDCategorySampleEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __88__HDCategorySampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v22[3] = &unk_278613038;
  v23 = dCopy;
  v24 = objectCopy;
  v16 = objectCopy;
  v17 = dCopy;
  if ([databaseCopy executeSQL:@"INSERT INTO category_samples (data_id error:value) VALUES (? bindingHandler:?)" enumerationHandler:{error, v22, 0}])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  return v18;
}

uint64_t __88__HDCategorySampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  v4 = [*(a1 + 40) value];

  return sqlite3_bind_int64(a2, 2, v4);
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [[_HDCategorySampleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (BOOL)addCodableObject:(id)object toCollection:(id)collection
{
  if (object)
  {
    [collection addCategorySamples:object];
  }

  return object != 0;
}

+ (BOOL)validateEntityWithProfile:(id)profile error:(id *)error validationErrorHandler:(id)handler
{
  v8 = MEMORY[0x277CCD720];
  handlerCopy = handler;
  profileCopy = profile;
  v11 = [v8 _allTypesOfClass:objc_opt_class()];
  LOBYTE(error) = [self validateEntitiesOfTypes:v11 profile:profileCopy error:error validationErrorHandler:handlerCopy];

  return error;
}

@end