@interface FCFeedTransformationOnlySurfacedBy
+ (id)transformationWithTagIDs:(id)ds feedContextByFeedID:(id)d;
- (id)transformFeedItems:(id)items;
@end

@implementation FCFeedTransformationOnlySurfacedBy

+ (id)transformationWithTagIDs:(id)ds feedContextByFeedID:(id)d
{
  dCopy = d;
  dsCopy = ds;
  v7 = objc_opt_new();
  [v7 setTagIDs:dsCopy];

  [v7 setFeedContextByFeedID:dCopy];

  return v7;
}

- (id)transformFeedItems:(id)items
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__FCFeedTransformationOnlySurfacedBy_transformFeedItems___block_invoke;
  v5[3] = &unk_1E7C37898;
  v5[4] = self;
  v3 = [items fc_arrayOfObjectsPassingTest:v5];

  return v3;
}

uint64_t __57__FCFeedTransformationOnlySurfacedBy_transformFeedItems___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 feedContextByFeedID];
  v7 = [v5 feedID];

  v8 = [v6 fc_safeObjectForKey:v7];

  v9 = [v8 topicID];
  if (v9)
  {
    v6 = [*(a1 + 32) tagIDs];
    v7 = [v8 topicID];
    if ([v6 containsObject:v7])
    {
      v10 = 1;
LABEL_15:

      goto LABEL_16;
    }
  }

  v11 = [v8 channelID];
  if (v11)
  {
    v12 = [*(a1 + 32) tagIDs];
    v2 = [v8 channelID];
    if ([v12 containsObject:v2])
    {
      v10 = 1;
LABEL_13:

      goto LABEL_14;
    }

    v20 = v12;
  }

  v13 = [v8 sectionID];
  if (v13)
  {
    v14 = v13;
    v15 = [*(a1 + 32) tagIDs];
    [v8 sectionID];
    v16 = v7;
    v18 = v17 = v6;
    v10 = [v15 containsObject:v18];

    v6 = v17;
    v7 = v16;
  }

  else
  {
    v10 = 0;
  }

  v12 = v20;
  if (v11)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v10;
}

@end