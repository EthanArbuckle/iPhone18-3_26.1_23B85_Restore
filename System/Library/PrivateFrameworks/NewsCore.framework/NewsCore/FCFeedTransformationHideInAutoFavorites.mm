@interface FCFeedTransformationHideInAutoFavorites
+ (id)transformationWithFeedContextByFeedID:(id)d autoFavoriteTagIDs:(id)ds;
- (id)transformFeedItems:(id)items;
@end

@implementation FCFeedTransformationHideInAutoFavorites

+ (id)transformationWithFeedContextByFeedID:(id)d autoFavoriteTagIDs:(id)ds
{
  dsCopy = ds;
  dCopy = d;
  v7 = objc_opt_new();
  [v7 setFeedContextByFeedID:dCopy];

  [v7 setAutoFavoriteTagIDs:dsCopy];

  return v7;
}

- (id)transformFeedItems:(id)items
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__FCFeedTransformationHideInAutoFavorites_transformFeedItems___block_invoke;
  v5[3] = &unk_1E7C37898;
  v5[4] = self;
  v3 = [items fc_arrayOfObjectsPassingTest:v5];

  return v3;
}

uint64_t __62__FCFeedTransformationHideInAutoFavorites_transformFeedItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 isHiddenFromAutoFavorites])
  {
    goto LABEL_8;
  }

  v4 = [*(a1 + 32) feedContextByFeedID];
  v5 = [v3 feedID];
  v6 = [v4 fc_safeObjectForKey:v5];

  v7 = [v6 topicID];
  if (!v7)
  {
    v7 = [v6 channelID];
    if (!v7)
    {
      v7 = [v3 sourceFeedID];
      if (!v7)
      {

        goto LABEL_8;
      }
    }
  }

  v8 = v7;
  v9 = [*(a1 + 32) autoFavoriteTagIDs];
  v10 = [v9 containsObject:v8];

  if ((v10 & 1) == 0)
  {
LABEL_8:
    v11 = 1;
    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

@end