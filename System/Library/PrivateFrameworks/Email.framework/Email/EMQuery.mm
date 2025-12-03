@interface EMQuery
+ (OS_os_log)log;
+ (uint64_t)_isValidSortDescriptor:(uint64_t)descriptor forTargetClass:;
+ (void)addValidSortDescriptorKeyPaths:(id)paths forTargetClass:(Class)class;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (EMQuery)initWithCoder:(id)coder;
- (EMQuery)initWithTargetClass:(Class)class predicate:(id)predicate sortDescriptors:(id)descriptors builder:(id)builder;
- (EMQuery)initWithTargetClass:(Class)class predicate:(id)predicate sortDescriptors:(id)descriptors suggestion:(id)suggestion limit:(int64_t)limit queryOptions:(unint64_t)options targetClassOptions:(id)classOptions label:(id)self0;
- (EMQuery)queryWithBuilder:(id)builder;
- (EMQuery)queryWithPredicate:(id)predicate;
- (EMQuery)queryWithTargetClass:(Class)class predicate:(id)predicate;
- (NSString)debugDescription;
- (uint64_t)_isEqualToQuery:(uint64_t)query;
- (unint64_t)hash;
- (void)addTargetClassOptions:(id)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMQuery

- (unint64_t)hash
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromClass([(EMQuery *)self targetClass]);
  v4 = [v3 hash];

  predicate = [(EMQuery *)self predicate];
  v6 = hashForPredicate(predicate);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  sortDescriptors = [(EMQuery *)self sortDescriptors];
  v8 = [sortDescriptors countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(sortDescriptors);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = [v12 hash];

        v9 = v13 + 33 * v9;
        ++v11;
      }

      while (v8 != v11);
      v8 = [sortDescriptors countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  limit = [(EMQuery *)self limit];
  queryOptions = [(EMQuery *)self queryOptions];
  suggestion = [(EMQuery *)self suggestion];
  v17 = [suggestion hash];
  if (limit < 0)
  {
    limit = -limit;
  }

  v18 = *MEMORY[0x1E69E9840];
  return 33 * (33 * (limit + 33 * v9) + queryOptions) + v17;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __14__EMQuery_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (void)addValidSortDescriptorKeyPaths:(id)paths forTargetClass:(Class)class
{
  pathsCopy = paths;
  os_unfair_lock_lock(&sSortDescriptorsLock);
  v5 = sValidSortDescriptorKeyPathsByClass;
  if (!sValidSortDescriptorKeyPathsByClass)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v7 = sValidSortDescriptorKeyPathsByClass;
    sValidSortDescriptorKeyPathsByClass = weakToStrongObjectsMapTable;

    v5 = sValidSortDescriptorKeyPathsByClass;
  }

  v8 = [v5 objectForKey:class];

  if (!v8)
  {
    v9 = sValidSortDescriptorKeyPathsByClass;
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v9 setObject:v10 forKey:class];
  }

  v11 = [sValidSortDescriptorKeyPathsByClass objectForKey:class];
  [v11 addObjectsFromArray:pathsCopy];

  os_unfair_lock_unlock(&sSortDescriptorsLock);
}

+ (uint64_t)_isValidSortDescriptor:(uint64_t)descriptor forTargetClass:
{
  v4 = a2;
  objc_opt_self();
  v5 = [v4 key];

  if (v5)
  {
    os_unfair_lock_lock(&sSortDescriptorsLock);
    v6 = [sValidSortDescriptorKeyPathsByClass objectForKey:descriptor];
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

- (EMQuery)initWithTargetClass:(Class)class predicate:(id)predicate sortDescriptors:(id)descriptors suggestion:(id)suggestion limit:(int64_t)limit queryOptions:(unint64_t)options targetClassOptions:(id)classOptions label:(id)self0
{
  suggestionCopy = suggestion;
  classOptionsCopy = classOptions;
  labelCopy = label;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __112__EMQuery_initWithTargetClass_predicate_sortDescriptors_suggestion_limit_queryOptions_targetClassOptions_label___block_invoke;
  v24[3] = &unk_1E826F238;
  limitCopy = limit;
  optionsCopy = options;
  v25 = suggestionCopy;
  v26 = classOptionsCopy;
  v27 = labelCopy;
  v19 = labelCopy;
  v20 = classOptionsCopy;
  v21 = suggestionCopy;
  v22 = [(EMQuery *)self initWithTargetClass:class predicate:predicate sortDescriptors:descriptors builder:v24];

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

- (EMQuery)initWithTargetClass:(Class)class predicate:(id)predicate sortDescriptors:(id)descriptors builder:(id)builder
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  builderCopy = builder;
  if (!predicateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMQuery.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"predicate"}];
  }

  if ([descriptorsCopy count] >= 3)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"EMQuery.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"sortDescriptors.count <= 2"}];

    if (builderCopy)
    {
      goto LABEL_5;
    }
  }

  else if (builderCopy)
  {
    goto LABEL_5;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"EMQuery.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];

LABEL_5:
  v24.receiver = self;
  v24.super_class = EMQuery;
  v14 = [(EMQuery *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_targetClass, class);
    v16 = [predicateCopy copy];
    predicate = v15->_predicate;
    v15->_predicate = v16;

    v18 = [descriptorsCopy copy];
    sortDescriptors = v15->_sortDescriptors;
    v15->_sortDescriptors = v18;

    builderCopy[2](builderCopy, v15);
  }

  return v15;
}

- (EMQuery)queryWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = [(EMQuery *)self queryWithTargetClass:[(EMQuery *)self targetClass] predicate:predicateCopy];

  return v5;
}

- (EMQuery)queryWithTargetClass:(Class)class predicate:(id)predicate
{
  predicateCopy = predicate;
  queryOptions = [(EMQuery *)self queryOptions];
  v8 = [EMQuery alloc];
  sortDescriptors = [(EMQuery *)self sortDescriptors];
  suggestion = [(EMQuery *)self suggestion];
  limit = [(EMQuery *)self limit];
  targetClassOptions = [(EMQuery *)self targetClassOptions];
  label = [(EMQuery *)self label];
  v14 = [(EMQuery *)v8 initWithTargetClass:class predicate:predicateCopy sortDescriptors:sortDescriptors suggestion:suggestion limit:limit queryOptions:queryOptions & 0xFFFFFFFFFFFFDFFDLL targetClassOptions:targetClassOptions label:label];

  return v14;
}

- (EMQuery)queryWithBuilder:(id)builder
{
  builderCopy = builder;
  queryOptions = [(EMQuery *)self queryOptions];
  v6 = [EMQuery alloc];
  targetClass = [(EMQuery *)self targetClass];
  predicate = [(EMQuery *)self predicate];
  sortDescriptors = [(EMQuery *)self sortDescriptors];
  suggestion = [(EMQuery *)self suggestion];
  limit = [(EMQuery *)self limit];
  targetClassOptions = [(EMQuery *)self targetClassOptions];
  label = [(EMQuery *)self label];
  v14 = [(EMQuery *)v6 initWithTargetClass:targetClass predicate:predicate sortDescriptors:sortDescriptors suggestion:suggestion limit:limit queryOptions:queryOptions & 0xFFFFFFFFFFFFDFFDLL targetClassOptions:targetClassOptions label:label];

  builderCopy[2](builderCopy, v14);

  return v14;
}

- (BOOL)isValid
{
  predicate = [(EMQuery *)self predicate];
  v4 = [EMMessageListItemPredicates isValidPredicate:predicate forClass:[(EMQuery *)self targetClass]];

  return v4;
}

- (void)addTargetClassOptions:(id)options
{
  optionsCopy = options;
  targetClassOptions = self->_targetClassOptions;
  v8 = optionsCopy;
  if (targetClassOptions)
  {
    v6 = [(NSDictionary *)targetClassOptions mutableCopy];
    [(NSDictionary *)v6 addEntriesFromDictionary:v8];
  }

  else
  {
    v6 = [optionsCopy copy];
  }

  v7 = self->_targetClassOptions;
  self->_targetClassOptions = v6;
}

- (EMQuery)initWithCoder:(id)coder
{
  v35 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  selfCopy = self;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_targetClass"];
  v5 = NSClassFromString(v4);

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_predicate"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_sortDescriptors"];

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
  v17 = coderCopy;
  v25 = v17;
  v18 = [(EMQuery *)selfCopy initWithTargetClass:v5 predicate:v22 sortDescriptors:v10 builder:v24];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = NSStringFromClass([(EMQuery *)self targetClass]);
  [coderCopy encodeObject:v4 forKey:@"EFPropertyKey_targetClass"];

  predicate = [(EMQuery *)self predicate];
  [coderCopy encodeObject:predicate forKey:@"EFPropertyKey_predicate"];

  sortDescriptors = [(EMQuery *)self sortDescriptors];
  [coderCopy encodeObject:sortDescriptors forKey:@"EFPropertyKey_sortDescriptors"];

  [coderCopy encodeInteger:-[EMQuery limit](self forKey:{"limit"), @"EFPropertyKey_limit"}];
  [coderCopy encodeInteger:-[EMQuery queryOptions](self forKey:{"queryOptions"), @"EFPropertyKey_queryOptions"}];
  targetClassOptions = [(EMQuery *)self targetClassOptions];
  [coderCopy encodeObject:targetClassOptions forKey:@"EFPropertyKey_targetClassOptions"];

  label = [(EMQuery *)self label];
  [coderCopy encodeObject:label forKey:@"EFPropertyKey_label"];

  suggestion = [(EMQuery *)self suggestion];
  [coderCopy encodeObject:suggestion forKey:@"EFPropertyKey_suggestion"];
}

- (NSString)debugDescription
{
  v14 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  label = [(EMQuery *)self label];
  v5 = label;
  if (label)
  {
    v6 = label;
  }

  else
  {
    v6 = &stru_1F45FD218;
  }

  v15 = NSStringFromClass([(EMQuery *)self targetClass]);
  predicate = [(EMQuery *)self predicate];
  v8 = [predicate debugDescription];
  sortDescriptors = [(EMQuery *)self sortDescriptors];
  v10 = [sortDescriptors debugDescription];
  suggestion = [(EMQuery *)self suggestion];
  v12 = [v14 stringWithFormat:@"<%@: %p> %@ \n\tresult class:%@ \n\tpredicate:%@ \n\tsort descriptors:%@ \n\tsuggestion:%@ \n\tqueryOptions:%lu\n\tlimit:%ld", v3, self, v6, v15, v8, v10, suggestion, -[EMQuery queryOptions](self, "queryOptions"), -[EMQuery limit](self, "limit")];

  return v12;
}

- (uint64_t)_isEqualToQuery:(uint64_t)query
{
  v3 = a2;
  if (query)
  {
    targetClass = [query targetClass];
    if (targetClass == [v3 targetClass])
    {
      queryOptions = [query queryOptions];
      if (queryOptions == [v3 queryOptions])
      {
        predicate = [query predicate];
        ef_simplifiedPredicate = [predicate ef_simplifiedPredicate];
        predicate2 = [v3 predicate];
        ef_simplifiedPredicate2 = [predicate2 ef_simplifiedPredicate];
        if (!predicatesAreEqual(ef_simplifiedPredicate, ef_simplifiedPredicate2))
        {
          query = 0;
LABEL_19:

          goto LABEL_12;
        }

        sortDescriptors = [query sortDescriptors];
        sortDescriptors2 = [v3 sortDescriptors];
        if (![sortDescriptors isEqual:sortDescriptors2] || (v12 = objc_msgSend(query, "limit"), v12 != objc_msgSend(v3, "limit")))
        {
          query = 0;
LABEL_18:

          goto LABEL_19;
        }

        suggestion = [query suggestion];
        if (suggestion || ([v3 suggestion], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          suggestion2 = [query suggestion];
          suggestion3 = [v3 suggestion];
          query = [suggestion2 isEqual:suggestion3];

          v15 = suggestion;
          if (suggestion)
          {
LABEL_17:

            goto LABEL_18;
          }
        }

        else
        {
          v18 = 0;
          query = 1;
        }

        v15 = v18;
        goto LABEL_17;
      }
    }

    query = 0;
  }

LABEL_12:

  return query;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(EMQuery *)self _isEqualToQuery:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end