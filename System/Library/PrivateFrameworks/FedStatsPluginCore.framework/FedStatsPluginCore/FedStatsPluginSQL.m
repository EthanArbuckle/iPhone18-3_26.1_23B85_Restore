@interface FedStatsPluginSQL
- (FedStatsPluginSQL)initWithError:(id *)a3;
- (id)accessedColumnsForStream:(id)a3;
- (id)accessedStreams;
- (id)runQuery:(id)a3 withError:(id *)a4;
@end

@implementation FedStatsPluginSQL

- (FedStatsPluginSQL)initWithError:(id *)a3
{
  v36.receiver = self;
  v36.super_class = FedStatsPluginSQL;
  v4 = [(FedStatsPluginSQL *)&v36 init];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = [objc_alloc(MEMORY[0x277CF1A88]) initWithPrivileges:0 isColumnAccessLoggingEnabled:1];
  v6 = v5;
  if (!v5)
  {
    if (!a3)
    {
LABEL_17:

      v26 = 0;
      goto LABEL_18;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not create the BIOME database"];
    *a3 = [FedStatsPluginError errorWithCode:400 description:v10];
LABEL_16:

    goto LABEL_17;
  }

  [v5 resetColumnAccessLog];
  v35 = 0;
  v7 = @"strip_url";
  v8 = [v6 registerFunctionWithName:@"strip_url" numArgs:1 function:&__block_literal_global_4 userData:0 error:&v35];
  v9 = v35;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  v34 = 0;
  v7 = @"extract_host";
  v11 = [v6 registerFunctionWithName:@"extract_host" numArgs:1 function:&__block_literal_global_54 userData:0 error:&v34];
  v12 = v34;
  v10 = v12;
  if ((v11 & 1) == 0)
  {
    goto LABEL_12;
  }

  v33 = 0;
  v7 = @"sha1";
  v13 = [v6 registerFunctionWithName:@"sha1" numArgs:1 function:&__block_literal_global_56 userData:0 error:&v33];
  v14 = v33;
  v10 = v14;
  if ((v13 & 1) == 0)
  {
    goto LABEL_12;
  }

  v32 = 0;
  v7 = @"bit_string_to_int";
  v15 = [v6 registerFunctionWithName:@"bit_string_to_int" numArgs:1 function:&__block_literal_global_59 userData:0 error:&v32];
  v16 = v32;
  v10 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

  v31 = 0;
  v7 = @"tokenize_ngram";
  v17 = [v6 registerFunctionWithName:@"tokenize_ngram" numArgs:6 function:&__block_literal_global_61 userData:0 error:&v31];
  v18 = v31;
  v10 = v18;
  if ((v17 & 1) == 0)
  {
    goto LABEL_12;
  }

  v30 = 0;
  v7 = @"transform_use_case_id";
  v19 = [v6 registerFunctionWithName:@"transform_use_case_id" numArgs:1 function:&__block_literal_global_66 userData:0 error:&v30];
  v20 = v30;
  v10 = v20;
  if ((v19 & 1) == 0 || (v20, v29 = 0, v7 = @"subsample", v21 = [v6 registerFunctionWithName:@"subsample" numArgs:3 function:&__block_literal_global_71 userData:0 error:&v29], v22 = v29, v10 = v22, (v21 & 1) == 0))
  {
LABEL_12:
    if (a3)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot register UDF '%@' with Biome DB", v7];
      *a3 = [FedStatsPluginError errorWithCode:300 underlyingError:v10 description:v27];
    }

    goto LABEL_16;
  }

  database = v4->_database;
  v4->_database = v6;
  v24 = v6;

  accessInformation = v4->_accessInformation;
  v4->_accessInformation = MEMORY[0x277CBEC10];

LABEL_11:
  v26 = v4;
LABEL_18:

  return v26;
}

id __35__FedStatsPluginSQL_initWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a2 objectAtIndexedSubscript:0];
  v4 = [v2 stringWithFormat:@"%@", v3];

  v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  v6 = MEMORY[0x277CCACA8];
  v7 = [v5 scheme];
  v8 = [v5 host];
  v9 = [v5 path];
  v10 = [v6 stringWithFormat:@"%@://%@%@", v7, v8, v9];

  return v10;
}

id __35__FedStatsPluginSQL_initWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a2 objectAtIndexedSubscript:0];
  v4 = [v2 stringWithFormat:@"%@", v3];

  v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  v6 = [v5 host];

  return v6;
}

id __35__FedStatsPluginSQL_initWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = 0;
  if (isKindOfClass)
  {
    v6 = MEMORY[0x277D08468];
    v7 = [v2 objectAtIndexedSubscript:0];
    v5 = [v6 SHA1AsBitString:v7];
  }

  return v5;
}

id __35__FedStatsPluginSQL_initWithError___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D08468];
  v3 = [a2 objectAtIndexedSubscript:0];
  v4 = [v2 bitStringToInt:v3];

  return v4;
}

id __35__FedStatsPluginSQL_initWithError___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = [v5 count];
  if (a4 && v6 != 6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@' requires 6 args.", @"tokenize_ngram"];
    *a4 = [FedStatsPluginError errorWithCode:300 description:v7];
  }

  v8 = MEMORY[0x277D08468];
  v20 = [v5 objectAtIndexedSubscript:0];
  v9 = [v5 objectAtIndexedSubscript:1];
  v19 = [v9 BOOLValue];
  v10 = [v5 objectAtIndexedSubscript:2];
  v11 = [v10 BOOLValue];
  v12 = [v5 objectAtIndexedSubscript:3];
  v13 = [v12 BOOLValue];
  v14 = [v5 objectAtIndexedSubscript:4];
  v15 = [v14 BOOLValue];
  v16 = [v5 objectAtIndexedSubscript:5];

  v17 = [v8 tokenizeSentence:v20 removePunctuation:v19 tokenizePerson:v11 tokenizeLocation:v13 tokenizeNumber:v15 action:{objc_msgSend(v16, "integerValue")}];

  return v17;
}

id __35__FedStatsPluginSQL_initWithError___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = [v5 objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = MEMORY[0x277D08468];
    v9 = [v5 objectAtIndexedSubscript:0];
    v10 = [v8 transformUseCaseID:v9];
LABEL_5:

    goto LABEL_6;
  }

  if (a4)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: expected string input", @"transform_use_case_id"];
    [FedStatsPluginError errorWithCode:400 description:v9];
    *a4 = v10 = 0;
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

id __35__FedStatsPluginSQL_initWithError___block_invoke_7(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x277D08468];
  v6 = a2;
  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v6 objectAtIndexedSubscript:1];
  v9 = [v6 objectAtIndexedSubscript:2];

  v15 = 0;
  v10 = [v5 subsampleBooleanValue:v7 samplingRateTrue:v8 samplingRateFalse:v9 error:&v15];
  v11 = v15;

  if (v10)
  {
    v12 = v10;
  }

  else if (a4)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: cannot generate subsample decision", @"subsample"];
    *a4 = [FedStatsPluginError errorWithCode:400 underlyingError:v11 description:v13];
  }

  return v10;
}

- (id)runQuery:(id)a3 withError:(id *)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(FedStatsPluginSQL *)self database];
  [v6 resetColumnAccessLog];

  v48 = v5;
  v8 = v7 = [v5 copy];
  v10 = v9 = objc_claimAutoreleasedReturnValue();

  v44 = self;
  v11 = [(FedStatsPluginSQL *)self database];
  v47 = v10;
  v12 = [v11 executeQuery:{@"%@", v10}];

  v49 = [MEMORY[0x277D08458] samplerWithCount:*MEMORY[0x277D08478]];
  if ([v12 next])
  {
    do
    {
      v13 = MEMORY[0x277CBEB38];
      v14 = [v12 columns];
      v15 = [v13 dictionaryWithCapacity:{objc_msgSend(v14, "count")}];

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v16 = [v12 columns];
      v17 = [v16 countByEnumeratingWithState:&v55 objects:v60 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v56;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v56 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v55 + 1) + 8 * i);
            v22 = [MEMORY[0x277CBEB68] null];
            [v15 setObject:v22 forKey:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v55 objects:v60 count:16];
        }

        while (v18);
      }

      v23 = [v12 row];
      [v15 addEntriesFromDictionary:v23];

      [v49 addItem:v15];
    }

    while (([v12 next] & 1) != 0);
  }

  v24 = [v12 error];

  if (!v24)
  {
    v27 = [v49 getResults];
    if (![v27 count])
    {
      v28 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24AB24000, v28, OS_LOG_TYPE_INFO, "The returned SQL query result from BIOME is empty", buf, 2u);
      }
    }

    v46 = v27;
    v29 = MEMORY[0x277CBEB38];
    v30 = [(FedStatsPluginSQL *)v44 database];
    v31 = [v30 accessedColumns];
    v25 = [v29 dictionaryWithCapacity:{objc_msgSend(v31, "count")}];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v32 = [(FedStatsPluginSQL *)v44 database];
    v33 = [v32 accessedColumns];

    v34 = [v33 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v51;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v51 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v50 + 1) + 8 * j);
          v39 = [v38 columns];
          v40 = [v39 allObjects];
          v41 = [v38 table];
          [v25 setObject:v40 forKey:v41];
        }

        v35 = [v33 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v35);
    }

    [(FedStatsPluginSQL *)v44 setAccessInformation:v25];
    v26 = v46;
    goto LABEL_25;
  }

  if (a4)
  {
    v25 = [v12 error];
    [FedStatsPluginError errorWithCode:400 underlyingError:v25 description:@"Query execution failed"];
    *a4 = v26 = 0;
LABEL_25:

    goto LABEL_27;
  }

  v26 = 0;
LABEL_27:

  v42 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)accessedStreams
{
  v2 = [(FedStatsPluginSQL *)self accessInformation];
  v3 = [v2 allKeys];

  return v3;
}

- (id)accessedColumnsForStream:(id)a3
{
  v4 = a3;
  v5 = [(FedStatsPluginSQL *)self accessInformation];
  v6 = [v5 objectForKey:v4];

  return v6;
}

@end