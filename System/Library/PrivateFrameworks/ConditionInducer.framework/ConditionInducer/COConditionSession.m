@interface COConditionSession
+ (BOOL)conditionIsBundledWithFramework:(id)a3;
+ (BOOL)tearDownAllConditionsWithErrors:(id *)a3;
+ (BOOL)updateConditionCache:(BOOL)a3 forCondition:(id)a4 additionalArguments:(id)a5 conditionBundle:(id)a6 error:(id *)a7;
+ (BOOL)writeConditionCache:(id)a3 toFileDescriptor:(int)a4 error:(id *)a5;
+ (id)_loadExternalConditionBundleInfo:(id)a3 supportedConditionData:(id)a4 error:(id *)a5;
+ (id)bundleToDict:(id)a3;
+ (id)conditionsBundledWithFramework;
+ (id)findBundleURLForConditionClass:(id)a3 andError:(id *)a4;
+ (id)getActiveConditions;
+ (id)getBootSessionUUID;
+ (id)getBundleURLsAtPath:(id)a3;
+ (id)listAvailableConditions;
+ (id)loadConditionCacheWithError:(id *)a3;
+ (id)loadInformationDict;
+ (id)prepareInfoDictForBuiltInCondition:(id)a3 error:(id *)a4;
+ (id)removeStaleConditions:(id)a3;
+ (void)conditionsBundledWithFramework;
+ (void)getActiveConditions;
+ (void)listAvailableConditions;
+ (void)loadInformationDict;
+ (void)logSignpostWithConditionStates;
- (BOOL)_setupBundleAtPath:(id)a3 withError:(id *)a4;
- (BOOL)createStatusBar:(id)a3 conditionClassDescription:(id)a4 withProfileDescription:(id)a5 error:(id *)a6;
- (BOOL)hasActiveCondition;
- (BOOL)loadBundleWithPath:(id)a3 andError:(id *)a4;
- (BOOL)loadProfileForBundle:(id)a3 withError:(id *)a4;
- (BOOL)setUpWithError:(id *)a3;
- (BOOL)startConditionWithCallback:(id)a3 teardownStartedCallback:(id)a4 teardownFinishedCallback:(id)a5;
- (BOOL)stopConditionWithCallback:(id)a3;
- (BOOL)tearDownWithError:(id *)a3;
- (COConditionSession)initWithConditionIdentifier:(id)a3 profile:(id)a4 additionalArgs:(id)a5;
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
  v3 = [(COConditionSession *)self selectedCondition];

  if (v3)
  {
    v4 = [(COConditionSession *)self selectedCondition];
    v5 = [COConditionSession conditionIsBundledWithFramework:v4];

    if (v5)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v6 infoDictionary];

      v8 = [v7 objectForKey:@"SupportedConditionData"];
      v9 = [(COConditionSession *)self selectedCondition];
      v10 = [v8 objectForKey:v9];
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

    v14 = [(COConditionSession *)self selectedCondition];
    v13 = NSClassFromString(v14);

    if (v13)
    {
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:v13];
      v7 = [v15 infoDictionary];

      v12 = [v7 objectForKey:@"ConditionUserFriendlyName"];
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

  v7 = 0;
  v12 = 0;
LABEL_13:

  return v12;
}

- (id)userFriendlyNameForSelectedProfile
{
  v3 = [(COConditionSession *)self selectedProfile];

  if (v3)
  {
    v4 = [(COConditionSession *)self selectedProfile];
    v5 = NSClassFromString(v4);

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

+ (id)_loadExternalConditionBundleInfo:(id)a3 supportedConditionData:(id)a4 error:(id *)a5
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v62 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [v8 objectForKey:v7];
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v10)
  {
    createConditionInducerError("+[COConditionSession _loadExternalConditionBundleInfo:supportedConditionData:error:]", 174, -1, 0, @"No class information dict found in Info.plist %s for condition %@", v11, v12, v13, "SupportedConditionData");
    goto LABEL_27;
  }

  v63 = [v10 objectForKey:@"Profiles"];
  if (!v63)
  {
    createConditionInducerError("+[COConditionSession _loadExternalConditionBundleInfo:supportedConditionData:error:]", 180, -1, 0, @"Class information dictionary containing supported profiles for not found for condition %@", v14, v15, v16, v7);
    v50 = LABEL_27:;
    v24 = 0;
    v20 = 0;
    v63 = 0;
    if (!a5)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v20 = [v10 objectForKey:@"Metadata"];
  if (!v20)
  {
    createConditionInducerError("+[COConditionSession _loadExternalConditionBundleInfo:supportedConditionData:error:]", 186, -1, 0, @"Class information dictionary containing condition metadata for not found for condition %@", v17, v18, v19, v7);
    goto LABEL_31;
  }

  if (![v63 count])
  {
    createConditionInducerError("+[COConditionSession _loadExternalConditionBundleInfo:supportedConditionData:error:]", 192, -1, 0, @"Expected at least one supported profile for %@", v21, v22, v23, v7);
    v50 = LABEL_31:;
    v24 = 0;
    if (!a5)
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
      v60 = v8;
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
              if ((![v7 isEqualToString:@"ThermalCondition"] || !-[NSString isEqualToString:](v44, "isEqualToString:", @"ThermalNominal")) && (!objc_msgSend(v7, "isEqualToString:", @"GPUPerformanceState") || !-[NSString isEqualToString:](v44, "isEqualToString:", @"GPUPerformanceStateDefault")))
              {
                v47 = MEMORY[0x277CBEB38];
                v48 = [(objc_class *)v46 info];
                v49 = [v47 dictionaryWithDictionary:v48];

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
      [v59 setObject:v7 forKey:@"ConditionCacheBundlePath"];

      v50 = 0;
      v8 = v60;
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
  if (!a5)
  {
    goto LABEL_38;
  }

LABEL_36:
  if (v50)
  {
    v51 = v50;
    *a5 = v50;
  }

LABEL_38:

  v52 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)setUpWithError:(id *)a3
{
  v5 = [(COConditionSession *)self condition];

  if (!v5)
  {
    v31 = createConditionInducerError("[COConditionSession setUpWithError:]", 261, -1, 0, @"Need a valid condition first", v6, v7, v8, v43);
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v5 = [(COConditionSession *)self userFriendlyNameForSelectedProfile];
  if (!v5)
  {
    v5 = [(COConditionSession *)self selectedProfile];
  }

  v9 = [(COConditionSession *)self userFriendlyNameForSelectedCondition];
  v46 = 0;
  v10 = [(COConditionSession *)self createStatusBar:@"setting up" conditionClassDescription:v9 withProfileDescription:v5 error:&v46];
  v11 = v46;

  if (!v10)
  {
    v31 = createConditionInducerError("[COConditionSession setUpWithError:]", 272, -1, v11, @"Failed to create status bar with title 'Setup'.", v12, v13, v14, v43);

    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v15 = [(COConditionSession *)self condition];
  v16 = [v15 active];

  if (v16)
  {
    v17 = [(COConditionSession *)self condition];
    [v17 tearDown];
  }

  v18 = [(COConditionSession *)self additionalArguments];
  v19 = [(COConditionSession *)self condition];
  [v19 setAdditionalArguments:v18];

  v20 = [(COConditionSession *)self condition];
  v21 = [(COConditionSession *)self additionalArguments];
  v22 = [(COConditionSession *)self bundle];
  v45 = v11;
  LOBYTE(v18) = [COConditionSession updateConditionCache:1 forCondition:v20 additionalArguments:v21 conditionBundle:v22 error:&v45];
  v23 = v45;

  if ((v18 & 1) == 0)
  {
    v36 = @"Failed to update cache.";
    v37 = 284;
    v38 = v23;
    goto LABEL_17;
  }

  v27 = [(COConditionSession *)self condition];
  v28 = [v27 setUp];

  if ((v28 & 1) == 0)
  {
    v36 = @"Failed to set up condition.";
    v37 = 289;
    v38 = 0;
LABEL_17:
    v31 = createConditionInducerError("[COConditionSession setUpWithError:]", v37, -1, v38, v36, v24, v25, v26, v43);

    if (!a3)
    {
LABEL_19:
      v40 = [(COConditionSession *)self userFriendlyNameForSelectedCondition];
      [(COConditionSession *)self createStatusBar:@"tearing down" conditionClassDescription:v40 withProfileDescription:v5 error:0];

      [(COConditionSession *)self tearDownWithError:0];
      v35 = 0;
      goto LABEL_20;
    }

LABEL_18:
    v39 = v31;
    *a3 = v31;
    goto LABEL_19;
  }

  v29 = [(COConditionSession *)self userFriendlyNameForSelectedCondition];
  v44 = v23;
  v30 = [(COConditionSession *)self createStatusBar:@"running" conditionClassDescription:v29 withProfileDescription:v5 error:&v44];
  v31 = v44;

  if (!v30)
  {
    v42 = createConditionInducerError("[COConditionSession setUpWithError:]", 294, -1, v31, @"Failed to create status bar with title 'Running'.", v32, v33, v34, v43);

    v31 = v42;
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v35 = 1;
LABEL_20:

  return v35;
}

- (BOOL)tearDownWithError:(id *)a3
{
  v5 = [(COConditionSession *)self userFriendlyNameForSelectedProfile];
  v6 = [(COConditionSession *)self condition];

  if (v6)
  {
    if (!v5)
    {
      v5 = [(COConditionSession *)self selectedProfile];
    }

    v10 = [(COConditionSession *)self userFriendlyNameForSelectedCondition];
    v11 = [(COConditionSession *)self createStatusBar:@"tearing down" conditionClassDescription:v10 withProfileDescription:v5 error:a3];

    if (v11)
    {
      v12 = [(COConditionSession *)self condition];
      [v12 tearDown];

      v13 = [(COConditionSession *)self condition];
      v14 = [(COConditionSession *)self additionalArguments];
      v15 = [(COConditionSession *)self bundle];
      [COConditionSession updateConditionCache:0 forCondition:v13 additionalArguments:v14 conditionBundle:v15 error:0];

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
  if (a3)
  {
    v22 = v21;
    v17 = 0;
    *a3 = v16;
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
  v3 = [(COConditionSession *)self condition];
  if (v3)
  {
    v4 = [(COConditionSession *)self condition];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getBundleURLsAtPath:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:a3];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v23[0] = *MEMORY[0x277CBE868];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v6 = [v4 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:v5 options:7 error:0];

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
        v14 = [v13 pathExtension];
        v15 = v14;
        if (v14 && ![v14 caseInsensitiveCompare:@"bundle"])
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

+ (id)bundleToDict:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [[COConditionBundle alloc] initWithURL:v3];
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
        v38 = v3;
        v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v10 = objc_alloc(MEMORY[0x277CBEB18]);
        v11 = [(COConditionBundle *)v5 conditions];
        v12 = [v10 initWithCapacity:{objc_msgSend(v11, "count")}];

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = v5;
        v13 = [(COConditionBundle *)v5 conditions];
        v14 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v39 + 1) + 8 * i);
              v19 = MEMORY[0x277CBEB38];
              v20 = [v18 info];
              v21 = [v19 dictionaryWithDictionary:v20];

              v22 = NSStringFromClass(v18);
              [v21 setValue:v22 forKey:@"ConditionBundleProfile"];

              [v12 addObject:v21];
              v23 = NSStringFromClass(v18);
              [v9 setValue:v21 forKey:v23];
            }

            v15 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
          }

          while (v15);
        }

        v24 = v36;
        [v36 setObject:v12 forKey:@"ConditionBundleArray"];
        v5 = v37;
        v25 = [(COConditionBundle *)v37 principalClass];
        if (v25)
        {
          v26 = objc_alloc_init(v25);
          v27 = [v26 userFriendlyName];
          if (v27)
          {
            [v36 setObject:v27 forKey:@"ConditionUserFriendlyName"];
          }

          v28 = [v26 identifierName];
          if (v28)
          {
            [v36 setObject:v28 forKey:@"ConditionIdentifierName"];
          }

          v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v26, "isDestructive")}];
          [v36 setObject:v29 forKey:@"ConditionIsDestructive"];

          v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v26, "isInternalOnly")}];
          [v36 setObject:v30 forKey:@"ConditionIsInternalOnly"];

          v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v26, "persistsAfterReboot")}];
          [v36 setObject:v31 forKey:@"ConditionPersistsAfterReboot"];

          v3 = v38;
          v32 = v35;
        }

        else
        {
          v3 = v38;
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
        [(COConditionSession *)v3 bundleToDict:v8];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [COConditionSession bundleToDict:v3];
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

- (BOOL)loadProfileForBundle:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(COConditionSession *)self bundle];

  if (v7)
  {
    v11 = [(COConditionSession *)self bundle];
    v12 = [v11 classNamed:v6];

    if (v12)
    {
      v16 = objc_alloc_init(v12);
      [(COConditionSession *)self setCondition:v16];

      v17 = [(COConditionSession *)self condition];

      if (v17)
      {
        v21 = 0;
        v22 = 1;
        goto LABEL_11;
      }

      createConditionInducerError("[COConditionSession loadProfileForBundle:withError:]", 448, -1, 0, @"Failed to instantiate %@", v18, v19, v20, v6);
    }

    else
    {
      createConditionInducerError("[COConditionSession loadProfileForBundle:withError:]", 442, -1, 0, @"Failed to load class %@", v13, v14, v15, v6);
    }
  }

  else
  {
    createConditionInducerError("[COConditionSession loadProfileForBundle:withError:]", 436, -1, 0, @"No bundle loaded for %@", v8, v9, v10, v6);
  }
  v21 = ;
  if (a4)
  {
    v21 = v21;
    v22 = 0;
    *a4 = v21;
  }

  else
  {
    v22 = 0;
  }

LABEL_11:

  return v22;
}

- (BOOL)_setupBundleAtPath:(id)a3 withError:(id *)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (!v9)
  {
    v21 = @"Must supply valid bundle URL to loadBundle";
    v22 = 469;
    goto LABEL_11;
  }

  v10 = [[COConditionBundle alloc] initWithURL:v9];
  [(COConditionSession *)self setBundle:v10];

  v11 = [(COConditionSession *)self bundle];

  if (!v11)
  {
    v23 = [v9 path];
    v27 = createConditionInducerError("[COConditionSession _setupBundleAtPath:withError:]", 475, -1, 0, @"Failed to initialize bundle for %@.", v24, v25, v26, v23);

    if (a4)
    {
LABEL_12:
      v29 = v27;
      v28 = 0;
      *a4 = v27;
      goto LABEL_23;
    }

LABEL_9:
    v28 = 0;
    goto LABEL_23;
  }

  v12 = [(COConditionSession *)self bundle];
  v13 = [v12 loadAndReturnError:a4];

  if ((v13 & 1) == 0)
  {
    v21 = @"Failed to load bundle.";
    v22 = 480;
LABEL_11:
    v27 = createConditionInducerError("[COConditionSession _setupBundleAtPath:withError:]", v22, -1, 0, v21, v6, v7, v8, v43);
    if (a4)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v14 = [(COConditionSession *)self bundle];
  v15 = [v14 objectForInfoDictionaryKey:@"ProhibitOnCarryDevice"];
  [(COConditionSession *)self setWarning:v15];

  v16 = [(COConditionSession *)self warning];

  if (!v16)
  {
    v20 = @"Danger! - This condition has potential to corrupt user data";
    v19 = self;
    goto LABEL_14;
  }

  v17 = [(COConditionSession *)self warning];
  v18 = [v17 length];

  if (!v18)
  {
    v19 = self;
    v20 = 0;
LABEL_14:
    [(COConditionSession *)v19 setWarning:v20];
  }

  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(COConditionSession *)self setClassDict:v30];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v31 = [(COConditionSession *)self bundle];
  v32 = [v31 conditions];

  v33 = [v32 countByEnumeratingWithState:&v44 objects:v48 count:16];
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
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v44 + 1) + 8 * i);
        v38 = [(COConditionSession *)self classDict];
        v39 = [v37 description];
        v40 = NSStringFromClass(v37);
        [v38 setValue:v39 forKey:v40];
      }

      v34 = [v32 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v34);
  }

  v27 = 0;
  v28 = 1;
LABEL_23:

  v41 = *MEMORY[0x277D85DE8];
  return v28;
}

+ (id)findBundleURLForConditionClass:(id)a3 andError:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/AppleInternal/Tests/com.apple.ConditionInducer"];
  v7 = [v5 pathExtension];
  v8 = [v7 caseInsensitiveCompare:@"bundle"];

  if (v8)
  {
    v9 = [v5 stringByAppendingPathExtension:@"bundle"];

    v5 = v9;
  }

  v10 = objc_alloc(MEMORY[0x277CBEBC0]);
  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6 isDirectory:1];
  v12 = [v10 initFileURLWithPath:v5 relativeToURL:v11];

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
  v17 = createConditionInducerError("+[COConditionSession findBundleURLForConditionClass:andError:]", 524, -1, 0, @"Failed to create bundle URL (%@)", v13, v14, v15, v5);

  if (a4)
  {
    v20 = v17;
    v18 = 0;
    *a4 = v17;
  }

  else
  {
    v18 = 0;
  }

LABEL_10:

  return v18;
}

- (BOOL)loadBundleWithPath:(id)a3 andError:(id *)a4
{
  v6 = a3;
  v10 = v6;
  if (!v6)
  {
    v17 = createConditionInducerError("[COConditionSession loadBundleWithPath:andError:]", 543, -1, 0, @"Invalid path to bundle", v7, v8, v9, v31);
    v11 = 0;
    if (!a4)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v11 = [v6 stringByExpandingTildeInPath];

  if ([v11 hasPrefix:@"/"])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v11];
    v16 = 0;
    if (!v12)
    {
      v22 = 0;
      v10 = 0;
LABEL_12:
      v17 = createConditionInducerError("[COConditionSession loadBundleWithPath:andError:]", 561, -1, 0, @"Failed to create bundle URL (%@)", v13, v14, v15, v11);

      if (!a4)
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
    v10 = [COConditionSession findBundleURLForConditionClass:v11 andError:&v34];
    v16 = v34;
    if (!v10)
    {
      v17 = createConditionInducerError("[COConditionSession loadBundleWithPath:andError:]", 553, -1, 0, @"Failed to find bundle for (%@)", v18, v19, v20, v11);

      if (!a4)
      {
LABEL_17:
        v27 = 0;
        goto LABEL_18;
      }

LABEL_15:
      v28 = v17;
      v27 = 0;
      *a4 = v17;
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
    if (!a4)
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

- (BOOL)createStatusBar:(id)a3 conditionClassDescription:(id)a4 withProfileDescription:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v15 = a5;
  if (v10)
  {
    v16 = [(COConditionSession *)self statusBar];

    if (!v16)
    {
      v17 = [COStatusBar alloc];
      v18 = [(COConditionSession *)self notifyTeardownBeganCallback];
      v19 = [(COConditionSession *)self statusBarPopupFinishedTeardownCallback];
      v20 = [(COStatusBar *)v17 initWithConditionClass:v11 profile:v15 teardownBeganCb:v18 teardownCompleteCb:v19];
      [(COConditionSession *)self setStatusBar:v20];
    }

    v21 = [(COConditionSession *)self statusBar];

    if (v21)
    {
      v22 = 0;
      v23 = 1;
      goto LABEL_11;
    }

    v24 = @"Failed to initialize status bar with title %@.";
    v27 = v10;
    v25 = 601;
  }

  else
  {
    v24 = @"Must supply an action (e.g. running or setting up) for the status bar";
    v25 = 591;
  }

  v22 = createConditionInducerError("[COConditionSession createStatusBar:conditionClassDescription:withProfileDescription:error:]", v25, -1, 0, v24, v12, v13, v14, v27);
  if (a6)
  {
    v22 = v22;
    v23 = 0;
    *a6 = v22;
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

+ (id)loadConditionCacheWithError:(id *)a3
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
      v14 = 0;
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

    v14 = [v22 readDataToEndOfFile];
    if (!v14)
    {
      v9 = createConditionInducerError("+[COConditionSession loadConditionCacheWithError:]", 668, -1, 0, @"Failed to read file.", v26, v27, v28, 438);
      v10 = 0;
      v12 = 0;
      v13 = 0;
      goto LABEL_5;
    }

    v36 = 0;
    v13 = [MEMORY[0x277CCAC58] propertyListWithData:v14 options:0 format:0 error:&v36];
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
    if (!a3)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v15 = *__error();
  v16 = __error();
  strerror(*v16);
  v9 = createConditionInducerError("+[COConditionSession loadConditionCacheWithError:]", 650, -1, 0, @"Failed to open %@: %d (%s)", v17, v18, v19, @"/var/mobile/Library/Preferences/com.apple.LoadedConditionInducer.plist");
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (!v12)
  {
    v20 = v9;
    *a3 = v9;
  }

LABEL_10:

  return v12;
}

+ (BOOL)writeConditionCache:(id)a3 toFileDescriptor:(int)a4 error:(id *)a5
{
  v21 = 0;
  v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:a3 format:100 options:0 error:&v21];
  v11 = v21;
  if (v7)
  {
    lseek(a4, 0, 0);
    v12 = write(a4, [v7 bytes], objc_msgSend(v7, "length"));
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

  if (a5)
  {
    v18 = v17;
    v13 = 0;
    *a5 = v17;
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
    v4 = [(COConditionSession *)self bundle];
    v5 = [v4 bundlePath];
    v6 = [v3 objectForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)removeStaleConditions:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = +[COConditionSession getBootSessionUUID];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v3 allKeys];
  v21 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
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
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v3 objectForKey:{v10, v20}];
        v12 = [v11 objectForKey:@"ConditionCacheClassBootUUID"];
        if (v12 && [v5 compare:v12 options:1])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            [v11 objectForKeyedSubscript:@"ConditionCacheClassBootUUID"];
            v13 = v8;
            v14 = v6;
            v15 = v3;
            v17 = v16 = v4;
            *buf = v20;
            v27 = v5;
            v28 = 2112;
            v29 = v10;
            v30 = 2112;
            v31 = v17;
            _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "The current boot session is %@. Condition %@ was induced in a previous boot session (%@) and is now no longer running. Removing from cache", buf, 0x20u);

            v4 = v16;
            v3 = v15;
            v6 = v14;
            v8 = v13;
          }
        }

        else
        {
          [v4 setObject:v11 forKeyedSubscript:v10];
        }
      }

      v21 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v21);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (BOOL)updateConditionCache:(BOOL)a3 forCondition:(id)a4 additionalArguments:(id)a5 conditionBundle:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16 = a6;
  if (!v11)
  {
    v34 = @"Invalid input.";
    v35 = 773;
    goto LABEL_10;
  }

  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = [v17 fileExistsAtPath:@"/var/mobile/Library/Preferences/com.apple.LoadedConditionInducer.plist"];

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
    if (!a7)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v20 = v19;
  v74 = v12;
  v75 = v16;
  v73 = a7;
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
    v32 = 0;
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
    v41 = [v40 readDataToEndOfFile];
    if (!v41)
    {
      v26 = createConditionInducerError("+[COConditionSession updateConditionCache:forCondition:additionalArguments:conditionBundle:error:]", 805, -1, 0, @"Failed to read file.", v42, v43, v44, 438);
      v27 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v28 = v72;
      goto LABEL_6;
    }

    v78 = 0;
    v71 = v41;
    v45 = [MEMORY[0x277CCAC58] propertyListWithData:v41 options:0 format:0 error:&v78];
    v46 = v78;
    if (v45)
    {
      v67 = v45;
      v31 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v45];
      if (!v31)
      {
        v26 = createConditionInducerError("+[COConditionSession updateConditionCache:forCondition:additionalArguments:conditionBundle:error:]", 817, -1, 0, @"Failed to initialize dictionary.", v47, v48, v49, 438);

        v30 = 0;
        v32 = 0;
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
    v32 = 0;
    v33 = 0;
    v27 = v71;
    v28 = v72;
    goto LABEL_6;
  }

  v67 = 0;
LABEL_24:
  v32 = [v11 identifierName];
  if (!v32)
  {
    [v16 bundlePath];
    v53 = v68 = v46;
    v54 = [v53 lastPathComponent];
    v32 = [v54 stringByDeletingPathExtension];

    v46 = v68;
  }

  if ([COConditionSession conditionIsBundledWithFramework:v32])
  {
    v77 = v46;
    [COConditionSession prepareInfoDictForBuiltInCondition:v32 error:&v77];
    v56 = v55 = v46;
    v69 = v77;

    if (v56)
    {
      v66 = [v11 persistsAfterRebootFromDict:v56];
    }

    else
    {
      v66 = 1;
    }

    v46 = v69;
  }

  else
  {
    v66 = [v11 persistsAfterReboot];
  }

  v57 = [COConditionSession removeStaleConditions:v31];

  v70 = v57;
  if (v10)
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

    if ((v66 & 1) == 0)
    {
      v63 = +[COConditionSession getBootSessionUUID];
      [v31 setObject:v63 forKeyedSubscript:@"ConditionCacheClassBootUUID"];
    }

    if (v12)
    {
      [v31 setObject:v12 forKeyedSubscript:@"ConditionCacheClassArguments"];
    }

    v57 = v70;
    [v70 setObject:v31 forKeyedSubscript:v32];
  }

  else
  {
    [v57 removeObjectForKey:v32];
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

  v12 = v74;
  v16 = v75;
  a7 = v73;
  if (!v73)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v33)
  {
    v38 = v26;
    *a7 = v26;
  }

LABEL_13:

  return v33;
}

+ (id)prepareInfoDictForBuiltInCondition:(id)a3 error:(id *)a4
{
  v5 = a3;
  v9 = +[COConditionSession loadInformationDict];
  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SupportedConditionData"];
    v11 = [v9 objectForKey:v10];

    if (!v11)
    {
      v19 = createConditionInducerError("+[COConditionSession prepareInfoDictForBuiltInCondition:error:]", 907, -1, 0, @"Failed to load supported condition data from COCondtionSession", v12, v13, v14, v23);
      v15 = 0;
      if (!a4)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    v24 = 0;
    v15 = [COConditionSession _loadExternalConditionBundleInfo:v5 supportedConditionData:v11 error:&v24];
    v19 = v24;
    if (!v15)
    {
      v20 = createConditionInducerError("+[COConditionSession prepareInfoDictForBuiltInCondition:error:]", 913, -1, v19, @"Unable to load data for %@", v16, v17, v18, v5);

      v19 = v20;
      if (!a4)
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

  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (v19)
  {
    v21 = v19;
    *a4 = v19;
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
    v4 = [v2 infoDictionary];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[COConditionSession loadInformationDict];
    }

    v4 = 0;
  }

  return v4;
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

+ (BOOL)conditionIsBundledWithFramework:(id)a3
{
  v3 = a3;
  v4 = +[COConditionSession conditionsBundledWithFramework];
  v5 = [v4 indexOfObject:v3];

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

- (COConditionSession)initWithConditionIdentifier:(id)a3 profile:(id)a4 additionalArgs:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = COConditionSession;
  v12 = [(COConditionSession *)&v20 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_12;
  }

  objc_storeStrong(&v12->_selectedCondition, a3);
  objc_storeStrong(&v13->_selectedProfile, a4);
  if (!v9 || !v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [COConditionSession initWithConditionIdentifier:profile:additionalArgs:];
    }

    goto LABEL_10;
  }

  if (([v9 containsString:@"/"] & 1) == 0 && !objc_msgSend(v10, "containsString:", @"/"))
  {
    objc_storeStrong(&v13->_additionalArguments, a5);
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
          v12 = [v9 path];
          [v10 setObject:v12 forKey:@"ConditionCacheBundlePath"];

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
    v6 = [v4 dictionaryRepresentation];
    v8 = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = v6;
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

- (BOOL)startConditionWithCallback:(id)a3 teardownStartedCallback:(id)a4 teardownFinishedCallback:(id)a5
{
  v97 = *MEMORY[0x277D85DE8];
  v76 = a3;
  v74 = a4;
  v75 = a5;
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
  v8 = MEMORY[0x245D53520](v75);
  statusBarPopupFinishedTeardownCallback = self->_statusBarPopupFinishedTeardownCallback;
  self->_statusBarPopupFinishedTeardownCallback = v8;

  v10 = MEMORY[0x245D53520](v74);
  notifyTeardownBeganCallback = self->_notifyTeardownBeganCallback;
  self->_notifyTeardownBeganCallback = v10;

  v12 = [(COConditionSession *)self selectedCondition];
  v13 = [COConditionSession conditionIsBundledWithFramework:v12];

  if (!v13)
  {
    v17 = [(COConditionSession *)self selectedCondition];
    v18 = (v88[0] + 40);
    v83 = *(v88[0] + 40);
    v19 = [(COConditionSession *)self loadBundleWithPath:v17 andError:&v83];
    objc_storeStrong(v18, v83);

    if (v19)
    {
      v20 = [(COConditionSession *)self selectedProfile];
      v21 = (v88[0] + 40);
      v82 = *(v88[0] + 40);
      v22 = [(COConditionSession *)self loadProfileForBundle:v20 withError:&v82];
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

  v14 = [(COConditionSession *)self selectedCondition];
  v15 = (v88[0] + 40);
  obj = *(v88[0] + 40);
  v73 = [COConditionSession prepareInfoDictForBuiltInCondition:v14 error:&obj];
  objc_storeStrong(v15, obj);

  if (!v73)
  {
    v23 = *(v88[0] + 40);
    v24 = [(COConditionSession *)self selectedCondition];
    v28 = createConditionInducerError("[COConditionSession startConditionWithCallback:teardownStartedCallback:teardownFinishedCallback:]", 1124, -1, v23, @"Unable to load data for %@", v25, v26, v27, v24);
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
    v30 = [(COConditionSession *)self warning];
    v31 = [v30 length] == 0;

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
          v40 = [(COConditionSession *)self classDict];
          v41 = [(objc_class *)v39 description];
          [v40 setValue:v41 forKey:v38];
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

  v42 = [(COConditionSession *)self selectedProfile];
  v43 = NSClassFromString(v42);

  if (!v43)
  {
    v54 = [(COConditionSession *)self selectedProfile];
    v58 = createConditionInducerError("[COConditionSession startConditionWithCallback:teardownStartedCallback:teardownFinishedCallback:]", 1149, -1, 0, @"Failed to load framework class %@", v55, v56, v57, v54);
    v59 = *(v88[0] + 40);
    *(v88[0] + 40) = v58;

    goto LABEL_41;
  }

  v44 = objc_alloc_init(v43);
  [(COConditionSession *)self setCondition:v44];

  v45 = [(COConditionSession *)self condition];
  v46 = v45 == 0;

  if (v46)
  {
    v64 = [(COConditionSession *)self selectedProfile];
    v68 = createConditionInducerError("[COConditionSession startConditionWithCallback:teardownStartedCallback:teardownFinishedCallback:]", 1156, -1, 0, @"Failed to instantiate framework class %@", v65, v66, v67, v64);
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
    v48 = [(COConditionSession *)self selectedCondition];
    v49 = [(COConditionSession *)self selectedProfile];
    *buf = 138543618;
    v91 = v48;
    v92 = 2114;
    v93 = v49;
    _os_signpost_emit_with_name_impl(&dword_243E0F000, v47, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "induce-setup", "%{public}@ %{public}@", buf, 0x16u);
  }

  v50 = [(COConditionSession *)self setUpQueue];
  dispatch_sync(v50, block);

  v51 = _copySignpostLowSeverityLogHandle();
  if (os_signpost_enabled(v51))
  {
    v52 = [(COConditionSession *)self selectedCondition];
    v53 = [(COConditionSession *)self selectedProfile];
    *buf = 138543618;
    v91 = v52;
    v92 = 2114;
    v93 = v53;
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
    v61 = [(COConditionSession *)self selectedCondition];
    v62 = [(COConditionSession *)self selectedProfile];
    *buf = 138543618;
    v91 = v61;
    v92 = 2114;
    v93 = v62;
    _os_signpost_emit_with_name_impl(&dword_243E0F000, v60, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "induce", "%{public}@ %{public}@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setup Complete... Condition Running", buf, 2u);
  }

  v63 = 1;
LABEL_42:
  if (v76)
  {
    v76[2](v76, *(v88[0] + 40));
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

- (BOOL)stopConditionWithCallback:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v7 = [(COConditionSession *)self selectedCondition];
    v8 = [(COConditionSession *)self selectedProfile];
    *v20 = 138543618;
    v21 = v7;
    v22 = 2114;
    v23 = v8;
    _os_signpost_emit_with_name_impl(&dword_243E0F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "induce-teardown", "%{public}@ %{public}@", v20, 0x16u);
  }

  v9 = [(COConditionSession *)self tearDownQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__COConditionSession_stopConditionWithCallback___block_invoke;
  v19[3] = &unk_278DF7EE0;
  v19[4] = self;
  v19[5] = &buf;
  dispatch_sync(v9, v19);

  v10 = [(COConditionSession *)self setUpQueue];
  dispatch_sync(v10, &__block_literal_global_1);

  v11 = _copySignpostLowSeverityLogHandle();
  if (os_signpost_enabled(v11))
  {
    v12 = [(COConditionSession *)self selectedCondition];
    v13 = [(COConditionSession *)self selectedProfile];
    *v20 = 138543618;
    v21 = v12;
    v22 = 2114;
    v23 = v13;
    _os_signpost_emit_with_name_impl(&dword_243E0F000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "induce-teardown", "%{public}@ %{public}@", v20, 0x16u);
  }

  v14 = _copySignpostLowSeverityLogHandle();
  if (os_signpost_enabled(v14))
  {
    v15 = [(COConditionSession *)self selectedCondition];
    v16 = [(COConditionSession *)self selectedProfile];
    *v20 = 138543618;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    _os_signpost_emit_with_name_impl(&dword_243E0F000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "induce", "%{public}@ %{public}@", v20, 0x16u);
  }

  if (v4 && *(*(&buf + 1) + 40))
  {
    v4[2](v4);
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

+ (BOOL)tearDownAllConditionsWithErrors:(id *)a3
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

  if (!((a3 == 0) | v4 & 1))
  {
    v30 = v36;
    v4 = 0;
    *a3 = v36;
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
  v1 = [a1 selectedCondition];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)userFriendlyNameForSelectedProfile
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 selectedProfile];
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