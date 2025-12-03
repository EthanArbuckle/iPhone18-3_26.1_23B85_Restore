@interface OBBundleManager
+ (id)sharedManager;
- (BOOL)_isPreconditionSatisfiedForReplacementBundle:(id)bundle;
- (id)_allLinkBundles;
- (id)_allPrivacyBundles;
- (id)_bundleSearchPath;
- (id)_bundlesInSearchPath:(id)path withBundleCreationBlock:(id)block;
- (id)_subarrayHavingPreconditionSatisfiedOfReplacementBundles:(id)bundles;
- (id)allBundles;
- (id)allReplacementBundles;
- (id)bundleWithIdentifier:(id)identifier;
- (id)bundlesWithIdentifiers:(id)identifiers;
- (id)orderedPrivacyBundlesWithInclusionOptions:(unint64_t)options;
- (id)privacyLinkBundleForBundles:(id)bundles;
- (id)privacyLinkBundleForIdentifiers:(id)identifiers;
- (void)_modifyBundles:(id)bundles asNecessaryWithReplacementBundles:(id)replacementBundles;
@end

@implementation OBBundleManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[OBBundleManager sharedManager];
  }

  v3 = sharedManager_sharedInstance;

  return v3;
}

uint64_t __32__OBBundleManager_sharedManager__block_invoke()
{
  sharedManager_sharedInstance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)allReplacementBundles
{
  _bundleSearchPath = [(OBBundleManager *)self _bundleSearchPath];
  v4 = [_bundleSearchPath stringByAppendingPathComponent:@"ReplacementBundles"];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__OBBundleManager_allReplacementBundles__block_invoke;
  v8[3] = &unk_1E7C15750;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(OBBundleManager *)self _bundlesInSearchPath:v5 withBundleCreationBlock:v8];

  return v6;
}

- (id)_bundleSearchPath
{
  overrideBundleSearchPath = [(OBBundleManager *)self overrideBundleSearchPath];

  if (overrideBundleSearchPath)
  {
    overrideBundleSearchPath2 = [(OBBundleManager *)self overrideBundleSearchPath];
  }

  else
  {
    overrideBundleSearchPath2 = @"/System/Library/OnBoardingBundles";
  }

  return overrideBundleSearchPath2;
}

- (id)allBundles
{
  v38 = *MEMORY[0x1E69E9840];
  v29 = objc_opt_new();
  _bundleSearchPath = [(OBBundleManager *)self _bundleSearchPath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v34 = 0;
  v28 = _bundleSearchPath;
  v5 = [defaultManager contentsOfDirectoryAtPath:_bundleSearchPath error:&v34];
  v6 = v34;

  if (v6)
  {
    v7 = _OBLoggingFacility();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 138412290;
    v37 = v6;
    v8 = "OBPrivacy: Error getting bundles list: %@";
    v9 = v7;
    v10 = 12;
    goto LABEL_4;
  }

  if ([v5 count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = v5;
    v11 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v26 = v5;
      v27 = 0;
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          pathExtension = [v15 pathExtension];
          lowercaseString = [pathExtension lowercaseString];
          v18 = [lowercaseString isEqualToString:@"bundle"];

          if (v18)
          {
            _providersByBundleNames = [(OBBundleManager *)self _providersByBundleNames];
            v20 = [_providersByBundleNames objectForKeyedSubscript:v15];
            path = [v20 path];

            if (path)
            {
              v22 = _OBLoggingFacility();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v37 = path;
                _os_log_impl(&dword_1B4FB6000, v22, OS_LOG_TYPE_DEFAULT, "OBPrivacy: Using bundle path %@", buf, 0xCu);
              }
            }

            else
            {
              path = [v28 stringByAppendingPathComponent:v15];
            }

            v23 = [OBBundle bundleAtPath:path];
            [v29 addObject:v23];
          }
        }

        v12 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v12);
      v5 = v26;
      v6 = v27;
    }
  }

  else
  {
    v7 = _OBLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "OBPrivacy: No bundles";
      v9 = v7;
      v10 = 2;
LABEL_4:
      _os_log_impl(&dword_1B4FB6000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }
  }

LABEL_23:

  v24 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)_allPrivacyBundles
{
  allBundles = [(OBBundleManager *)self allBundles];
  v3 = [allBundles mutableCopy];

  v4 = [v3 count];
  if (v4 - 1 >= 0)
  {
    v5 = v4;
    do
    {
      v6 = [v3 objectAtIndexedSubscript:--v5];
      privacyFlow = [v6 privacyFlow];

      if (!privacyFlow)
      {
        [v3 removeObjectAtIndex:v5];
      }
    }

    while (v5 > 0);
  }

  return v3;
}

- (id)orderedPrivacyBundlesWithInclusionOptions:(unint64_t)options
{
  optionsCopy = options;
  _allPrivacyBundles = [(OBBundleManager *)self _allPrivacyBundles];
  v6 = [_allPrivacyBundles count];
  if (v6 - 1 >= 0)
  {
    v7 = v6;
    do
    {
      v8 = [_allPrivacyBundles objectAtIndexedSubscript:--v7];
      identifier = [v8 identifier];
      if ([identifier isEqualToString:@"com.apple.onboarding.privacypane"])
      {
      }

      else
      {
        identifier2 = [v8 identifier];
        v11 = [identifier2 isEqualToString:@"com.apple.onboarding.privacypanemini"];

        if (!v11)
        {
          if (optionsCopy)
          {
            goto LABEL_8;
          }

LABEL_7:
          [_allPrivacyBundles removeObjectAtIndex:v7];
          goto LABEL_8;
        }
      }

      if ((optionsCopy & 2) == 0)
      {
        goto LABEL_7;
      }

LABEL_8:
    }

    while (v7 > 0);
  }

  if ((optionsCopy & 0x10) != 0)
  {
    _allLinkBundles = [(OBBundleManager *)self _allLinkBundles];
    [_allPrivacyBundles addObjectsFromArray:_allLinkBundles];

    if ((optionsCopy & 4) == 0)
    {
LABEL_14:
      if ((optionsCopy & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  else if ((optionsCopy & 4) == 0)
  {
    goto LABEL_14;
  }

  allReplacementBundles = [(OBBundleManager *)self allReplacementBundles];
  [_allPrivacyBundles addObjectsFromArray:allReplacementBundles];

  if ((optionsCopy & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  allReplacementBundles2 = [(OBBundleManager *)self allReplacementBundles];
  v15 = [(OBBundleManager *)self _subarrayHavingPreconditionSatisfiedOfReplacementBundles:allReplacementBundles2];

  if ([v15 count])
  {
    [(OBBundleManager *)self _modifyBundles:_allPrivacyBundles asNecessaryWithReplacementBundles:v15];
  }

LABEL_21:
  [_allPrivacyBundles sortUsingComparator:&__block_literal_global_16];

  return _allPrivacyBundles;
}

uint64_t __61__OBBundleManager_orderedPrivacyBundlesWithInclusionOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 privacyFlow];
  v6 = [v5 localizedShortTitle];
  v7 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [v4 privacyFlow];

  v10 = [v9 localizedShortTitle];
  v11 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  v12 = [v10 stringByTrimmingCharactersInSet:v11];

  v13 = [v8 localizedCompare:v12];
  return v13;
}

- (id)bundlesWithIdentifiers:(id)identifiers
{
  v41 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  allReplacementBundles = [(OBBundleManager *)self allReplacementBundles];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = allReplacementBundles;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        identifier = [*(*(&v33 + 1) + 8 * i) identifier];
        [v6 addObject:identifier];
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v9);
  }

  v27 = v7;
  v26 = [(OBBundleManager *)self _subarrayHavingPreconditionSatisfiedOfReplacementBundles:v7];
  v13 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = identifiersCopy;
  v14 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v29 + 1) + 8 * j);
        if ([v6 containsObject:{v18, v26}])
        {
          v19 = _OBLoggingFacility();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v38 = v18;
            _os_log_impl(&dword_1B4FB6000, v19, OS_LOG_TYPE_DEFAULT, "OBPrivacy: Client directly requested placeholder bundle %@", buf, 0xCu);
          }

          _bundleSearchPath = [(OBBundleManager *)self _bundleSearchPath];
          v21 = [_bundleSearchPath stringByAppendingPathComponent:@"ReplacementBundles"];
          v22 = [(OBBundleManager *)self _bundleWithIdentifier:v18 usingSearchPath:v21 includePlaceholder:0 isLinkBundle:0 isReplacementBundle:1];

          if (v22)
          {
            goto LABEL_18;
          }
        }

        _bundleSearchPath2 = [(OBBundleManager *)self _bundleSearchPath];
        v22 = [(OBBundleManager *)self _bundleWithIdentifier:v18 usingSearchPath:_bundleSearchPath2 includePlaceholder:1 isLinkBundle:0 isReplacementBundle:0];

        if (v22)
        {
LABEL_18:
          [v13 addObject:v22];
        }
      }

      v15 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v15);
  }

  if ([v26 count])
  {
    [(OBBundleManager *)self _modifyBundles:v13 asNecessaryWithReplacementBundles:v26];
  }

  v24 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)bundleWithIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = MEMORY[0x1E695DEC8];
  identifierCopy2 = identifier;
  v6 = [v4 arrayWithObjects:&identifierCopy count:1];

  v7 = [(OBBundleManager *)self bundlesWithIdentifiers:v6, identifierCopy, v12];

  firstObject = [v7 firstObject];

  v9 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (id)_bundlesInSearchPath:(id)path withBundleCreationBlock:(id)block
{
  v36 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  blockCopy = block;
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v30 = 0;
  v7 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:&v30];
  v8 = v30;

  if (v8)
  {
    v9 = _OBLoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      lastPathComponent = [pathCopy lastPathComponent];
      *buf = 138412546;
      v33 = lastPathComponent;
      v34 = 2112;
      v35 = v8;
      _os_log_impl(&dword_1B4FB6000, v9, OS_LOG_TYPE_DEFAULT, "OBPrivacy: Failed to get contents of %@ directory: %@", buf, 0x16u);
    }
  }

  else
  {
    if (![v7 count])
    {
      goto LABEL_16;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v7;
    v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v23 = pathCopy;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          pathExtension = [v15 pathExtension];
          lowercaseString = [pathExtension lowercaseString];
          v18 = [lowercaseString isEqualToString:@"bundle"];

          if (v18)
          {
            stringByDeletingPathExtension = [v15 stringByDeletingPathExtension];
            v20 = blockCopy[2](blockCopy, stringByDeletingPathExtension);
            [v24 addObject:v20];
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v12);
      pathCopy = v23;
      v8 = 0;
    }
  }

LABEL_16:
  v21 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)privacyLinkBundleForBundles:(id)bundles
{
  v23 = *MEMORY[0x1E69E9840];
  bundlesCopy = bundles;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = bundlesCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        identifier = [*(*(&v18 + 1) + 8 * i) identifier];
        [v5 addObject:identifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v12 = [(OBBundleManager *)self privacyLinkBundleForIdentifiers:v5];
  v13 = v12;
  if (v12)
  {
    firstObject = v12;
  }

  else
  {
    firstObject = [v6 firstObject];
  }

  v15 = firstObject;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)privacyLinkBundleForIdentifiers:(id)identifiers
{
  v24 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy count] < 2)
  {
    v16 = 0;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = identifiersCopy;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [OBBundle nameFromIdentifier:*(*(&v19 + 1) + 8 * i), v19];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    [v5 sortUsingComparator:&__block_literal_global_34];
    v12 = [v5 componentsJoinedByString:@"."];
    v13 = [OBBundle identifierWithName:v12];
    _bundleSearchPath = [(OBBundleManager *)self _bundleSearchPath];
    v15 = [_bundleSearchPath stringByAppendingPathComponent:@"LinkBundles"];

    v16 = [(OBBundleManager *)self _bundleWithIdentifier:v13 usingSearchPath:v15 includePlaceholder:0 isLinkBundle:1 isReplacementBundle:0];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_allLinkBundles
{
  _bundleSearchPath = [(OBBundleManager *)self _bundleSearchPath];
  v4 = [_bundleSearchPath stringByAppendingPathComponent:@"LinkBundles"];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__OBBundleManager__allLinkBundles__block_invoke;
  v8[3] = &unk_1E7C15750;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(OBBundleManager *)self _bundlesInSearchPath:v5 withBundleCreationBlock:v8];

  return v6;
}

- (id)_subarrayHavingPreconditionSatisfiedOfReplacementBundles:(id)bundles
{
  v19 = *MEMORY[0x1E69E9840];
  bundlesCopy = bundles;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = bundlesCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(OBBundleManager *)self _isPreconditionSatisfiedForReplacementBundle:v11, v14])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)_isPreconditionSatisfiedForReplacementBundle:(id)bundle
{
  bundleCopy = bundle;
  replacementPreconditionCache = [bundleCopy replacementPreconditionCache];
  v5 = [replacementPreconditionCache isEqualToString:@"chlorine"];

  if (!v5)
  {
    v9 = MEMORY[0x1E696AEC0];
    identifier = [bundleCopy identifier];
    replacementPreconditionCache2 = [bundleCopy replacementPreconditionCache];
    v12 = [v9 stringWithFormat:@"Replacement bundle %@ has unsupported precondition %@", identifier, replacementPreconditionCache2];

    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v12 userInfo:0];
    objc_exception_throw(v13);
  }

  v6 = +[OBCapabilities sharedCapabilities];
  eligibleForChlorine = [v6 eligibleForChlorine];

  return eligibleForChlorine;
}

- (void)_modifyBundles:(id)bundles asNecessaryWithReplacementBundles:(id)replacementBundles
{
  v84 = *MEMORY[0x1E69E9840];
  bundlesCopy = bundles;
  replacementBundlesCopy = replacementBundles;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = bundlesCopy;
  v8 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v75;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v75 != v10)
        {
          objc_enumerationMutation(obj);
        }

        identifier = [*(*(&v74 + 1) + 8 * i) identifier];
        [v7 addObject:identifier];
      }

      v9 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v9);
  }

  v52 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v53 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v46 = replacementBundlesCopy;
  v13 = [v46 countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v71;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v71 != v15)
        {
          objc_enumerationMutation(v46);
        }

        v17 = *(*(&v70 + 1) + 8 * j);
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        replaceeIdentifierSetsCache = [v17 replaceeIdentifierSetsCache];
        v19 = [replaceeIdentifierSetsCache countByEnumeratingWithState:&v66 objects:v81 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v67;
          do
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v67 != v21)
              {
                objc_enumerationMutation(replaceeIdentifierSetsCache);
              }

              v23 = *(*(&v66 + 1) + 8 * k);
              if ([v23 isSubsetOfSet:v7])
              {
                [v52 unionSet:v23];
                [v53 addObject:v17];
              }
            }

            v20 = [replaceeIdentifierSetsCache countByEnumeratingWithState:&v66 objects:v81 count:16];
          }

          while (v20);
        }
      }

      v14 = [v46 countByEnumeratingWithState:&v70 objects:v82 count:16];
    }

    while (v14);
  }

  if ([v53 count])
  {
    v24 = [obj copy];
    [obj removeAllObjects];
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v45 = v24;
    v25 = [v45 countByEnumeratingWithState:&v62 objects:v80 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v63;
      v43 = *v63;
      do
      {
        v28 = 0;
        v44 = v26;
        do
        {
          if (*v63 != v27)
          {
            objc_enumerationMutation(v45);
          }

          v29 = *(*(&v62 + 1) + 8 * v28);
          identifier2 = [v29 identifier];
          v31 = [v52 containsObject:identifier2];

          if (v31)
          {
            v47 = v28;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v48 = [v53 copy];
            v51 = [v48 countByEnumeratingWithState:&v58 objects:v79 count:16];
            if (v51)
            {
              v50 = *v59;
              do
              {
                for (m = 0; m != v51; ++m)
                {
                  if (*v59 != v50)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v33 = *(*(&v58 + 1) + 8 * m);
                  v54 = 0u;
                  v55 = 0u;
                  v56 = 0u;
                  v57 = 0u;
                  replaceeIdentifierSetsCache2 = [v33 replaceeIdentifierSetsCache];
                  v35 = [replaceeIdentifierSetsCache2 countByEnumeratingWithState:&v54 objects:v78 count:16];
                  if (v35)
                  {
                    v36 = v35;
                    v37 = *v55;
                    do
                    {
                      for (n = 0; n != v36; ++n)
                      {
                        if (*v55 != v37)
                        {
                          objc_enumerationMutation(replaceeIdentifierSetsCache2);
                        }

                        v39 = *(*(&v54 + 1) + 8 * n);
                        identifier3 = [v29 identifier];
                        if ([v39 containsObject:identifier3])
                        {
                          v41 = [v39 isSubsetOfSet:v7];

                          if (v41)
                          {
                            [obj addObject:v33];
                            [v53 removeObject:v33];
                            goto LABEL_47;
                          }
                        }

                        else
                        {
                        }
                      }

                      v36 = [replaceeIdentifierSetsCache2 countByEnumeratingWithState:&v54 objects:v78 count:16];
                    }

                    while (v36);
                  }

LABEL_47:
                }

                v51 = [v48 countByEnumeratingWithState:&v58 objects:v79 count:16];
              }

              while (v51);
            }

            v27 = v43;
            v26 = v44;
            v28 = v47;
          }

          else
          {
            [obj addObject:v29];
          }

          ++v28;
        }

        while (v28 != v26);
        v26 = [v45 countByEnumeratingWithState:&v62 objects:v80 count:16];
      }

      while (v26);
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

@end