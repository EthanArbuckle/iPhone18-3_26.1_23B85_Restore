@interface _HDAccountOwnerEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDAccountOwnerEntityEncoder

- (id)orderedProperties
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"name";
  v9[1] = @"birth_date";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCCF88]) _init];

  return _init;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    v13 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setName:v13];
    objc_opt_class();
    v14 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setBirthDate:v14];
  }

  return v12;
}

@end