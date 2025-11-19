@interface FHPropensityModel
- (FHPropensityModel)initWithModelName:(id)a3 namespaceName:(id)a4 modelFactorName:(id)a5 defaultModel:(id)a6;
- (FHPropensityModel)initWithModelURL:(id)a3 modelName:(id)a4;
- (id)getNewbookRank:(id)a3;
- (void)_createNewBookRankMapping;
@end

@implementation FHPropensityModel

- (FHPropensityModel)initWithModelURL:(id)a3 modelName:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(FHPropensityModel *)self _createNewBookRankMapping];
  v10.receiver = self;
  v10.super_class = FHPropensityModel;
  v8 = [(FHModel *)&v10 initWithModelURL:v7 modelName:v6];

  return v8;
}

- (FHPropensityModel)initWithModelName:(id)a3 namespaceName:(id)a4 modelFactorName:(id)a5 defaultModel:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(FHPropensityModel *)self _createNewBookRankMapping];
  v16.receiver = self;
  v16.super_class = FHPropensityModel;
  v14 = [(FHTrialModel *)&v16 initWithModelName:v13 namespaceName:v12 modelFactorName:v11 defaultModel:v10];

  return v14;
}

- (void)_createNewBookRankMapping
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [[FHExperiment alloc] initWithNamespaceName:@"WPC_ANALYTICS_OFFLINE_LAB"];
  v4 = [(FHExperiment *)v3 getFilePathForFactor:@"card_preselect_rank_mapping"];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4];
    if (v5)
    {
      v21 = 0;
      v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v21];
      v7 = v21;
      newbookRankRecords = self->_newbookRankRecords;
      self->_newbookRankRecords = v6;

      if (!v7)
      {
        goto LABEL_15;
      }

      v9 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v7 localizedDescription];
        *buf = 138412290;
        v23 = v10;
        _os_log_impl(&dword_226DD4000, v9, OS_LOG_TYPE_ERROR, "Error serializing new book rank mapping %@", buf, 0xCu);
      }
    }
  }

  v11 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_226DD4000, v11, OS_LOG_TYPE_ERROR, "Error in newbook rank mapping loaded from trial. Loading default", buf, 2u);
  }

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 pathForResource:@"ModelResources/assets_WPC_ANALYTICS_OFFLINE_LAB/model_rank_mapping" ofType:@"json"];

  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v13];
  v20 = 0;
  v14 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v20];
  v15 = v20;
  v16 = self->_newbookRankRecords;
  self->_newbookRankRecords = v14;

  if (v15)
  {
    v17 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v15 localizedDescription];
      *buf = 138412290;
      v23 = v18;
      _os_log_impl(&dword_226DD4000, v17, OS_LOG_TYPE_ERROR, "Error serializing new book rank mapping %@", buf, 0xCu);
    }
  }

  v4 = v13;
LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
}

- (id)getNewbookRank:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = self->_newbookRankRecords;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 objectForKey:{@"Lower_Bound", v24}];
        [v11 doubleValue];
        v13 = v12;

        v14 = [v10 objectForKey:@"Upper_Bound"];
        [v14 doubleValue];
        v16 = v15;

        [v4 doubleValue];
        if (v16 >= v17)
        {
          [v4 doubleValue];
          if (v13 < v18)
          {
            v19 = [v10 objectForKey:@"newbook_rank"];

            if (v19)
            {
              v21 = [v10 objectForKey:@"newbook_rank"];

              goto LABEL_15;
            }
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v20 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v29 = v4;
    _os_log_impl(&dword_226DD4000, v20, OS_LOG_TYPE_ERROR, "No newbook rank found for score %@", buf, 0xCu);
  }

  v21 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
LABEL_15:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end