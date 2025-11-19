@interface FCModifyIssueHistoryCommand
- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4;
@end

@implementation FCModifyIssueHistoryCommand

- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"lastVisited"];
  v30 = [v6 objectForKeyedSubscript:@"lastVisited"];
  v31 = v7;
  v8 = [v7 compare:v30];
  v9 = v8 == 1;
  if (v8 == 1)
  {
    v10 = [v5 objectForKeyedSubscript:@"lastVisited"];
    [v6 setObject:v10 forKeyedSubscript:@"lastVisited"];

    v11 = [v5 objectForKeyedSubscript:@"lastVisitedPageID"];
    [v6 setObject:v11 forKeyedSubscript:@"lastVisitedPageID"];

    v12 = [v5 objectForKeyedSubscript:@"lastVisitedArticleID"];
    [v6 setObject:v12 forKeyedSubscript:@"lastVisitedArticleID"];
  }

  v13 = [v5 objectForKeyedSubscript:@"lastBadged"];
  v28 = [v6 objectForKeyedSubscript:@"lastBadged"];
  v29 = v13;
  if ([v13 compare:v28] == 1)
  {
    v14 = [v5 objectForKeyedSubscript:@"lastBadged"];
    [v6 setObject:v14 forKeyedSubscript:@"lastBadged"];

    v9 = 1;
  }

  v15 = [v5 objectForKeyedSubscript:@"lastEngaged"];
  v16 = [v6 objectForKeyedSubscript:@"lastEngaged"];
  v17 = v16;
  if (v15 && (!v16 || [v15 compare:v16] == 1))
  {
    v18 = [v5 objectForKeyedSubscript:@"lastEngaged"];
    [v6 setObject:v18 forKeyedSubscript:@"lastEngaged"];

    v9 = 1;
  }

  v19 = [v5 objectForKeyedSubscript:@"lastSeen"];
  v20 = [v6 objectForKeyedSubscript:@"lastSeen"];
  v21 = v20;
  if (v19 && (!v20 || [v19 compare:v20] == 1))
  {
    v22 = [v5 objectForKeyedSubscript:@"lastSeen"];
    [v6 setObject:v22 forKeyedSubscript:@"lastSeen"];

    v9 = 1;
  }

  v23 = [v5 objectForKeyedSubscript:@"lastRemovedFromMyMagazines"];
  v24 = [v6 objectForKeyedSubscript:@"lastRemovedFromMyMagazines"];
  v25 = v24;
  if (v23 && (!v24 || [v23 compare:v24] == 1))
  {
    v26 = [v5 objectForKeyedSubscript:@"lastRemovedFromMyMagazines"];
    [v6 setObject:v26 forKeyedSubscript:@"lastRemovedFromMyMagazines"];

    v9 = 1;
  }

  return v9;
}

@end