@interface _HDCorrelationSampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
@end

@implementation _HDCorrelationSampleEntityEncoder

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v8 = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [v8 codableRepresentationForPersistentID:a3 row:a4 error:a5];

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

- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v9 = [objc_alloc(MEMORY[0x277CCD240]) _init];
  if (-[_HDCorrelationSampleEntityEncoder applyPropertiesToObject:persistentID:row:error:](self, "applyPropertiesToObject:persistentID:row:error:", v9, a3, a4, a5) && ([v9 objects], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11))
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  LODWORD(a5) = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if (a5)
  {
    v12 = [(HDEntityEncoder *)self profile];
    v13 = [HDAssociationEntity objectIDsForAssociationEntityWithPersistentID:a4 profile:v12 error:a6];

    v14 = v13 != 0;
    if (v13)
    {
      v15 = [(HDEntityEncoder *)self profile];
      v16 = v13;
      v17 = v15;
      objc_opt_self();
      v18 = [MEMORY[0x277CBEB18] array];
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
      v24 = v18;
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

        v29 = [v38 allObjects];
        v30 = HDDataEntityPredicateForRowIDs(v29);
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

      v34 = [(HDEntityEncoder *)self authorizationFilter];
      v35 = v34;
      if (v34)
      {
        v36 = (*(v34 + 16))(v34, v24);

        v24 = v36;
      }

      [v10 _addCorrelatedObjects:v24];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end