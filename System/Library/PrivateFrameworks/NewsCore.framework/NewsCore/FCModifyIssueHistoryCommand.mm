@interface FCModifyIssueHistoryCommand
- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord;
@end

@implementation FCModifyIssueHistoryCommand

- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord
{
  recordCopy = record;
  remoteRecordCopy = remoteRecord;
  v7 = [recordCopy objectForKeyedSubscript:@"lastVisited"];
  v30 = [remoteRecordCopy objectForKeyedSubscript:@"lastVisited"];
  v31 = v7;
  v8 = [v7 compare:v30];
  v9 = v8 == 1;
  if (v8 == 1)
  {
    v10 = [recordCopy objectForKeyedSubscript:@"lastVisited"];
    [remoteRecordCopy setObject:v10 forKeyedSubscript:@"lastVisited"];

    v11 = [recordCopy objectForKeyedSubscript:@"lastVisitedPageID"];
    [remoteRecordCopy setObject:v11 forKeyedSubscript:@"lastVisitedPageID"];

    v12 = [recordCopy objectForKeyedSubscript:@"lastVisitedArticleID"];
    [remoteRecordCopy setObject:v12 forKeyedSubscript:@"lastVisitedArticleID"];
  }

  v13 = [recordCopy objectForKeyedSubscript:@"lastBadged"];
  v28 = [remoteRecordCopy objectForKeyedSubscript:@"lastBadged"];
  v29 = v13;
  if ([v13 compare:v28] == 1)
  {
    v14 = [recordCopy objectForKeyedSubscript:@"lastBadged"];
    [remoteRecordCopy setObject:v14 forKeyedSubscript:@"lastBadged"];

    v9 = 1;
  }

  v15 = [recordCopy objectForKeyedSubscript:@"lastEngaged"];
  v16 = [remoteRecordCopy objectForKeyedSubscript:@"lastEngaged"];
  v17 = v16;
  if (v15 && (!v16 || [v15 compare:v16] == 1))
  {
    v18 = [recordCopy objectForKeyedSubscript:@"lastEngaged"];
    [remoteRecordCopy setObject:v18 forKeyedSubscript:@"lastEngaged"];

    v9 = 1;
  }

  v19 = [recordCopy objectForKeyedSubscript:@"lastSeen"];
  v20 = [remoteRecordCopy objectForKeyedSubscript:@"lastSeen"];
  v21 = v20;
  if (v19 && (!v20 || [v19 compare:v20] == 1))
  {
    v22 = [recordCopy objectForKeyedSubscript:@"lastSeen"];
    [remoteRecordCopy setObject:v22 forKeyedSubscript:@"lastSeen"];

    v9 = 1;
  }

  v23 = [recordCopy objectForKeyedSubscript:@"lastRemovedFromMyMagazines"];
  v24 = [remoteRecordCopy objectForKeyedSubscript:@"lastRemovedFromMyMagazines"];
  v25 = v24;
  if (v23 && (!v24 || [v23 compare:v24] == 1))
  {
    v26 = [recordCopy objectForKeyedSubscript:@"lastRemovedFromMyMagazines"];
    [remoteRecordCopy setObject:v26 forKeyedSubscript:@"lastRemovedFromMyMagazines"];

    v9 = 1;
  }

  return v9;
}

@end