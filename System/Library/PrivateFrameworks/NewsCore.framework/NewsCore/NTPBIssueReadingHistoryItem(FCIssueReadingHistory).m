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
  v5 = [v3 recordID];
  v6 = [v5 recordName];
  [v4 setIdentifier:v6];

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
  v4 = [a3 pbDate];
  [a1 setLastVisitedPBDate:v4];
}

- (id)lastVisitedDate
{
  v1 = MEMORY[0x1E695DF00];
  v2 = [a1 lastVisitedPBDate];
  v3 = [v1 dateWithPBDate:v2];

  return v3;
}

- (void)setLastBadgedDate:()FCIssueReadingHistory
{
  v4 = [a3 pbDate];
  [a1 setLastBadgedPBDate:v4];
}

- (id)lastBadgedDate
{
  v1 = MEMORY[0x1E695DF00];
  v2 = [a1 lastBadgedPBDate];
  v3 = [v1 dateWithPBDate:v2];

  return v3;
}

- (void)setLastEngagedDate:()FCIssueReadingHistory
{
  v4 = [a3 pbDate];
  [a1 setLastEngagedPBDate:v4];
}

- (id)lastEngagedDate
{
  v1 = MEMORY[0x1E695DF00];
  v2 = [a1 lastEngagedPBDate];
  v3 = [v1 dateWithPBDate:v2];

  return v3;
}

- (void)setLastSeenDate:()FCIssueReadingHistory
{
  v4 = [a3 pbDate];
  [a1 setLastSeenPBDate:v4];
}

- (id)lastSeenDate
{
  v1 = MEMORY[0x1E695DF00];
  v2 = [a1 lastSeenPBDate];
  v3 = [v1 dateWithPBDate:v2];

  return v3;
}

- (void)setLastRemovedFromMyMagazinesDate:()FCIssueReadingHistory
{
  v4 = [a3 pbDate];
  [a1 setLastRemovedFromMyMagazinesPBDate:v4];
}

- (id)lastRemovedFromMyMagazinesDate
{
  v1 = MEMORY[0x1E695DF00];
  v2 = [a1 lastRemovedFromMyMagazinesPBDate];
  v3 = [v1 dateWithPBDate:v2];

  return v3;
}

- (id)asCKRecord
{
  if (qword_1EDB27840 != -1)
  {
    dispatch_once(&qword_1EDB27840, &__block_literal_global_149);
  }

  v2 = objc_alloc(MEMORY[0x1E695BA70]);
  v3 = [a1 identifier];
  v4 = [v2 initWithRecordName:v3 zoneID:_MergedGlobals_195];

  v5 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"IssueReadingHistoryItem" recordID:v4];
  v6 = [a1 issueID];
  [v5 setObject:v6 forKeyedSubscript:@"issueID"];

  v7 = [a1 lastVisitedDate];
  [v5 setObject:v7 forKeyedSubscript:@"lastVisited"];

  v8 = [a1 lastBadgedDate];
  [v5 setObject:v8 forKeyedSubscript:@"lastBadged"];

  v9 = [a1 lastEngagedDate];
  [v5 setObject:v9 forKeyedSubscript:@"lastEngaged"];

  v10 = [a1 lastSeenDate];
  [v5 setObject:v10 forKeyedSubscript:@"lastSeen"];

  v11 = [a1 lastRemovedFromMyMagazinesDate];
  [v5 setObject:v11 forKeyedSubscript:@"lastRemovedFromMyMagazines"];

  v12 = [a1 lastVisitedArticleID];
  [v5 setObject:v12 forKeyedSubscript:@"lastVisitedArticleID"];

  v13 = [a1 lastVisitedPageID];
  [v5 setObject:v13 forKeyedSubscript:@"lastVisitedPageID"];

  return v5;
}

- (void)writeToKeyValuePair:()FCIssueReadingHistory
{
  v4 = a3;
  [v4 setValueType:{objc_msgSend(objc_opt_class(), "keyValuePairType")}];
  [v4 setIssueReadingHistoryItem:a1];
}

@end