@interface _HDListUserDomainConceptEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDListUserDomainConceptEntityEncoder

- (id)orderedProperties
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v4 = [&unk_283CAFA60 arrayByAddingObjectsFromArray:orderedProperties];

  return v4;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _initBareObject = [objc_alloc(MEMORY[0x277CCD580]) _initBareObject];

  return _initBareObject;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    v13 = HDSQLiteColumnWithNameAsInt64();
    v14 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setListType:v13];
    [objectCopy _setListName:v14];
  }

  return v12;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v5 = objc_alloc_init(HDCodableListUserDomainConcept);
  [(HDCodableListUserDomainConcept *)v5 setType:HDSQLiteColumnWithNameAsInt64()];
  v6 = HDSQLiteColumnWithNameAsString();
  [(HDCodableListUserDomainConcept *)v5 setName:v6];

  return v5;
}

@end