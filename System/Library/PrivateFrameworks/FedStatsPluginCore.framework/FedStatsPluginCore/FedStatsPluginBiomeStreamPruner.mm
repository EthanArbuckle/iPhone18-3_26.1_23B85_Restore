@interface FedStatsPluginBiomeStreamPruner
+ (id)sharedInstance;
+ (void)pruneBiomeStream:(id)a3 forNamespace:(id)a4 eventsPassingTest:(id)a5;
- (FedStatsPluginBiomeStreamPruner)initWithBiomeStreamAssociation:(id)a3;
@end

@implementation FedStatsPluginBiomeStreamPruner

- (FedStatsPluginBiomeStreamPruner)initWithBiomeStreamAssociation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FedStatsPluginBiomeStreamPruner;
  v6 = [(FedStatsPluginBiomeStreamPruner *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_biomeStreamAssociation, a3);
  }

  return v7;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FedStatsPluginBiomeStreamPruner sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke()
{
  v64 = *MEMORY[0x277D85DE8];
  v0 = SecTaskCreateFromSelf(0);
  error = 0;
  v1 = SecTaskCopyValueForEntitlement(v0, @"com.apple.private.biome.read-write", &error);
  if (!error)
  {
    CFRelease(v0);
    if (error)
    {
      CFRelease(error);
    }

    if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v4 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_2();
      }
    }

    else
    {
      v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v4 = v3;
      if (v3)
      {
        v5 = [v3 URLForResource:@"FedStatsPluginPrunableStreams" withExtension:@"plist"];
        if (v5)
        {
          v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v5];
          v7 = v6;
          if (v6)
          {
            v33 = v5;
            v34 = v4;
            v42 = v1;
            v8 = [v6 mutableCopy];
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v32 = v7;
            v9 = v7;
            v10 = [v9 countByEnumeratingWithState:&v47 objects:v63 count:16];
            if (!v10)
            {
              goto LABEL_46;
            }

            v11 = v10;
            v12 = *v48;
            v13 = 0x277CBE000uLL;
            v36 = v9;
            v37 = v8;
            v35 = *v48;
            while (1)
            {
              v14 = 0;
              v38 = v11;
              do
              {
                if (*v48 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v15 = *(*(&v47 + 1) + 8 * v14);
                v16 = +[FedStatsPluginLog logger];
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v53 = v15;
                  _os_log_debug_impl(&dword_24AB24000, v16, OS_LOG_TYPE_DEBUG, "Processing Biome stream association for namespace %@", buf, 0xCu);
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v40 = v15;
                  v41 = v14;
                  v17 = [v9 objectForKey:v15];
                  v18 = *(v13 + 2656);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSObject count](v17, "count")}];
                    v43 = 0u;
                    v44 = 0u;
                    v45 = 0u;
                    v46 = 0u;
                    v39 = v17;
                    v20 = v17;
                    v21 = [v20 countByEnumeratingWithState:&v43 objects:v58 count:16];
                    if (!v21)
                    {
                      goto LABEL_38;
                    }

                    v22 = v21;
                    v23 = *v44;
                    while (1)
                    {
                      for (i = 0; i != v22; ++i)
                      {
                        if (*v44 != v23)
                        {
                          objc_enumerationMutation(v20);
                        }

                        v25 = *(*(&v43 + 1) + 8 * i);
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          v28 = +[FedStatsPluginLog logger];
                          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                          {
                            __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_3(v56, &v57, v28);
                          }

                          goto LABEL_35;
                        }

                        v26 = [v42 containsObject:v25];
                        v27 = +[FedStatsPluginLog logger];
                        v28 = v27;
                        if ((v26 & 1) == 0)
                        {
                          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            v53 = v25;
                            _os_log_error_impl(&dword_24AB24000, v28, OS_LOG_TYPE_ERROR, "The stream %@ is not entitled to be written", buf, 0xCu);
                          }

LABEL_35:

                          continue;
                        }

                        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138412546;
                          v53 = v25;
                          v54 = 2112;
                          v55 = @"com.apple.private.biome.read-write";
                          _os_log_debug_impl(&dword_24AB24000, v28, OS_LOG_TYPE_DEBUG, "Found the stream %@ in %@ entitlement", buf, 0x16u);
                        }

                        [v19 addObject:v25];
                      }

                      v22 = [v20 countByEnumeratingWithState:&v43 objects:v58 count:16];
                      if (!v22)
                      {
LABEL_38:

                        v8 = v37;
                        [v37 setObject:v19 forKey:v40];
                        v12 = v35;
                        v9 = v36;
                        v11 = v38;
                        v17 = v39;
                        v13 = 0x277CBE000;
                        goto LABEL_43;
                      }
                    }
                  }

                  v19 = +[FedStatsPluginLog logger];
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                  {
                    __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_3(v59, &v60, v19);
                  }

LABEL_43:

                  v14 = v41;
                }

                else
                {
                  v17 = +[FedStatsPluginLog logger];
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_3(v61, &v62, v17);
                  }
                }

                ++v14;
              }

              while (v14 != v11);
              v11 = [v9 countByEnumeratingWithState:&v47 objects:v63 count:16];
              if (!v11)
              {
LABEL_46:

                v29 = [[FedStatsPluginBiomeStreamPruner alloc] initWithBiomeStreamAssociation:v8];
                v30 = sharedInstance_sharedInstance;
                sharedInstance_sharedInstance = v29;

                v1 = v42;
                v5 = v33;
                v4 = v34;
                v7 = v32;
                goto LABEL_55;
              }
            }
          }

          v8 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_6();
          }

LABEL_55:
        }

        else
        {
          v7 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_7();
          }
        }
      }

      else
      {
        v5 = +[FedStatsPluginLog logger];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_8();
        }
      }
    }

    goto LABEL_59;
  }

  v2 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_1(&error, v2);
  }

  CFRelease(error);
  CFRelease(v0);
LABEL_59:

  v31 = *MEMORY[0x277D85DE8];
}

+ (void)pruneBiomeStream:(id)a3 forNamespace:(id)a4 eventsPassingTest:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[FedStatsPluginBiomeStreamPruner sharedInstance];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 biomeStreamAssociation];
    v13 = [v12 objectForKey:v8];

    if (v13)
    {
      if (([v13 containsObject:v7]& 1) != 0)
      {
        v14 = BiomeLibrary();
        v25 = 0;
        v15 = [v14 streamWithIdentifier:v7 error:&v25];
        v16 = v25;

        if (v15)
        {
          v23 = 0;
          v24[0] = &v23;
          v24[1] = 0x2020000000;
          v24[2] = 0;
          v17 = [v15 pruner];
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __83__FedStatsPluginBiomeStreamPruner_pruneBiomeStream_forNamespace_eventsPassingTest___block_invoke;
          v20[3] = &unk_278FF7900;
          v21 = v9;
          v22 = &v23;
          [v17 deleteWithPolicy:@"fedstats-pruner" eventsPassingTest:v20];

          v18 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [FedStatsPluginBiomeStreamPruner pruneBiomeStream:v24 forNamespace:? eventsPassingTest:?];
          }

          _Block_object_dispose(&v23, 8);
        }

        else
        {
          v19 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [FedStatsPluginBiomeStreamPruner pruneBiomeStream:v7 forNamespace:? eventsPassingTest:?];
          }
        }
      }

      else
      {
        v16 = +[FedStatsPluginLog logger];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [FedStatsPluginBiomeStreamPruner pruneBiomeStream:v7 forNamespace:? eventsPassingTest:?];
        }
      }
    }

    else
    {
      v16 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [FedStatsPluginBiomeStreamPruner pruneBiomeStream:v8 forNamespace:v16 eventsPassingTest:?];
      }
    }
  }

  else
  {
    v13 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[FedStatsPluginBiomeStreamPruner pruneBiomeStream:forNamespace:eventsPassingTest:];
    }
  }
}

uint64_t __83__FedStatsPluginBiomeStreamPruner_pruneBiomeStream_forNamespace_eventsPassingTest___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

void __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_24AB24000, a2, OS_LOG_TYPE_ERROR, "Cannot read entitlement for the current process: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 138412290;
  *a2 = @"Prunable streams file must have strings as keys and array of strings as values";
  OUTLINED_FUNCTION_3(&dword_24AB24000, a2, a3, "%@", a1);
}

+ (void)pruneBiomeStream:(uint64_t)a1 forNamespace:eventsPassingTest:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_24AB24000, v1, v2, "The stream '%@' is not prunable for %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)pruneBiomeStream:(uint64_t)a1 forNamespace:eventsPassingTest:.cold.2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 134218242;
  *(&v4 + 4) = *(*a1 + 24);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_24AB24000, v1, v2, "Pruned %lu events from %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)pruneBiomeStream:(uint64_t)a1 forNamespace:eventsPassingTest:.cold.3(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_24AB24000, v1, OS_LOG_TYPE_ERROR, "Cannot find the stream %@. Error: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)pruneBiomeStream:(uint64_t)a1 forNamespace:(NSObject *)a2 eventsPassingTest:.cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_24AB24000, a2, OS_LOG_TYPE_DEBUG, "No streams are available to prune for namespace %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end