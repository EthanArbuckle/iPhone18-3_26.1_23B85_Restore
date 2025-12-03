@interface FHTransactionGroup
+ (id)deleteInsightsForGroupIds:(id)ids;
+ (id)deleteOutdatedEntityGroupsAndInsights;
+ (void)_updateStateForTransactionsWithIds:(id)ids;
- (FHTransactionGroup)initWithCoder:(id)coder;
- (FHTransactionGroup)initWithGroupIdentifier:(id)identifier transactionIds:(id)ids groupingMethod:(unint64_t)method creditDebitType:(unint64_t)type category:(id)category;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHTransactionGroup

- (FHTransactionGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = FHTransactionGroup;
  v5 = [(FHTransactionGroup *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"transactionIds"];
    transactionIds = v5->_transactionIds;
    v5->_transactionIds = v11;

    v5->_groupingMethod = [coderCopy decodeIntegerForKey:@"groupingMethod"];
    v5->_creditDebitType = [coderCopy decodeIntegerForKey:@"creditDebitType"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    category = v5->_category;
    v5->_category = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  groupIdentifier = self->_groupIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:groupIdentifier forKey:@"groupIdentifier"];
  [coderCopy encodeObject:self->_transactionIds forKey:@"transactionIds"];
  [coderCopy encodeInteger:self->_groupingMethod forKey:@"groupingMethod"];
  [coderCopy encodeInteger:self->_creditDebitType forKey:@"creditDebitType"];
  [coderCopy encodeObject:self->_category forKey:@"category"];
}

- (FHTransactionGroup)initWithGroupIdentifier:(id)identifier transactionIds:(id)ids groupingMethod:(unint64_t)method creditDebitType:(unint64_t)type category:(id)category
{
  identifierCopy = identifier;
  idsCopy = ids;
  categoryCopy = category;
  v19.receiver = self;
  v19.super_class = FHTransactionGroup;
  v16 = [(FHTransactionGroup *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_groupIdentifier, identifier);
    objc_storeStrong(&v17->_transactionIds, ids);
    v17->_groupingMethod = method;
    v17->_creditDebitType = type;
    objc_storeStrong(&v17->_category, category);
  }

  return v17;
}

+ (id)deleteOutdatedEntityGroupsAndInsights
{
  v33[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [FHDatabaseJoinClauseFromBuilder initWithBuilder:&__block_literal_global_5];
  v5 = [[FHDatabaseEntity alloc] initWithEntity:@"transactions" joinClause:v4];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.t_identifier", @"transactions"];
  v33[0] = v6;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.t_fh_internal_state", @"transactions"];
  v33[1] = v7;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.t_identifier", @"fh_grouping"];
  v33[2] = v8;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.group_id", @"fh_grouping"];
  v33[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__FHTransactionGroup_deleteOutdatedEntityGroupsAndInsights__block_invoke_2;
  v18[3] = &unk_2785CC6A8;
  v18[4] = &v25;
  v18[5] = &v19;
  [(FHDatabaseEntity *)v5 queryDataWithBlock:0 logicalOperator:@"AND" selectFields:v10 usingBlock:v18];

  if ([v26[5] count])
  {
    v11 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = v26[5];
      *buf = 138412290;
      v32 = v12;
      _os_log_impl(&dword_226DD4000, v11, OS_LOG_TYPE_INFO, "Deleting outdated groups: %@", buf, 0xCu);
    }

    v13 = [v26[5] copy];
    v14 = [self deleteInsightsForGroupIds:v13];

    v3 = v14;
  }

  v15 = [v20[5] copy];
  [self _updateStateForTransactionsWithIds:v15];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

void __59__FHTransactionGroup_deleteOutdatedEntityGroupsAndInsights__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 stringAtIndex:0];
  v5 = [v3 intAtIndex:1];
  v6 = [v3 stringAtIndex:2];
  v7 = [v3 stringAtIndex:3];

  if (v4 && ![v4 isEqualToString:&stru_283A7B918])
  {
    if (v5 == 7)
    {
      if (v7 && [v7 length])
      {
        v11 = FinHealthLogObject(@"FinHealthCore");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v13 = 138412546;
          v14 = v7;
          v15 = 2112;
          v16 = v6;
          _os_log_impl(&dword_226DD4000, v11, OS_LOG_TYPE_DEBUG, "Recomputing group %@ -- Transaction %@ was updated", &v13, 0x16u);
        }

        [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
      }

      v9 = 40;
      v10 = v4;
      goto LABEL_15;
    }
  }

  else if (v7 && [v7 length])
  {
    v8 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_226DD4000, v8, OS_LOG_TYPE_DEBUG, "Recomputing group %@ -- Transaction %@ was deleted", &v13, 0x16u);
    }

    v9 = 32;
    v10 = v7;
LABEL_15:
    [*(*(*(a1 + v9) + 8) + 40) addObject:v10];
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)deleteInsightsForGroupIds:(id)ids
{
  v54 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  v35 = [[FHDatabaseEntity alloc] initWithEntity:?];
  v31 = [[FHDatabaseEntity alloc] initWithEntity:?];
  v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v33 setObject:idsCopy forKey:@"ENTITY-GROUPS"];
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v41 = 0u;
  obj = idsCopy;
  v36 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v36)
  {
    v34 = *v42;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v41 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __48__FHTransactionGroup_deleteInsightsForGroupIds___block_invoke;
        v40[3] = &unk_2785CB058;
        v40[4] = v5;
        v6 = [FHDatabaseClauseFromBuilder initWithBuilder:v40];
        v7 = [(FHDatabaseEntity *)v35 clearDataWithClauseBuilder:v6];
        v8 = FinHealthLogObject(@"FinHealthCore");
        v9 = v8;
        if (v7)
        {
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            goto LABEL_12;
          }

          LODWORD(buf) = 138412290;
          *(&buf + 4) = v5;
          v10 = v9;
          v11 = OS_LOG_TYPE_INFO;
          v12 = "Group: %@ deleted from FinHealthDB";
        }

        else
        {
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          LODWORD(buf) = 138412290;
          *(&buf + 4) = v5;
          v10 = v9;
          v11 = OS_LOG_TYPE_ERROR;
          v12 = "Failed to delete group: %@ from FinHealthDB";
        }

        _os_log_impl(&dword_226DD4000, v10, v11, v12, &buf, 0xCu);
LABEL_12:

        v13 = [FHDatabaseJoinClauseFromBuilder initWithBuilder:&__block_literal_global_146];
        v14 = [[FHDatabaseEntity alloc] initWithEntity:@"fh_grouping" joinClause:v13];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __48__FHTransactionGroup_deleteInsightsForGroupIds___block_invoke_2;
        v39[3] = &unk_2785CB058;
        v39[4] = v5;
        v15 = [FHDatabaseClauseFromBuilder initWithBuilder:v39];
        *&buf = 0;
        *(&buf + 1) = &buf;
        v49 = 0x3032000000;
        v50 = __Block_byref_object_copy__3;
        v51 = __Block_byref_object_dispose__3;
        v52 = 0;
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.predicted_score", @"features_predicted_realtime"];
        v47 = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __48__FHTransactionGroup_deleteInsightsForGroupIds___block_invoke_3;
        v38[3] = &unk_2785CB080;
        v38[4] = &buf;
        [(FHDatabaseEntity *)v14 queryDataWithBlock:v15 logicalOperator:@"AND" selectFields:v17 usingBlock:v38];

        if (!*(*(&buf + 1) + 40))
        {
          goto LABEL_25;
        }

        if (v7 && [(FHDatabaseEntity *)v31 clearDataWithClauseBuilder:v15])
        {
          v18 = FinHealthLogObject(@"FinHealthCore");
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            goto LABEL_20;
          }

          *v45 = 138412290;
          v46 = v5;
          v19 = v18;
          v20 = OS_LOG_TYPE_INFO;
          v21 = "Income predictions for group: %@ deleted from FinHealthDB";
        }

        else
        {
          v18 = FinHealthLogObject(@"FinHealthCore");
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          *v45 = 138412290;
          v46 = v5;
          v19 = v18;
          v20 = OS_LOG_TYPE_ERROR;
          v21 = "Failed to delete income predictions associated with group: %@ from FinHealthDB";
        }

        _os_log_impl(&dword_226DD4000, v19, v20, v21, v45, 0xCu);
LABEL_20:

        [*(*(&buf + 1) + 40) doubleValue];
        if (v22 > 0.8)
        {
          v23 = [v33 objectForKey:@"INCOME-INSIGHTS"];
          v24 = v23;
          if (v23)
          {
            v25 = v23;
          }

          else
          {
            v25 = [MEMORY[0x277CBEB98] set];
          }

          v26 = v25;

          v27 = [v26 setByAddingObject:v5];
          [v33 setObject:v27 forKey:@"INCOME-INSIGHTS"];
        }

LABEL_25:
        _Block_object_dispose(&buf, 8);

        objc_autoreleasePoolPop(context);
      }

      v36 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v36);
  }

  v28 = [v33 copy];
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

void __48__FHTransactionGroup_deleteInsightsForGroupIds___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"%@.%@", @"fh_grouping", @"group_id"];
  [v4 addStringClause:@"==" fieldName:v5 expression:*(a1 + 32)];
}

void __48__FHTransactionGroup_deleteInsightsForGroupIds___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"%@.%@", @"features_predicted_realtime", @"identifier"];
  [v4 addStringClause:@"==" fieldName:v5 expression:*(a1 + 32)];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.feature_name", @"features_predicted_realtime"];
  [v4 addStringClause:@"==" fieldName:v6 expression:@"GhentClassificationModel"];
}

uint64_t __48__FHTransactionGroup_deleteInsightsForGroupIds___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 decimalNumberAtIndex:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

+ (void)_updateStateForTransactionsWithIds:(id)ids
{
  v16 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  v4 = [[FHDatabaseManager alloc] init:0];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = idsCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 updateStateForTransaction:*(*(&v11 + 1) + 8 * v9++) newState:{2, v11}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end