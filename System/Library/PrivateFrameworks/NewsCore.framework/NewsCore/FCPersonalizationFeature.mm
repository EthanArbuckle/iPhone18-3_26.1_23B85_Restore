@interface FCPersonalizationFeature
+ (id)featureForIdentifier:(char)a3 allowFreeValued:;
+ (id)featureFromTagID:(id)a3;
+ (id)featuresFromIssue:(id)a3;
+ (id)featuresFromPersonalizingItem:(id)a3 personalizationTreatment:(id)a4;
+ (id)featuresFromTag:(id)a3;
+ (id)featuresFromTodayPersonalizationEvent:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)initWithIdentifier:(void *)a1;
@end

@implementation FCPersonalizationFeature

+ (id)featuresFromIssue:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 sourceChannel];
  v6 = [v5 identifier];

  v7 = [v3 topicTagIDs];

  if (v6 && v7)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __46__FCPersonalizationFeature_featuresFromIssue___block_invoke;
    v19[3] = &unk_1E7C3CA58;
    v20 = v6;
    v8 = [v7 fc_arrayByTransformingWithBlock:v19];
    [v4 addObjectsFromArray:v8];
  }

  v9 = MEMORY[0x1E695DEC8];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__FCPersonalizationFeature_featuresFromIssue___block_invoke_2;
  v16[3] = &unk_1E7C3B110;
  v17 = v6;
  v18 = v7;
  v10 = v7;
  v11 = v6;
  v12 = [v9 fc_array:v16];
  v13 = [v12 fc_arrayByTransformingWithBlock:&__block_literal_global_58_2];
  [v4 addObjectsFromArray:v13];

  v14 = [v4 copy];

  return v14;
}

FCPublisherTopicFeature *__46__FCPersonalizationFeature_featuresFromIssue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[FCPublisherTopicFeature alloc] initWithPublisherTagID:*(a1 + 32) topicTagID:v3];

  return v4;
}

void __46__FCPersonalizationFeature_featuresFromIssue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 fc_safelyAddObject:v3];
  [v4 fc_safelyAddObjectsFromArray:*(a1 + 40)];
}

FCTagIDFeature *__46__FCPersonalizationFeature_featuresFromIssue___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCTagIDFeature alloc] initWithTagID:v2];

  return v3;
}

+ (id)featuresFromTodayPersonalizationEvent:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__FCPersonalizationFeature_featuresFromTodayPersonalizationEvent___block_invoke;
  v8[3] = &unk_1E7C36D40;
  v9 = v3;
  v5 = v3;
  v6 = [v4 fc_array:v8];

  return v6;
}

void __66__FCPersonalizationFeature_featuresFromTodayPersonalizationEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) headlinePublisher];
  v5 = [*(a1 + 32) personalizationSectionFeatureId];
  v6 = [*(a1 + 32) headlineTopics];
  v7 = [v6 fc_arrayByTransformingWithBlock:&__block_literal_global_62_1];

  if (v4)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__FCPersonalizationFeature_featuresFromTodayPersonalizationEvent___block_invoke_3;
    v20[3] = &unk_1E7C3CA58;
    v21 = v4;
    v9 = [v7 fc_arrayByTransformingWithBlock:v20];
    [v3 addObjectsFromArray:v9];
  }

  if ([*(a1 + 32) action] == 3 || objc_msgSend(*(a1 + 32), "action") == 4 || objc_msgSend(*(a1 + 32), "action") == 5 || objc_msgSend(*(a1 + 32), "action") == 6)
  {
    v10 = +[FCHeadlineFeatureArticleWithVideoContent articleWithVideoContentFeature];
    [v3 addObject:v10];
  }

  if (v5)
  {
    v11 = [FCPersonalizationFeature featureForFreeValuedIdentifier:v5];
    [v3 addObject:v11];
  }

  v12 = MEMORY[0x1E695DEC8];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__FCPersonalizationFeature_featuresFromTodayPersonalizationEvent___block_invoke_4;
  v17[3] = &unk_1E7C3B110;
  v18 = v4;
  v19 = v7;
  v13 = v7;
  v14 = v4;
  v15 = [v12 fc_array:v17];
  v16 = [v15 fc_arrayByTransformingWithBlock:&__block_literal_global_66_2];
  [v3 addObjectsFromArray:v16];
}

FCPublisherTopicFeature *__66__FCPersonalizationFeature_featuresFromTodayPersonalizationEvent___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[FCPublisherTopicFeature alloc] initWithPublisherTagID:*(a1 + 32) topicTagID:v3];

  return v4;
}

void __66__FCPersonalizationFeature_featuresFromTodayPersonalizationEvent___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 fc_safelyAddObject:v3];
  [v4 fc_safelyAddObjectsFromArray:*(a1 + 40)];
}

FCTagIDFeature *__66__FCPersonalizationFeature_featuresFromTodayPersonalizationEvent___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCTagIDFeature alloc] initWithTagID:v2];

  return v3;
}

+ (id)featuresFromPersonalizingItem:(id)a3 personalizationTreatment:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v31 = a4;
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [v5 publisherID];
  if (v7)
  {
    v8 = [[FCTagIDFeature alloc] initWithTagID:v7];
    [v6 addObject:v8];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = v5;
  v9 = [v5 topicIDs];
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        v15 = [[FCTagIDFeature alloc] initWithTagID:v14];
        [v6 addObject:v15];

        if (v7)
        {
          v16 = [[FCPublisherTopicFeature alloc] initWithPublisherTagID:v7 topicTagID:v14];
          [v6 addObject:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v11);
  }

  if ([v32 isANF])
  {
    +[FCHeadlineFeatureArticleTypeFlint articleTypeFlintFeature];
  }

  else
  {
    +[FCHeadlineFeatureArticleTypeNonFlint articleTypeNonFlintFeature];
  }
  v17 = ;
  [v6 addObject:v17];

  v18 = objc_opt_respondsToSelector();
  if (v31 && (v18 & 1) != 0 && [v32 bodyTextLength] >= 1)
  {
    v19 = [v32 bodyTextLength];
    [v31 articleLengthMediumThreshold];
    if (v19 <= v20)
    {
      v23 = +[FCArticleLengthFeature shortLengthFeature];
    }

    else
    {
      v21 = [v32 bodyTextLength];
      [v31 articleLengthLongThreshold];
      if (v21 <= v22)
      {
        +[FCArticleLengthFeature mediumLengthFeature];
      }

      else
      {
        +[FCArticleLengthFeature longLengthFeature];
      }
      v23 = ;
    }

    v24 = v23;
    [v6 addObject:v23];
  }

  if (v7 && [v32 isPaid])
  {
    v25 = [[FCPublisherPremiumFeature alloc] initWithTagID:v7];
    [v6 addObject:v25];
  }

  if ([v32 hasVideo])
  {
    v26 = +[FCHeadlineFeatureArticleWithVideoContent articleWithVideoContentFeature];
    [v6 addObject:v26];
  }

  if (objc_opt_respondsToSelector())
  {
    v27 = [v32 iAdCategories];
    v28 = [v27 fc_arrayByTransformingWithBlock:&__block_literal_global_75_2];
    [v6 addObjectsFromArray:v28];
  }

  v29 = *MEMORY[0x1E69E9840];

  return v6;
}

FCAdCategoryFeature *__83__FCPersonalizationFeature_featuresFromPersonalizingItem_personalizationTreatment___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCAdCategoryFeature alloc] initWithTagID:v2];

  return v3;
}

+ (id)featuresFromTag:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [FCTagIDFeature alloc];
  v6 = [v3 identifier];

  v7 = [(FCTagIDFeature *)v5 initWithTagID:v6];
  [v4 fc_safelyAddObject:v7];

  v8 = [v4 copy];

  return v8;
}

FCTagIDFeature *__47__FCPersonalizationFeature_featuresFromTagIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCTagIDFeature alloc] initWithTagID:v2];

  return v3;
}

+ (id)featureFromTagID:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v11 count:1];

  v7 = [a1 featuresFromTagIDs:{v6, v11, v12}];
  v8 = [v7 firstObject];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)featureForIdentifier:(char)a3 allowFreeValued:
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  if ([v4 hasPrefix:@"f0"])
  {
    v5 = +[FCBaselineFeature baselineFeature];
LABEL_18:
    v7 = v5;
    goto LABEL_19;
  }

  if ([v4 hasPrefix:@"f1"])
  {
    v5 = +[FCHeadlineFeatureArticleTypeFlint articleTypeFlintFeature];
    goto LABEL_18;
  }

  if ([v4 hasPrefix:@"f7"])
  {
LABEL_6:
    v5 = +[FCHeadlineFeatureArticleWithVideoContent articleWithVideoContentFeature];
    goto LABEL_18;
  }

  if ([v4 hasPrefix:@"f2"])
  {
    v5 = +[FCHeadlineFeatureArticleTypeNonFlint articleTypeNonFlintFeature];
    goto LABEL_18;
  }

  if ([v4 hasPrefix:@"f3"])
  {
    v6 = FCTagIDFeature;
LABEL_17:
    v5 = [[v6 alloc] initWithPersonalizationIdentifier:v4];
    goto LABEL_18;
  }

  if ([v4 hasPrefix:@"f4"])
  {
    v6 = FCPublisherTopicFeature;
    goto LABEL_17;
  }

  if ([v4 hasPrefix:@"f5"])
  {
    v6 = FCPublisherPremiumFeature;
    goto LABEL_17;
  }

  if ([v4 hasPrefix:@"f6"])
  {
    v6 = FCGroupTypeFeature;
    goto LABEL_17;
  }

  if ([v4 hasPrefix:@"f7"])
  {
    goto LABEL_6;
  }

  if ([v4 hasPrefix:@"f8"])
  {
    v5 = [[FCTodayWidgetSectionIDFeature alloc] initWithPersonalizationIdentifier:v4];
    goto LABEL_18;
  }

  if ([v4 hasPrefix:@"f9"])
  {
    v6 = FCPublisherVideoContentFeature;
    goto LABEL_17;
  }

  if ([v4 hasPrefix:@"fa0"])
  {
    v6 = FCArticleLengthFeature;
    goto LABEL_17;
  }

  if ([v4 hasPrefix:@"fa1"])
  {
    v6 = FCAdCategoryFeature;
    goto LABEL_17;
  }

  if (v4 && (a3 & 1) != 0)
  {
    v5 = [[FCPersonalizationFeature alloc] initWithIdentifier:v4];
    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The identifier %@ didn't map to any headline features", v4];
    *buf = 136315906;
    v13 = "+[FCPersonalizationFeature featureForIdentifier:allowFreeValued:]";
    v14 = 2080;
    v15 = "FCPersonalizationFeature.m";
    v16 = 1024;
    v17 = 330;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v10 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v4;
    _os_log_error_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_ERROR, "The identifier %{public}@ didn't map to any headline features", buf, 0xCu);
  }

  v7 = 0;
LABEL_19:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)initWithIdentifier:(void *)a1
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "identifier"];
      *buf = 136315906;
      v12 = "[FCPersonalizationFeature initWithIdentifier:]";
      v13 = 2080;
      v14 = "FCPersonalizationFeature.m";
      v15 = 1024;
      v16 = 357;
      v17 = 2114;
      v18 = v9;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v10.receiver = a1;
    v10.super_class = FCPersonalizationFeature;
    a1 = objc_msgSendSuper2(&v10, sel_init);
    if (a1)
    {
      v5 = [v4 copy];
      v6 = a1[2];
      a1[2] = v5;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return a1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(FCPersonalizationFeature *)self personalizationIdentifier];
  v7 = [v3 stringWithFormat:@"FCPersonalizationFeature with type %@ and personalizationIdentifier %@", v5, v6];

  return v7;
}

- (unint64_t)hash
{
  v2 = [(FCPersonalizationFeature *)self personalizationIdentifier];

  return [(NSString *)v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = [(FCPersonalizationFeature *)self personalizationIdentifier];
  v5 = [a3 personalizationIdentifier];

  return [(NSString *)v4 isEqual:v5];
}

@end