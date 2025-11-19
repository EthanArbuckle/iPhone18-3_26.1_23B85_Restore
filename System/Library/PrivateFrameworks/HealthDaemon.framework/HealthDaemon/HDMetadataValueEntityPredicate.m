@interface HDMetadataValueEntityPredicate
+ (id)_predicateWithMetadataKey:(void *)a3 valuesWithinRange:;
+ (id)predicateWithMetadataKey:(id)a3 allowedValues:(id)a4;
+ (id)predicateWithMetadataKey:(id)a3 exists:(BOOL)a4;
+ (id)predicateWithMetadataKey:(id)a3 value:(id)a4 operatorType:(unint64_t)a5;
+ (void)_predicateWithMetadataKey:(char)a3 exists:;
+ (void)_predicateWithMetadataKey:(void *)a3 allowedValues:;
+ (void)_predicateWithMetadataKey:(void *)a3 value:(uint64_t)a4 operatorType:;
- (NSString)description;
- (id)SQLForEntityClass:(Class)a3;
- (id)_valuePredicateForValue:(uint64_t)a3 operatorType:;
- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
@end

@implementation HDMetadataValueEntityPredicate

+ (id)predicateWithMetadataKey:(id)a3 allowedValues:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HKMetadataAliasesForKey();
  v9 = 0x277CBE000uLL;
  if ([v8 count])
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = [(HDMetadataValueEntityPredicate *)a1 _predicateWithMetadataKey:v6 allowedValues:v7];
    [v10 addObject:v11];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v31 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v36;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          v18 = [v12 objectForKeyedSubscript:v17];
          v19 = [(HDMetadataValueEntityPredicate *)a1 _predicateWithMetadataKey:v17 allowedValues:v18];
          [v10 addObject:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v14);
    }

    v20 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v10];

    v8 = v31;
    v9 = 0x277CBE000;
  }

  else
  {
    v20 = 0;
  }

  v21 = HKMetadataAliasRangesForKey();
  if (![v21 count])
  {
    if (v20)
    {
      v25 = 0;
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  v22 = objc_alloc_init(*(v9 + 2840));
  v23 = [(HDMetadataValueEntityPredicate *)a1 _predicateWithMetadataKey:v6 allowedValues:v7];
  [v22 addObject:v23];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __73__HDMetadataValueEntityPredicate_predicateWithMetadataKey_allowedValues___block_invoke;
  v32[3] = &unk_27861FD28;
  v33 = v22;
  v34 = a1;
  v24 = v22;
  [v21 enumerateKeysAndObjectsUsingBlock:v32];
  v25 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v24];

  if (v20 && v25)
  {
    v26 = MEMORY[0x277D10B20];
    v39[0] = v20;
    v39[1] = v25;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v28 = [v26 predicateMatchingAnyPredicates:v27];

LABEL_19:
    v25 = v28;
    goto LABEL_20;
  }

  if (v20)
  {
LABEL_18:
    v28 = v20;
    goto LABEL_19;
  }

  if (!v25)
  {
LABEL_24:
    v25 = [(HDMetadataValueEntityPredicate *)a1 _predicateWithMetadataKey:v6 allowedValues:v7];
  }

LABEL_20:

  v29 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (void)_predicateWithMetadataKey:(void *)a3 allowedValues:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = objc_alloc_init(objc_opt_class());
  v7 = HDMetadataKeyPredicateForKey(v5);

  v8 = v6[1];
  v6[1] = v7;

  v9 = [(HDMetadataValueEntityPredicate *)v6 _valuePredicateForValue:v4 operatorType:10];

  v10 = v6[2];
  v6[2] = v9;

  *(v6 + 24) = 0;

  return v6;
}

void __73__HDMetadataValueEntityPredicate_predicateWithMetadataKey_allowedValues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1 + 32);
        v12 = [(HDMetadataValueEntityPredicate *)*(a1 + 40) _predicateWithMetadataKey:v5 valuesWithinRange:*(*(&v14 + 1) + 8 * v10)];
        [v11 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)_predicateWithMetadataKey:(void *)a3 valuesWithinRange:
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = [v4 minValue];
  v8 = [(HDMetadataValueEntityPredicate *)v6 _predicateWithMetadataKey:v5 value:v7 operatorType:3];

  v9 = [v4 maxValue];

  v10 = [(HDMetadataValueEntityPredicate *)v6 _predicateWithMetadataKey:v5 value:v9 operatorType:0];

  v11 = MEMORY[0x277D10B20];
  v16[0] = v8;
  v16[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v13 = [v11 predicateMatchingAllPredicates:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)predicateWithMetadataKey:(id)a3 value:(id)a4 operatorType:(unint64_t)a5
{
  v74 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    [MEMORY[0x277CBEB98] setWithObject:v9];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v10 = ;
  v11 = HKMetadataAliasesForKey();
  v50 = v11;
  v51 = v9;
  v47 = v10;
  v48 = v8;
  if ([v11 count])
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = [(HDMetadataValueEntityPredicate *)a1 _predicateWithMetadataKey:v8 value:v9 operatorType:a5];
    [v12 addObject:v13];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v14 = v11;
    v53 = [v14 countByEnumeratingWithState:&v59 objects:v73 count:16];
    if (v53)
    {
      v15 = *v60;
      v49 = v14;
      v52 = *v60;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v60 != v15)
          {
            objc_enumerationMutation(v14);
          }

          v17 = *(*(&v59 + 1) + 8 * i);
          v18 = [v14 objectForKeyedSubscript:{v17, v47}];
          v19 = [v18 count];
          v54 = v18;
          if (v9 || v19)
          {
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v20 = v18;
            v21 = [v20 countByEnumeratingWithState:&v55 objects:v72 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v56;
              do
              {
                for (j = 0; j != v22; ++j)
                {
                  if (*v56 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = [(HDMetadataValueEntityPredicate *)a1 _predicateWithMetadataKey:v17 value:*(*(&v55 + 1) + 8 * j) operatorType:a5];
                  [v12 addObject:v25];
                }

                v22 = [v20 countByEnumeratingWithState:&v55 objects:v72 count:16];
              }

              while (v22);
              v11 = v50;
              v9 = v51;
              v14 = v49;
            }

            v15 = v52;
          }

          else
          {
            v20 = [(HDMetadataValueEntityPredicate *)a1 _predicateWithMetadataKey:v17 value:0 operatorType:a5];
            [v12 addObject:v20];
          }
        }

        v53 = [v14 countByEnumeratingWithState:&v59 objects:v73 count:16];
      }

      while (v53);
    }

    if (v9 && a5 == 5)
    {
      v26 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v12];
    }

    else
    {
      v26 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:{v12, v47}];
    }

    v27 = v26;

    v8 = v48;
  }

  else
  {
    v27 = 0;
  }

  v28 = HKMetadataAliasRangesForKey();
  if (![v28 count])
  {
    if (v27)
    {
      v33 = 0;
LABEL_51:
      v43 = v27;

      v33 = v43;
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v29 = v28;
  v30 = objc_opt_self();
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __84__HDMetadataValueEntityPredicate__predicateWithMetadataKeyAliasRanges_operatorType___block_invoke;
  v63[3] = &unk_27861FD50;
  v64 = v31;
  v65 = a5;
  v66 = v30;
  v67 = sel__predicateWithMetadataKeyAliasRanges_operatorType_;
  v32 = v31;
  [v29 enumerateKeysAndObjectsUsingBlock:v63];

  if (a5 == 5)
  {
    [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v32];
  }

  else
  {
    [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v32];
  }
  v34 = ;

  v35 = [(HDMetadataValueEntityPredicate *)a1 _predicateWithMetadataKey:v8 value:v9 operatorType:a5];
  v36 = v35;
  if (v9)
  {
    v37 = a5 == 5;
  }

  else
  {
    v37 = 0;
  }

  v38 = v37;
  v39 = MEMORY[0x277D10B20];
  if (v37)
  {
    v71[0] = v34;
    v71[1] = v35;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
    [v39 predicateMatchingAllPredicates:v40];
  }

  else
  {
    v70[0] = v34;
    v70[1] = v35;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
    [v39 predicateMatchingAnyPredicates:v40];
  }
  v33 = ;

  if (v27 && v33)
  {
    v41 = MEMORY[0x277D10B20];
    v9 = v51;
    if (v38)
    {
      v69[0] = v27;
      v69[1] = v33;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
      [v41 predicateMatchingAllPredicates:v42];
    }

    else
    {
      v68[0] = v27;
      v68[1] = v33;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
      [v41 predicateMatchingAnyPredicates:v42];
    }
    v44 = ;

    v33 = v44;
    v11 = v50;
    goto LABEL_56;
  }

  v9 = v51;
  if (v27)
  {
    v11 = v50;
    goto LABEL_51;
  }

  v11 = v50;
  if (!v33)
  {
LABEL_55:
    v33 = [(HDMetadataValueEntityPredicate *)a1 _predicateWithMetadataKey:v48 value:v9 operatorType:a5];
  }

LABEL_56:

  v45 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (void)_predicateWithMetadataKey:(void *)a3 value:(uint64_t)a4 operatorType:
{
  v6 = a3;
  v7 = a2;
  objc_opt_self();
  v8 = objc_alloc_init(objc_opt_class());
  v9 = HDMetadataKeyPredicateForKey(v7);

  v10 = v8[1];
  v8[1] = v9;

  v11 = [(HDMetadataValueEntityPredicate *)v8 _valuePredicateForValue:v6 operatorType:a4];
  v12 = v8[2];
  v8[2] = v11;

  if (v6)
  {
    v13 = a4 == 5;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  *(v8 + 24) = v14;

  return v8;
}

void __84__HDMetadataValueEntityPredicate__predicateWithMetadataKeyAliasRanges_operatorType___block_invoke(void *a1, void *a2, void *a3)
{
  v46[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    v38 = v5;
    v39 = *v41;
    v35 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v40 + 1) + 8 * v10);
        v12 = a1[5];
        if (v12 <= 2)
        {
          if ((v12 - 1) < 2)
          {
            v13 = a1[4];
            v14 = a1[6];
            v15 = [*(*(&v40 + 1) + 8 * v10) maxValue];
LABEL_15:
            v17 = v15;
            v19 = [(HDMetadataValueEntityPredicate *)v14 _predicateWithMetadataKey:v5 value:v15 operatorType:a1[5]];
            [v13 addObject:v19];

            goto LABEL_16;
          }

          if (!v12)
          {
LABEL_14:
            v13 = a1[4];
            v14 = a1[6];
            v15 = [*(*(&v40 + 1) + 8 * v10) minValue];
            goto LABEL_15;
          }

          goto LABEL_18;
        }

        if (v12 == 3)
        {
          goto LABEL_14;
        }

        if (v12 != 5)
        {
          if (v12 == 4)
          {
            v16 = a1[4];
            v17 = [(HDMetadataValueEntityPredicate *)a1[6] _predicateWithMetadataKey:v5 valuesWithinRange:*(*(&v40 + 1) + 8 * v10)];
            v18 = v16;
            v9 = v39;
            [v18 addObject:v17];
            goto LABEL_16;
          }

LABEL_18:
          v17 = [MEMORY[0x277CCA890] currentHandler];
          [v17 handleFailureInMethod:a1[7] object:a1[6] file:@"HDMetadataValueEntity.m" lineNumber:455 description:@"Unsupported operator type for aliased value range"];
          goto LABEL_16;
        }

        v36 = MEMORY[0x277D10B20];
        v37 = a1[4];
        v17 = [(HDMetadataValueEntityPredicate *)a1[6] _predicateWithMetadataKey:v5 exists:0];
        v44[0] = v17;
        v20 = a1[6];
        v21 = v11;
        v22 = v38;
        v23 = objc_opt_self();
        v24 = [v21 minValue];
        v25 = [(HDMetadataValueEntityPredicate *)v23 _predicateWithMetadataKey:v22 value:v24 operatorType:0];

        v26 = [v21 maxValue];

        v27 = [(HDMetadataValueEntityPredicate *)v23 _predicateWithMetadataKey:v22 value:v26 operatorType:3];

        v9 = v39;
        v28 = MEMORY[0x277D10B20];
        v46[0] = v25;
        v46[1] = v27;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
        v30 = [v28 predicateMatchingAnyPredicates:v29];

        v44[1] = v30;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
        v32 = [v36 predicateMatchingAnyPredicates:v31];
        [v37 addObject:v32];

        v5 = v38;
        v6 = v35;

LABEL_16:
        ++v10;
      }

      while (v8 != v10);
      v33 = [v6 countByEnumeratingWithState:&v40 objects:v45 count:16];
      v8 = v33;
    }

    while (v33);
  }

  v34 = *MEMORY[0x277D85DE8];
}

+ (void)_predicateWithMetadataKey:(char)a3 exists:
{
  v4 = a2;
  objc_opt_self();
  v5 = objc_alloc_init(objc_opt_class());
  v6 = HDMetadataKeyPredicateForKey(v4);

  v7 = v5[1];
  v5[1] = v6;

  v8 = v5[2];
  v5[2] = 0;

  *(v5 + 24) = a3 ^ 1;

  return v5;
}

+ (id)predicateWithMetadataKey:(id)a3 exists:(BOOL)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = HKMetadataAliasesForKey();
  v8 = [v7 allKeys];

  v9 = HKMetadataAliasRangesForKey();
  v10 = [v9 allKeys];

  v11 = MEMORY[0x277CBEB98];
  v12 = [v8 arrayByAddingObjectsFromArray:v10];
  v13 = [v11 setWithArray:v12];

  if ([v13 count])
  {
    v25 = v10;
    v26 = v8;
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = [(HDMetadataValueEntityPredicate *)a1 _predicateWithMetadataKey:v6 exists:a4];
    [v14 addObject:v15];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [(HDMetadataValueEntityPredicate *)a1 _predicateWithMetadataKey:a4 exists:?];
          [v14 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }

    if (a4)
    {
      [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v14];
    }

    else
    {
      [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v14];
    }
    v22 = ;
    v10 = v25;
    v8 = v26;
  }

  else
  {
    v22 = [(HDMetadataValueEntityPredicate *)a1 _predicateWithMetadataKey:v6 exists:a4];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_valuePredicateForValue:(uint64_t)a3 operatorType:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (a3 == 10)
    {
      HDPredicateForMetadataValues(v5);
    }

    else
    {
      v7 = HDSQLiteComparisonTypeForPredicateOperator();
      HDPredicateForMetadataValue(v6, v7);
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)SQLForEntityClass:(Class)a3
{
  v4 = [(objc_class *)a3 entityClassForEnumeration];
  v5 = *MEMORY[0x277D10A40];
  v20 = [v4 disambiguatedSQLForProperty:*MEMORY[0x277D10A40]];
  v21 = [(HDSQLiteSchemaEntity *)HDMetadataValueEntity disambiguatedSQLForProperty:@"object_id"];
  v6 = +[(HDSQLiteSchemaEntity *)HDMetadataValueEntity];
  v7 = +[(HDSQLiteSchemaEntity *)HDMetadataKeyEntity];
  v8 = [(HDSQLiteSchemaEntity *)HDMetadataValueEntity disambiguatedSQLForProperty:@"key_id"];
  v9 = [(HDSQLiteSchemaEntity *)HDMetadataKeyEntity disambiguatedSQLForProperty:v5];
  v10 = [(HDSQLitePredicate *)self->_keyPredicate SQLForEntityClass:objc_opt_class()];
  v11 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
  v19 = self;
  valuePredicate = self->_valuePredicate;
  if (!valuePredicate)
  {
    v16 = v20;
    v15 = v21;
    v14 = v19;
    goto LABEL_9;
  }

  v13 = [(HDSQLitePredicate *)valuePredicate SQLForEntityClass:objc_opt_class()];
  [v11 appendFormat:@"EXISTS (SELECT 1 FROM %@ INNER JOIN %@ ON %@=%@ WHERE ((%@=%@) AND %@ AND (%@)))", v6, v7, v8, v9, v20, v21, v10, v13];

  v14 = self;
  if (self->_matchObjectsWithoutKey)
  {
    [v11 appendString:@" OR "];
  }

  if (!self->_valuePredicate)
  {
    v16 = v20;
    v15 = v21;
    goto LABEL_9;
  }

  v16 = v20;
  v15 = v21;
  if (v19->_matchObjectsWithoutKey)
  {
LABEL_9:
    if (v14->_matchObjectsWithoutKey)
    {
      v17 = @"NOT EXISTS";
    }

    else
    {
      v17 = @"EXISTS";
    }

    [v11 appendFormat:@"%@ (SELECT 1 FROM %@ INNER JOIN %@ ON %@=%@ WHERE ((%@=%@) AND %@))", v17, v6, v7, v8, v9, v16, v15, v10];
  }

  [v11 appendString:@""]);

  return v11;
}

- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4
{
  [HDSQLitePredicate bindToStatement:"bindToStatement:bindingIndex:" bindingIndex:?];
  valuePredicate = self->_valuePredicate;
  if (valuePredicate)
  {
    [(HDSQLitePredicate *)valuePredicate bindToStatement:a3 bindingIndex:a4];
    if (self->_matchObjectsWithoutKey)
    {
      keyPredicate = self->_keyPredicate;

      [(HDSQLitePredicate *)keyPredicate bindToStatement:a3 bindingIndex:a4];
    }
  }
}

- (NSString)description
{
  valuePredicate = self->_valuePredicate;
  if (valuePredicate)
  {
    if (self->_matchObjectsWithoutKey)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [(HDSQLitePredicate *)valuePredicate description];
      v6 = [v4 stringWithFormat:@"(key does not exist OR %@)", v5];

      goto LABEL_10;
    }

    v8 = [(HDSQLitePredicate *)valuePredicate description];
  }

  else
  {
    if (self->_matchObjectsWithoutKey)
    {
      v7 = @"does not exist";
    }

    else
    {
      v7 = @"exists";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(key %@)", v7];
  }

  v6 = v8;
LABEL_10:
  v9 = MEMORY[0x277CCACA8];
  v10 = [(HDSQLitePredicate *)self->_keyPredicate description];
  v11 = [v9 stringWithFormat:@"<metadata: %@ AND %@>", v10, v6];

  return v11;
}

@end