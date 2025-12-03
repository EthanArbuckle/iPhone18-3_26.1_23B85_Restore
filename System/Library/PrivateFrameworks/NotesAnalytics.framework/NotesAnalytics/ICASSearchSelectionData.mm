@interface ICASSearchSelectionData
- (ICASSearchSelectionData)initWithSelectedResultID:(id)d selectedResultAccountType:(id)type selectedResultType:(id)resultType gmRankingStrategyType:(id)strategyType gmRank:(id)rank searchRankingExperimentSummary:(id)summary gmRankIOS13:(id)s13 charLengthOfQueryString:(id)self0 isNoteFoundByAttachment:(id)self1 isTopHit:(id)self2;
- (id)toDict;
@end

@implementation ICASSearchSelectionData

- (ICASSearchSelectionData)initWithSelectedResultID:(id)d selectedResultAccountType:(id)type selectedResultType:(id)resultType gmRankingStrategyType:(id)strategyType gmRank:(id)rank searchRankingExperimentSummary:(id)summary gmRankIOS13:(id)s13 charLengthOfQueryString:(id)self0 isNoteFoundByAttachment:(id)self1 isTopHit:(id)self2
{
  dCopy = d;
  obj = type;
  typeCopy = type;
  resultTypeCopy = resultType;
  resultTypeCopy2 = resultType;
  strategyTypeCopy = strategyType;
  rankCopy = rank;
  rankCopy2 = rank;
  summaryCopy = summary;
  summaryCopy2 = summary;
  s13Copy = s13;
  stringCopy = string;
  attachmentCopy = attachment;
  hitCopy = hit;
  v36.receiver = self;
  v36.super_class = ICASSearchSelectionData;
  v23 = [(ICASSearchSelectionData *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_selectedResultID, d);
    objc_storeStrong(&v24->_selectedResultAccountType, obj);
    objc_storeStrong(&v24->_selectedResultType, resultTypeCopy);
    objc_storeStrong(&v24->_gmRankingStrategyType, strategyType);
    objc_storeStrong(&v24->_gmRank, rankCopy);
    objc_storeStrong(&v24->_searchRankingExperimentSummary, summaryCopy);
    objc_storeStrong(&v24->_gmRankIOS13, s13);
    objc_storeStrong(&v24->_charLengthOfQueryString, string);
    objc_storeStrong(&v24->_isNoteFoundByAttachment, attachment);
    objc_storeStrong(&v24->_isTopHit, hit);
  }

  return v24;
}

- (id)toDict
{
  v37[10] = *MEMORY[0x277D85DE8];
  v36[0] = @"selectedResultID";
  selectedResultID = [(ICASSearchSelectionData *)self selectedResultID];
  if (selectedResultID)
  {
    selectedResultID2 = [(ICASSearchSelectionData *)self selectedResultID];
  }

  else
  {
    selectedResultID2 = objc_opt_new();
  }

  v34 = selectedResultID2;
  v37[0] = selectedResultID2;
  v36[1] = @"selectedResultAccountType";
  selectedResultAccountType = [(ICASSearchSelectionData *)self selectedResultAccountType];
  if (selectedResultAccountType)
  {
    selectedResultAccountType2 = [(ICASSearchSelectionData *)self selectedResultAccountType];
  }

  else
  {
    selectedResultAccountType2 = objc_opt_new();
  }

  v32 = selectedResultAccountType2;
  v37[1] = selectedResultAccountType2;
  v36[2] = @"selectedResultType";
  selectedResultType = [(ICASSearchSelectionData *)self selectedResultType];
  if (selectedResultType)
  {
    selectedResultType2 = [(ICASSearchSelectionData *)self selectedResultType];
  }

  else
  {
    selectedResultType2 = objc_opt_new();
  }

  v30 = selectedResultType2;
  v37[2] = selectedResultType2;
  v36[3] = @"gmRankingStrategyType";
  gmRankingStrategyType = [(ICASSearchSelectionData *)self gmRankingStrategyType];
  if (gmRankingStrategyType)
  {
    gmRankingStrategyType2 = [(ICASSearchSelectionData *)self gmRankingStrategyType];
  }

  else
  {
    gmRankingStrategyType2 = objc_opt_new();
  }

  v28 = gmRankingStrategyType2;
  v37[3] = gmRankingStrategyType2;
  v36[4] = @"gmRank";
  gmRank = [(ICASSearchSelectionData *)self gmRank];
  if (gmRank)
  {
    gmRank2 = [(ICASSearchSelectionData *)self gmRank];
  }

  else
  {
    gmRank2 = objc_opt_new();
  }

  v26 = gmRank2;
  v37[4] = gmRank2;
  v36[5] = @"searchRankingExperimentSummary";
  searchRankingExperimentSummary = [(ICASSearchSelectionData *)self searchRankingExperimentSummary];
  if (searchRankingExperimentSummary)
  {
    searchRankingExperimentSummary2 = [(ICASSearchSelectionData *)self searchRankingExperimentSummary];
  }

  else
  {
    searchRankingExperimentSummary2 = objc_opt_new();
  }

  v9 = searchRankingExperimentSummary2;
  v37[5] = searchRankingExperimentSummary2;
  v36[6] = @"gmRankIOS13";
  gmRankIOS13 = [(ICASSearchSelectionData *)self gmRankIOS13];
  if (gmRankIOS13)
  {
    gmRankIOS132 = [(ICASSearchSelectionData *)self gmRankIOS13];
  }

  else
  {
    gmRankIOS132 = objc_opt_new();
  }

  v12 = gmRankIOS132;
  v37[6] = gmRankIOS132;
  v36[7] = @"charLengthOfQueryString";
  charLengthOfQueryString = [(ICASSearchSelectionData *)self charLengthOfQueryString];
  if (charLengthOfQueryString)
  {
    charLengthOfQueryString2 = [(ICASSearchSelectionData *)self charLengthOfQueryString];
  }

  else
  {
    charLengthOfQueryString2 = objc_opt_new();
  }

  v15 = charLengthOfQueryString2;
  v37[7] = charLengthOfQueryString2;
  v36[8] = @"isNoteFoundByAttachment";
  isNoteFoundByAttachment = [(ICASSearchSelectionData *)self isNoteFoundByAttachment];
  if (isNoteFoundByAttachment)
  {
    isNoteFoundByAttachment2 = [(ICASSearchSelectionData *)self isNoteFoundByAttachment];
  }

  else
  {
    isNoteFoundByAttachment2 = objc_opt_new();
  }

  v18 = isNoteFoundByAttachment2;
  v37[8] = isNoteFoundByAttachment2;
  v36[9] = @"isTopHit";
  isTopHit = [(ICASSearchSelectionData *)self isTopHit];
  if (isTopHit)
  {
    isTopHit2 = [(ICASSearchSelectionData *)self isTopHit];
  }

  else
  {
    isTopHit2 = objc_opt_new();
  }

  v21 = isTopHit2;
  v37[9] = isTopHit2;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:10];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end