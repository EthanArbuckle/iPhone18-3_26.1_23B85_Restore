@interface FedStatsCollectionKeyGenerator
+ (id)extractCohortKeyValuesFrom:(id)a3;
- (FedStatsCollectionKeyGenerator)initWithPrefix:(id)a3 cohortKeys:(id)a4 requiredFields:(id)a5 assetProvider:(id)a6 recipeIdentifier:(id)a7;
- (id)generateCollectionKeyForDataPoint:(id)a3 error:(id *)a4;
@end

@implementation FedStatsCollectionKeyGenerator

- (FedStatsCollectionKeyGenerator)initWithPrefix:(id)a3 cohortKeys:(id)a4 requiredFields:(id)a5 assetProvider:(id)a6 recipeIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v37.receiver = self;
  v37.super_class = FedStatsCollectionKeyGenerator;
  v17 = [(FedStatsCollectionKeyGenerator *)&v37 init];
  if (v17)
  {
    v18 = [v12 length];
    if (v18 >= [@"fedstats:" length] && (objc_msgSend(v12, "substringToIndex:", objc_msgSend(@"fedstats:", "length")), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", @"fedstats:"), v19, (v20 & 1) != 0))
    {
      v21 = v12;
    }

    else
    {
      v21 = [@"fedstats:" stringByAppendingString:v12];
    }

    prefix = v17->_prefix;
    v17->_prefix = v21;

    objc_storeStrong(&v17->_cohortKeys, a4);
    objc_storeStrong(&v17->_requiredFields, a5);
    v23 = [v15 namespaceIdentifierForRecipe:v16];
    namespaceIdentifier = v17->_namespaceIdentifier;
    v17->_namespaceIdentifier = v23;

    v25 = [v15 experimentIdentifierForRecipe:v16];
    experimentIdentifier = v17->_experimentIdentifier;
    v17->_experimentIdentifier = v25;

    if (!v17->_experimentIdentifier)
    {
      v17->_experimentIdentifier = @"N/A";
    }

    v27 = [v15 deploymentIdentifierForRecipe:v16];
    deploymentIdentifier = v17->_deploymentIdentifier;
    v17->_deploymentIdentifier = v27;

    if (!v17->_deploymentIdentifier)
    {
      v17->_deploymentIdentifier = @"N/A";
    }

    v29 = [v15 treatmentIdentifierForRecipe:v16];
    treatmentIdentifier = v17->_treatmentIdentifier;
    v17->_treatmentIdentifier = v29;

    if (!v17->_treatmentIdentifier)
    {
      v17->_treatmentIdentifier = @"N/A";
    }

    v31 = [MEMORY[0x277CBEB98] setWithArray:v17->_requiredFields];
    v32 = [v31 setByAddingObjectsFromArray:v17->_cohortKeys];
    v33 = [v32 allObjects];
    v34 = [v33 sortedArrayUsingSelector:sel_localizedCompare_];
    unifiedFields = v17->_unifiedFields;
    v17->_unifiedFields = v34;
  }

  return v17;
}

- (id)generateCollectionKeyForDataPoint:(id)a3 error:(id *)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = [(FedStatsCollectionKeyGenerator *)self requiredFields];
  v8 = [v7 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v46;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v45 + 1) + 8 * i);
        v13 = [v6 allKeys];
        v14 = [v13 containsObject:v12];

        if ((v14 & 1) == 0)
        {
          if (a4)
          {
            v20 = MEMORY[0x277D08460];
            v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"The data-point does not contain the required field '%@'", v12];
            *a4 = [v20 errorWithCode:401 description:v21];
          }

          goto LABEL_14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = [(FedStatsCollectionKeyGenerator *)self unifiedFields];
  v16 = [v15 count];

  if (!v16)
  {
    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_16;
  }

  v17 = [(FedStatsCollectionKeyGenerator *)self unifiedFields];
  v18 = [(FedStatsCollectionKeyGenerator *)self namespaceIdentifier];
  v44 = 0;
  v19 = [FedStatsDataCohort keysForCohorts:v17 namespaceID:v18 parameters:v6 possibleError:&v44];
  v7 = v44;

  if (v19)
  {

    v7 = v19;
LABEL_16:
    v23 = 0x277CBE000uLL;
    if ([v7 count])
    {
      v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
      if ([v7 count])
      {
        v25 = 0;
        do
        {
          v26 = [(FedStatsCollectionKeyGenerator *)self unifiedFields];
          v27 = [v26 objectAtIndex:v25];

          v28 = [v7 objectAtIndex:v25];
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v27, @"=", v28];
          [v24 addObject:v29];

          ++v25;
        }

        while (v25 < [v7 count]);
        v23 = 0x277CBE000;
      }
    }

    else
    {
      v50 = @"N/A";
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
      v24 = [v30 mutableCopy];
    }

    v31 = [(FedStatsCollectionKeyGenerator *)self prefix];
    v32 = [v6 objectForKey:@"%%FedStatsMaskingData%%"];
    v33 = [v32 BOOLValue];

    if (v33)
    {
      v34 = [(FedStatsCollectionKeyGenerator *)self prefix];
      v35 = [&unk_285E17AE8 objectForKey:v34];

      if (v35)
      {
        v36 = v35;

        v31 = v36;
      }
    }

    v49[0] = v31;
    v37 = [v24 componentsJoinedByString:@"|"];
    v49[1] = v37;
    v38 = [(FedStatsCollectionKeyGenerator *)self experimentIdentifier];
    v49[2] = v38;
    v39 = [(FedStatsCollectionKeyGenerator *)self deploymentIdentifier];
    v49[3] = v39;
    v40 = [(FedStatsCollectionKeyGenerator *)self treatmentIdentifier];
    v49[4] = v40;
    v41 = [*(v23 + 2656) arrayWithObjects:v49 count:5];
    v22 = [v41 componentsJoinedByString:@":"];

    goto LABEL_27;
  }

  if (a4)
  {
    [MEMORY[0x277D08460] errorWithCode:401 underlyingError:v7 description:@"Cannot validate and retrieve cohort values"];
    *a4 = v22 = 0;
  }

  else
  {
LABEL_14:
    v22 = 0;
  }

LABEL_27:

  v42 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)extractCohortKeyValuesFrom:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@":"];
  if ([v3 length] >= 3)
  {
    v6 = [v4 objectAtIndex:2];
    v7 = [v6 componentsSeparatedByString:@"|"];

    if ([v7 count] == 1 && (objc_msgSend(v7, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqual:", @"N/A"), v8, (v9 & 1) != 0))
    {
      v5 = MEMORY[0x277CBEC10];
    }

    else
    {
      v21 = v4;
      v22 = v3;
      v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = v7;
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v23 + 1) + 8 * i);
            v16 = [v15 componentsSeparatedByString:@"="];
            if ([v16 count] == 2)
            {
              v17 = [v16 lastObject];
              v18 = [v16 firstObject];
              [v5 setObject:v17 forKey:v18];
            }

            else
            {
              v17 = +[FedStatsPluginLog logger];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v28 = v15;
                _os_log_error_impl(&dword_24AB24000, v17, OS_LOG_TYPE_ERROR, "Cannot separate cohort key and value for '%@'", buf, 0xCu);
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
        }

        while (v12);
      }

      v4 = v21;
      v3 = v22;
    }
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v5;
}

@end