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
  v24 = [self init];
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
  base = [v8 base];
  identifier = [base identifier];
  notificationID = [v8 notificationID];
  clusterID = [v8 clusterID];
  clusterID2 = clusterID;
  if (!clusterID)
  {
    clusterID2 = [v27 clusterID];
  }

  notabilityScores = [v8 notabilityScores];
  v14 = notabilityScores;
  if (!notabilityScores)
  {
    v14 = objc_opt_new();
  }

  suppressIfFollowingTagIDs = [v8 suppressIfFollowingTagIDs];
  v16 = suppressIfFollowingTagIDs;
  if (!suppressIfFollowingTagIDs)
  {
    v16 = objc_opt_new();
  }

  targetMinNewsVersion = [v8 targetMinNewsVersion];
  LODWORD(v22) = a5;
  LODWORD(v21) = [v8 targetDeviceTypes];
  v18 = [self initWithIdentifier:identifier canonicalID:notificationID clusterID:clusterID2 notabilityScores:v14 suppressIfFollowingTagIDs:v16 targetMinNewsVersion:targetMinNewsVersion targetDeviceTypes:v21 feedItem:v27 source:v22 algoID:v9];

  v19 = v18;
  if (!suppressIfFollowingTagIDs)
  {
  }

  if (!notabilityScores)
  {
  }

  if (!clusterID)
  {
  }

  return v19;
}

- (id)description
{
  v2 = [[FCDescription alloc] initWithObject:self];
  identifier = [self identifier];
  [(FCDescription *)v2 addField:@"identifier" value:identifier];

  canonicalID = [self canonicalID];
  [(FCDescription *)v2 addField:@"canonicalID" value:canonicalID];

  articleID = [self articleID];
  [(FCDescription *)v2 addField:@"articleID" value:articleID];

  descriptionString = [(FCDescription *)v2 descriptionString];

  return descriptionString;
}

- (id)articleID
{
  feedItem = [self feedItem];
  articleID = [feedItem articleID];

  return articleID;
}

- (__CFString)channelID
{
  feedItem = [self feedItem];
  sourceChannelID = [feedItem sourceChannelID];
  v3 = sourceChannelID;
  if (sourceChannelID)
  {
    v4 = sourceChannelID;
  }

  else
  {
    v4 = &stru_1F2DC7DC0;
  }

  v5 = v4;

  return v4;
}

@end