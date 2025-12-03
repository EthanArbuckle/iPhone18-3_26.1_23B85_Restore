@interface _HDMedicalUserDomainConceptEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDMedicalUserDomainConceptEntityEncoder

- (id)orderedProperties
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v4 = [&unk_283CAFB68 arrayByAddingObjectsFromArray:orderedProperties];

  return v4;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _initBareObject = [objc_alloc(MEMORY[0x277CCD610]) _initBareObject];

  return _initBareObject;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    v13 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setCountryCode:v13];
    transaction = [(HDEntityEncoder *)self transaction];
    v15 = [(HDUserDomainConceptEntity *)HDMedicalUserDomainConceptEntity retrievePrivateDataEntitiesForUserDomainConcept:objectCopy persistentID:d transaction:transaction error:error];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v5 = objc_alloc_init(HDCodableMedicalUserDomainConcept);
  v6 = HDSQLiteColumnWithNameAsString();
  [(HDCodableMedicalUserDomainConcept *)v5 setCountryCode:v6];

  return v5;
}

@end