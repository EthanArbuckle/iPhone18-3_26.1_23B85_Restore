@interface SAIntentGroupGetIntentDefinitions(INSExtensionService)
- (uint64_t)_matchesIntentDefinition:()INSExtensionService;
- (void)ins_getIntentDefinitionsWithCompletionHandler:()INSExtensionService;
@end

@implementation SAIntentGroupGetIntentDefinitions(INSExtensionService)

- (uint64_t)_matchesIntentDefinition:()INSExtensionService
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CD38C8];
  v6 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v67 = "[SAIntentGroupGetIntentDefinitions(INSExtensionService) _matchesIntentDefinition:]";
    v68 = 2112;
    v69 = v4;
    _os_log_debug_impl(&dword_25553C000, v6, OS_LOG_TYPE_DEBUG, "%s Checking if Intent Definition at %@ matches query", buf, 0x16u);
  }

  v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:@"INIntents"];
    v10 = v9;
    if (v9)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v11 = v9;
      v47 = [v11 countByEnumeratingWithState:&v59 objects:v65 count:16];
      if (v47)
      {
        v48 = *v60;
        v44 = v11;
        v45 = v4;
        v42 = v10;
        v43 = v8;
        v40 = a1;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v60 != v48)
            {
              objc_enumerationMutation(v11);
            }

            v13 = *(*(&v59 + 1) + 8 * i);
            v14 = [v13 objectForKeyedSubscript:@"INIntentEntity"];
            v15 = [v13 objectForKeyedSubscript:@"INIntentVerbAssociations"];
            v16 = v15;
            if (v14)
            {
              v17 = v15 == 0;
            }

            else
            {
              v17 = 1;
            }

            if (v17)
            {
              v18 = *v5;
              if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v67 = "[SAIntentGroupGetIntentDefinitions(INSExtensionService) _matchesIntentDefinition:]";
                v68 = 2112;
                v69 = v4;
                _os_log_debug_impl(&dword_25553C000, v18, OS_LOG_TYPE_DEBUG, "%s Intent Definition at %@ has no entity or verb section", buf, 0x16u);
              }
            }

            else
            {
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              obj = [a1 queries];
              v19 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
              v49 = v19;
              if (v19)
              {
                v46 = *v56;
                v41 = v16;
                do
                {
                  v20 = 0;
                  v21 = v46;
                  do
                  {
                    if (*v56 != v21)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v22 = *(*(&v55 + 1) + 8 * v20);
                    v23 = [v22 entity];
                    v24 = [v14 caseInsensitiveCompare:v23];

                    if (!v24)
                    {
                      v53 = 0u;
                      v54 = 0u;
                      v51 = 0u;
                      v52 = 0u;
                      v25 = v16;
                      v26 = [v25 countByEnumeratingWithState:&v51 objects:v63 count:16];
                      if (v26)
                      {
                        v27 = v26;
                        v28 = *v52;
                        while (2)
                        {
                          for (j = 0; j != v27; ++j)
                          {
                            if (*v52 != v28)
                            {
                              objc_enumerationMutation(v25);
                            }

                            v30 = *(*(&v51 + 1) + 8 * j);
                            v31 = [v22 verb];
                            v32 = [v30 caseInsensitiveCompare:v31];

                            if (!v32)
                            {
                              v36 = *MEMORY[0x277CD38C8];
                              v4 = v45;
                              if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_DEBUG))
                              {
                                *buf = 136315394;
                                v67 = "[SAIntentGroupGetIntentDefinitions(INSExtensionService) _matchesIntentDefinition:]";
                                v68 = 2112;
                                v69 = v45;
                                _os_log_debug_impl(&dword_25553C000, v36, OS_LOG_TYPE_DEBUG, "%s Intent Definition at %@ matches current request", buf, 0x16u);
                              }

                              v35 = 1;
                              v10 = v42;
                              v8 = v43;
                              goto LABEL_47;
                            }
                          }

                          v27 = [v25 countByEnumeratingWithState:&v51 objects:v63 count:16];
                          if (v27)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      v16 = v41;
                      v21 = v46;
                    }

                    ++v20;
                  }

                  while (v20 != v49);
                  v33 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
                  v11 = v44;
                  v4 = v45;
                  a1 = v40;
                  v5 = MEMORY[0x277CD38C8];
                  v49 = v33;
                }

                while (v33);
              }
            }
          }

          v10 = v42;
          v8 = v43;
          v47 = [v11 countByEnumeratingWithState:&v59 objects:v65 count:16];
        }

        while (v47);
      }

      v34 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v67 = "[SAIntentGroupGetIntentDefinitions(INSExtensionService) _matchesIntentDefinition:]";
        v68 = 2112;
        v69 = v4;
        _os_log_debug_impl(&dword_25553C000, v34, OS_LOG_TYPE_DEBUG, "%s Intent Definition at %@ does not match", buf, 0x16u);
      }
    }

    else
    {
      v37 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v67 = "[SAIntentGroupGetIntentDefinitions(INSExtensionService) _matchesIntentDefinition:]";
        v68 = 2112;
        v69 = v4;
        _os_log_impl(&dword_25553C000, v37, OS_LOG_TYPE_INFO, "%s Intent Definition at %@ has no INIntents section", buf, 0x16u);
      }
    }

    v35 = 0;
LABEL_47:
  }

  else
  {
    v35 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v35;
}

- (void)ins_getIntentDefinitionsWithCompletionHandler:()INSExtensionService
{
  v37 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v4 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_DEBUG))
  {
    v23 = v4;
    v24 = [a1 queries];
    *buf = 136315394;
    v34 = "[SAIntentGroupGetIntentDefinitions(INSExtensionService) ins_getIntentDefinitionsWithCompletionHandler:]";
    v35 = 2112;
    v36 = v24;
    _os_log_debug_impl(&dword_25553C000, v23, OS_LOG_TYPE_DEBUG, "%s Finding intent definitions for GetIntentDefinition query: %@", buf, 0x16u);
  }

  v5 = INIntentDefinitionURLsForInstalledApps();
  v6 = objc_alloc_init(MEMORY[0x277D473C8]);
  v7 = [a1 aceId];
  v25 = v6;
  [v6 setRefId:v7];

  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if ([a1 _matchesIntentDefinition:v14])
        {
          v15 = objc_alloc(MEMORY[0x277CBEA90]);
          v27 = 0;
          v16 = [v15 initWithContentsOfURL:v14 options:1 error:&v27];
          v17 = v27;
          if (v17)
          {
            v21 = v17;
            v20 = v26;
            (*(v26 + 2))(v26, 0, v17);

            v19 = v25;
            goto LABEL_15;
          }

          v18 = objc_alloc_init(MEMORY[0x277D473E0]);
          [v18 setIntentDefinition:v16];
          [v8 addObject:v18];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v19 = v6;
  [v6 setIntentDefinitionInfos:v8];
  v20 = v26;
  (*(v26 + 2))(v26, v25, 0);
LABEL_15:

  v22 = *MEMORY[0x277D85DE8];
}

@end