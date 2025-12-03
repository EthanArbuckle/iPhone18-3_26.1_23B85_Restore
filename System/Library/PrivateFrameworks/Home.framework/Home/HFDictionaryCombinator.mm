@interface HFDictionaryCombinator
+ (BOOL)_isKindOfContainerClass:(id)class;
- (id)_mergeVal1:(id)val1 withVal2:(id)val2;
- (id)combineResultDictionary:(id)dictionary withResultDictionary:(id)resultDictionary reconcilationHandler:(id)handler;
- (void)_reconcileKey:(id)key fromDictionary:(id)dictionary andDictionary:(id)andDictionary intoResultDictionary:(id)resultDictionary withReconcilationHandler:(id)handler;
@end

@implementation HFDictionaryCombinator

+ (BOOL)_isKindOfContainerClass:(id)class
{
  v16 = *MEMORY[0x277D85DE8];
  classCopy = class;
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

- (id)combineResultDictionary:(id)dictionary withResultDictionary:(id)resultDictionary reconcilationHandler:(id)handler
{
  v79 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  resultDictionaryCopy = resultDictionary;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (dictionaryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFDictionaryCombinator.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"reconcilationHandler"}];

    if (dictionaryCopy)
    {
LABEL_3:
      if (!resultDictionaryCopy)
      {
        v11 = dictionaryCopy;
LABEL_9:
        v13 = v11;
        goto LABEL_10;
      }
    }
  }

  if (!dictionaryCopy && resultDictionaryCopy)
  {
    v11 = resultDictionaryCopy;
    goto LABEL_9;
  }

  if (!(dictionaryCopy | resultDictionaryCopy))
  {
    v13 = MEMORY[0x277CBEC10];
    goto LABEL_10;
  }

  v13 = objc_opt_new();
  v16 = MEMORY[0x277CBEB98];
  v63 = dictionaryCopy;
  allKeys = [dictionaryCopy allKeys];
  v18 = [v16 setWithArray:allKeys];

  v19 = MEMORY[0x277CBEB98];
  v20 = resultDictionaryCopy;
  allKeys2 = [resultDictionaryCopy allKeys];
  v22 = [v19 setWithArray:allKeys2];

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
      keysToSkip = [(HFDictionaryCombinator *)self keysToSkip];
      v30 = [keysToSkip containsObject:v28];

      if ((v30 & 1) == 0)
      {
        keysToReconcile = [(HFDictionaryCombinator *)self keysToReconcile];
        v32 = [keysToReconcile containsObject:v28];

        if (v32)
        {
          [(HFDictionaryCombinator *)self _reconcileKey:v28 fromDictionary:v63 andDictionary:v20 intoResultDictionary:v13 withReconcilationHandler:handlerCopy];
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
            [(HFDictionaryCombinator *)self _reconcileKey:v28 fromDictionary:v63 andDictionary:v20 intoResultDictionary:v13 withReconcilationHandler:handlerCopy];
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
        keysToSkip2 = [(HFDictionaryCombinator *)self keysToSkip];
        v48 = [keysToSkip2 containsObject:v46];

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
        keysToSkip3 = [(HFDictionaryCombinator *)self keysToSkip];
        v57 = [keysToSkip3 containsObject:v55];

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

  dictionaryCopy = v63;
  resultDictionaryCopy = v20;
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_mergeVal1:(id)val1 withVal2:(id)val2
{
  val1Copy = val1;
  val2Copy = val2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [val1Copy arrayByAddingObjectsFromArray:val2Copy];
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [val1Copy setByAddingObjectsFromSet:val2Copy];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [val1Copy mutableCopy];
    [v10 addEntriesFromDictionary:val2Copy];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFDictionaryCombinator.m" lineNumber:126 description:{@"Error; should not have called merge if it isn't mergable. (%@ && %@)", val1Copy, val2Copy}];

    v10 = 0;
  }

LABEL_6:

  return v10;
}

- (void)_reconcileKey:(id)key fromDictionary:(id)dictionary andDictionary:(id)andDictionary intoResultDictionary:(id)resultDictionary withReconcilationHandler:(id)handler
{
  keyCopy = key;
  resultDictionaryCopy = resultDictionary;
  v12 = (*(handler + 2))(handler, dictionary, andDictionary, keyCopy);
  if (v12)
  {
    [resultDictionaryCopy setObject:v12 forKeyedSubscript:keyCopy];
  }
}

@end