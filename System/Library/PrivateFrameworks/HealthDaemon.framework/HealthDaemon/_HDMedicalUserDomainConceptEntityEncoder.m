@interface _HDMedicalUserDomainConceptEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDMedicalUserDomainConceptEntityEncoder

- (id)orderedProperties
{
  v2 = [(HDEntityEncoder *)self superclassEncoder];
  v3 = [v2 orderedProperties];
  v4 = [&unk_283CAFB68 arrayByAddingObjectsFromArray:v3];

  return v4;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD610]) _initBareObject];

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if (v12)
  {
    v13 = HDSQLiteColumnWithNameAsString();
    [v10 _setCountryCode:v13];
    v14 = [(HDEntityEncoder *)self transaction];
    v15 = [(HDUserDomainConceptEntity *)HDMedicalUserDomainConceptEntity retrievePrivateDataEntitiesForUserDomainConcept:v10 persistentID:a4 transaction:v14 error:a6];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v5 = objc_alloc_init(HDCodableMedicalUserDomainConcept);
  v6 = HDSQLiteColumnWithNameAsString();
  [(HDCodableMedicalUserDomainConcept *)v5 setCountryCode:v6];

  return v5;
}

@end