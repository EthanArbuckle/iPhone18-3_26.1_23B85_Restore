@interface CESRContextualEntityConfig
- (BOOL)_parseJsonObject:(id)object;
- (CESRContextualEntityConfig)initWithJsonObject:(id)object;
@end

@implementation CESRContextualEntityConfig

- (BOOL)_parseJsonObject:(id)object
{
  v97 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objectCopy objectForKeyedSubscript:@"contextualEntityRetrieval"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [v6 objectForKeyedSubscript:@"enablement"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
        v9 = [v8 objectForKeyedSubscript:@"shouldRetrieve"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bOOLValue = [v9 BOOLValue];
          v11 = [v8 objectForKeyedSubscript:@"shouldEnroll"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v79 = v9;
            v75 = v11;
            v12 = -[CESRContextualEntityEnablementConfig initWithShouldRetrieve:shouldEnroll:]([CESRContextualEntityEnablementConfig alloc], "initWithShouldRetrieve:shouldEnroll:", bOOLValue, [v11 BOOLValue]);
            enablementConfig = self->_enablementConfig;
            self->_enablementConfig = v12;

            v14 = [v6 objectForKeyedSubscript:@"retrieval"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
              v16 = [v15 objectForKeyedSubscript:@"maxNumEnrolled"];
              objc_opt_class();
              v73 = v16;
              v74 = v15;
              if (objc_opt_isKindOfClass())
              {
                v71 = v14;
                integerValue = [v16 integerValue];
                v17 = [v15 objectForKeyedSubscript:@"retrievalTimeout"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v64 = v17;
                  [v17 doubleValue];
                  v19 = v18;
                  v20 = [v15 objectForKeyedSubscript:@"maxEntityChars"];
                  objc_opt_class();
                  v63 = v20;
                  if (objc_opt_isKindOfClass())
                  {
                    integerValue2 = [v20 integerValue];
                    v62 = [v15 objectForKeyedSubscript:@"maxEntityWords"];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      integerValue3 = [v62 integerValue];
                      v22 = [v15 objectForKeyedSubscript:@"rejectedContextTypes"];
                      objc_opt_class();
                      v59 = v22;
                      if (objc_opt_isKindOfClass())
                      {
                        v56 = integerValue3;
                        v57 = v8;
                        v58 = v6;
                        v23 = v22;
                        array = [MEMORY[0x277CBEB18] array];
                        v90 = 0u;
                        v91 = 0u;
                        v92 = 0u;
                        v93 = 0u;
                        obj = v23;
                        v24 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
                        if (v24)
                        {
                          v25 = v24;
                          v26 = *v91;
                          do
                          {
                            for (i = 0; i != v25; ++i)
                            {
                              if (*v91 != v26)
                              {
                                objc_enumerationMutation(obj);
                              }

                              v28 = *(*(&v90 + 1) + 8 * i);
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) != 0 && [v28 length])
                              {
                                [array addObject:v28];
                              }
                            }

                            v25 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
                          }

                          while (v25);
                        }

                        v29 = [v74 objectForKeyedSubscript:@"rejectedBundleTypes"];
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v54 = v7;
                          v55 = v29;
                          v30 = v29;
                          dictionary = [MEMORY[0x277CBEB38] dictionary];
                          v86 = 0u;
                          v87 = 0u;
                          v88 = 0u;
                          v89 = 0u;
                          v78 = v30;
                          v31 = [v78 countByEnumeratingWithState:&v86 objects:v95 count:16];
                          v9 = v79;
                          if (v31)
                          {
                            v32 = v31;
                            v33 = *v87;
                            do
                            {
                              v34 = 0;
                              v76 = v32;
                              do
                              {
                                if (*v87 != v33)
                                {
                                  objc_enumerationMutation(v78);
                                }

                                v35 = *(*(&v86 + 1) + 8 * v34);
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v36 = v35;
                                  v37 = [v36 objectForKeyedSubscript:@"sourceBundleId"];
                                  objc_opt_class();
                                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v37 length])
                                  {
                                    v38 = v37;
                                    v39 = [v36 objectForKeyedSubscript:@"entityName"];
                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) != 0 && [v39 length])
                                    {
                                      v69 = v39;
                                      v40 = [dictionary objectForKeyedSubscript:?];
                                      v67 = v40;
                                      if (v40)
                                      {
                                        [dictionary setObject:v40 forKeyedSubscript:v38];
                                      }

                                      else
                                      {
                                        v61 = [MEMORY[0x277CBEB58] set];
                                        [dictionary setObject:v61 forKeyedSubscript:v38];
                                      }

                                      v68 = [dictionary objectForKeyedSubscript:v38];
                                      [v68 addObject:v69];
                                    }

                                    v9 = v79;
                                  }

                                  v32 = v76;
                                }

                                ++v34;
                              }

                              while (v32 != v34);
                              v32 = [v78 countByEnumeratingWithState:&v86 objects:v95 count:16];
                            }

                            while (v32);
                          }

                          v41 = [v74 objectForKeyedSubscript:@"enabledTasks"];
                          objc_opt_class();
                          isKindOfClass = objc_opt_isKindOfClass();
                          v7 = v54;
                          if (isKindOfClass)
                          {
                            v70 = v41;
                            v43 = v41;
                            array2 = [MEMORY[0x277CBEB18] array];
                            v82 = 0u;
                            v83 = 0u;
                            v84 = 0u;
                            v85 = 0u;
                            v77 = v43;
                            v44 = [v77 countByEnumeratingWithState:&v82 objects:v94 count:16];
                            if (v44)
                            {
                              v45 = v44;
                              v46 = *v83;
                              do
                              {
                                for (j = 0; j != v45; ++j)
                                {
                                  if (*v83 != v46)
                                  {
                                    objc_enumerationMutation(v77);
                                  }

                                  v48 = *(*(&v82 + 1) + 8 * j);
                                  objc_opt_class();
                                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v48 length])
                                  {
                                    [array2 addObject:v48];
                                  }
                                }

                                v45 = [v77 countByEnumeratingWithState:&v82 objects:v94 count:16];
                              }

                              while (v45);
                            }

                            v49 = [[CESRContextualEntityRetrievalConfig alloc] initWithMaxNumEnrolled:integerValue retrievalTimeout:integerValue2 maxEntityChars:v56 maxEntityWords:obj rejectedContextTypes:dictionary rejectedBundleTypes:v77 enabledTasks:v19];
                            retrievalConfig = self->_retrievalConfig;
                            self->_retrievalConfig = v49;

                            v9 = v79;
                            v41 = v70;
                          }

                          v8 = v57;
                          v6 = v58;
                          v29 = v55;
                        }

                        else
                        {
                          isKindOfClass = 0;
                          v8 = v57;
                          v9 = v79;
                        }
                      }

                      else
                      {
                        isKindOfClass = 0;
                        v9 = v79;
                      }

                      v11 = v75;
                      v17 = v64;
                      v51 = v62;
                    }

                    else
                    {
                      isKindOfClass = 0;
                      v9 = v79;
                      v11 = v75;
                      v17 = v64;
                      v51 = v62;
                    }
                  }

                  else
                  {
                    isKindOfClass = 0;
                    v9 = v79;
                    v11 = v75;
                    v17 = v64;
                  }
                }

                else
                {
                  isKindOfClass = 0;
                  v9 = v79;
                  v11 = v75;
                }

                v14 = v71;
              }

              else
              {
                isKindOfClass = 0;
                v9 = v79;
                v11 = v75;
              }
            }

            else
            {
              isKindOfClass = 0;
            }
          }

          else
          {
            isKindOfClass = 0;
          }
        }

        else
        {
          isKindOfClass = 0;
        }
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  v52 = *MEMORY[0x277D85DE8];
  return isKindOfClass & 1;
}

- (CESRContextualEntityConfig)initWithJsonObject:(id)object
{
  v20 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = CESRContextualEntityConfig;
  v5 = [(CESRContextualEntityConfig *)&v15 init];
  v6 = v5;
  if (!v5)
  {
LABEL_7:
    v10 = v6;
    goto LABEL_11;
  }

  v7 = [(CESRContextualEntityConfig *)v5 _parseJsonObject:objectCopy];
  v8 = MEMORY[0x277CEF0E8];
  v9 = *MEMORY[0x277CEF0E8];
  if (v7)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      enablementConfig = v6->_enablementConfig;
      *buf = 136315394;
      v17 = "[CESRContextualEntityConfig initWithJsonObject:]";
      v18 = 2112;
      v19 = enablementConfig;
      _os_log_debug_impl(&dword_225EEB000, v9, OS_LOG_TYPE_DEBUG, "%s Contextual entity enablement parameters: %@", buf, 0x16u);
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      retrievalConfig = v6->_retrievalConfig;
      *buf = 136315394;
      v17 = "[CESRContextualEntityConfig initWithJsonObject:]";
      v18 = 2112;
      v19 = retrievalConfig;
      _os_log_debug_impl(&dword_225EEB000, v9, OS_LOG_TYPE_DEBUG, "%s Contextual entity retrieval parameters: %@", buf, 0x16u);
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v17 = "[CESRContextualEntityConfig initWithJsonObject:]";
    _os_log_error_impl(&dword_225EEB000, v9, OS_LOG_TYPE_ERROR, "%s Failed to parse Contextual Retrieval section of json.", buf, 0xCu);
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

@end