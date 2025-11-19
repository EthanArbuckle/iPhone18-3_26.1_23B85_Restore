@interface NTPBNotificationItem(FCNotificationItem)
- (__CFString)channelID;
- (id)articleID;
- (id)description;
- (id)initWithRecord:()FCNotificationItem feedItem:source:algoID:;
- (void)initWithIdentifier:()FCNotificationItem canonicalID:clusterID:notabilityScores:suppressIfFollowingTagIDs:targetMinNewsVersion:targetDeviceTypes:feedItem:source:algoID:;
@end

@implementation NTPBNotificationItem(FCNotificationItem)

- (void)initWithIdentifier:()FCNotificationItem canonicalID:clusterID:notabilityScores:suppressIfFollowingTagIDs:targetMinNewsVersion:targetDeviceTypes:feedItem:source:algoID:
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a10;
  v23 = a12;
  v24 = [a1 init];
  v25 = v24;
  if (v24)
  {
    [v24 setIdentifier:v17];
    if (v18)
    {
      v26 = v18;
    }

    else
    {
      v26 = v17;
    }

    [v25 setCanonicalID:v26];
    [v25 setClusterID:v19];
    [v25 setNotabilityScores:v20];
    [v25 setSuppressIfFollowingTagIDs:v21];
    [v25 setTargetMinNewsVersion:a8];
    [v25 setTargetDeviceTypes:a9];
    [v25 setFeedItem:v22];
    [v25 setSource:a11];
    [v25 setAlgoID:v23];
  }

  return v25;
}

- (id)initWithRecord:()FCNotificationItem feedItem:source:algoID:
{
  v8 = a3;
  v27 = a4;
  v9 = a6;
  v25 = [v8 base];
  v26 = [v25 identifier];
  v10 = [v8 notificationID];
  v11 = [v8 clusterID];
  v12 = v11;
  if (!v11)
  {
    v12 = [v27 clusterID];
  }

  v13 = [v8 notabilityScores];
  v14 = v13;
  if (!v13)
  {
    v14 = objc_opt_new();
  }

  v15 = [v8 suppressIfFollowingTagIDs];
  v16 = v15;
  if (!v15)
  {
    v16 = objc_opt_new();
  }

  v17 = [v8 targetMinNewsVersion];
  LODWORD(v22) = a5;
  LODWORD(v21) = [v8 targetDeviceTypes];
  v18 = [a1 initWithIdentifier:v26 canonicalID:v10 clusterID:v12 notabilityScores:v14 suppressIfFollowingTagIDs:v16 targetMinNewsVersion:v17 targetDeviceTypes:v21 feedItem:v27 source:v22 algoID:v9];

  v19 = v18;
  if (!v15)
  {
  }

  if (!v13)
  {
  }

  if (!v11)
  {
  }

  return v19;
}

- (id)description
{
  v2 = [[FCDescription alloc] initWithObject:a1];
  v3 = [a1 identifier];
  [(FCDescription *)v2 addField:@"identifier" value:v3];

  v4 = [a1 canonicalID];
  [(FCDescription *)v2 addField:@"canonicalID" value:v4];

  v5 = [a1 articleID];
  [(FCDescription *)v2 addField:@"articleID" value:v5];

  v6 = [(FCDescription *)v2 descriptionString];

  return v6;
}

- (id)articleID
{
  v1 = [a1 feedItem];
  v2 = [v1 articleID];

  return v2;
}

- (__CFString)channelID
{
  v1 = [a1 feedItem];
  v2 = [v1 sourceChannelID];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2DC7DC0;
  }

  v5 = v4;

  return v4;
}

@end