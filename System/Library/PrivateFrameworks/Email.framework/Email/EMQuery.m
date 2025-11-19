@interface EMQuery
+ (OS_os_log)log;
+ (uint64_t)_isValidSortDescriptor:(uint64_t)a3 forTargetClass:;
+ (void)addValidSortDescriptorKeyPaths:(id)a3 forTargetClass:(Class)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (EMQuery)initWithCoder:(id)a3;
- (EMQuery)initWithTargetClass:(Class)a3 predicate:(id)a4 sortDescriptors:(id)a5 builder:(id)a6;
- (EMQuery)initWithTargetClass:(Class)a3 predicate:(id)a4 sortDescriptors:(id)a5 suggestion:(id)a6 limit:(int64_t)a7 queryOptions:(unint64_t)a8 targetClassOptions:(id)a9 label:(id)a10;
- (EMQuery)queryWithBuilder:(id)a3;
- (EMQuery)queryWithPredicate:(id)a3;
- (EMQuery)queryWithTargetClass:(Class)a3 predicate:(id)a4;
- (NSString)debugDescription;
- (uint64_t)_isEqualToQuery:(uint64_t)a1;
- (unint64_t)hash;
- (void)addTargetClassOptions:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMQuery

- (unint64_t)hash
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromClass([(EMQuery *)self targetClass]);
  v4 = [v3 hash];

  v5 = [(EMQuery *)self predicate];
  v6 = hashForPredicate(v5);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(EMQuery *)self sortDescriptors];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  v9 = 33 * v4 + v6 + 5859909;
  if (v8)
  {
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = [v12 hash];

        v9 = v13 + 33 * v9;
        ++v11;
      }

      while (v8 != v11);
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v14 = [(EMQuery *)self limit];
  v15 = [(EMQuery *)self queryOptions];
  v16 = [(EMQuery *)self suggestion];
  v17 = [v16 hash];
  if (v14 < 0)
  {
    v14 = -v14;
  }

  v18 = *MEMORY[0x1E69E9840];
  return 33 * (33 * (v14 + 33 * v9) + v15) + v17;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __14__EMQuery_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_32 != -1)
  {
    dispatch_once(&log_onceToken_32, block);
  }

  v2 = log_log_32;

  return v2;
}

void __14__EMQuery_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_32;
  log_log_32 = v1;
}

+ (void)addValidSortDescriptorKeyPaths:(id)a3 forTargetClass:(Class)a4
{
  v12 = a3;
  os_unfair_lock_lock(&sSortDescriptorsLock);
  v5 = sValidSortDescriptorKeyPathsByClass;
  if (!sValidSortDescriptorKeyPathsByClass)
  {
    v6 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v7 = sValidSortDescriptorKeyPathsByClass;
    sValidSortDescriptorKeyPathsByClass = v6;

    v5 = sValidSortDescriptorKeyPathsByClass;
  }

  v8 = [v5 objectForKey:a4];

  if (!v8)
  {
    v9 = sValidSortDescriptorKeyPathsByClass;
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v9 setObject:v10 forKey:a4];
  }

  v11 = [sValidSortDescriptorKeyPathsByClass objectForKey:a4];
  [v11 addObjectsFromArray:v12];

  os_unfair_lock_unlock(&sSortDescriptorsLock);
}

+ (uint64_t)_isValidSortDescriptor:(uint64_t)a3 forTargetClass:
{
  v4 = a2;
  objc_opt_self();
  v5 = [v4 key];

  if (v5)
  {
    os_unfair_lock_lock(&sSortDescriptorsLock);
    v6 = [sValidSortDescriptorKeyPathsByClass objectForKey:a3];
    v7 = [v4 key];
    v8 = [v6 containsObject:v7];

    os_unfair_lock_unlock(&sSortDescriptorsLock);
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (EMQuery)initWithTargetClass:(Class)a3 predicate:(id)a4 sortDescriptors:(id)a5 suggestion:(id)a6 limit:(int64_t)a7 queryOptions:(unint64_t)a8 targetClassOptions:(id)a9 label:(id)a10
{
  v16 = a6;
  v17 = a9;
  v18 = a10;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __112__EMQuery_initWithTargetClass_predicate_sortDescriptors_suggestion_limit_queryOptions_targetClassOptions_label___block_invoke;
  v24[3] = &unk_1E826F238;
  v28 = a7;
  v29 = a8;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v19 = v18;
  v20 = v17;
  v21 = v16;
  v22 = [(EMQuery *)self initWithTargetClass:a3 predicate:a4 sortDescriptors:a5 builder:v24];

  return v22;
}

void __112__EMQuery_initWithTargetClass_predicate_sortDescriptors_suggestion_limit_queryOptions_targetClassOptions_label___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setSuggestion:*(a1 + 32)];
  [v4 setLimit:*(a1 + 56)];
  [v4 setQueryOptions:*(a1 + 64)];
  v3 = [*(a1 + 40) copy];
  [v4 setTargetClassOptions:v3];

  [v4 setLabel:*(a1 + 48)];
}

- (EMQuery)initWithTargetClass:(Class)a3 predicate:(id)a4 sortDescriptors:(id)a5 builder:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"EMQuery.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"predicate"}];
  }

  if ([v12 count] >= 3)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"EMQuery.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"sortDescriptors.count <= 2"}];

    if (v13)
    {
      goto LABEL_5;
    }
  }

  else if (v13)
  {
    goto LABEL_5;
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"EMQuery.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];

LABEL_5:
  v24.receiver = self;
  v24.super_class = EMQuery;
  v14 = [(EMQuery *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_targetClass, a3);
    v16 = [v11 copy];
    predicate = v15->_predicate;
    v15->_predicate = v16;

    v18 = [v12 copy];
    sortDescriptors = v15->_sortDescriptors;
    v15->_sortDescriptors = v18;

    v13[2](v13, v15);
  }

  return v15;
}

- (EMQuery)queryWithPredicate:(id)a3
{
  v4 = a3;
  v5 = [(EMQuery *)self queryWithTargetClass:[(EMQuery *)self targetClass] predicate:v4];

  return v5;
}

- (EMQuery)queryWithTargetClass:(Class)a3 predicate:(id)a4
{
  v6 = a4;
  v7 = [(EMQuery *)self queryOptions];
  v8 = [EMQuery alloc];
  v9 = [(EMQuery *)self sortDescriptors];
  v10 = [(EMQuery *)self suggestion];
  v11 = [(EMQuery *)self limit];
  v12 = [(EMQuery *)self targetClassOptions];
  v13 = [(EMQuery *)self label];
  v14 = [(EMQuery *)v8 initWithTargetClass:a3 predicate:v6 sortDescriptors:v9 suggestion:v10 limit:v11 queryOptions:v7 & 0xFFFFFFFFFFFFDFFDLL targetClassOptions:v12 label:v13];

  return v14;
}

- (EMQuery)queryWithBuilder:(id)a3
{
  v4 = a3;
  v5 = [(EMQuery *)self queryOptions];
  v6 = [EMQuery alloc];
  v7 = [(EMQuery *)self targetClass];
  v8 = [(EMQuery *)self predicate];
  v9 = [(EMQuery *)self sortDescriptors];
  v10 = [(EMQuery *)self suggestion];
  v11 = [(EMQuery *)self limit];
  v12 = [(EMQuery *)self targetClassOptions];
  v13 = [(EMQuery *)self label];
  v14 = [(EMQuery *)v6 initWithTargetClass:v7 predicate:v8 sortDescriptors:v9 suggestion:v10 limit:v11 queryOptions:v5 & 0xFFFFFFFFFFFFDFFDLL targetClassOptions:v12 label:v13];

  v4[2](v4, v14);

  return v14;
}

- (BOOL)isValid
{
  v3 = [(EMQuery *)self predicate];
  v4 = [EMMessageListItemPredicates isValidPredicate:v3 forClass:[(EMQuery *)self targetClass]];

  return v4;
}

- (void)addTargetClassOptions:(id)a3
{
  v4 = a3;
  targetClassOptions = self->_targetClassOptions;
  v8 = v4;
  if (targetClassOptions)
  {
    v6 = [(NSDictionary *)targetClassOptions mutableCopy];
    [(NSDictionary *)v6 addEntriesFromDictionary:v8];
  }

  else
  {
    v6 = [v4 copy];
  }

  v7 = self->_targetClassOptions;
  self->_targetClassOptions = v6;
}

- (EMQuery)initWithCoder:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v21 = self;
  v4 = [v23 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_targetClass"];
  v5 = NSClassFromString(v4);

  v22 = [v23 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_predicate"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v23 decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_sortDescriptors"];

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v12)
    {
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          if ([EMQuery _isValidSortDescriptor:v15 forTargetClass:v5])
          {
            [v15 allowEvaluation];
            [v10 addObject:v15];
          }

          else
          {
            v16 = +[EMQuery log];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543618;
              v31 = v15;
              v32 = 2114;
              v33 = v5;
              _os_log_fault_impl(&dword_1C6655000, v16, OS_LOG_TYPE_FAULT, "%{public}@ is not a valid sort descriptor for target class %{public}@", buf, 0x16u);
            }

            __debugbreak();
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v10 = 0;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __25__EMQuery_initWithCoder___block_invoke;
  v24[3] = &unk_1E826F260;
  v17 = v23;
  v25 = v17;
  v18 = [(EMQuery *)v21 initWithTargetClass:v5 predicate:v22 sortDescriptors:v10 builder:v24];

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

void __25__EMQuery_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_suggestion"];
  [v15 setSuggestion:v3];

  [v15 setLimit:{objc_msgSend(*(a1 + 32), "decodeIntegerForKey:", @"EFPropertyKey_limit"}];
  [v15 setQueryOptions:{objc_msgSend(*(a1 + 32), "decodeIntegerForKey:", @"EFPropertyKey_queryOptions"}];
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v5 setWithObjects:{v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"EFPropertyKey_targetClassOptions"];
  [v15 setTargetClassOptions:v13];

  v14 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_label"];
  [v15 setLabel:v14];
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = NSStringFromClass([(EMQuery *)self targetClass]);
  [v10 encodeObject:v4 forKey:@"EFPropertyKey_targetClass"];

  v5 = [(EMQuery *)self predicate];
  [v10 encodeObject:v5 forKey:@"EFPropertyKey_predicate"];

  v6 = [(EMQuery *)self sortDescriptors];
  [v10 encodeObject:v6 forKey:@"EFPropertyKey_sortDescriptors"];

  [v10 encodeInteger:-[EMQuery limit](self forKey:{"limit"), @"EFPropertyKey_limit"}];
  [v10 encodeInteger:-[EMQuery queryOptions](self forKey:{"queryOptions"), @"EFPropertyKey_queryOptions"}];
  v7 = [(EMQuery *)self targetClassOptions];
  [v10 encodeObject:v7 forKey:@"EFPropertyKey_targetClassOptions"];

  v8 = [(EMQuery *)self label];
  [v10 encodeObject:v8 forKey:@"EFPropertyKey_label"];

  v9 = [(EMQuery *)self suggestion];
  [v10 encodeObject:v9 forKey:@"EFPropertyKey_suggestion"];
}

- (NSString)debugDescription
{
  v14 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = [(EMQuery *)self label];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F45FD218;
  }

  v15 = NSStringFromClass([(EMQuery *)self targetClass]);
  v7 = [(EMQuery *)self predicate];
  v8 = [v7 debugDescription];
  v9 = [(EMQuery *)self sortDescriptors];
  v10 = [v9 debugDescription];
  v11 = [(EMQuery *)self suggestion];
  v12 = [v14 stringWithFormat:@"<%@: %p> %@ \n\tresult class:%@ \n\tpredicate:%@ \n\tsort descriptors:%@ \n\tsuggestion:%@ \n\tqueryOptions:%lu\n\tlimit:%ld", v3, self, v6, v15, v8, v10, v11, -[EMQuery queryOptions](self, "queryOptions"), -[EMQuery limit](self, "limit")];

  return v12;
}

- (uint64_t)_isEqualToQuery:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 targetClass];
    if (v4 == [v3 targetClass])
    {
      v5 = [a1 queryOptions];
      if (v5 == [v3 queryOptions])
      {
        v6 = [a1 predicate];
        v7 = [v6 ef_simplifiedPredicate];
        v8 = [v3 predicate];
        v9 = [v8 ef_simplifiedPredicate];
        if (!predicatesAreEqual(v7, v9))
        {
          a1 = 0;
LABEL_19:

          goto LABEL_12;
        }

        v10 = [a1 sortDescriptors];
        v11 = [v3 sortDescriptors];
        if (![v10 isEqual:v11] || (v12 = objc_msgSend(a1, "limit"), v12 != objc_msgSend(v3, "limit")))
        {
          a1 = 0;
LABEL_18:

          goto LABEL_19;
        }

        v19 = [a1 suggestion];
        if (v19 || ([v3 suggestion], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v13 = [a1 suggestion];
          v14 = [v3 suggestion];
          a1 = [v13 isEqual:v14];

          v15 = v19;
          if (v19)
          {
LABEL_17:

            goto LABEL_18;
          }
        }

        else
        {
          v18 = 0;
          a1 = 1;
        }

        v15 = v18;
        goto LABEL_17;
      }
    }

    a1 = 0;
  }

LABEL_12:

  return a1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(EMQuery *)self _isEqualToQuery:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end