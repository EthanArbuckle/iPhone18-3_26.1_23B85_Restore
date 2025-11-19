@interface _CDContextualPredicate
+ (id)andPredicateWithSubpredicates:(id)a3;
+ (id)contextualPredicateForKeyPaths:(id)a3 withPredicate:(id)a4;
+ (id)notPredicateWithSubpredicate:(id)a3;
+ (id)orPredicateWithSubpredicates:(id)a3;
+ (id)predicateForChangeAtKeyPath:(id)a3;
+ (id)predicateForChangeAtKeyPath:(id)a3 withMinimumDurationInPreviousState:(double)a4;
+ (id)predicateForChangeAtKeyPaths:(id)a3;
+ (id)predicateForKeyPath:(id)a3 equalToValue:(id)a4;
+ (id)predicateForKeyPath:(id)a3 equalToValue:(id)a4 withMinimumDurationInPreviousState:(double)a5;
+ (id)predicateForKeyPath:(id)a3 withFormat:(id)a4;
+ (id)predicateForKeyPath:(id)a3 withPredicate:(id)a4;
+ (id)predicateForKeyPath:(id)a3 withPredicate:(id)a4 withPredicateForPreviousState:(id)a5 withMinimumDurationInPreviousState:(double)a6;
- (BOOL)evaluateWithObject:(id)a3;
- (BOOL)evaluateWithState:(id)a3 previousValue:(id)a4;
- (BOOL)isEqual:(id)a3;
- (_CDContextualPredicate)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initForChangeAtKeyPath:(id)a3;
- (id)initForChangeAtKeyPath:(id)a3 equalToValue:(id)a4;
- (id)initForChangeAtKeyPaths:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CDContextualPredicate

+ (id)predicateForChangeAtKeyPath:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initForChangeAtKeyPath:v4];

  return v5;
}

- (id)initForChangeAtKeyPath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _CDContextualPredicate;
  v5 = [(_CDContextualPredicate *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObject:v4];
    keyPaths = v5->_keyPaths;
    v5->_keyPaths = v6;
  }

  return v5;
}

+ (id)predicateForChangeAtKeyPaths:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initForChangeAtKeyPaths:v4];

  return v5;
}

- (id)initForChangeAtKeyPaths:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _CDContextualPredicate;
  v5 = [(_CDContextualPredicate *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithArray:v4];
    keyPaths = v5->_keyPaths;
    v5->_keyPaths = v6;
  }

  return v5;
}

+ (id)predicateForKeyPath:(id)a3 equalToValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initForChangeAtKeyPath:v7 equalToValue:v6];

  return v8;
}

- (id)initForChangeAtKeyPath:(id)a3 equalToValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _CDContextualPredicate;
  v8 = [(_CDContextualPredicate *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithObject:v6];
    keyPaths = v8->_keyPaths;
    v8->_keyPaths = v9;

    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self.%@.value == %@", v6, v7];
    predicate = v8->_predicate;
    v8->_predicate = v11;
  }

  return v8;
}

+ (id)predicateForKeyPath:(id)a3 withPredicate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  v9 = [MEMORY[0x1E695DFD8] setWithObject:v7];

  [v8 setKeyPaths:v9];
  [v8 setPredicate:v6];

  return v8;
}

+ (id)contextualPredicateForKeyPaths:(id)a3 withPredicate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setKeyPaths:v7];

  [v8 setPredicate:v6];

  return v8;
}

+ (id)predicateForKeyPath:(id)a3 withFormat:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a3;
  v7 = [v5 predicateWithFormat:a4 arguments:&v11];
  v8 = [_CDContextualPredicate predicateForKeyPath:v6 withPredicate:v7];

  return v8;
}

+ (id)predicateForChangeAtKeyPath:(id)a3 withMinimumDurationInPreviousState:(double)a4
{
  v6 = a3;
  v7 = objc_alloc_init(a1);
  v8 = [MEMORY[0x1E695DFD8] setWithObject:v6];

  [v7 setKeyPaths:v8];
  [v7 setMinimumDurationInPreviousState:a4];

  return v7;
}

+ (id)predicateForKeyPath:(id)a3 equalToValue:(id)a4 withMinimumDurationInPreviousState:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(a1);
  v11 = [MEMORY[0x1E695DFD8] setWithObject:v9];
  [v10 setKeyPaths:v11];

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self.%@.value == %@", v9, v8];

  [v10 setPredicate:v12];
  [v10 setMinimumDurationInPreviousState:a5];

  return v10;
}

+ (id)predicateForKeyPath:(id)a3 withPredicate:(id)a4 withPredicateForPreviousState:(id)a5 withMinimumDurationInPreviousState:(double)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(a1);
  v14 = [MEMORY[0x1E695DFD8] setWithObject:v12];

  [v13 setKeyPaths:v14];
  [v13 setPredicate:v11];

  [v13 setPredicateForPreviousState:v10];
  [v13 setMinimumDurationInPreviousState:a6];

  return v13;
}

+ (id)notPredicateWithSubpredicate:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 predicate];
  v34 = v5;
  if (v5)
  {
    [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v5];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v6 = ;
  v7 = [v4 keyPaths];
  v8 = [v7 copy];

  v32 = v8;
  v33 = v6;
  v9 = [a1 contextualPredicateForKeyPaths:v8 withPredicate:v6];
  v10 = [v4 circularLocationRegions];
  [v9 setCircularLocationRegions:v10];

  v35 = v4;
  v11 = [v4 timeBasedPredicateEvaluationIntervals];
  v12 = [MEMORY[0x1E695DF00] distantPast];
  v13 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      v18 = 0;
      v19 = v12;
      do
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v36 + 1) + 8 * v18);
        v21 = objc_alloc(MEMORY[0x1E696AB80]);
        v22 = [v20 startDate];
        v23 = [v21 initWithStartDate:v19 endDate:v22];

        [v23 duration];
        if (v24 > 0.0)
        {
          [v13 addObject:v23];
        }

        v12 = [v20 endDate];

        ++v18;
        v19 = v12;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v16);
  }

  v25 = objc_alloc(MEMORY[0x1E696AB80]);
  v26 = [MEMORY[0x1E695DF00] distantFuture];
  v27 = [v25 initWithStartDate:v12 endDate:v26];

  [v27 duration];
  if (v28 > 0.0)
  {
    [v13 addObject:v27];
  }

  v29 = [v13 copy];

  [v9 setTimeBasedPredicateEvaluationIntervals:v29];
  v30 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)andPredicateWithSubpredicates:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v45 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __56___CDContextualPredicate_andPredicateWithSubpredicates___block_invoke;
  v50[3] = &unk_1E7886400;
  v50[4] = &v51;
  [v3 enumerateObjectsUsingBlock:v50];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v3;
  v8 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = *v47;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v47 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v46 + 1) + 8 * i);
      v12 = [v11 predicate];

      if (v12)
      {
        v13 = [v11 predicate];
        [v45 addObject:v13];
      }

      v14 = [v11 predicateForPreviousState];

      if (v14)
      {
        v15 = [v11 predicateForPreviousState];
        [v4 addObject:v15];
      }

      else
      {
        if (*(v52 + 24) != 1)
        {
          goto LABEL_13;
        }

        v15 = [MEMORY[0x1E696AE18] predicateWithValue:1];
        [v4 addObject:v15];
      }

LABEL_13:
      v16 = [v11 keyPaths];
      [v5 unionSet:v16];

      v17 = [v11 timeBasedPredicateEvaluationIntervals];
      v18 = [v17 array];

      if (v18)
      {
        [v6 addObjectsFromArray:v18];
      }

      v19 = [v11 circularLocationRegions];
      v20 = v19 == 0;

      if (!v20)
      {
        v21 = [v11 circularLocationRegions];
        v22 = [v21 allObjects];
        [v7 addObjectsFromArray:v22];
      }
    }

    v8 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
  }

  while (v8);
LABEL_19:

  v40 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v45];
  if ([v4 count])
  {
    [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v4];
    [MEMORY[0x1E695DFD8] setWithSet:{v5, objc_claimAutoreleasedReturnValue()}];
  }

  else
  {
    [MEMORY[0x1E695DFD8] setWithSet:{v5, 0}];
  }
  v23 = ;
  v43 = [a1 contextualPredicateForKeyPaths:v23 withPredicate:v40];

  v41 = [v6 copy];
  if ([v41 count])
  {
    v24 = objc_alloc(MEMORY[0x1E696AB80]);
    v25 = [MEMORY[0x1E695DF00] distantPast];
    v26 = [MEMORY[0x1E695DF00] distantFuture];
    v27 = [v24 initWithStartDate:v25 endDate:v26];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v28 = v41;
    v29 = [v28 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v29)
    {
      v30 = *v56;
      do
      {
        v31 = 0;
        v32 = v27;
        do
        {
          if (*v56 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v27 = [v32 intersectionWithDateInterval:*(*(&v55 + 1) + 8 * v31)];

          ++v31;
          v32 = v27;
        }

        while (v29 != v31);
        v29 = [v28 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v29);
    }

    if (v27 && ([v27 duration], v33 > 0.0))
    {
      v34 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObject:v27];
    }

    else
    {
      v34 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    }

    v35 = v34;
  }

  else
  {
    v35 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  }

  [v43 setTimeBasedPredicateEvaluationIntervals:v35];
  v36 = [v7 copy];
  [v43 setCircularLocationRegions:v36];

  [v43 setPredicateForPreviousState:v39];
  _Block_object_dispose(&v51, 8);

  v37 = *MEMORY[0x1E69E9840];

  return v43;
}

+ (id)orPredicateWithSubpredicates:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v53 = [MEMORY[0x1E695DF70] array];
  v55 = [MEMORY[0x1E695DF70] array];
  v56 = [MEMORY[0x1E695DFA8] set];
  v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __55___CDContextualPredicate_orPredicateWithSubpredicates___block_invoke;
  v62[3] = &unk_1E7886400;
  v62[4] = &v63;
  [v4 enumerateObjectsUsingBlock:v62];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v58 objects:v75 count:16];
  if (v5)
  {
    v6 = *v59;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v59 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v58 + 1) + 8 * i);
        v9 = [v8 predicate];

        if (v9)
        {
          v10 = [v8 predicate];
          [v53 addObject:v10];
        }

        v11 = [v8 predicateForPreviousState];

        if (v11)
        {
          v12 = [v8 predicateForPreviousState];
          [v55 addObject:v12];
        }

        else
        {
          if (*(v64 + 24) != 1)
          {
            goto LABEL_13;
          }

          v12 = [MEMORY[0x1E696AE18] predicateWithValue:1];
          [v55 addObject:v12];
        }

LABEL_13:
        v13 = [v8 keyPaths];
        [v56 unionSet:v13];

        v14 = [v8 timeBasedPredicateEvaluationIntervals];
        v15 = [v14 array];

        if (v15)
        {
          [v52 addObjectsFromArray:v15];
        }

        v16 = [v8 circularLocationRegions];
        v17 = v16 == 0;

        if (!v17)
        {
          v18 = [v8 circularLocationRegions];
          v19 = [v18 allObjects];
          [v51 addObjectsFromArray:v19];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v58 objects:v75 count:16];
    }

    while (v5);
  }

  if ([v53 count])
  {
    v46 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v53];
  }

  else
  {
    v46 = 0;
  }

  if ([v55 count])
  {
    v44 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v55];
  }

  else
  {
    v44 = 0;
  }

  v20 = [MEMORY[0x1E695DFD8] setWithSet:v56];
  v45 = [a1 contextualPredicateForKeyPaths:v20 withPredicate:v46];

  v43 = [v52 copy];
  v21 = [v43 copy];
  do
  {
    v57 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v47 = v21;
    v49 = [v47 countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (v49)
    {
      v48 = *v72;
      do
      {
        for (j = 0; j != v49; ++j)
        {
          if (*v72 != v48)
          {
            objc_enumerationMutation(v47);
          }

          v22 = *(*(&v71 + 1) + 8 * j);
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v23 = [v57 copy];
          v24 = [v23 countByEnumeratingWithState:&v67 objects:v76 count:16];
          if (v24)
          {
            v25 = *v68;
            do
            {
              for (k = 0; k != v24; ++k)
              {
                if (*v68 != v25)
                {
                  objc_enumerationMutation(v23);
                }

                v27 = *(*(&v67 + 1) + 8 * k);
                if ([v22 intersectsDateInterval:v27])
                {
                  v28 = [v22 startDate];
                  v29 = [v27 startDate];
                  v30 = [v28 earlierDate:v29];

                  v31 = [v22 endDate];
                  v32 = [v27 endDate];
                  v33 = [v31 laterDate:v32];

                  v34 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v30 endDate:v33];
                  [v57 removeObject:v27];

                  v22 = v34;
                }
              }

              v24 = [v23 countByEnumeratingWithState:&v67 objects:v76 count:16];
            }

            while (v24);
          }

          [v22 duration];
          if (v35 > 0.0)
          {
            [v57 addObject:v22];
          }
        }

        v49 = [v47 countByEnumeratingWithState:&v71 objects:v77 count:16];
      }

      while (v49);
    }

    v36 = [v57 count];
    v37 = [v47 count];
    v21 = [v57 allObjects];
  }

  while (v36 != v37);
  v38 = [v21 sortedArrayUsingSelector:sel_compare_];
  v39 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v38];

  [v45 setTimeBasedPredicateEvaluationIntervals:v39];
  v40 = [v51 copy];
  [v45 setCircularLocationRegions:v40];

  [v45 setPredicateForPreviousState:v44];
  _Block_object_dispose(&v63, 8);

  v41 = *MEMORY[0x1E69E9840];

  return v45;
}

- (BOOL)evaluateWithObject:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [(NSPredicate *)self->_predicate evaluateWithObject:v4];

  return self;
}

- (BOOL)evaluateWithState:(id)a3 previousValue:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = [(_CDContextualPredicate *)self keyPaths];
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v9)
  {
    v10 = *v45;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [v6 objectForKeyedSubscript:*(*(&v44 + 1) + 8 * i)];
        v13 = v12 == 0;

        if (v13)
        {

          goto LABEL_47;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v9);
  }

  if (!v7)
  {
    goto LABEL_20;
  }

  v14 = [(_CDContextualPredicate *)self predicateForPreviousState];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (-[_CDContextualPredicate predicateForPreviousState](self, "predicateForPreviousState"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 compoundPredicateType] == 0, v16, v17))
  {
LABEL_20:
    v26 = [(_CDContextualPredicate *)self predicate];
    v27 = [v26 evaluateWithObject:v6];

    if (v27)
    {
      v28 = v7 != 0;
      v29 = [(_CDContextualPredicate *)self predicateForPreviousState];
      if (!v29)
      {
        v28 = 0;
      }

      if (v28)
      {
        v30 = [(_CDContextualPredicate *)self predicateForPreviousState];
        v25 = [v30 evaluateWithObject:v7];
      }

      else
      {
        v25 = 1;
      }

      goto LABEL_48;
    }

LABEL_47:
    v25 = 0;
    goto LABEL_48;
  }

  v18 = [(_CDContextualPredicate *)self predicate];
  v19 = [(_CDContextualPredicate *)self predicateForPreviousState];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  v20 = [v18 compoundPredicateType];
  if (v20 != [v19 compoundPredicateType])
  {
    goto LABEL_26;
  }

  v21 = [v18 subpredicates];
  v22 = [v21 count];
  v23 = [v19 subpredicates];
  LOBYTE(v22) = v22 == [v23 count];

  if ((v22 & 1) == 0)
  {
LABEL_26:
    v31 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      [_CDContextualPredicate evaluateWithState:previousValue:];
    }

    goto LABEL_28;
  }

  v24 = [v18 compoundPredicateType];
  v43 = v24;
  if (v24 == 2)
  {
    v25 = 0;
    goto LABEL_32;
  }

  if (v24 != 1)
  {
    v31 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      [_CDContextualPredicate evaluateWithState:v18 previousValue:?];
    }

LABEL_28:
    v25 = 0;
    goto LABEL_29;
  }

  v25 = 1;
LABEL_32:
  v32 = [v18 subpredicates];
  v33 = [v32 count] == 0;

  if (v33)
  {
    goto LABEL_30;
  }

  v34 = 0;
  while (1)
  {
    v35 = [v18 subpredicates];
    v31 = [v35 objectAtIndexedSubscript:v34];

    v36 = [v19 subpredicates];
    v37 = [v36 objectAtIndexedSubscript:v34];

    if ([v31 evaluateWithObject:v6])
    {
      break;
    }

    if (v43 != 2)
    {
      goto LABEL_45;
    }

LABEL_41:

    v39 = [v18 subpredicates];
    v40 = [v39 count];

    if (++v34 >= v40)
    {
      goto LABEL_30;
    }
  }

  v38 = [v37 evaluateWithObject:v7];
  if (v43 == 2)
  {
    if (v38)
    {
      v25 = 1;
      goto LABEL_46;
    }

    goto LABEL_41;
  }

  if (v38)
  {
    goto LABEL_41;
  }

LABEL_45:
  v25 = 0;
LABEL_46:

LABEL_29:
LABEL_30:

LABEL_48:
  v41 = *MEMORY[0x1E69E9840];
  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_keyPaths forKey:@"keyPaths"];
  [v4 encodeObject:self->_predicate forKey:@"predicate"];
  [v4 encodeObject:self->_predicateForPreviousState forKey:@"predicateForPreviousState"];
  [v4 encodeObject:self->_timeBasedPredicateEvaluationIntervals forKey:@"timeBasedPredicateEvaluationIntervals"];
  [v4 encodeObject:self->_circularLocationRegions forKey:@"circularLocationRegions"];
  [v4 encodeBool:self->_evaluateOnEveryKeyPathUpdate forKey:@"evaluateOnEveryKeyPathUpdate"];
  if (self->_minimumDurationInPreviousState > 2.22507386e-308)
  {
    [v4 encodeDouble:@"duration" forKey:?];
  }
}

- (_CDContextualPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"keyPaths"];
  if (v8)
  {
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"predicate"];
    if (v12)
    {
      if (![_CDPredicateValidator validatePredicate:v12 allowedKeys:0 error:0])
      {
        v13 = [MEMORY[0x1E6997908] contextChannel];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          [_CDContextualPredicate initWithCoder:];
        }

        goto LABEL_15;
      }

      [v12 allowEvaluation];
    }

    v13 = [v4 decodeObjectOfClasses:v11 forKey:@"predicateForPreviousState"];
    if (!v13)
    {
LABEL_8:
      v14 = MEMORY[0x1E695DFD8];
      v15 = objc_opt_class();
      v24 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
      [v4 decodeObjectOfClasses:v24 forKey:@"timeBasedPredicateEvaluationIntervals"];
      v16 = v25 = self;
      v17 = MEMORY[0x1E695DFD8];
      v18 = objc_opt_class();
      v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
      v20 = [v4 decodeObjectOfClasses:v19 forKey:@"circularLocationRegions"];
      v21 = objc_alloc_init(_CDContextualPredicate);
      [(_CDContextualPredicate *)v21 setKeyPaths:v8];
      [(_CDContextualPredicate *)v21 setPredicate:v12];
      [(_CDContextualPredicate *)v21 setPredicateForPreviousState:v13];
      [(_CDContextualPredicate *)v21 setTimeBasedPredicateEvaluationIntervals:v16];
      [(_CDContextualPredicate *)v21 setCircularLocationRegions:v20];
      -[_CDContextualPredicate setEvaluateOnEveryKeyPathUpdate:](v21, "setEvaluateOnEveryKeyPathUpdate:", [v4 decodeBoolForKey:@"evaluateOnEveryKeyPathUpdate"]);
      [v4 decodeDoubleForKey:@"duration"];
      [(_CDContextualPredicate *)v21 setMinimumDurationInPreviousState:?];

      self = v25;
LABEL_16:

      goto LABEL_17;
    }

    if ([_CDPredicateValidator validatePredicate:v13 allowedKeys:0 error:0])
    {
      [v13 allowEvaluation];
      goto LABEL_8;
    }

    v22 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [_CDContextualPredicate initWithCoder:];
    }

LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  v21 = 0;
LABEL_17:

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSSet *)self->_keyPaths copy];
  [v4 setKeyPaths:v5];

  [v4 setPredicate:self->_predicate];
  [v4 setPredicateForPreviousState:self->_predicateForPreviousState];
  [v4 setTimeBasedPredicateEvaluationIntervals:self->_timeBasedPredicateEvaluationIntervals];
  [v4 setCircularLocationRegions:self->_circularLocationRegions];
  [v4 setEvaluateOnEveryKeyPathUpdate:self->_evaluateOnEveryKeyPathUpdate];
  [v4 setMinimumDurationInPreviousState:self->_minimumDurationInPreviousState];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      keyPaths = self->_keyPaths;
      v8 = [(_CDContextualPredicate *)v6 keyPaths];
      if (![(NSSet *)keyPaths isEqual:v8])
      {
        v13 = 0;
LABEL_22:

        goto LABEL_23;
      }

      predicate = self->_predicate;
      v10 = predicate;
      if (!predicate)
      {
        v11 = [(_CDContextualPredicate *)v6 predicate];
        if (!v11)
        {
          v22 = 0;
          v12 = 0;
          goto LABEL_14;
        }

        v22 = v11;
        v10 = self->_predicate;
      }

      v3 = [(_CDContextualPredicate *)v6 predicate];
      if (([(NSPredicate *)v10 isEqual:v3]& 1) == 0)
      {

        v13 = 0;
        goto LABEL_20;
      }

      v12 = 1;
LABEL_14:
      predicateForPreviousState = self->_predicateForPreviousState;
      v15 = predicateForPreviousState;
      if (!predicateForPreviousState)
      {
        v16 = [(_CDContextualPredicate *)v6 predicateForPreviousState];
        if (!v16)
        {
          v19 = 0;
          v13 = 1;
          goto LABEL_26;
        }

        v20 = v16;
        v15 = self->_predicateForPreviousState;
      }

      v17 = [(_CDContextualPredicate *)v6 predicateForPreviousState:v20];
      v13 = [(NSPredicate *)v15 isEqual:v17];

      if (predicateForPreviousState)
      {
        if (!v12)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v19 = v21;
LABEL_26:

      if ((v12 & 1) == 0)
      {
LABEL_20:
        if (!predicate)
        {
        }

        goto LABEL_22;
      }

LABEL_19:

      goto LABEL_20;
    }

    v13 = 0;
  }

LABEL_23:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSSet *)self->_keyPaths hash];
  v4 = [(NSPredicate *)self->_predicate hash]^ v3;
  return v4 ^ [(NSPredicate *)self->_predicateForPreviousState hash];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  predicate = self->_predicate;
  predicateForPreviousState = self->_predicateForPreviousState;
  v8 = [(NSSet *)self->_keyPaths description];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F1D12BE0];
  v10 = [v3 stringWithFormat:@"%@: %@ / %@ | Keypaths: %@:", v5, predicate, predicateForPreviousState, v9];

  return v10;
}

- (void)evaluateWithObject:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_1A9611000, v0, v1, "Invalid predicate: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)evaluateWithState:previousValue:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_fault_impl(&dword_1A9611000, v1, OS_LOG_TYPE_FAULT, "Invalid compound predicate combination snuck through: %@ / %@.", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)evaluateWithState:(void *)a1 previousValue:.cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "compoundPredicateType")}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1A9611000, v2, v3, "Unexpected NSCompoundPredicateType %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_1A9611000, v0, v1, "Client provided invalid _CDContextualPredicate predicate %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_1A9611000, v0, v1, "Client provided invalid _CDContextualPredicate previousPredicate %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end