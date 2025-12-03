@interface NTPBIssueReadingHistoryItem(FCIssueReadingHistory)
+ (id)issueReadingHistoryItemWithCKRecord:()FCIssueReadingHistory;
- (id)asCKRecord;
- (id)lastBadgedDate;
- (id)lastEngagedDate;
- (id)lastRemovedFromMyMagazinesDate;
- (id)lastSeenDate;
- (id)lastVisitedDate;
- (void)setLastBadgedDate:()FCIssueReadingHistory;
- (void)setLastEngagedDate:()FCIssueReadingHistory;
- (void)setLastRemovedFromMyMagazinesDate:()FCIssueReadingHistory;
- (void)setLastSeenDate:()FCIssueReadingHistory;
- (void)setLastVisitedDate:()FCIssueReadingHistory;
- (void)writeToKeyValuePair:()FCIssueReadingHistory;
@end

@implementation NTPBIssueReadingHistoryItem(FCIssueReadingHistory)

+ (id)issueReadingHistoryItemWithCKRecord:()FCIssueReadingHistory
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "record != nil"];
    *buf = 136315906;
    v19 = "+[NTPBIssueReadingHistoryItem(FCIssueReadingHistory) issueReadingHistoryItemWithCKRecord:]";
    v20 = 2080;
    v21 = "NTPBIssueReadingHistoryItem+FCIssueReadingHistory.m";
    v22 = 1024;
    v23 = 18;
    v24 = 2114;
    v25 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = objc_opt_new();
  recordID = [v3 recordID];
  recordName = [recordID recordName];
  [v4 setIdentifier:recordName];

  v7 = [v3 objectForKeyedSubscript:@"issueID"];
  [v4 setIssueID:v7];

  v8 = [v3 objectForKeyedSubscript:@"lastVisited"];
  [v4 setLastVisitedDate:v8];

  v9 = [v3 objectForKeyedSubscript:@"lastBadged"];
  [v4 setLastBadgedDate:v9];

  v10 = [v3 objectForKeyedSubscript:@"lastEngaged"];
  [v4 setLastEngagedDate:v10];

  v11 = [v3 objectForKeyedSubscript:@"lastSeen"];
  [v4 setLastSeenDate:v11];

  v12 = [v3 objectForKeyedSubscript:@"lastRemovedFromMyMagazines"];
  [v4 setLastRemovedFromMyMagazinesDate:v12];

  v13 = [v3 objectForKeyedSubscript:@"lastVisitedArticleID"];
  [v4 setLastVisitedArticleID:v13];

  v14 = [v3 objectForKeyedSubscript:@"lastVisitedPageID"];
  [v4 setLastVisitedPageID:v14];

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setLastVisitedDate:()FCIssueReadingHistory
{
  pbDate = [a3 pbDate];
  [self setLastVisitedPBDate:pbDate];
}

- (id)lastVisitedDate
{
  v1 = MEMORY[0x1E695DF00];
  lastVisitedPBDate = [self lastVisitedPBDate];
  v3 = [v1 dateWithPBDate:lastVisitedPBDate];

  return v3;
}

- (void)setLastBadgedDate:()FCIssueReadingHistory
{
  pbDate = [a3 pbDate];
  [self setLastBadgedPBDate:pbDate];
}

- (id)lastBadgedDate
{
  v1 = MEMORY[0x1E695DF00];
  lastBadgedPBDate = [self lastBadgedPBDate];
  v3 = [v1 dateWithPBDate:lastBadgedPBDate];

  return v3;
}

- (void)setLastEngagedDate:()FCIssueReadingHistory
{
  pbDate = [a3 pbDate];
  [self setLastEngagedPBDate:pbDate];
}

- (id)lastEngagedDate
{
  v1 = MEMORY[0x1E695DF00];
  lastEngagedPBDate = [self lastEngagedPBDate];
  v3 = [v1 dateWithPBDate:lastEngagedPBDate];

  return v3;
}

- (void)setLastSeenDate:()FCIssueReadingHistory
{
  pbDate = [a3 pbDate];
  [self setLastSeenPBDate:pbDate];
}

- (id)lastSeenDate
{
  v1 = MEMORY[0x1E695DF00];
  lastSeenPBDate = [self lastSeenPBDate];
  v3 = [v1 dateWithPBDate:lastSeenPBDate];

  return v3;
}

- (void)setLastRemovedFromMyMagazinesDate:()FCIssueReadingHistory
{
  pbDate = [a3 pbDate];
  [self setLastRemovedFromMyMagazinesPBDate:pbDate];
}

- (id)lastRemovedFromMyMagazinesDate
{
  v1 = MEMORY[0x1E695DF00];
  lastRemovedFromMyMagazinesPBDate = [self lastRemovedFromMyMagazinesPBDate];
  v3 = [v1 dateWithPBDate:lastRemovedFromMyMagazinesPBDate];

  return v3;
}

- (id)asCKRecord
{
  if (qword_1EDB27840 != -1)
  {
    dispatch_once(&qword_1EDB27840, &__block_literal_global_149);
  }

  v2 = objc_alloc(MEMORY[0x1E695BA70]);
  identifier = [self identifier];
  v4 = [v2 initWithRecordName:identifier zoneID:_MergedGlobals_195];

  v5 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"IssueReadingHistoryItem" recordID:v4];
  issueID = [self issueID];
  [v5 setObject:issueID forKeyedSubscript:@"issueID"];

  lastVisitedDate = [self lastVisitedDate];
  [v5 setObject:lastVisitedDate forKeyedSubscript:@"lastVisited"];

  lastBadgedDate = [self lastBadgedDate];
  [v5 setObject:lastBadgedDate forKeyedSubscript:@"lastBadged"];

  lastEngagedDate = [self lastEngagedDate];
  [v5 setObject:lastEngagedDate forKeyedSubscript:@"lastEngaged"];

  lastSeenDate = [self lastSeenDate];
  [v5 setObject:lastSeenDate forKeyedSubscript:@"lastSeen"];

  lastRemovedFromMyMagazinesDate = [self lastRemovedFromMyMagazinesDate];
  [v5 setObject:lastRemovedFromMyMagazinesDate forKeyedSubscript:@"lastRemovedFromMyMagazines"];

  lastVisitedArticleID = [self lastVisitedArticleID];
  [v5 setObject:lastVisitedArticleID forKeyedSubscript:@"lastVisitedArticleID"];

  lastVisitedPageID = [self lastVisitedPageID];
  [v5 setObject:lastVisitedPageID forKeyedSubscript:@"lastVisitedPageID"];

  return v5;
}

- (void)writeToKeyValuePair:()FCIssueReadingHistory
{
  v4 = a3;
  [v4 setValueType:{objc_msgSend(objc_opt_class(), "keyValuePairType")}];
  [v4 setIssueReadingHistoryItem:self];
}

@end