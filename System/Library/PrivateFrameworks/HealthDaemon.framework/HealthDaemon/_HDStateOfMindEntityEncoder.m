@interface _HDStateOfMindEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDStateOfMindEntityEncoder

- (id)orderedProperties
{
  v9[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"reflective_interval";
  v9[1] = @"valence";
  v9[2] = @"context";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCDA30]) _init];

  return v3;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = [(HDEntityEncoder *)self transaction];
  v10 = [HDStateOfMindLabelEntity labelsForObjectID:a3 transaction:v9 error:a5];

  if (v10)
  {
    v11 = [(HDEntityEncoder *)self transaction];
    v12 = [HDStateOfMindDomainEntity domainsForObjectID:a3 transaction:v11 error:a5];

    if (v12)
    {
      v13 = [(HDEntityEncoder *)self superclassEncoder];
      v14 = [v13 codableRepresentationForPersistentID:a3 row:a4 error:a5];

      if (v14)
      {
        v15 = objc_alloc_init(HDCodableStateOfMind);
        [(HDCodableStateOfMind *)v15 setSample:v14];
        [(HDCodableStateOfMind *)v15 setReflectiveInterval:HDSQLiteColumnWithNameAsInt64()];
        HDSQLiteColumnWithNameAsDouble();
        [(HDCodableStateOfMind *)v15 setValence:?];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v16 = v10;
        v17 = [v16 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v34;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v34 != v19)
              {
                objc_enumerationMutation(v16);
              }

              -[HDCodableStateOfMind addLabels:](v15, "addLabels:", [*(*(&v33 + 1) + 8 * i) longLongValue]);
            }

            v18 = [v16 countByEnumeratingWithState:&v33 objects:v38 count:16];
          }

          while (v18);
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v21 = v12;
        v22 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v30;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v30 != v24)
              {
                objc_enumerationMutation(v21);
              }

              -[HDCodableStateOfMind addDomains:](v15, "addDomains:", [*(*(&v29 + 1) + 8 * j) longLongValue]);
            }

            v23 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v23);
        }

        v26 = HDSQLiteColumnWithNameAsString();
        if (v26)
        {
          [(HDCodableStateOfMind *)v15 setContext:v26];
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if (v12)
  {
    v13 = [(HDEntityEncoder *)self transaction];
    v14 = [HDStateOfMindLabelEntity labelsForObjectID:a4 transaction:v13 error:a6];

    if (v14)
    {
      v15 = [(HDEntityEncoder *)self transaction];
      v16 = [HDStateOfMindDomainEntity domainsForObjectID:a4 transaction:v15 error:a6];

      v17 = v16 != 0;
      if (v16)
      {
        HDSQLiteColumnWithNameAsInt64();
        [v10 _setKind:HKStateOfMindKindFromReflectiveInterval()];
        HDSQLiteColumnWithNameAsDouble();
        [v10 _setValence:?];
        v18 = HDSQLiteColumnWithNameAsString();
        [v10 _setContext:v18];

        [v10 _setLabels:v14];
        v19 = [v16 hk_map:&__block_literal_global_202];
        [v10 _setAssociations:v19];
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end