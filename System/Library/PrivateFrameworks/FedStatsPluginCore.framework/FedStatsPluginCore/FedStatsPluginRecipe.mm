@interface FedStatsPluginRecipe
+ (id)recipeWithAssetProvider:(id)provider error:(id *)error;
+ (id)recipeWithAssetProvider:(id)provider recipeIdentifier:(id)identifier error:(id *)error;
- (BOOL)checkConsentWithError:(id *)error;
- (BOOL)checkDeviceOSVersionFilterWithError:(id *)error;
- (BOOL)checkDeviceRegionCodeWithError:(id *)error;
- (FedStatsPluginRecipe)initWithAssetProvider:(id)provider recipeIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier recordMetadata:(id)metadata dataTypeContent:(id)content sqlQuery:(id)query cohortNameList:(id)list defaultDonationParameters:(id)self0 maskingDataParameters:(id)self1;
- (id)accessedStreams;
- (id)assetKeysFromCollatedData:(id)data;
- (id)assetURLsForAssetKeys:(id)keys;
- (id)collateQueryResults:(id)results;
- (id)evaluateQueryWithError:(id *)error;
- (id)recordCollatedData:(id)data assetURLs:(id)ls;
- (id)runRecipeWithError:(id *)error;
@end

@implementation FedStatsPluginRecipe

- (FedStatsPluginRecipe)initWithAssetProvider:(id)provider recipeIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier recordMetadata:(id)metadata dataTypeContent:(id)content sqlQuery:(id)query cohortNameList:(id)list defaultDonationParameters:(id)self0 maskingDataParameters:(id)self1
{
  providerCopy = provider;
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  metadataCopy = metadata;
  contentCopy = content;
  queryCopy = query;
  listCopy = list;
  parametersCopy = parameters;
  dataParametersCopy = dataParameters;
  v31.receiver = self;
  v31.super_class = FedStatsPluginRecipe;
  v19 = [(FedStatsPluginRecipe *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_assetProvider, provider);
    objc_storeStrong(&v20->_recipeIdentifier, identifier);
    objc_storeStrong(&v20->_clientIdentifier, clientIdentifier);
    objc_storeStrong(&v20->_recordMetadata, metadata);
    objc_storeStrong(&v20->_dataTypeContent, content);
    objc_storeStrong(&v20->_sqlQuery, query);
    objc_storeStrong(&v20->_cohortNameList, list);
    objc_storeStrong(&v20->_defaultDonationParameters, parameters);
    objc_storeStrong(&v20->_maskingDataParameters, dataParameters);
    biomeSQL = v20->_biomeSQL;
    v20->_biomeSQL = 0;
  }

  return v20;
}

+ (id)recipeWithAssetProvider:(id)provider recipeIdentifier:(id)identifier error:(id *)error
{
  v128 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  identifierCopy = identifier;
  v119 = 0;
  v9 = [providerCopy recipeDictionaryForRecipe:identifierCopy error:&v119];
  v10 = v119;
  if (error && !v9)
  {
    *error = [FedStatsPluginError errorWithCode:100 underlyingError:v10 description:@"Trial client cannot load the recipe"];
  }

  v11 = [v9 objectForKey:@"clientIdentifier"];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [providerCopy namespaceIdentifierForRecipe:identifierCopy];
      v96 = v118 = 0;
      v12 = [FedStatsPluginClientValidator checkClientIdentifier:"checkClientIdentifier:againstNamespaceIdentifier:error:" againstNamespaceIdentifier:v11 error:?];
      v13 = 0;
      if (v12)
      {
        if ([v12 BOOLValue])
        {
          v14 = [v9 objectForKey:@"dataTypeContent"];
          v15 = v14;
          if (v14)
          {
            v93 = v12;
            v94 = v14;
            [MEMORY[0x277D08450] extractRequiredFieldsFrom:v14];
            v114 = 0u;
            v115 = 0u;
            v116 = 0u;
            obj = v117 = 0u;
            v16 = [obj countByEnumeratingWithState:&v114 objects:v127 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v115;
              v91 = v13;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v115 != v18)
                  {
                    objc_enumerationMutation(obj);
                  }

                  if (![FedStatsDataCohort checkCohortField:*(*(&v114 + 1) + 8 * i) forNamespaceID:v96])
                  {
                    if (error)
                    {
                      [FedStatsPluginError errorWithCode:100 description:@"Data type content contains required field(s) that are not allowed"];
                      *error = v30 = 0;
                    }

                    else
                    {
                      v30 = 0;
                    }

                    v20 = obj;
                    v13 = v91;
                    goto LABEL_139;
                  }
                }

                v17 = [obj countByEnumeratingWithState:&v114 objects:v127 count:16];
                v13 = v91;
              }

              while (v17);
            }

            v20 = [v9 objectForKey:@"cohorts"];
            if (!v20)
            {
              goto LABEL_29;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (error)
              {
                [FedStatsPluginError errorWithCode:100 description:@"Cohorts must be a list of strings."];
                *error = v30 = 0;
              }

              else
              {
LABEL_76:
                v30 = 0;
              }

              v12 = v93;
              goto LABEL_139;
            }

            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v86 = v20;
            v21 = [v86 countByEnumeratingWithState:&v110 objects:v126 count:16];
            if (!v21)
            {
              goto LABEL_28;
            }

            v22 = v21;
            v88 = *v111;
            v84 = v20;
LABEL_21:
            v23 = 0;
            while (1)
            {
              if (*v111 != v88)
              {
                objc_enumerationMutation(v86);
              }

              v24 = *(*(&v110 + 1) + 8 * v23);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                break;
              }

              if (![FedStatsDataCohort checkCohortField:v24 forNamespaceID:v96])
              {
                if (error)
                {
                  v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cohort field '%@' is not allowed for this namespace", v24];
                  *error = [FedStatsPluginError errorWithCode:100 description:v45];
                }

LABEL_75:
                v20 = v86;

                goto LABEL_76;
              }

              if (v22 == ++v23)
              {
                v22 = [v86 countByEnumeratingWithState:&v110 objects:v126 count:16];
                v20 = v84;
                if (v22)
                {
                  goto LABEL_21;
                }

LABEL_28:

LABEL_29:
                v85 = v20;
                v25 = *MEMORY[0x277D05410];
                v124 = *MEMORY[0x277D05410];
                v125 = &stru_285E133E0;
                v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
                v27 = *MEMORY[0x277D05390];
                v28 = [v9 objectForKey:*MEMORY[0x277D05390]];
                v87 = v28;
                if (v28)
                {
                  v122[0] = v25;
                  v122[1] = v27;
                  v123[0] = &stru_285E133E0;
                  v123[1] = v28;
                  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:2];

                  v83 = v29;
                }

                else
                {
                  v83 = v26;
                }

                v32 = [v9 objectForKey:@"sqlQuery"];
                v12 = v93;
                v20 = v85;
                v82 = v32;
                if (v32)
                {
                  v33 = v32;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v89 = v33;
                    goto LABEL_52;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v108 = 0u;
                    v109 = 0u;
                    v106 = 0u;
                    v107 = 0u;
                    v81 = v33;
                    v41 = [v81 countByEnumeratingWithState:&v106 objects:v121 count:16];
                    if (v41)
                    {
                      v42 = v41;
                      v90 = *v107;
                      while (2)
                      {
                        for (j = 0; j != v42; ++j)
                        {
                          if (*v107 != v90)
                          {
                            objc_enumerationMutation(v81);
                          }

                          v44 = *(*(&v106 + 1) + 8 * j);
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            v20 = v85;
                            if (error)
                            {
                              *error = [FedStatsPluginError errorWithCode:100 description:@"If SQL query is an array, all entries must be strings"];
                            }

                            v30 = 0;
                            v12 = v93;
                            goto LABEL_92;
                          }
                        }

                        v42 = [v81 countByEnumeratingWithState:&v106 objects:v121 count:16];
                        if (v42)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v89 = [v81 componentsJoinedByString:@" "];
                    v12 = v93;
                    v20 = v85;
LABEL_52:
                    v34 = +[FedStatsPluginLog logger];
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                    {
                      +[FedStatsPluginRecipe recipeWithAssetProvider:recipeIdentifier:error:];
                    }

                    v105 = 0;
                    v35 = [FedStatsPluginSQLQueryValidator isValidSQLQuery:v89 forNamespaceID:v96 possibleError:&v105];
                    v36 = v105;
                    v79 = v36;
                    v80 = v35;
                    if (v35)
                    {
                      if ([v35 BOOLValue])
                      {
                        if ([&unk_285E17AB8 containsObject:v11])
                        {
                          v104 = 0;
                          v37 = checkDediscoV2Params(v87, &v104);
                          v38 = v104;
                          if (v37)
                          {
                            v39 = v13;
                            goto LABEL_94;
                          }

                          if (error)
                          {
                            v55 = v38;
                            v56 = [FedStatsPluginError errorWithCode:100 underlyingError:v38 description:@"Cannot validate Dedisco V2 config for this use-case."];
                            v38 = v55;
                            v30 = 0;
                            *error = v56;
                          }

                          else
                          {
                            v30 = 0;
                          }

                          v47 = v83;
LABEL_136:

LABEL_137:
LABEL_138:

LABEL_139:
LABEL_140:

                          v15 = v94;
                          goto LABEL_141;
                        }

                        v39 = v13;
                        v38 = 0;
LABEL_94:
                        v48 = v38;
                        v103 = v38;
                        v49 = checkPrivateRelay(v89, v11, v87, &v103);
                        v78 = v103;

                        if ((v49 & 1) == 0)
                        {
                          v13 = v39;
                          if (error)
                          {
                            v54 = [FedStatsPluginError errorWithCode:100 underlyingError:v78 description:@"Cannot validate recipe for Private Relay usage"];
                            v38 = v78;
                            v30 = 0;
                            *error = v54;
                            v47 = v83;
                            v20 = v85;
                            goto LABEL_136;
                          }

                          v30 = 0;
                          v47 = v83;
                          v20 = v85;
                          goto LABEL_135;
                        }

                        v50 = [v9 objectForKey:@"defaultDonationParameters"];
                        v102 = 0;
                        v51 = [FedStatsPluginDefaultDonationParameters defaultDonationParametersWithConfiguration:v50 error:&v102];
                        v52 = v102;
                        v53 = v51;
                        v13 = v39;
                        v75 = v52;
                        v76 = v50;
                        if (v50 && !v53)
                        {
                          v20 = v85;
                          if (error)
                          {
                            [FedStatsPluginError errorWithCode:100 underlyingError:v52 description:@"Cannot create privacy parameters from provided configuration"];
                            *error = v30 = 0;
                            v53 = 0;
                          }

                          else
                          {
                            v30 = 0;
                          }

                          v47 = v83;
LABEL_134:

LABEL_135:
                          v38 = v78;
                          goto LABEL_136;
                        }

                        v73 = v53;
                        [v9 objectForKey:@"maskingDataParameters"];
                        v71 = v101 = 0;
                        v57 = [FedStatsPluginMaskingDataParameters parametersWithConfiguration:"parametersWithConfiguration:error:" error:?];
                        v69 = 0;
                        v58 = checkMaskingDataRequirements(v89);
                        v59 = v57;
                        v20 = v85;
                        v72 = v59;
                        if (v58 && !v59)
                        {
                          if (error)
                          {
                            [FedStatsPluginError errorWithCode:100 underlyingError:v69 description:@"Masking data parameters required for this SQL query but not provided properly"];
                            *error = v30 = 0;
                          }

                          else
                          {
                            v30 = 0;
                          }

                          goto LABEL_132;
                        }

                        if (v71)
                        {
                          v92 = v13;
                          if (v59)
                          {
                            v60 = [MEMORY[0x277D08450] defaultDataPointForDataTypeContent:v94];
                            maskingData = [v72 maskingData];
                            v97 = 0u;
                            v98 = 0u;
                            v99 = 0u;
                            v100 = 0u;
                            v70 = v60;
                            v61 = [v70 countByEnumeratingWithState:&v97 objects:v120 count:16];
                            if (v61)
                            {
                              v62 = v61;
                              v74 = *v98;
                              while (2)
                              {
                                for (k = 0; k != v62; ++k)
                                {
                                  if (*v98 != v74)
                                  {
                                    objc_enumerationMutation(v70);
                                  }

                                  v64 = *(*(&v97 + 1) + 8 * k);
                                  v65 = [maskingData objectForKey:v64];

                                  if (!v65)
                                  {
                                    if (error)
                                    {
                                      v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"Masking data parameters field names does not contain the data type '%@'", v64];
                                      *error = [FedStatsPluginError errorWithCode:100 description:v66];
                                    }

                                    goto LABEL_130;
                                  }
                                }

                                v62 = [v70 countByEnumeratingWithState:&v97 objects:v120 count:16];
                                if (v62)
                                {
                                  continue;
                                }

                                break;
                              }
                            }

                            v13 = v92;
                            v12 = v93;
                            v20 = v85;
                            goto LABEL_119;
                          }

                          if (error)
                          {
                            [FedStatsPluginError errorWithCode:100 underlyingError:v69 description:@"Cannot create masking data parameters from provided configuration"];
                            *error = v30 = 0;
                          }

                          else
                          {
LABEL_130:
                            v30 = 0;
                          }

                          v13 = v92;
                          v12 = v93;
                          v20 = v85;
LABEL_132:
                          v47 = v83;
                        }

                        else
                        {
LABEL_119:
                          v47 = v83;
                          v30 = [[FedStatsPluginRecipe alloc] initWithAssetProvider:providerCopy recipeIdentifier:identifierCopy clientIdentifier:v11 recordMetadata:v83 dataTypeContent:v94 sqlQuery:v89 cohortNameList:v20 defaultDonationParameters:v73 maskingDataParameters:v72];
                        }

                        v53 = v73;
                        goto LABEL_134;
                      }

                      if (error)
                      {
                        v46 = [FedStatsPluginError errorWithCode:100 description:@"SQL query not valid"];
LABEL_86:
                        v30 = 0;
                        *error = v46;
LABEL_88:
                        v47 = v83;
                        goto LABEL_137;
                      }
                    }

                    else if (error)
                    {
                      v46 = [FedStatsPluginError errorWithCode:100 underlyingError:v36 description:@"Cannot validate SQL query"];
                      goto LABEL_86;
                    }

                    v30 = 0;
                    goto LABEL_88;
                  }

                  if (error)
                  {
                    v40 = @"SQL query should either be an array of strings or a single string";
LABEL_80:
                    [FedStatsPluginError errorWithCode:100 description:v40];
                    *error = v30 = 0;
LABEL_92:
                    v47 = v83;
                    goto LABEL_138;
                  }
                }

                else if (error)
                {
                  v40 = @"Recipe is missing SQL query";
                  goto LABEL_80;
                }

                v30 = 0;
                goto LABEL_92;
              }
            }

            if (error)
            {
              *error = [FedStatsPluginError errorWithCode:100 description:@"Cohorts must be a list of strings."];
            }

            goto LABEL_75;
          }

          if (error)
          {
            v94 = 0;
            obj = [MEMORY[0x277CCACA8] stringWithFormat:@"key %@ missing from recipe", @"dataTypeContent"];
            [FedStatsPluginError errorWithCode:100 description:?];
            *error = v30 = 0;
            goto LABEL_140;
          }

          v30 = 0;
LABEL_141:

          goto LABEL_142;
        }

        if (error)
        {
          v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"The client identifier %@ is not allowed for the namespace %@", v11, v96];
          *error = [FedStatsPluginError errorWithCode:100 description:v31];
        }
      }

      else if (error)
      {
        [FedStatsPluginError errorWithCode:100 underlyingError:v13 description:@"Cannot perform recipe ID check"];
        *error = v30 = 0;
LABEL_142:

        goto LABEL_143;
      }

      v30 = 0;
      goto LABEL_142;
    }
  }

  if (error)
  {
    [FedStatsPluginError errorWithCode:100 description:@"Recipe is missing client identifier string"];
    *error = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

LABEL_143:

  v67 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)recipeWithAssetProvider:(id)provider error:(id *)error
{
  providerCopy = provider;
  recipeIdentifiers = [providerCopy recipeIdentifiers];
  if ([recipeIdentifiers count] == 1)
  {
    firstObject = [recipeIdentifiers firstObject];
    v9 = [self recipeWithAssetProvider:providerCopy recipeIdentifier:firstObject error:error];
LABEL_5:

    goto LABEL_6;
  }

  if (error)
  {
    firstObject = [MEMORY[0x277CCACA8] stringWithFormat:@"Asset provider should have a single recipe for this call: %@", recipeIdentifiers];
    [FedStatsPluginError errorWithCode:100 description:firstObject];
    *error = v9 = 0;
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (BOOL)checkConsentWithError:(id *)error
{
  v34[4] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(FedStatsPluginDnUConsentChecker);
  v34[0] = v5;
  v6 = objc_alloc_init(FedStatsPluginLocationServiceConsentChecker);
  v34[1] = v6;
  v7 = objc_alloc_init(FedStatsPluginUserProofingConsentChecker);
  v34[2] = v7;
  v8 = objc_alloc_init(FedStatsPluginIHAConsentChecker);
  v34[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v10)
  {
    v22 = 1;
    goto LABEL_22;
  }

  v11 = v10;
  errorCopy = error;
  v12 = *v30;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v30 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v29 + 1) + 8 * i);
      v15 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [FedStatsPluginRecipe checkConsentWithError:];
      }

      clientIdentifier = [(FedStatsPluginRecipe *)self clientIdentifier];
      v28 = 0;
      v17 = [v14 checkConsentForClientIdentifier:clientIdentifier error:&v28];
      v18 = v28;

      if (!v17)
      {
        if (errorCopy)
        {
          *errorCopy = [FedStatsPluginError errorWithCode:400 underlyingError:v18 description:@"Cannot run consent check"];
        }

        goto LABEL_21;
      }

      bOOLValue = [v17 BOOLValue];
      v20 = +[FedStatsPluginLog logger];
      v21 = v20;
      if ((bOOLValue & 1) == 0)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_24AB24000, v21, OS_LOG_TYPE_INFO, "Plugin not consented to run for the use-case", buf, 2u);
        }

LABEL_21:
        v22 = 0;
        goto LABEL_22;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [FedStatsPluginRecipe checkConsentWithError:];
      }
    }

    v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    v22 = 1;
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)checkDeviceRegionCodeWithError:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  assetProvider = [(FedStatsPluginRecipe *)self assetProvider];
  recipeIdentifier = [(FedStatsPluginRecipe *)self recipeIdentifier];
  v37 = 0;
  v7 = [assetProvider recipeDictionaryForRecipe:recipeIdentifier error:&v37];
  v8 = v37;

  if (v7)
  {
    v9 = [v7 objectForKey:@"allowedRegions"];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v23 = 0;
          goto LABEL_39;
        }

        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@' key should have an array of strings as value", @"allowedRegions"];
        [FedStatsPluginError errorWithCode:100 description:v10];
        *error = v23 = 0;
        goto LABEL_38;
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v34;
LABEL_6:
        v14 = 0;
        while (1)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v33 + 1) + 8 * v14);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          if (v12 == ++v14)
          {
            v12 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
            if (v12)
            {
              goto LABEL_6;
            }

            goto LABEL_12;
          }
        }

        if (!error)
        {
          goto LABEL_37;
        }

        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@' key should have an array of strings as value", @"allowedRegions"];
        goto LABEL_34;
      }

LABEL_12:
    }

    v10 = [v7 objectForKey:@"deniedRegions"];
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@' key should have an array of strings as value", @"deniedRegions"];
          *error = [FedStatsPluginError errorWithCode:100 description:v24];
        }

        goto LABEL_37;
      }

      v28 = v8;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = v10;
      v17 = [v16 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v30;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v29 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (error)
              {
                v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@' key should have an array of strings as value", @"deniedRegions"];
                *error = [FedStatsPluginError errorWithCode:100 description:v27];
              }

              v23 = 0;
              v8 = v28;
              goto LABEL_38;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v29 objects:v38 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v8 = v28;
      if (v9)
      {
        if (!error)
        {
LABEL_37:
          v23 = 0;
          goto LABEL_38;
        }

        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"The recipe cannot have both '%@' and '%@' keys", @"allowedRegions", @"deniedRegions"];
LABEL_34:
        *error = [FedStatsPluginError errorWithCode:100 description:v22];

        goto LABEL_37;
      }
    }

    v23 = [MEMORY[0x277D08468] checkDeviceRegionCodeRestrictionForAllowedRegions:v9 deniedRegions:v10];
LABEL_38:

LABEL_39:
    goto LABEL_40;
  }

  if (error)
  {
    [FedStatsPluginError errorWithCode:100 underlyingError:v8 description:@"Cannot load the recipe dictionary from asset provider"];
    *error = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

LABEL_40:

  v25 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)checkDeviceOSVersionFilterWithError:(id *)error
{
  assetProvider = [(FedStatsPluginRecipe *)self assetProvider];
  recipeIdentifier = [(FedStatsPluginRecipe *)self recipeIdentifier];
  v13 = 0;
  v7 = [assetProvider recipeDictionaryForRecipe:recipeIdentifier error:&v13];
  v8 = v13;

  if (v8)
  {
    if (error)
    {
      [FedStatsPluginError errorWithCode:100 underlyingError:v8 description:@"Cannot load recipe."];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = [v7 objectForKey:@"deviceOSVersionFilter"];
    v11 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [FedStatsPluginRecipe checkDeviceOSVersionFilterWithError:];
    }

    v9 = [MEMORY[0x277D08468] checkDeviceOSVersionFilter:v10];
  }

  return v9;
}

- (id)evaluateQueryWithError:(id *)error
{
  v19 = 0;
  v5 = [[FedStatsPluginSQL alloc] initWithError:&v19];
  v6 = v19;
  [(FedStatsPluginRecipe *)self setBiomeSQL:v5];

  biomeSQL = [(FedStatsPluginRecipe *)self biomeSQL];

  if (biomeSQL)
  {
    biomeSQL2 = [(FedStatsPluginRecipe *)self biomeSQL];
    sqlQuery = [(FedStatsPluginRecipe *)self sqlQuery];
    v18 = v6;
    v10 = [biomeSQL2 runQuery:sqlQuery withError:&v18];
    v11 = v18;

    if (v10)
    {
      maskingDataParameters = [(FedStatsPluginRecipe *)self maskingDataParameters];

      v13 = +[FedStatsPluginLog logger];
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
      if (maskingDataParameters)
      {
        if (v14)
        {
          [FedStatsPluginRecipe evaluateQueryWithError:];
        }

        maskingDataParameters2 = [(FedStatsPluginRecipe *)self maskingDataParameters];
        v16 = [maskingDataParameters2 maskedResultsFrom:v10];
      }

      else
      {
        if (v14)
        {
          [FedStatsPluginRecipe evaluateQueryWithError:];
        }

        v16 = v10;
      }
    }

    else if (error)
    {
      [FedStatsPluginError errorWithCode:400 underlyingError:v11 description:@"SQL Query Running Error"];
      *error = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    if (error)
    {
      [FedStatsPluginError errorWithCode:400 underlyingError:v6 description:@"SQL Constructor Error"];
      *error = v16 = 0;
    }

    else
    {
      v16 = 0;
    }

    v11 = v6;
  }

  return v16;
}

- (id)accessedStreams
{
  biomeSQL = [(FedStatsPluginRecipe *)self biomeSQL];
  accessedStreams = [biomeSQL accessedStreams];

  return accessedStreams;
}

- (id)collateQueryResults:(id)results
{
  v92 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = MEMORY[0x277D08450];
  dataTypeContent = [(FedStatsPluginRecipe *)self dataTypeContent];
  v7 = [v5 extractRequiredFieldsFrom:dataTypeContent];

  v8 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FedStatsPluginRecipe collateQueryResults:v7];
  }

  v9 = [FedStatsCollectionKeyGenerator alloc];
  clientIdentifier = [(FedStatsPluginRecipe *)self clientIdentifier];
  cohortNameList = [(FedStatsPluginRecipe *)self cohortNameList];
  assetProvider = [(FedStatsPluginRecipe *)self assetProvider];
  selfCopy = self;
  recipeIdentifier = [(FedStatsPluginRecipe *)self recipeIdentifier];
  v64 = v7;
  v14 = [(FedStatsCollectionKeyGenerator *)v9 initWithPrefix:clientIdentifier cohortKeys:cohortNameList requiredFields:v7 assetProvider:assetProvider recipeIdentifier:recipeIdentifier];

  v15 = resultsCopy;
  v68 = v14;
  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v15;
  v17 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v80;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v80 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v79 + 1) + 8 * i);
        v78 = 0;
        v22 = [(FedStatsCollectionKeyGenerator *)v68 generateCollectionKeyForDataPoint:v21 error:&v78];
        v23 = v78;
        if (v22)
        {
          v24 = [dictionary objectForKey:v22];
          v25 = v24;
          if (v24)
          {
            [v24 arrayByAddingObject:v21];
          }

          else
          {
            v85 = v21;
            [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
          }
          v27 = ;
          [dictionary setObject:v27 forKey:v22];
        }

        else
        {
          if (array)
          {
            v26 = [FedStatsPluginError errorWithCode:300 underlyingError:v23 description:@"Cannot generate collection key"];
            [array addObject:v26];
          }

          v25 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v87 = v23;
            _os_log_error_impl(&dword_24AB24000, v25, OS_LOG_TYPE_ERROR, "Cannot generate collection key. Error: %@", buf, 0xCu);
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
    }

    while (v18);
  }

  if ([array count])
  {
    v28 = [FedStatsPluginError errorWithCode:300 underlyingErrors:array description:@"Some collection keys cannot be generated"];
    v29 = v28;
  }

  else
  {
    v28 = 0;
  }

  v30 = selfCopy;

  v31 = v28;
  v32 = v64;
  v62 = v31;
  if (v31)
  {
    v33 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [FedStatsPluginRecipe collateQueryResults:];
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    describe = [v31 describe];
    v35 = [describe countByEnumeratingWithState:&v74 objects:v84 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v75;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v75 != v37)
          {
            objc_enumerationMutation(describe);
          }

          v39 = *(*(&v74 + 1) + 8 * j);
          v40 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *v88 = 138412290;
            v89 = v39;
            _os_log_debug_impl(&dword_24AB24000, v40, OS_LOG_TYPE_DEBUG, "%@", v88, 0xCu);
          }
        }

        v36 = [describe countByEnumeratingWithState:&v74 objects:v84 count:16];
      }

      while (v36);
    }

    v31 = v62;
  }

  defaultDonationParameters = [(FedStatsPluginRecipe *)selfCopy defaultDonationParameters];

  if (defaultDonationParameters)
  {
    v65 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(dictionary, "count")}];
    v42 = MEMORY[0x277D08450];
    dataTypeContent2 = [(FedStatsPluginRecipe *)selfCopy dataTypeContent];
    v44 = [v42 defaultDataPointForDataTypeContent:dataTypeContent2];

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v45 = dictionary;
    v46 = [v45 countByEnumeratingWithState:&v70 objects:v83 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v71;
      do
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v71 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v70 + 1) + 8 * k);
          v51 = [FedStatsCollectionKeyGenerator extractCohortKeyValuesFrom:v50];
          defaultDonationParameters2 = [(FedStatsPluginRecipe *)v30 defaultDonationParameters];
          v53 = [defaultDonationParameters2 determineDefaultRecordCountFor:v51];

          if (v53 == -1)
          {
            v54 = +[FedStatsPluginLog logger];
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *v88 = 138412290;
              v89 = v51;
              _os_log_error_impl(&dword_24AB24000, v54, OS_LOG_TYPE_ERROR, "Cannot sample default count for cohort value set %@", v88, 0xCu);
            }
          }

          else
          {
            v54 = [MEMORY[0x277CBEB18] arrayWithCapacity:v53];
            v55 = +[FedStatsPluginLog logger];
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              *v88 = 134218242;
              v89 = v53;
              v90 = 2112;
              v91 = v44;
              _os_log_debug_impl(&dword_24AB24000, v55, OS_LOG_TYPE_DEBUG, "Adding %lu default values = %@", v88, 0x16u);
            }

            for (; v53; --v53)
            {
              [v54 addObject:v44];
            }

            v56 = [v45 objectForKey:v50];
            v57 = [v56 arrayByAddingObjectsFromArray:v54];
            [v65 setObject:v57 forKey:v50];
          }

          v30 = selfCopy;
        }

        v47 = [v45 countByEnumeratingWithState:&v70 objects:v83 count:16];
      }

      while (v47);
    }

    v31 = v63;
    v32 = v64;
    v58 = dictionary;
  }

  else
  {
    v59 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      [FedStatsPluginRecipe collateQueryResults:];
    }

    v58 = dictionary;
    v65 = dictionary;
  }

  v60 = *MEMORY[0x277D85DE8];

  return v65;
}

- (id)assetKeysFromCollatedData:(id)data
{
  v24 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = [MEMORY[0x277CBEB58] set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = dataCopy;
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

        v11 = [FedStatsCollectionKeyGenerator extractCohortKeyValuesFrom:*(*(&v19 + 1) + 8 * i), v19];
        v12 = MEMORY[0x277D08450];
        dataTypeContent = [(FedStatsPluginRecipe *)self dataTypeContent];
        v14 = [v12 extractAssetNamesFrom:dataTypeContent usingFieldValues:v11];

        [v5 addObjectsFromArray:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [FedStatsPluginRecipe assetKeysFromCollatedData:v5];
  }

  allObjects = [v5 allObjects];

  v17 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (id)assetURLsForAssetKeys:(id)keys
{
  v43 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = keysCopy;
  v28 = [v5 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v28)
  {
    v6 = *v36;
    selfCopy = self;
    obj = v5;
    v24 = *v36;
    do
    {
      v7 = 0;
      do
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v35 + 1) + 8 * v7);
        assetProvider = [(FedStatsPluginRecipe *)self assetProvider];
        recipeIdentifier = [(FedStatsPluginRecipe *)self recipeIdentifier];
        v34 = 0;
        v11 = [assetProvider assetURLForRecipe:recipeIdentifier forKey:v8 error:&v34];
        v29 = v34;

        if (v11)
        {
          [v27 setObject:v11 forKey:v8];
        }

        else
        {
          v12 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = v8;
            _os_log_error_impl(&dword_24AB24000, v12, OS_LOG_TYPE_ERROR, "Cannot download asset %@.", buf, 0xCu);
          }

          v13 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v41 = v8;
            _os_log_debug_impl(&dword_24AB24000, v13, OS_LOG_TYPE_DEBUG, "Cannot download asset %@. Error:", buf, 0xCu);
          }

          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          describe = [v29 describe];
          v15 = [describe countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v31;
            do
            {
              v18 = 0;
              do
              {
                if (*v31 != v17)
                {
                  objc_enumerationMutation(describe);
                }

                v19 = *(*(&v30 + 1) + 8 * v18);
                v20 = +[FedStatsPluginLog logger];
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v41 = v19;
                  _os_log_debug_impl(&dword_24AB24000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                ++v18;
              }

              while (v16 != v18);
              v16 = [describe countByEnumeratingWithState:&v30 objects:v39 count:16];
            }

            while (v16);
          }

          v6 = v24;
          self = selfCopy;
          v11 = 0;
        }

        ++v7;
      }

      while (v7 != v28);
      v5 = obj;
      v28 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v28);
  }

  v21 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [FedStatsPluginRecipe assetURLsForAssetKeys:];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)recordCollatedData:(id)data assetURLs:(id)ls
{
  v88 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  lsCopy = ls;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = dataCopy;
  v50 = [dataCopy countByEnumeratingWithState:&v77 objects:v87 count:16];
  if (v50)
  {
    v48 = 0;
    v49 = *v78;
    *&v7 = 134218242;
    v47 = v7;
    v53 = lsCopy;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v78 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v77 + 1) + 8 * i);
        v10 = +[FedStatsPluginLog logger];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v82 = v9;
          _os_log_debug_impl(&dword_24AB24000, v10, OS_LOG_TYPE_DEBUG, "collectionKey = %@", buf, 0xCu);
        }

        v11 = [FedStatsCollectionKeyGenerator extractCohortKeyValuesFrom:v9];
        v12 = +[FedStatsPluginLog logger];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v82 = v11;
          _os_log_debug_impl(&dword_24AB24000, v12, OS_LOG_TYPE_DEBUG, "fieldValues = %@", buf, 0xCu);
        }

        v13 = MEMORY[0x277D08450];
        dataTypeContent = [(FedStatsPluginRecipe *)self dataTypeContent];
        v76 = 0;
        v15 = [v13 mutateDataTypeContent:dataTypeContent usingFieldValues:v11 assetURLs:lsCopy error:&v76];
        v58 = v76;

        v16 = +[FedStatsPluginLog logger];
        v17 = v16;
        v57 = v15;
        if (v15)
        {
          v55 = v11;
          v52 = i;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v82 = v15;
            _os_log_debug_impl(&dword_24AB24000, v17, OS_LOG_TYPE_DEBUG, "dataTypeContent = %@", buf, 0xCu);
          }

          v18 = MEMORY[0x277D08450];
          v19 = [obj objectForKey:v9];
          recordMetadata = [(FedStatsPluginRecipe *)self recordMetadata];
          v67 = 0;
          v21 = v18;
          v22 = v15;
          v23 = [v21 encodeDataArrayAndRecord:v19 dataTypeContent:v15 metadata:recordMetadata baseKey:v9 errorOut:&v67];
          describe2 = v67;

          v25 = +[FedStatsPluginLog logger];
          v26 = v25;
          lsCopy = v53;
          if (v23)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              unsignedIntegerValue = [v23 unsignedIntegerValue];
              *buf = v47;
              v82 = unsignedIntegerValue;
              v83 = 2112;
              v84 = v9;
              _os_log_debug_impl(&dword_24AB24000, v26, OS_LOG_TYPE_DEBUG, "Recorded %lu data for collection key '%@'", buf, 0x16u);
            }

            v48 += [v23 unsignedIntegerValue];
            v11 = v55;
          }

          else
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [FedStatsPluginRecipe recordCollatedData:v66 assetURLs:?];
            }

            v34 = +[FedStatsPluginLog logger];
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              [FedStatsPluginRecipe recordCollatedData:v64 assetURLs:?];
            }

            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            describe = [describe2 describe];
            v36 = [describe countByEnumeratingWithState:&v59 objects:v85 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v60;
              do
              {
                for (j = 0; j != v37; ++j)
                {
                  if (*v60 != v38)
                  {
                    objc_enumerationMutation(describe);
                  }

                  v40 = *(*(&v59 + 1) + 8 * j);
                  v41 = +[FedStatsPluginLog logger];
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v82 = v40;
                    _os_log_debug_impl(&dword_24AB24000, v41, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }
                }

                v37 = [describe countByEnumeratingWithState:&v59 objects:v85 count:16];
              }

              while (v37);
            }

            lsCopy = v53;
            v11 = v55;
            v22 = v57;
            v23 = 0;
          }

          i = v52;
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [FedStatsPluginRecipe recordCollatedData:v75 assetURLs:?];
          }

          v27 = +[FedStatsPluginLog logger];
          lsCopy = v53;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            [FedStatsPluginRecipe recordCollatedData:v73 assetURLs:?];
          }

          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          describe2 = [v58 describe];
          v28 = [describe2 countByEnumeratingWithState:&v68 objects:v86 count:16];
          if (v28)
          {
            v29 = v28;
            v56 = v11;
            v30 = *v69;
            do
            {
              for (k = 0; k != v29; ++k)
              {
                if (*v69 != v30)
                {
                  objc_enumerationMutation(describe2);
                }

                v32 = *(*(&v68 + 1) + 8 * k);
                v33 = +[FedStatsPluginLog logger];
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v82 = v32;
                  _os_log_debug_impl(&dword_24AB24000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }
              }

              v29 = [describe2 countByEnumeratingWithState:&v68 objects:v86 count:16];
            }

            while (v29);
            lsCopy = v53;
            v11 = v56;
          }

          v22 = 0;
        }
      }

      v50 = [obj countByEnumeratingWithState:&v77 objects:v87 count:16];
    }

    while (v50);
  }

  else
  {
    v48 = 0;
  }

  v43 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    [FedStatsPluginRecipe recordCollatedData:? assetURLs:?];
  }

  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v48];

  v45 = *MEMORY[0x277D85DE8];

  return v44;
}

- (id)runRecipeWithError:(id *)error
{
  if ([(FedStatsPluginRecipe *)self checkDeviceOSVersionFilterWithError:?]&& [(FedStatsPluginRecipe *)self checkConsentWithError:error]&& [(FedStatsPluginRecipe *)self checkDeviceRegionCodeWithError:error])
  {
    v5 = [(FedStatsPluginRecipe *)self evaluateQueryWithError:error];
    v6 = v5;
    if (v5)
    {
      if ([v5 count])
      {
        v7 = [(FedStatsPluginRecipe *)self collateQueryResults:v6];
        v8 = [(FedStatsPluginRecipe *)self assetKeysFromCollatedData:v7];
        v9 = [(FedStatsPluginRecipe *)self assetURLsForAssetKeys:v8];
        v10 = [(FedStatsPluginRecipe *)self recordCollatedData:v7 assetURLs:v9];
        assetProvider = [(FedStatsPluginRecipe *)self assetProvider];
        [assetProvider removeAssets];
      }

      else
      {
        v13 = +[FedStatsPluginLog logger];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [FedStatsPluginRecipe runRecipeWithError:];
        }

        v10 = &unk_285E17B10;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = &unk_285E17B10;
  }

  return v10;
}

+ (void)recipeWithAssetProvider:recipeIdentifier:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)checkConsentWithError:.cold.1()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = NSStringFromClass(v2);
  *v1 = 138412290;
  *v0 = v3;
  OUTLINED_FUNCTION_5(&dword_24AB24000, v4, v5, "Running consent check for class %@");
}

- (void)checkConsentWithError:.cold.2()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = NSStringFromClass(v2);
  *v1 = 138412290;
  *v0 = v3;
  OUTLINED_FUNCTION_5(&dword_24AB24000, v4, v5, "Consent check passed for class %@");
}

- (void)checkDeviceOSVersionFilterWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)evaluateQueryWithError:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)evaluateQueryWithError:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)collateQueryResults:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)collateQueryResults:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)collateQueryResults:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)assetKeysFromCollatedData:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 allObjects];
  v2 = [v1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)assetURLsForAssetKeys:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)recordCollatedData:(void *)a1 assetURLs:.cold.5(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)runRecipeWithError:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end