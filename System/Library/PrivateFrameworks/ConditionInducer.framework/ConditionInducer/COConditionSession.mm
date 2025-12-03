@interface COConditionSession
+ (BOOL)conditionIsBundledWithFramework:(id)framework;
+ (BOOL)tearDownAllConditionsWithErrors:(id *)errors;
+ (BOOL)updateConditionCache:(BOOL)cache forCondition:(id)condition additionalArguments:(id)arguments conditionBundle:(id)bundle error:(id *)error;
+ (BOOL)writeConditionCache:(id)cache toFileDescriptor:(int)descriptor error:(id *)error;
+ (id)_loadExternalConditionBundleInfo:(id)info supportedConditionData:(id)data error:(id *)error;
+ (id)bundleToDict:(id)dict;
+ (id)conditionsBundledWithFramework;
+ (id)findBundleURLForConditionClass:(id)class andError:(id *)error;
+ (id)getActiveConditions;
+ (id)getBootSessionUUID;
+ (id)getBundleURLsAtPath:(id)path;
+ (id)listAvailableConditions;
+ (id)loadConditionCacheWithError:(id *)error;
+ (id)loadInformationDict;
+ (id)prepareInfoDictForBuiltInCondition:(id)condition error:(id *)error;
+ (id)removeStaleConditions:(id)conditions;
+ (void)conditionsBundledWithFramework;
+ (void)getActiveConditions;
+ (void)listAvailableConditions;
+ (void)loadInformationDict;
+ (void)logSignpostWithConditionStates;
- (BOOL)_setupBundleAtPath:(id)path withError:(id *)error;
- (BOOL)createStatusBar:(id)bar conditionClassDescription:(id)description withProfileDescription:(id)profileDescription error:(id *)error;
- (BOOL)hasActiveCondition;
- (BOOL)loadBundleWithPath:(id)path andError:(id *)error;
- (BOOL)loadProfileForBundle:(id)bundle withError:(id *)error;
- (BOOL)setUpWithError:(id *)error;
- (BOOL)startConditionWithCallback:(id)callback teardownStartedCallback:(id)startedCallback teardownFinishedCallback:(id)finishedCallback;
- (BOOL)stopConditionWithCallback:(id)callback;
- (BOOL)tearDownWithError:(id *)error;
- (COConditionSession)initWithConditionIdentifier:(id)identifier profile:(id)profile additionalArgs:(id)args;
- (id)className;
- (id)copyLoadedConditionClassName;
- (id)userFriendlyNameForSelectedCondition;
- (id)userFriendlyNameForSelectedProfile;
- (void)dealloc;
- (void)userFriendlyNameForSelectedCondition;
- (void)userFriendlyNameForSelectedProfile;
@end

@implementation COConditionSession

- (id)userFriendlyNameForSelectedCondition
{
  selectedCondition = [(COConditionSession *)self selectedCondition];

  if (selectedCondition)
  {
    selectedCondition2 = [(COConditionSession *)self selectedCondition];
    v5 = [COConditionSession conditionIsBundledWithFramework:selectedCondition2];

    if (v5)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      infoDictionary = [v6 infoDictionary];

      v8 = [infoDictionary objectForKey:@"SupportedConditionData"];
      selectedCondition3 = [(COConditionSession *)self selectedCondition];
      v10 = [v8 objectForKey:selectedCondition3];
      v11 = [v10 objectForKey:@"Metadata"];
      v12 = [v11 objectForKey:@"ConditionUserFriendlyName"];

      v13 = 0;
      if (v12)
      {
        goto LABEL_13;
      }

LABEL_9:
      v12 = NSStringFromClass(v13);
      goto LABEL_13;
    }

    selectedCondition4 = [(COConditionSession *)self selectedCondition];
    v13 = NSClassFromString(selectedCondition4);

    if (v13)
    {
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:v13];
      infoDictionary = [v15 infoDictionary];

      v12 = [infoDictionary objectForKey:@"ConditionUserFriendlyName"];
      if (v12)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(COConditionSession *)self userFriendlyNameForSelectedCondition];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [COConditionSession userFriendlyNameForSelectedCondition];
  }

  infoDictionary = 0;
  v12 = 0;
LABEL_13:

  return v12;
}

- (id)userFriendlyNameForSelectedProfile
{
  selectedProfile = [(COConditionSession *)self selectedProfile];

  if (selectedProfile)
  {
    selectedProfile2 = [(COConditionSession *)self selectedProfile];
    v5 = NSClassFromString(selectedProfile2);

    if (v5)
    {
      if (objc_opt_respondsToSelector())
      {
        [(objc_class *)v5 profileFriendlyName];
      }

      else
      {
        NSStringFromClass(v5);
      }
      v6 = ;
      goto LABEL_12;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(COConditionSession *)self userFriendlyNameForSelectedProfile];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [COConditionSession userFriendlyNameForSelectedProfile];
  }

  v6 = 0;
LABEL_12:

  return v6;
}

+ (id)_loadExternalConditionBundleInfo:(id)info supportedConditionData:(id)data error:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dataCopy = data;
  v62 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [dataCopy objectForKey:infoCopy];
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v10)
  {
    createConditionInducerError("+[COConditionSession _loadExternalConditionBundleInfo:supportedConditionData:error:]", 174, -1, 0, @"No class information dict found in Info.plist %s for condition %@", v11, v12, v13, "SupportedConditionData");
    goto LABEL_27;
  }

  v63 = [v10 objectForKey:@"Profiles"];
  if (!v63)
  {
    createConditionInducerError("+[COConditionSession _loadExternalConditionBundleInfo:supportedConditionData:error:]", 180, -1, 0, @"Class information dictionary containing supported profiles for not found for condition %@", v14, v15, v16, infoCopy);
    v50 = LABEL_27:;
    v24 = 0;
    v20 = 0;
    v63 = 0;
    if (!error)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v20 = [v10 objectForKey:@"Metadata"];
  if (!v20)
  {
    createConditionInducerError("+[COConditionSession _loadExternalConditionBundleInfo:supportedConditionData:error:]", 186, -1, 0, @"Class information dictionary containing condition metadata for not found for condition %@", v17, v18, v19, infoCopy);
    goto LABEL_31;
  }

  if (![v63 count])
  {
    createConditionInducerError("+[COConditionSession _loadExternalConditionBundleInfo:supportedConditionData:error:]", 192, -1, 0, @"Expected at least one supported profile for %@", v21, v22, v23, infoCopy);
    v50 = LABEL_31:;
    v24 = 0;
    if (!error)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v24 = [v63 objectAtIndexedSubscript:0];
  v25 = NSClassFromString(v24);
  if (v25)
  {
    v29 = objc_alloc_init(v25);
    if (v29)
    {
      v33 = v29;
      v34 = [v29 userFriendlyNameFromDict:v20];
      if (v34)
      {
        [v9 setObject:v34 forKey:@"ConditionUserFriendlyName"];
      }

      v55 = v34;
      v56 = v24;
      v58 = v10;
      v60 = dataCopy;
      v35 = [v33 identifierNameFromDict:v20];
      if (v35)
      {
        [v9 setObject:v35 forKey:@"ConditionIdentifierName"];
      }

      v54 = v35;
      v36 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v33, "isDestructiveFromDict:", v20)}];
      [v9 setObject:v36 forKey:@"ConditionIsDestructive"];

      v37 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v33, "isInternalOnlyFromDict:", v20)}];
      [v9 setObject:v37 forKey:@"ConditionIsInternalOnly"];

      v57 = v20;
      v38 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v33, "persistsAfterRebootFromDict:", v20)}];
      v59 = v9;
      [v9 setObject:v38 forKey:@"ConditionPersistsAfterReboot"];

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v39 = v63;
      v40 = [v39 countByEnumeratingWithState:&v64 objects:v68 count:16];
      v63 = v39;
      if (v40)
      {
        v41 = v40;
        v42 = *v65;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v65 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v64 + 1) + 8 * i);
            v45 = NSClassFromString(v44);
            if (v45)
            {
              v46 = v45;
              if ((![infoCopy isEqualToString:@"ThermalCondition"] || !-[NSString isEqualToString:](v44, "isEqualToString:", @"ThermalNominal")) && (!objc_msgSend(infoCopy, "isEqualToString:", @"GPUPerformanceState") || !-[NSString isEqualToString:](v44, "isEqualToString:", @"GPUPerformanceStateDefault")))
              {
                v47 = MEMORY[0x277CBEB38];
                info = [(objc_class *)v46 info];
                v49 = [v47 dictionaryWithDictionary:info];

                [v49 setValue:v44 forKey:@"ConditionBundleProfile"];
                [v62 setValue:v49 forKey:v44];
                [v61 addObject:v49];

                v39 = v63;
              }
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v64 objects:v68 count:16];
        }

        while (v41);
      }

      v9 = v59;
      [v59 setObject:v61 forKey:@"ConditionBundleArray"];
      [v59 setObject:v62 forKey:@"ConditionBundleDict"];
      [v59 setObject:infoCopy forKey:@"ConditionCacheBundlePath"];

      v50 = 0;
      dataCopy = v60;
      v20 = v57;
      v10 = v58;
      v24 = v56;
      goto LABEL_38;
    }

    createConditionInducerError("+[COConditionSession _loadExternalConditionBundleInfo:supportedConditionData:error:]", 203, -1, 0, @"Failed to allocate instance of %@ for condition %@", v30, v31, v32, v24);
  }

  else
  {
    createConditionInducerError("+[COConditionSession _loadExternalConditionBundleInfo:supportedConditionData:error:]", 198, -1, 0, @"Failed to instantiate principal class %@ for condition %@", v26, v27, v28, v24);
  }
  v50 = ;
  if (!error)
  {
    goto LABEL_38;
  }

LABEL_36:
  if (v50)
  {
    v51 = v50;
    *error = v50;
  }

LABEL_38:

  v52 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)setUpWithError:(id *)error
{
  condition = [(COConditionSession *)self condition];

  if (!condition)
  {
    v31 = createConditionInducerError("[COConditionSession setUpWithError:]", 261, -1, 0, @"Need a valid condition first", v6, v7, v8, v43);
    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  condition = [(COConditionSession *)self userFriendlyNameForSelectedProfile];
  if (!condition)
  {
    condition = [(COConditionSession *)self selectedProfile];
  }

  userFriendlyNameForSelectedCondition = [(COConditionSession *)self userFriendlyNameForSelectedCondition];
  v46 = 0;
  v10 = [(COConditionSession *)self createStatusBar:@"setting up" conditionClassDescription:userFriendlyNameForSelectedCondition withProfileDescription:condition error:&v46];
  v11 = v46;

  if (!v10)
  {
    v31 = createConditionInducerError("[COConditionSession setUpWithError:]", 272, -1, v11, @"Failed to create status bar with title 'Setup'.", v12, v13, v14, v43);

    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  condition2 = [(COConditionSession *)self condition];
  active = [condition2 active];

  if (active)
  {
    condition3 = [(COConditionSession *)self condition];
    [condition3 tearDown];
  }

  additionalArguments = [(COConditionSession *)self additionalArguments];
  condition4 = [(COConditionSession *)self condition];
  [condition4 setAdditionalArguments:additionalArguments];

  condition5 = [(COConditionSession *)self condition];
  additionalArguments2 = [(COConditionSession *)self additionalArguments];
  bundle = [(COConditionSession *)self bundle];
  v45 = v11;
  LOBYTE(additionalArguments) = [COConditionSession updateConditionCache:1 forCondition:condition5 additionalArguments:additionalArguments2 conditionBundle:bundle error:&v45];
  v23 = v45;

  if ((additionalArguments & 1) == 0)
  {
    v36 = @"Failed to update cache.";
    v37 = 284;
    v38 = v23;
    goto LABEL_17;
  }

  condition6 = [(COConditionSession *)self condition];
  setUp = [condition6 setUp];

  if ((setUp & 1) == 0)
  {
    v36 = @"Failed to set up condition.";
    v37 = 289;
    v38 = 0;
LABEL_17:
    v31 = createConditionInducerError("[COConditionSession setUpWithError:]", v37, -1, v38, v36, v24, v25, v26, v43);

    if (!error)
    {
LABEL_19:
      userFriendlyNameForSelectedCondition2 = [(COConditionSession *)self userFriendlyNameForSelectedCondition];
      [(COConditionSession *)self createStatusBar:@"tearing down" conditionClassDescription:userFriendlyNameForSelectedCondition2 withProfileDescription:condition error:0];

      [(COConditionSession *)self tearDownWithError:0];
      v35 = 0;
      goto LABEL_20;
    }

LABEL_18:
    v39 = v31;
    *error = v31;
    goto LABEL_19;
  }

  userFriendlyNameForSelectedCondition3 = [(COConditionSession *)self userFriendlyNameForSelectedCondition];
  v44 = v23;
  v30 = [(COConditionSession *)self createStatusBar:@"running" conditionClassDescription:userFriendlyNameForSelectedCondition3 withProfileDescription:condition error:&v44];
  v31 = v44;

  if (!v30)
  {
    v42 = createConditionInducerError("[COConditionSession setUpWithError:]", 294, -1, v31, @"Failed to create status bar with title 'Running'.", v32, v33, v34, v43);

    v31 = v42;
    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v35 = 1;
LABEL_20:

  return v35;
}

- (BOOL)tearDownWithError:(id *)error
{
  userFriendlyNameForSelectedProfile = [(COConditionSession *)self userFriendlyNameForSelectedProfile];
  condition = [(COConditionSession *)self condition];

  if (condition)
  {
    if (!userFriendlyNameForSelectedProfile)
    {
      userFriendlyNameForSelectedProfile = [(COConditionSession *)self selectedProfile];
    }

    userFriendlyNameForSelectedCondition = [(COConditionSession *)self userFriendlyNameForSelectedCondition];
    v11 = [(COConditionSession *)self createStatusBar:@"tearing down" conditionClassDescription:userFriendlyNameForSelectedCondition withProfileDescription:userFriendlyNameForSelectedProfile error:error];

    if (v11)
    {
      condition2 = [(COConditionSession *)self condition];
      [condition2 tearDown];

      condition3 = [(COConditionSession *)self condition];
      additionalArguments = [(COConditionSession *)self additionalArguments];
      bundle = [(COConditionSession *)self bundle];
      [COConditionSession updateConditionCache:0 forCondition:condition3 additionalArguments:additionalArguments conditionBundle:bundle error:0];

      [(COConditionSession *)self freeStatusBar];
      v16 = 0;
      v17 = 1;
      goto LABEL_11;
    }

    v18 = @"Failed to create status bar with title 'Teardown'";
    v19 = 331;
    v20 = -1;
  }

  else
  {
    v18 = @"Condition not running.";
    v19 = 321;
    v20 = -10;
  }

  v21 = createConditionInducerError("[COConditionSession tearDownWithError:]", v19, v20, 0, v18, v7, v8, v9, v24);
  v16 = v21;
  if (error)
  {
    v22 = v21;
    v17 = 0;
    *error = v16;
  }

  else
  {
    v17 = 0;
  }

LABEL_11:

  return v17;
}

- (id)className
{
  condition = [(COConditionSession *)self condition];
  if (condition)
  {
    condition2 = [(COConditionSession *)self condition];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getBundleURLsAtPath:(id)path
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v23[0] = *MEMORY[0x277CBE868];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v6 = [defaultManager contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:v5 options:7 error:0];

  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        pathExtension = [v13 pathExtension];
        v15 = pathExtension;
        if (pathExtension && ![pathExtension caseInsensitiveCompare:@"bundle"])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)bundleToDict:(id)dict
{
  v45 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  if (dictCopy)
  {
    v4 = [[COConditionBundle alloc] initWithURL:dictCopy];
    v5 = v4;
    if (v4)
    {
      v43 = 0;
      v6 = [(COConditionBundle *)v4 loadAndReturnError:&v43];
      v7 = v43;
      v8 = v7;
      if (v6)
      {
        v35 = v7;
        v38 = dictCopy;
        v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v10 = objc_alloc(MEMORY[0x277CBEB18]);
        conditions = [(COConditionBundle *)v5 conditions];
        v12 = [v10 initWithCapacity:{objc_msgSend(conditions, "count")}];

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = v5;
        conditions2 = [(COConditionBundle *)v5 conditions];
        v14 = [conditions2 countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v40;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v40 != v16)
              {
                objc_enumerationMutation(conditions2);
              }

              v18 = *(*(&v39 + 1) + 8 * i);
              v19 = MEMORY[0x277CBEB38];
              info = [v18 info];
              v21 = [v19 dictionaryWithDictionary:info];

              v22 = NSStringFromClass(v18);
              [v21 setValue:v22 forKey:@"ConditionBundleProfile"];

              [v12 addObject:v21];
              v23 = NSStringFromClass(v18);
              [v9 setValue:v21 forKey:v23];
            }

            v15 = [conditions2 countByEnumeratingWithState:&v39 objects:v44 count:16];
          }

          while (v15);
        }

        v24 = v36;
        [v36 setObject:v12 forKey:@"ConditionBundleArray"];
        v5 = v37;
        principalClass = [(COConditionBundle *)v37 principalClass];
        if (principalClass)
        {
          v26 = objc_alloc_init(principalClass);
          userFriendlyName = [v26 userFriendlyName];
          if (userFriendlyName)
          {
            [v36 setObject:userFriendlyName forKey:@"ConditionUserFriendlyName"];
          }

          identifierName = [v26 identifierName];
          if (identifierName)
          {
            [v36 setObject:identifierName forKey:@"ConditionIdentifierName"];
          }

          v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v26, "isDestructive")}];
          [v36 setObject:v29 forKey:@"ConditionIsDestructive"];

          v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v26, "isInternalOnly")}];
          [v36 setObject:v30 forKey:@"ConditionIsInternalOnly"];

          v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v26, "persistsAfterReboot")}];
          [v36 setObject:v31 forKey:@"ConditionPersistsAfterReboot"];

          dictCopy = v38;
          v32 = v35;
        }

        else
        {
          dictCopy = v38;
          v32 = v35;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            +[COConditionSession bundleToDict:];
          }
        }

        [v36 setObject:v9 forKey:{@"ConditionBundleDict", v35}];

        goto LABEL_29;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [(COConditionSession *)dictCopy bundleToDict:v8];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [COConditionSession bundleToDict:dictCopy];
    }

    v24 = 0;
LABEL_29:

    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[COConditionSession bundleToDict:];
  }

  v24 = 0;
LABEL_30:

  v33 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)loadProfileForBundle:(id)bundle withError:(id *)error
{
  bundleCopy = bundle;
  bundle = [(COConditionSession *)self bundle];

  if (bundle)
  {
    bundle2 = [(COConditionSession *)self bundle];
    v12 = [bundle2 classNamed:bundleCopy];

    if (v12)
    {
      v16 = objc_alloc_init(v12);
      [(COConditionSession *)self setCondition:v16];

      condition = [(COConditionSession *)self condition];

      if (condition)
      {
        v21 = 0;
        v22 = 1;
        goto LABEL_11;
      }

      createConditionInducerError("[COConditionSession loadProfileForBundle:withError:]", 448, -1, 0, @"Failed to instantiate %@", v18, v19, v20, bundleCopy);
    }

    else
    {
      createConditionInducerError("[COConditionSession loadProfileForBundle:withError:]", 442, -1, 0, @"Failed to load class %@", v13, v14, v15, bundleCopy);
    }
  }

  else
  {
    createConditionInducerError("[COConditionSession loadProfileForBundle:withError:]", 436, -1, 0, @"No bundle loaded for %@", v8, v9, v10, bundleCopy);
  }
  v21 = ;
  if (error)
  {
    v21 = v21;
    v22 = 0;
    *error = v21;
  }

  else
  {
    v22 = 0;
  }

LABEL_11:

  return v22;
}

- (BOOL)_setupBundleAtPath:(id)path withError:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (!pathCopy)
  {
    v21 = @"Must supply valid bundle URL to loadBundle";
    v22 = 469;
    goto LABEL_11;
  }

  v10 = [[COConditionBundle alloc] initWithURL:pathCopy];
  [(COConditionSession *)self setBundle:v10];

  bundle = [(COConditionSession *)self bundle];

  if (!bundle)
  {
    path = [pathCopy path];
    v27 = createConditionInducerError("[COConditionSession _setupBundleAtPath:withError:]", 475, -1, 0, @"Failed to initialize bundle for %@.", v24, v25, v26, path);

    if (error)
    {
LABEL_12:
      v29 = v27;
      v28 = 0;
      *error = v27;
      goto LABEL_23;
    }

LABEL_9:
    v28 = 0;
    goto LABEL_23;
  }

  bundle2 = [(COConditionSession *)self bundle];
  v13 = [bundle2 loadAndReturnError:error];

  if ((v13 & 1) == 0)
  {
    v21 = @"Failed to load bundle.";
    v22 = 480;
LABEL_11:
    v27 = createConditionInducerError("[COConditionSession _setupBundleAtPath:withError:]", v22, -1, 0, v21, v6, v7, v8, v43);
    if (error)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  bundle3 = [(COConditionSession *)self bundle];
  v15 = [bundle3 objectForInfoDictionaryKey:@"ProhibitOnCarryDevice"];
  [(COConditionSession *)self setWarning:v15];

  warning = [(COConditionSession *)self warning];

  if (!warning)
  {
    v20 = @"Danger! - This condition has potential to corrupt user data";
    selfCopy2 = self;
    goto LABEL_14;
  }

  warning2 = [(COConditionSession *)self warning];
  v18 = [warning2 length];

  if (!v18)
  {
    selfCopy2 = self;
    v20 = 0;
LABEL_14:
    [(COConditionSession *)selfCopy2 setWarning:v20];
  }

  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(COConditionSession *)self setClassDict:v30];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  bundle4 = [(COConditionSession *)self bundle];
  conditions = [bundle4 conditions];

  v33 = [conditions countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v45;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v45 != v35)
        {
          objc_enumerationMutation(conditions);
        }

        v37 = *(*(&v44 + 1) + 8 * i);
        classDict = [(COConditionSession *)self classDict];
        v39 = [v37 description];
        v40 = NSStringFromClass(v37);
        [classDict setValue:v39 forKey:v40];
      }

      v34 = [conditions countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v34);
  }

  v27 = 0;
  v28 = 1;
LABEL_23:

  v41 = *MEMORY[0x277D85DE8];
  return v28;
}

+ (id)findBundleURLForConditionClass:(id)class andError:(id *)error
{
  classCopy = class;
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/AppleInternal/Tests/com.apple.ConditionInducer"];
  pathExtension = [classCopy pathExtension];
  v8 = [pathExtension caseInsensitiveCompare:@"bundle"];

  if (v8)
  {
    v9 = [classCopy stringByAppendingPathExtension:@"bundle"];

    classCopy = v9;
  }

  v10 = objc_alloc(MEMORY[0x277CBEBC0]);
  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6 isDirectory:1];
  v12 = [v10 initFileURLWithPath:classCopy relativeToURL:v11];

  if (v12)
  {
    v22 = 0;
    v16 = [v12 checkResourceIsReachableAndReturnError:&v22];
    v17 = v22;
    if (v16)
    {
      v18 = v12;
      goto LABEL_10;
    }
  }

  else
  {
    v17 = 0;
  }

  v19 = v17;
  v17 = createConditionInducerError("+[COConditionSession findBundleURLForConditionClass:andError:]", 524, -1, 0, @"Failed to create bundle URL (%@)", v13, v14, v15, classCopy);

  if (error)
  {
    v20 = v17;
    v18 = 0;
    *error = v17;
  }

  else
  {
    v18 = 0;
  }

LABEL_10:

  return v18;
}

- (BOOL)loadBundleWithPath:(id)path andError:(id *)error
{
  pathCopy = path;
  v10 = pathCopy;
  if (!pathCopy)
  {
    v17 = createConditionInducerError("[COConditionSession loadBundleWithPath:andError:]", 543, -1, 0, @"Invalid path to bundle", v7, v8, v9, v31);
    stringByExpandingTildeInPath = 0;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  stringByExpandingTildeInPath = [pathCopy stringByExpandingTildeInPath];

  if ([stringByExpandingTildeInPath hasPrefix:@"/"])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:stringByExpandingTildeInPath];
    v16 = 0;
    if (!v12)
    {
      v22 = 0;
      v10 = 0;
LABEL_12:
      v17 = createConditionInducerError("[COConditionSession loadBundleWithPath:andError:]", 561, -1, 0, @"Failed to create bundle URL (%@)", v13, v14, v15, stringByExpandingTildeInPath);

      if (!error)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    v10 = v12;
  }

  else
  {
    v34 = 0;
    v10 = [COConditionSession findBundleURLForConditionClass:stringByExpandingTildeInPath andError:&v34];
    v16 = v34;
    if (!v10)
    {
      v17 = createConditionInducerError("[COConditionSession loadBundleWithPath:andError:]", 553, -1, 0, @"Failed to find bundle for (%@)", v18, v19, v20, stringByExpandingTildeInPath);

      if (!error)
      {
LABEL_17:
        v27 = 0;
        goto LABEL_18;
      }

LABEL_15:
      v28 = v17;
      v27 = 0;
      *error = v17;
      goto LABEL_18;
    }
  }

  v33 = v16;
  v21 = [v10 checkResourceIsReachableAndReturnError:&v33];
  v22 = v33;

  if ((v21 & 1) == 0)
  {
    goto LABEL_12;
  }

  v32 = v22;
  v23 = [(COConditionSession *)self _setupBundleAtPath:v10 withError:&v32];
  v17 = v32;

  if (!v23)
  {
    v29 = createConditionInducerError("[COConditionSession loadBundleWithPath:andError:]", 567, -1, 0, @"Failed to load bundle %@.", v24, v25, v26, v10);

    v17 = v29;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  [(COConditionSession *)self setBundleURL:v10];
  v27 = 1;
LABEL_18:

  return v27;
}

- (BOOL)createStatusBar:(id)bar conditionClassDescription:(id)description withProfileDescription:(id)profileDescription error:(id *)error
{
  barCopy = bar;
  descriptionCopy = description;
  profileDescriptionCopy = profileDescription;
  if (barCopy)
  {
    statusBar = [(COConditionSession *)self statusBar];

    if (!statusBar)
    {
      v17 = [COStatusBar alloc];
      notifyTeardownBeganCallback = [(COConditionSession *)self notifyTeardownBeganCallback];
      statusBarPopupFinishedTeardownCallback = [(COConditionSession *)self statusBarPopupFinishedTeardownCallback];
      v20 = [(COStatusBar *)v17 initWithConditionClass:descriptionCopy profile:profileDescriptionCopy teardownBeganCb:notifyTeardownBeganCallback teardownCompleteCb:statusBarPopupFinishedTeardownCallback];
      [(COConditionSession *)self setStatusBar:v20];
    }

    statusBar2 = [(COConditionSession *)self statusBar];

    if (statusBar2)
    {
      v22 = 0;
      v23 = 1;
      goto LABEL_11;
    }

    v24 = @"Failed to initialize status bar with title %@.";
    v27 = barCopy;
    v25 = 601;
  }

  else
  {
    v24 = @"Must supply an action (e.g. running or setting up) for the status bar";
    v25 = 591;
  }

  v22 = createConditionInducerError("[COConditionSession createStatusBar:conditionClassDescription:withProfileDescription:error:]", v25, -1, 0, v24, v12, v13, v14, v27);
  if (error)
  {
    v22 = v22;
    v23 = 0;
    *error = v22;
  }

  else
  {
    v23 = 0;
  }

LABEL_11:

  return v23;
}

+ (id)getBootSessionUUID
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  v5 = 256;
  if (sysctlbyname("kern.bootsessionuuid", v6, &v5, 0, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[COConditionSession getBootSessionUUID];
    }

    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)loadConditionCacheWithError:(id *)error
{
  umask(0);
  v4 = open_dprotected_np([@"/var/mobile/Library/Preferences/com.apple.LoadedConditionInducer.plist" fileSystemRepresentation], 770, 4, 0);
  if (v4 != -1)
  {
    v5 = v4;
    if (flock(v4, 2))
    {
      v9 = createConditionInducerError("+[COConditionSession loadConditionCacheWithError:]", 656, -1, 0, @"Failed to lock file.", v6, v7, v8, 438);
      v10 = 0;
      v11 = 0;
LABEL_4:
      v12 = 0;
      v13 = 0;
      readDataToEndOfFile = 0;
      goto LABEL_5;
    }

    v22 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v5];
    v11 = v22;
    if (!v22)
    {
      v9 = createConditionInducerError("+[COConditionSession loadConditionCacheWithError:]", 662, -1, 0, @"Failed to initialize file handle.", v23, v24, v25, 438);
      v10 = 0;
      goto LABEL_4;
    }

    readDataToEndOfFile = [v22 readDataToEndOfFile];
    if (!readDataToEndOfFile)
    {
      v9 = createConditionInducerError("+[COConditionSession loadConditionCacheWithError:]", 668, -1, 0, @"Failed to read file.", v26, v27, v28, 438);
      v10 = 0;
      v12 = 0;
      v13 = 0;
      goto LABEL_5;
    }

    v36 = 0;
    v13 = [MEMORY[0x277CCAC58] propertyListWithData:readDataToEndOfFile options:0 format:0 error:&v36];
    v29 = v36;
    v10 = isNSDictionary(v13);

    if (v10)
    {
      v10 = [COConditionSession removeStaleConditions:v13];
      if ([v10 isEqualToDictionary:v13])
      {
        v9 = v29;
LABEL_24:
        v10 = v10;
        v12 = v10;
        goto LABEL_5;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Stale keys were detected and removed from the condition cache", buf, 2u);
      }

      v34 = v29;
      v33 = [COConditionSession writeConditionCache:v10 toFileDescriptor:v5 error:&v34];
      v9 = v34;

      if (v33)
      {
        goto LABEL_24;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        +[COConditionSession loadConditionCacheWithError:];
      }
    }

    else
    {
      v9 = createConditionInducerError("+[COConditionSession loadConditionCacheWithError:]", 677, -1, v29, @"Failed to serialize property list.", v30, v31, v32, 438);
    }

    v12 = 0;
LABEL_5:
    flock(v5, 8);
    close(v5);
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v15 = *__error();
  v16 = __error();
  strerror(*v16);
  v9 = createConditionInducerError("+[COConditionSession loadConditionCacheWithError:]", 650, -1, 0, @"Failed to open %@: %d (%s)", v17, v18, v19, @"/var/mobile/Library/Preferences/com.apple.LoadedConditionInducer.plist");
  readDataToEndOfFile = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  if (!error)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (!v12)
  {
    v20 = v9;
    *error = v9;
  }

LABEL_10:

  return v12;
}

+ (BOOL)writeConditionCache:(id)cache toFileDescriptor:(int)descriptor error:(id *)error
{
  v21 = 0;
  v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:cache format:100 options:0 error:&v21];
  v11 = v21;
  if (v7)
  {
    lseek(descriptor, 0, 0);
    v12 = write(descriptor, [v7 bytes], objc_msgSend(v7, "length"));
    if (v12 == [v7 length])
    {
      v13 = 1;
      goto LABEL_10;
    }

    v14 = @"Failed to write file.";
    v15 = 720;
    v16 = 0;
  }

  else
  {
    v14 = @"Failed to serialize property list.";
    v15 = 714;
    v16 = v11;
  }

  v17 = createConditionInducerError("+[COConditionSession writeConditionCache:toFileDescriptor:error:]", v15, -1, v16, v14, v8, v9, v10, v20);

  if (error)
  {
    v18 = v17;
    v13 = 0;
    *error = v17;
  }

  else
  {
    v13 = 0;
  }

  v11 = v17;
LABEL_10:

  return v13;
}

- (id)copyLoadedConditionClassName
{
  v3 = [COConditionSession loadConditionCacheWithError:0];
  if (v3)
  {
    bundle = [(COConditionSession *)self bundle];
    bundlePath = [bundle bundlePath];
    v6 = [v3 objectForKey:bundlePath];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)removeStaleConditions:(id)conditions
{
  v33 = *MEMORY[0x277D85DE8];
  conditionsCopy = conditions;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(conditionsCopy, "count")}];
  v5 = +[COConditionSession getBootSessionUUID];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allKeys = [conditionsCopy allKeys];
  v21 = [allKeys countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v21)
  {
    v8 = *v23;
    *&v7 = 138412802;
    v20 = v7;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [conditionsCopy objectForKey:{v10, v20}];
        v12 = [v11 objectForKey:@"ConditionCacheClassBootUUID"];
        if (v12 && [v5 compare:v12 options:1])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            [v11 objectForKeyedSubscript:@"ConditionCacheClassBootUUID"];
            v13 = v8;
            v14 = allKeys;
            v15 = conditionsCopy;
            v17 = v16 = v4;
            *buf = v20;
            v27 = v5;
            v28 = 2112;
            v29 = v10;
            v30 = 2112;
            v31 = v17;
            _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "The current boot session is %@. Condition %@ was induced in a previous boot session (%@) and is now no longer running. Removing from cache", buf, 0x20u);

            v4 = v16;
            conditionsCopy = v15;
            allKeys = v14;
            v8 = v13;
          }
        }

        else
        {
          [v4 setObject:v11 forKeyedSubscript:v10];
        }
      }

      v21 = [allKeys countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v21);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (BOOL)updateConditionCache:(BOOL)cache forCondition:(id)condition additionalArguments:(id)arguments conditionBundle:(id)bundle error:(id *)error
{
  cacheCopy = cache;
  conditionCopy = condition;
  argumentsCopy = arguments;
  bundleCopy = bundle;
  if (!conditionCopy)
  {
    v34 = @"Invalid input.";
    v35 = 773;
    goto LABEL_10;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v18 = [defaultManager fileExistsAtPath:@"/var/mobile/Library/Preferences/com.apple.LoadedConditionInducer.plist"];

  umask(0);
  v19 = open_dprotected_np([@"/var/mobile/Library/Preferences/com.apple.LoadedConditionInducer.plist" fileSystemRepresentation], 770, 4, 0);
  if (v19 == -1)
  {
    v36 = *__error();
    v37 = __error();
    strerror(*v37);
    v34 = @"Failed to open %@: %d (%s)";
    v65 = @"/var/mobile/Library/Preferences/com.apple.LoadedConditionInducer.plist";
    v35 = 786;
LABEL_10:
    v26 = createConditionInducerError("+[COConditionSession updateConditionCache:forCondition:additionalArguments:conditionBundle:error:]", v35, -1, 0, v34, v13, v14, v15, v65);
    v33 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v20 = v19;
  v74 = argumentsCopy;
  v75 = bundleCopy;
  errorCopy = error;
  if (flock(v19, 6))
  {
    v24 = @"Failed to lock file.";
    v25 = 792;
LABEL_5:
    v26 = createConditionInducerError("+[COConditionSession updateConditionCache:forCondition:additionalArguments:conditionBundle:error:]", v25, -1, 0, v24, v21, v22, v23, 438);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    identifierName = 0;
    v33 = 0;
    goto LABEL_6;
  }

  v40 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v20];
  if (!v40)
  {
    v24 = @"Failed to initialize file handle.";
    v25 = 798;
    goto LABEL_5;
  }

  v72 = v40;
  if (v18)
  {
    readDataToEndOfFile = [v40 readDataToEndOfFile];
    if (!readDataToEndOfFile)
    {
      v26 = createConditionInducerError("+[COConditionSession updateConditionCache:forCondition:additionalArguments:conditionBundle:error:]", 805, -1, 0, @"Failed to read file.", v42, v43, v44, 438);
      v27 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      identifierName = 0;
      v33 = 0;
      v28 = v72;
      goto LABEL_6;
    }

    v78 = 0;
    v71 = readDataToEndOfFile;
    v45 = [MEMORY[0x277CCAC58] propertyListWithData:readDataToEndOfFile options:0 format:0 error:&v78];
    v46 = v78;
    if (v45)
    {
      v67 = v45;
      v31 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v45];
      if (!v31)
      {
        v26 = createConditionInducerError("+[COConditionSession updateConditionCache:forCondition:additionalArguments:conditionBundle:error:]", 817, -1, 0, @"Failed to initialize dictionary.", v47, v48, v49, 438);

        v30 = 0;
        identifierName = 0;
        v33 = 0;
        v27 = v71;
        v28 = v72;
        v29 = v67;
        goto LABEL_6;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v71 = 0;
    v46 = 0;
  }

  v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v31)
  {
    v26 = createConditionInducerError("+[COConditionSession updateConditionCache:forCondition:additionalArguments:conditionBundle:error:]", 826, -1, 0, @"Failed to initialize dictionary.", v50, v51, v52, 438);

    v29 = 0;
    v30 = 0;
    identifierName = 0;
    v33 = 0;
    v27 = v71;
    v28 = v72;
    goto LABEL_6;
  }

  v67 = 0;
LABEL_24:
  identifierName = [conditionCopy identifierName];
  if (!identifierName)
  {
    [bundleCopy bundlePath];
    v53 = v68 = v46;
    lastPathComponent = [v53 lastPathComponent];
    identifierName = [lastPathComponent stringByDeletingPathExtension];

    v46 = v68;
  }

  if ([COConditionSession conditionIsBundledWithFramework:identifierName])
  {
    v77 = v46;
    [COConditionSession prepareInfoDictForBuiltInCondition:identifierName error:&v77];
    v56 = v55 = v46;
    v69 = v77;

    if (v56)
    {
      persistsAfterReboot = [conditionCopy persistsAfterRebootFromDict:v56];
    }

    else
    {
      persistsAfterReboot = 1;
    }

    v46 = v69;
  }

  else
  {
    persistsAfterReboot = [conditionCopy persistsAfterReboot];
  }

  v57 = [COConditionSession removeStaleConditions:v31];

  v70 = v57;
  if (cacheCopy)
  {
    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (!v31)
    {
      v26 = createConditionInducerError("+[COConditionSession updateConditionCache:forCondition:additionalArguments:conditionBundle:error:]", 851, -1, 0, @"Failed to initialize dictionary.", v58, v59, v60, 438);

LABEL_47:
      v33 = 0;
      goto LABEL_48;
    }

    v61 = objc_opt_class();
    v62 = NSStringFromClass(v61);
    [v31 setObject:v62 forKeyedSubscript:@"ConditionCacheClassName"];

    if ((persistsAfterReboot & 1) == 0)
    {
      v63 = +[COConditionSession getBootSessionUUID];
      [v31 setObject:v63 forKeyedSubscript:@"ConditionCacheClassBootUUID"];
    }

    if (argumentsCopy)
    {
      [v31 setObject:argumentsCopy forKeyedSubscript:@"ConditionCacheClassArguments"];
    }

    v57 = v70;
    [v70 setObject:v31 forKeyedSubscript:identifierName];
  }

  else
  {
    [v57 removeObjectForKey:identifierName];
    v31 = 0;
  }

  v76 = v46;
  v64 = [COConditionSession writeConditionCache:v57 toFileDescriptor:v20 error:&v76];
  v26 = v76;

  if (!v64)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[COConditionSession updateConditionCache:forCondition:additionalArguments:conditionBundle:error:];
    }

    goto LABEL_47;
  }

  v33 = 1;
LABEL_48:
  v27 = v71;
  v28 = v72;
  v29 = v67;
  v30 = v70;
LABEL_6:
  flock(v20, 8);
  close(v20);

  argumentsCopy = v74;
  bundleCopy = v75;
  error = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v33)
  {
    v38 = v26;
    *error = v26;
  }

LABEL_13:

  return v33;
}

+ (id)prepareInfoDictForBuiltInCondition:(id)condition error:(id *)error
{
  conditionCopy = condition;
  v9 = +[COConditionSession loadInformationDict];
  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SupportedConditionData"];
    v11 = [v9 objectForKey:v10];

    if (!v11)
    {
      v19 = createConditionInducerError("+[COConditionSession prepareInfoDictForBuiltInCondition:error:]", 907, -1, 0, @"Failed to load supported condition data from COCondtionSession", v12, v13, v14, v23);
      v15 = 0;
      if (!error)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    v24 = 0;
    v15 = [COConditionSession _loadExternalConditionBundleInfo:conditionCopy supportedConditionData:v11 error:&v24];
    v19 = v24;
    if (!v15)
    {
      v20 = createConditionInducerError("+[COConditionSession prepareInfoDictForBuiltInCondition:error:]", 913, -1, v19, @"Unable to load data for %@", v16, v17, v18, conditionCopy);

      v19 = v20;
      if (!error)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v19 = createConditionInducerError("+[COConditionSession prepareInfoDictForBuiltInCondition:error:]", 901, -1, 0, @"Failed to load Info.plist from COCondtionSession", v6, v7, v8, v23);
    v11 = 0;
    v15 = 0;
  }

  if (!error)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (v19)
  {
    v21 = v19;
    *error = v19;
  }

LABEL_10:

  return v15;
}

+ (id)loadInformationDict
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    infoDictionary = [v2 infoDictionary];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[COConditionSession loadInformationDict];
    }

    infoDictionary = 0;
  }

  return infoDictionary;
}

+ (id)conditionsBundledWithFramework
{
  v2 = +[COConditionSession loadInformationDict];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SupportedConditionsiOS"];
    v4 = [v2 objectForKey:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[COConditionSession conditionsBundledWithFramework];
    }

    v4 = 0;
  }

  return v4;
}

+ (BOOL)conditionIsBundledWithFramework:(id)framework
{
  frameworkCopy = framework;
  v4 = +[COConditionSession conditionsBundledWithFramework];
  v5 = [v4 indexOfObject:frameworkCopy];

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

- (COConditionSession)initWithConditionIdentifier:(id)identifier profile:(id)profile additionalArgs:(id)args
{
  identifierCopy = identifier;
  profileCopy = profile;
  argsCopy = args;
  v20.receiver = self;
  v20.super_class = COConditionSession;
  v12 = [(COConditionSession *)&v20 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_12;
  }

  objc_storeStrong(&v12->_selectedCondition, identifier);
  objc_storeStrong(&v13->_selectedProfile, profile);
  if (!identifierCopy || !profileCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [COConditionSession initWithConditionIdentifier:profile:additionalArgs:];
    }

    goto LABEL_10;
  }

  if (([identifierCopy containsString:@"/"] & 1) == 0 && !objc_msgSend(profileCopy, "containsString:", @"/"))
  {
    objc_storeStrong(&v13->_additionalArguments, args);
    v15 = dispatch_queue_create("com.apple.ConditionInducerFramework.setUp", 0);
    setUpQueue = v13->_setUpQueue;
    v13->_setUpQueue = v15;

    v17 = dispatch_queue_create("com.apple.ConditionInducerFramework.tearDown", 0);
    tearDownQueue = v13->_tearDownQueue;
    v13->_tearDownQueue = v17;

LABEL_12:
    v14 = v13;
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [COConditionSession initWithConditionIdentifier:profile:additionalArgs:];
  }

LABEL_10:
  v14 = 0;
LABEL_13:

  return v14;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (id)listAvailableConditions
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/AppleInternal/Tests/com.apple.ConditionInducer"];
  v4 = [COConditionSession getBundleURLsAtPath:v3];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v11 = [COConditionSession bundleToDict:v9];
        if (v11)
        {
          path = [v9 path];
          [v10 setObject:path forKey:@"ConditionCacheBundlePath"];

          [v10 addEntriesFromDictionary:v11];
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          +[(COConditionSession *)v43];
        }

        [v2 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
    }

    while (v6);
  }

  v13 = +[COConditionSession conditionsBundledWithFramework];
  v14 = v13;
  if (v13)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = [v13 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v15)
    {
      v17 = v15;
      v18 = *v31;
      v19 = MEMORY[0x277D86220];
      *&v16 = 138412546;
      v27 = v16;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v30 + 1) + 8 * j);
          v29 = 0;
          v22 = [COConditionSession prepareInfoDictForBuiltInCondition:v21 error:&v29, v27];
          v23 = v29;
          if (v23)
          {
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v24 = [v23 description];
              *buf = v27;
              v39 = v21;
              v40 = 2112;
              v41 = v24;
              _os_log_error_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Encountered an error loading externally-supported condition %@ from framework: %@", buf, 0x16u);

              v19 = MEMORY[0x277D86220];
            }
          }

          else
          {
            [v2 addObject:v22];
          }
        }

        v17 = [v14 countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v17);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[COConditionSession listAvailableConditions];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)getActiveConditions
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[COConditionSession getActiveConditions];
  }

  v2 = [COConditionSession loadConditionCacheWithError:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[COConditionSession getActiveConditions];
  }

  return v2;
}

+ (void)logSignpostWithConditionStates
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = +[COConditionSession getActiveConditions];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC10];
  }

  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.cltm"];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEBD0]);
  }

  v5 = _copySignpostLowSeverityLogHandle();
  if (os_signpost_enabled(v5))
  {
    dictionaryRepresentation = [v4 dictionaryRepresentation];
    v8 = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = dictionaryRepresentation;
    _os_signpost_emit_with_name_impl(&dword_243E0F000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConditionsStateSignpost", "Active Conditions: %{public}@\ncltm settings: %{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasActiveCondition
{
  v2 = +[COConditionSession getActiveConditions];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 count] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)startConditionWithCallback:(id)callback teardownStartedCallback:(id)startedCallback teardownFinishedCallback:(id)finishedCallback
{
  v97 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  startedCallbackCopy = startedCallback;
  finishedCallbackCopy = finishedCallback;
  v87 = 0;
  v88[0] = &v87;
  v88[1] = 0x3032000000;
  v88[2] = __Block_byref_object_copy__0;
  v88[3] = __Block_byref_object_dispose__0;
  v89 = 0;
  v85[0] = 0;
  v85[1] = v85;
  v85[2] = 0x3032000000;
  v85[3] = __Block_byref_object_copy__0;
  v85[4] = __Block_byref_object_dispose__0;
  v86 = 0;
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __98__COConditionSession_startConditionWithCallback_teardownStartedCallback_teardownFinishedCallback___block_invoke;
  v84[3] = &unk_278DF7E68;
  v84[4] = self;
  v84[5] = v85;
  v84[6] = &v87;
  block = MEMORY[0x245D53520](v84);
  v8 = MEMORY[0x245D53520](finishedCallbackCopy);
  statusBarPopupFinishedTeardownCallback = self->_statusBarPopupFinishedTeardownCallback;
  self->_statusBarPopupFinishedTeardownCallback = v8;

  v10 = MEMORY[0x245D53520](startedCallbackCopy);
  notifyTeardownBeganCallback = self->_notifyTeardownBeganCallback;
  self->_notifyTeardownBeganCallback = v10;

  selectedCondition = [(COConditionSession *)self selectedCondition];
  v13 = [COConditionSession conditionIsBundledWithFramework:selectedCondition];

  if (!v13)
  {
    selectedCondition2 = [(COConditionSession *)self selectedCondition];
    v18 = (v88[0] + 40);
    v83 = *(v88[0] + 40);
    v19 = [(COConditionSession *)self loadBundleWithPath:selectedCondition2 andError:&v83];
    objc_storeStrong(v18, v83);

    if (v19)
    {
      selectedProfile = [(COConditionSession *)self selectedProfile];
      v21 = (v88[0] + 40);
      v82 = *(v88[0] + 40);
      v22 = [(COConditionSession *)self loadProfileForBundle:selectedProfile withError:&v82];
      objc_storeStrong(v21, v82);

      v73 = 0;
      if (v22)
      {
        goto LABEL_25;
      }

LABEL_41:
      v63 = 0;
      goto LABEL_42;
    }

LABEL_9:
    v73 = 0;
    goto LABEL_41;
  }

  selectedCondition3 = [(COConditionSession *)self selectedCondition];
  v15 = (v88[0] + 40);
  obj = *(v88[0] + 40);
  v73 = [COConditionSession prepareInfoDictForBuiltInCondition:selectedCondition3 error:&obj];
  objc_storeStrong(v15, obj);

  if (!v73)
  {
    v23 = *(v88[0] + 40);
    selectedCondition4 = [(COConditionSession *)self selectedCondition];
    v28 = createConditionInducerError("[COConditionSession startConditionWithCallback:teardownStartedCallback:teardownFinishedCallback:]", 1124, -1, v23, @"Unable to load data for %@", v25, v26, v27, selectedCondition4);
    v29 = *(v88[0] + 40);
    *(v88[0] + 40) = v28;

    goto LABEL_9;
  }

  v16 = [v73 valueForKey:@"ConditionIsDestructive"];

  if (v16)
  {
    [(COConditionSession *)self setWarning:@"WARNING! - This condition should only be used on test devices as it can change your data"];
  }

  else
  {
    warning = [(COConditionSession *)self warning];
    v31 = [warning length] == 0;

    if (v31)
    {
      [(COConditionSession *)self setWarning:0];
    }
  }

  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(COConditionSession *)self setClassDict:v32];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v33 = [v73 objectForKey:@"ConditionBundleDict"];
  v34 = [v33 countByEnumeratingWithState:&v77 objects:v96 count:16];
  if (v34)
  {
    v35 = *v78;
    v36 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v78 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v77 + 1) + 8 * i);
        v39 = NSClassFromString(v38);
        if (v39)
        {
          classDict = [(COConditionSession *)self classDict];
          v41 = [(objc_class *)v39 description];
          [classDict setValue:v41 forKey:v38];
        }

        else if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [COConditionSession startConditionWithCallback:v94 teardownStartedCallback:v38 teardownFinishedCallback:&v95];
        }
      }

      v34 = [v33 countByEnumeratingWithState:&v77 objects:v96 count:16];
    }

    while (v34);
  }

  selectedProfile2 = [(COConditionSession *)self selectedProfile];
  v43 = NSClassFromString(selectedProfile2);

  if (!v43)
  {
    selectedProfile3 = [(COConditionSession *)self selectedProfile];
    v58 = createConditionInducerError("[COConditionSession startConditionWithCallback:teardownStartedCallback:teardownFinishedCallback:]", 1149, -1, 0, @"Failed to load framework class %@", v55, v56, v57, selectedProfile3);
    v59 = *(v88[0] + 40);
    *(v88[0] + 40) = v58;

    goto LABEL_41;
  }

  v44 = objc_alloc_init(v43);
  [(COConditionSession *)self setCondition:v44];

  condition = [(COConditionSession *)self condition];
  v46 = condition == 0;

  if (v46)
  {
    selectedProfile4 = [(COConditionSession *)self selectedProfile];
    v68 = createConditionInducerError("[COConditionSession startConditionWithCallback:teardownStartedCallback:teardownFinishedCallback:]", 1156, -1, 0, @"Failed to instantiate framework class %@", v65, v66, v67, selectedProfile4);
    v69 = *(v88[0] + 40);
    *(v88[0] + 40) = v68;

    goto LABEL_41;
  }

LABEL_25:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Running Setup", buf, 2u);
  }

  v47 = _copySignpostLowSeverityLogHandle();
  if (os_signpost_enabled(v47))
  {
    selectedCondition5 = [(COConditionSession *)self selectedCondition];
    selectedProfile5 = [(COConditionSession *)self selectedProfile];
    *buf = 138543618;
    v91 = selectedCondition5;
    v92 = 2114;
    v93 = selectedProfile5;
    _os_signpost_emit_with_name_impl(&dword_243E0F000, v47, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "induce-setup", "%{public}@ %{public}@", buf, 0x16u);
  }

  setUpQueue = [(COConditionSession *)self setUpQueue];
  dispatch_sync(setUpQueue, block);

  v51 = _copySignpostLowSeverityLogHandle();
  if (os_signpost_enabled(v51))
  {
    selectedCondition6 = [(COConditionSession *)self selectedCondition];
    selectedProfile6 = [(COConditionSession *)self selectedProfile];
    *buf = 138543618;
    v91 = selectedCondition6;
    v92 = 2114;
    v93 = selectedProfile6;
    _os_signpost_emit_with_name_impl(&dword_243E0F000, v51, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "induce-setup", "%{public}@ %{public}@", buf, 0x16u);
  }

  if (*(v88[0] + 40))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [COConditionSession startConditionWithCallback:v88 teardownStartedCallback:? teardownFinishedCallback:?];
    }

    goto LABEL_41;
  }

  v60 = _copySignpostLowSeverityLogHandle();
  if (os_signpost_enabled(v60))
  {
    selectedCondition7 = [(COConditionSession *)self selectedCondition];
    selectedProfile7 = [(COConditionSession *)self selectedProfile];
    *buf = 138543618;
    v91 = selectedCondition7;
    v92 = 2114;
    v93 = selectedProfile7;
    _os_signpost_emit_with_name_impl(&dword_243E0F000, v60, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "induce", "%{public}@ %{public}@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setup Complete... Condition Running", buf, 2u);
  }

  v63 = 1;
LABEL_42:
  if (callbackCopy)
  {
    callbackCopy[2](callbackCopy, *(v88[0] + 40));
  }

  _Block_object_dispose(v85, 8);
  _Block_object_dispose(&v87, 8);

  v70 = *MEMORY[0x277D85DE8];
  return v63;
}

void __98__COConditionSession_startConditionWithCallback_teardownStartedCallback_teardownFinishedCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) copyLoadedConditionClassName];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v22 = [v5 selectedCondition];
    v21 = *(*(*(a1 + 40) + 8) + 40);
    v9 = createConditionInducerError("[COConditionSession startConditionWithCallback:teardownStartedCallback:teardownFinishedCallback:]_block_invoke", 1103, -1, 0, @"Condition is already running: %@ %@", v6, v7, v8, v22);
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v12 = *(*(a1 + 48) + 8);
    obj = *(v12 + 40);
    v13 = [v5 setUpWithError:&obj];
    objc_storeStrong((v12 + 40), obj);
    if ((v13 & 1) == 0)
    {
      v17 = createConditionInducerError("[COConditionSession startConditionWithCallback:teardownStartedCallback:teardownFinishedCallback:]_block_invoke", 1105, -1, *(*(*(a1 + 48) + 8) + 40), @"Setup failed.", v14, v15, v16, v20);
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }
  }
}

- (BOOL)stopConditionWithCallback:(id)callback
{
  v29 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = +[COConditionSession getActiveConditions];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Tearing down active condition before we destroy the object: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v6 = _copySignpostLowSeverityLogHandle();
  if (os_signpost_enabled(v6))
  {
    selectedCondition = [(COConditionSession *)self selectedCondition];
    selectedProfile = [(COConditionSession *)self selectedProfile];
    *v20 = 138543618;
    v21 = selectedCondition;
    v22 = 2114;
    v23 = selectedProfile;
    _os_signpost_emit_with_name_impl(&dword_243E0F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "induce-teardown", "%{public}@ %{public}@", v20, 0x16u);
  }

  tearDownQueue = [(COConditionSession *)self tearDownQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__COConditionSession_stopConditionWithCallback___block_invoke;
  v19[3] = &unk_278DF7EE0;
  v19[4] = self;
  v19[5] = &buf;
  dispatch_sync(tearDownQueue, v19);

  setUpQueue = [(COConditionSession *)self setUpQueue];
  dispatch_sync(setUpQueue, &__block_literal_global_1);

  v11 = _copySignpostLowSeverityLogHandle();
  if (os_signpost_enabled(v11))
  {
    selectedCondition2 = [(COConditionSession *)self selectedCondition];
    selectedProfile2 = [(COConditionSession *)self selectedProfile];
    *v20 = 138543618;
    v21 = selectedCondition2;
    v22 = 2114;
    v23 = selectedProfile2;
    _os_signpost_emit_with_name_impl(&dword_243E0F000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "induce-teardown", "%{public}@ %{public}@", v20, 0x16u);
  }

  v14 = _copySignpostLowSeverityLogHandle();
  if (os_signpost_enabled(v14))
  {
    selectedCondition3 = [(COConditionSession *)self selectedCondition];
    selectedProfile3 = [(COConditionSession *)self selectedProfile];
    *v20 = 138543618;
    v21 = selectedCondition3;
    v22 = 2114;
    v23 = selectedProfile3;
    _os_signpost_emit_with_name_impl(&dword_243E0F000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "induce", "%{public}@ %{public}@", v20, 0x16u);
  }

  if (callbackCopy && *(*(&buf + 1) + 40))
  {
    callbackCopy[2](callbackCopy);
  }

  _Block_object_dispose(&buf, 8);

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

void __48__COConditionSession_stopConditionWithCallback___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 tearDownWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if ((v4 & 1) == 0)
  {
    v5 = [*(*(*(a1 + 40) + 8) + 40) code];
    v9 = createConditionInducerError("[COConditionSession stopConditionWithCallback:]_block_invoke", 1198, v5, *(*(*(a1 + 40) + 8) + 40), @"Teardown failed.", v6, v7, v8, v12);
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

+ (BOOL)tearDownAllConditionsWithErrors:(id *)errors
{
  v53 = *MEMORY[0x277D85DE8];
  v38 = +[COConditionSession getActiveConditions];
  v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [v38 allKeys];
  v3 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (!v3)
  {

    v4 = 1;
    goto LABEL_25;
  }

  v37 = *v49;
  v4 = 1;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v49 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v48 + 1) + 8 * i);
      v42 = 0;
      v43 = &v42;
      v44 = 0x3032000000;
      v45 = __Block_byref_object_copy__0;
      v46 = __Block_byref_object_dispose__0;
      v47 = 0;
      v7 = [v38 objectForKey:v6];
      v8 = [v7 objectForKey:@"ConditionCacheClassName"];
      v12 = [v7 objectForKey:@"ConditionCacheClassArguments"];
      if (!v8)
      {
        v17 = createConditionInducerError("+[COConditionSession tearDownAllConditionsWithErrors:]", 1265, -1, 0, @"Missing subclass info for %@, skipping teardown", v9, v10, v11, v6);
        v18 = v43[5];
        v43[5] = v17;

        [v36 setObject:v43[5] forKey:v6];
        v4 = 0;
        goto LABEL_20;
      }

      v16 = [[COConditionSession alloc] initWithConditionIdentifier:v6 profile:v8 additionalArgs:v12];
      if (!v16)
      {
        v19 = createConditionInducerError("+[COConditionSession tearDownAllConditionsWithErrors:]", 1235, -1, 0, @"Failed to instantiate condition session for conditionKey:%@ profile:%@ args:%@", v13, v14, v15, v6);
        v20 = v43[5];
        v43[5] = v19;

        [v36 setObject:v43[5] forKey:v6];
LABEL_18:
        v4 = 0;
        goto LABEL_19;
      }

      if ([COConditionSession conditionIsBundledWithFramework:v6])
      {
LABEL_9:
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __54__COConditionSession_tearDownAllConditionsWithErrors___block_invoke;
        v39[3] = &unk_278DF8030;
        v39[4] = v6;
        v39[5] = &v42;
        [(COConditionSession *)v16 stopConditionWithCallback:v39];
        goto LABEL_16;
      }

      v21 = (v43 + 5);
      v41 = v43[5];
      v22 = [(COConditionSession *)v16 loadBundleWithPath:v6 andError:&v41];
      objc_storeStrong(v21, v41);
      if (v22)
      {
        v26 = (v43 + 5);
        v40 = v43[5];
        v27 = [(COConditionSession *)v16 loadProfileForBundle:v8 withError:&v40];
        objc_storeStrong(v26, v40);
        if (v27)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v28 = createConditionInducerError("+[COConditionSession tearDownAllConditionsWithErrors:]", 1247, -1, 0, @"Failed to load bundle", v23, v24, v25, v33);
        [v36 setObject:v28 forKey:v6];

        v4 = 0;
      }

LABEL_16:
      v29 = v43[5];
      if (v29)
      {
        [v36 setObject:v29 forKey:v6];
        goto LABEL_18;
      }

LABEL_19:

LABEL_20:
      _Block_object_dispose(&v42, 8);
    }

    v3 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
  }

  while (v3);

  if (!((errors == 0) | v4 & 1))
  {
    v30 = v36;
    v4 = 0;
    *errors = v36;
  }

LABEL_25:

  v31 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

void __54__COConditionSession_tearDownAllConditionsWithErrors___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if ([v4 code] == -10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "No need to tear down %@ because it's not running", &v7, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)userFriendlyNameForSelectedCondition
{
  v8 = *MEMORY[0x277D85DE8];
  selectedCondition = [self selectedCondition];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)userFriendlyNameForSelectedProfile
{
  v8 = *MEMORY[0x277D85DE8];
  selectedProfile = [self selectedProfile];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)bundleToDict:(void *)a1 .cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 path];
  v10 = [a2 description];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)bundleToDict:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v1 = v0;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)bundleToDict:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)loadInformationDict
{
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v1 = v0;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)conditionsBundledWithFramework
{
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v1 = v0;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)listAvailableConditions
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)getActiveConditions
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Loaded Conditions: %@", v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

- (void)startConditionWithCallback:(uint8_t *)buf teardownStartedCallback:(uint64_t)a2 teardownFinishedCallback:(void *)a3 .cold.1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_error_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to load class from name: %@", buf, 0xCu);
}

- (void)startConditionWithCallback:(uint64_t)a1 teardownStartedCallback:teardownFinishedCallback:.cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*a1 + 40);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end