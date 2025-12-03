@interface HDQuantitySampleEntity
+ (BOOL)addCodableObject:(id)object toCollection:(id)collection;
+ (BOOL)validateEntityWithProfile:(id)profile error:(id *)error validationErrorHandler:(id)handler;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)foreignKeys;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
+ (id)joinClausesForProperty:(id)property;
+ (id)orderingTermForSortDescriptor:(id)descriptor;
+ (int64_t)compareForReplacmentWithObject:(id)object existingObject:(id)existingObject;
@end

@implementation HDQuantitySampleEntity

+ (id)foreignKeys
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"original_unit";
  v2 = objc_alloc(MEMORY[0x277D10B38]);
  v3 = [v2 initWithEntityClass:objc_opt_class() property:*MEMORY[0x277D10A40] deletionAction:0];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)orderingTermForSortDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [descriptorCopy key];
  ascending = [descriptorCopy ascending];
  if ([v5 isEqualToString:*MEMORY[0x277CCC900]])
  {
    v7 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"quantity" entityClass:objc_opt_class() ascending:ascending];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___HDQuantitySampleEntity;
    v7 = objc_msgSendSuper2(&v10, sel_orderingTermForSortDescriptor_, descriptorCopy);
  }

  v8 = v7;

  return v8;
}

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  databaseCopy = database;
  dCopy = d;
  objectCopy = object;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDQuantitySampleEntity.m" lineNumber:89 description:{@"Subclasses must override %s", "+[HDQuantitySampleEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  quantity = [objectCopy quantity];
  _unit = [quantity _unit];
  quantityType = [objectCopy quantityType];

  canonicalUnit = [quantityType canonicalUnit];

  v20 = [_unit isEqual:canonicalUnit];
  if (v20)
  {
    v21 = 0;
LABEL_6:
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __88__HDQuantitySampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
    v29[3] = &unk_27862FCE0;
    v23 = dCopy;
    v30 = v23;
    v31 = quantity;
    v32 = canonicalUnit;
    v35 = v20;
    v33 = _unit;
    v34 = v21;
    v24 = v21;
    if ([databaseCopy executeSQL:@"INSERT INTO quantity_samples (data_id error:quantity bindingHandler:original_quantity enumerationHandler:{original_unit) VALUES (?, ?, ?, ?)", error, v29, 0}])
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    goto LABEL_10;
  }

  unitString = [_unit unitString];
  v21 = [HDUnitStringEntity storeUnitString:unitString database:databaseCopy error:error];

  if (v21)
  {
    goto LABEL_6;
  }

  v26 = 0;
LABEL_10:

  return v26;
}

uint64_t __88__HDQuantitySampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  [*(a1 + 40) doubleValueForUnit:*(a1 + 48)];
  sqlite3_bind_double(a2, 2, v4);
  if (*(a1 + 72) == 1)
  {
    sqlite3_bind_null(a2, 3);

    return sqlite3_bind_null(a2, 4);
  }

  else
  {
    [*(a1 + 40) doubleValueForUnit:*(a1 + 56)];
    sqlite3_bind_double(a2, 3, v6);
    v7 = [*(a1 + 64) longLongValue];

    return sqlite3_bind_int64(a2, 4, v7);
  }
}

+ (id)joinClausesForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"unit_strings.unit_string"])
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = MEMORY[0x277D10B50];
    v7 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleEntity];
    v8 = [v6 leftJoinClauseFromTable:v7 toTargetEntity:objc_opt_class() as:@"unit_strings" localReference:@"original_unit" targetKey:*MEMORY[0x277D10A40]];
    v9 = [v5 setWithObject:v8];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___HDQuantitySampleEntity;
    v9 = objc_msgSendSuper2(&v11, sel_joinClausesForProperty_, propertyCopy);
  }

  return v9;
}

+ (BOOL)addCodableObject:(id)object toCollection:(id)collection
{
  if (object)
  {
    [collection addQuantitySamples:object];
  }

  return object != 0;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDQuantitySampleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (int64_t)compareForReplacmentWithObject:(id)object existingObject:(id)existingObject
{
  objectCopy = object;
  existingObjectCopy = existingObject;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDQuantitySampleEntity.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"[replacementObject isKindOfClass:[HKQuantitySample class]]"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDQuantitySampleEntity.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"[existingObject isKindOfClass:[HKQuantitySample class]]"}];
  }

  v9 = [objectCopy _compareFreezeStateWithSample:existingObjectCopy];

  return v9;
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