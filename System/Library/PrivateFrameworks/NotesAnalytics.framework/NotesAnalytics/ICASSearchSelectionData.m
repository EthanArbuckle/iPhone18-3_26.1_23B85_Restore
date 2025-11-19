@interface ICASSearchSelectionData
- (ICASSearchSelectionData)initWithSelectedResultID:(id)a3 selectedResultAccountType:(id)a4 selectedResultType:(id)a5 gmRankingStrategyType:(id)a6 gmRank:(id)a7 searchRankingExperimentSummary:(id)a8 gmRankIOS13:(id)a9 charLengthOfQueryString:(id)a10 isNoteFoundByAttachment:(id)a11 isTopHit:(id)a12;
- (id)toDict;
@end

@implementation ICASSearchSelectionData

- (ICASSearchSelectionData)initWithSelectedResultID:(id)a3 selectedResultAccountType:(id)a4 selectedResultType:(id)a5 gmRankingStrategyType:(id)a6 gmRank:(id)a7 searchRankingExperimentSummary:(id)a8 gmRankIOS13:(id)a9 charLengthOfQueryString:(id)a10 isNoteFoundByAttachment:(id)a11 isTopHit:(id)a12
{
  v35 = a3;
  obj = a4;
  v34 = a4;
  v27 = a5;
  v33 = a5;
  v32 = a6;
  v28 = a7;
  v31 = a7;
  v29 = a8;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v36.receiver = self;
  v36.super_class = ICASSearchSelectionData;
  v23 = [(ICASSearchSelectionData *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_selectedResultID, a3);
    objc_storeStrong(&v24->_selectedResultAccountType, obj);
    objc_storeStrong(&v24->_selectedResultType, v27);
    objc_storeStrong(&v24->_gmRankingStrategyType, a6);
    objc_storeStrong(&v24->_gmRank, v28);
    objc_storeStrong(&v24->_searchRankingExperimentSummary, v29);
    objc_storeStrong(&v24->_gmRankIOS13, a9);
    objc_storeStrong(&v24->_charLengthOfQueryString, a10);
    objc_storeStrong(&v24->_isNoteFoundByAttachment, a11);
    objc_storeStrong(&v24->_isTopHit, a12);
  }

  return v24;
}

- (id)toDict
{
  v37[10] = *MEMORY[0x277D85DE8];
  v36[0] = @"selectedResultID";
  v35 = [(ICASSearchSelectionData *)self selectedResultID];
  if (v35)
  {
    v3 = [(ICASSearchSelectionData *)self selectedResultID];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v34 = v3;
  v37[0] = v3;
  v36[1] = @"selectedResultAccountType";
  v33 = [(ICASSearchSelectionData *)self selectedResultAccountType];
  if (v33)
  {
    v4 = [(ICASSearchSelectionData *)self selectedResultAccountType];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v32 = v4;
  v37[1] = v4;
  v36[2] = @"selectedResultType";
  v31 = [(ICASSearchSelectionData *)self selectedResultType];
  if (v31)
  {
    v5 = [(ICASSearchSelectionData *)self selectedResultType];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v30 = v5;
  v37[2] = v5;
  v36[3] = @"gmRankingStrategyType";
  v29 = [(ICASSearchSelectionData *)self gmRankingStrategyType];
  if (v29)
  {
    v6 = [(ICASSearchSelectionData *)self gmRankingStrategyType];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v28 = v6;
  v37[3] = v6;
  v36[4] = @"gmRank";
  v27 = [(ICASSearchSelectionData *)self gmRank];
  if (v27)
  {
    v7 = [(ICASSearchSelectionData *)self gmRank];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v26 = v7;
  v37[4] = v7;
  v36[5] = @"searchRankingExperimentSummary";
  v25 = [(ICASSearchSelectionData *)self searchRankingExperimentSummary];
  if (v25)
  {
    v8 = [(ICASSearchSelectionData *)self searchRankingExperimentSummary];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v37[5] = v8;
  v36[6] = @"gmRankIOS13";
  v10 = [(ICASSearchSelectionData *)self gmRankIOS13];
  if (v10)
  {
    v11 = [(ICASSearchSelectionData *)self gmRankIOS13];
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;
  v37[6] = v11;
  v36[7] = @"charLengthOfQueryString";
  v13 = [(ICASSearchSelectionData *)self charLengthOfQueryString];
  if (v13)
  {
    v14 = [(ICASSearchSelectionData *)self charLengthOfQueryString];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v15 = v14;
  v37[7] = v14;
  v36[8] = @"isNoteFoundByAttachment";
  v16 = [(ICASSearchSelectionData *)self isNoteFoundByAttachment];
  if (v16)
  {
    v17 = [(ICASSearchSelectionData *)self isNoteFoundByAttachment];
  }

  else
  {
    v17 = objc_opt_new();
  }

  v18 = v17;
  v37[8] = v17;
  v36[9] = @"isTopHit";
  v19 = [(ICASSearchSelectionData *)self isTopHit];
  if (v19)
  {
    v20 = [(ICASSearchSelectionData *)self isTopHit];
  }

  else
  {
    v20 = objc_opt_new();
  }

  v21 = v20;
  v37[9] = v20;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:10];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end