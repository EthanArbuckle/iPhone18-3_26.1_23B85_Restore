@interface _HDCorrelationSampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
@end

@implementation _HDCorrelationSampleEntityEncoder

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];

  if (v9)
  {
    v10 = objc_alloc_init(HDCodableCorrelation);
    [(HDCodableCorrelation *)v10 setSample:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  _init = [objc_alloc(MEMORY[0x277CCD240]) _init];
  if (-[_HDCorrelationSampleEntityEncoder applyPropertiesToObject:persistentID:row:error:](self, "applyPropertiesToObject:persistentID:row:error:", _init, d, row, error) && ([_init objects], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11))
  {
    v12 = _init;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  LODWORD(row) = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (row)
  {
    profile = [(HDEntityEncoder *)self profile];
    v13 = [HDAssociationEntity objectIDsForAssociationEntityWithPersistentID:d profile:profile error:error];

    v14 = v13 != 0;
    if (v13)
    {
      profile2 = [(HDEntityEncoder *)self profile];
      v16 = v13;
      v17 = profile2;
      objc_opt_self();
      array = [MEMORY[0x277CBEB18] array];
      v19 = [MEMORY[0x277CBEB58] set];
      v41 = v17;
      v20 = [(HDDataEntity *)HDQuantitySampleSeriesEntity entityEnumeratorWithProfile:v17];
      v21 = HDDataEntityPredicateForRowIDs(v16);
      [v20 setPredicate:v21];

      v48[0] = 0;
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __53__HDCorrelationSampleEntity__objectsWithIDs_profile___block_invoke;
      v45[3] = &unk_27861D470;
      v22 = v19;
      v23 = v16;
      v40 = v22;
      v46 = v22;
      v24 = array;
      v47 = v24;
      [v20 enumerateWithError:v48 handler:v45];
      v25 = v48[0];
      v26 = [v24 count];
      if (v26 == [v23 count])
      {
        v27 = v24;
      }

      else
      {
        v38 = [MEMORY[0x277CBEB58] setWithArray:v23];
        [v38 minusSet:v40];
        [(HDDataEntity *)HDCategorySampleEntity entityEnumeratorWithProfile:v41];
        v28 = v39 = v23;

        allObjects = [v38 allObjects];
        v30 = HDDataEntityPredicateForRowIDs(allObjects);
        [v28 setPredicate:v30];

        v44 = v25;
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __53__HDCorrelationSampleEntity__objectsWithIDs_profile___block_invoke_2;
        v42[3] = &unk_2786204C8;
        v31 = v24;
        v43 = v31;
        [v28 enumerateWithError:&v44 handler:v42];
        v32 = v44;

        v33 = v31;
        v20 = v28;
        v23 = v39;
        v25 = v32;
      }

      authorizationFilter = [(HDEntityEncoder *)self authorizationFilter];
      v35 = authorizationFilter;
      if (authorizationFilter)
      {
        v36 = (*(authorizationFilter + 16))(authorizationFilter, v24);

        v24 = v36;
      }

      [objectCopy _addCorrelatedObjects:v24];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end