@interface HFDictionaryCombinator
+ (BOOL)_isKindOfContainerClass:(id)a3;
- (id)_mergeVal1:(id)a3 withVal2:(id)a4;
- (id)combineResultDictionary:(id)a3 withResultDictionary:(id)a4 reconcilationHandler:(id)a5;
- (void)_reconcileKey:(id)a3 fromDictionary:(id)a4 andDictionary:(id)a5 intoResultDictionary:(id)a6 withReconcilationHandler:(id)a7;
@end

@implementation HFDictionaryCombinator

+ (BOOL)_isKindOfContainerClass:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (_MergedGlobals_305 != -1)
  {
    dispatch_once(&_MergedGlobals_305, &__block_literal_global_3_31);
  }

  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = qword_280E03AE0;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v5) = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

void __50__HFDictionaryCombinator__isKindOfContainerClass___block_invoke_2()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];
  v4 = qword_280E03AE0;
  qword_280E03AE0 = v3;
}

- (id)combineResultDictionary:(id)a3 withResultDictionary:(id)a4 reconcilationHandler:(id)a5
{
  v79 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v62 = a5;
  if (v62)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HFDictionaryCombinator.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"reconcilationHandler"}];

    if (v9)
    {
LABEL_3:
      if (!v10)
      {
        v11 = v9;
LABEL_9:
        v13 = v11;
        goto LABEL_10;
      }
    }
  }

  if (!v9 && v10)
  {
    v11 = v10;
    goto LABEL_9;
  }

  if (!(v9 | v10))
  {
    v13 = MEMORY[0x277CBEC10];
    goto LABEL_10;
  }

  v13 = objc_opt_new();
  v16 = MEMORY[0x277CBEB98];
  v63 = v9;
  v17 = [v9 allKeys];
  v18 = [v16 setWithArray:v17];

  v19 = MEMORY[0x277CBEB98];
  v20 = v10;
  v21 = [v10 allKeys];
  v22 = [v19 setWithArray:v21];

  v59 = v22;
  v60 = v18;
  v23 = [v18 na_setByIntersectingWithSet:v22];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v72 objects:v78 count:16];
  v61 = v23;
  if (!v24)
  {
    goto LABEL_43;
  }

  v25 = v24;
  v26 = *v73;
  do
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v73 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v72 + 1) + 8 * i);
      v29 = [(HFDictionaryCombinator *)self keysToSkip];
      v30 = [v29 containsObject:v28];

      if ((v30 & 1) == 0)
      {
        v31 = [(HFDictionaryCombinator *)self keysToReconcile];
        v32 = [v31 containsObject:v28];

        if (v32)
        {
          [(HFDictionaryCombinator *)self _reconcileKey:v28 fromDictionary:v63 andDictionary:v20 intoResultDictionary:v13 withReconcilationHandler:v62];
          continue;
        }

        v33 = [v63 objectForKeyedSubscript:v28];
        v34 = [v20 objectForKeyedSubscript:v28];
        v35 = v34;
        if (v33)
        {
          v36 = v34 == 0;
        }

        else
        {
          v36 = 1;
        }

        if (!v36 && [v33 isEqual:v34])
        {
          v37 = v13;
          v38 = v33;
          goto LABEL_38;
        }

        v39 = objc_opt_class();
        if (v39 == objc_opt_class() && [objc_opt_class() _isKindOfContainerClass:v33])
        {
          v40 = [(HFDictionaryCombinator *)self _mergeVal1:v33 withVal2:v35];
          [v13 setObject:v40 forKeyedSubscript:v28];

          goto LABEL_34;
        }

        if (!v33 || v35)
        {
          v23 = v61;
          if (v33 || !v35)
          {
            [(HFDictionaryCombinator *)self _reconcileKey:v28 fromDictionary:v63 andDictionary:v20 intoResultDictionary:v13 withReconcilationHandler:v62];
          }

          else
          {
            v37 = v13;
            v38 = v35;
LABEL_38:
            [v37 setObject:v38 forKeyedSubscript:v28];
          }
        }

        else
        {
          [v13 setObject:v33 forKeyedSubscript:v28];
LABEL_34:
          v23 = v61;
        }

        continue;
      }
    }

    v25 = [v23 countByEnumeratingWithState:&v72 objects:v78 count:16];
  }

  while (v25);
LABEL_43:
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v41 = [v60 na_setByRemovingObjectsFromSet:v23];
  v42 = [v41 countByEnumeratingWithState:&v68 objects:v77 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v69;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v69 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v68 + 1) + 8 * j);
        v47 = [(HFDictionaryCombinator *)self keysToSkip];
        v48 = [v47 containsObject:v46];

        if ((v48 & 1) == 0)
        {
          v49 = [v63 objectForKeyedSubscript:v46];
          [v13 setObject:v49 forKeyedSubscript:v46];
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v68 objects:v77 count:16];
    }

    while (v43);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v50 = [v59 na_setByRemovingObjectsFromSet:v61];
  v51 = [v50 countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v65;
    do
    {
      for (k = 0; k != v52; ++k)
      {
        if (*v65 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v64 + 1) + 8 * k);
        v56 = [(HFDictionaryCombinator *)self keysToSkip];
        v57 = [v56 containsObject:v55];

        if ((v57 & 1) == 0)
        {
          v58 = [v20 objectForKeyedSubscript:v55];
          [v13 setObject:v58 forKeyedSubscript:v55];
        }
      }

      v52 = [v50 countByEnumeratingWithState:&v64 objects:v76 count:16];
    }

    while (v52);
  }

  v9 = v63;
  v10 = v20;
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_mergeVal1:(id)a3 withVal2:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 arrayByAddingObjectsFromArray:v8];
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 setByAddingObjectsFromSet:v8];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v7 mutableCopy];
    [v10 addEntriesFromDictionary:v8];
  }

  else
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HFDictionaryCombinator.m" lineNumber:126 description:{@"Error; should not have called merge if it isn't mergable. (%@ && %@)", v7, v8}];

    v10 = 0;
  }

LABEL_6:

  return v10;
}

- (void)_reconcileKey:(id)a3 fromDictionary:(id)a4 andDictionary:(id)a5 intoResultDictionary:(id)a6 withReconcilationHandler:(id)a7
{
  v13 = a3;
  v11 = a6;
  v12 = (*(a7 + 2))(a7, a4, a5, v13);
  if (v12)
  {
    [v11 setObject:v12 forKeyedSubscript:v13];
  }
}

@end