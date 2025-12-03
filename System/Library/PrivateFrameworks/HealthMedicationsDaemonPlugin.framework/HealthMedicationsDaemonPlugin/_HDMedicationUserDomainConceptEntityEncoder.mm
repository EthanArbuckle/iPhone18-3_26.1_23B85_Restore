@interface _HDMedicationUserDomainConceptEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDMedicationUserDomainConceptEntityEncoder

- (id)orderedProperties
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];

  return orderedProperties;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _initBareObject = [objc_alloc(MEMORY[0x277D115B8]) _initBareObject];

  return _initBareObject;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  LODWORD(row) = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (row)
  {
    transaction = [(HDEntityEncoder *)self transaction];
    v13 = [(HDUserDomainConceptEntity *)HDMedicationUserDomainConceptEntity retrievePrivateDataEntitiesForUserDomainConcept:objectCopy persistentID:d transaction:transaction error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end