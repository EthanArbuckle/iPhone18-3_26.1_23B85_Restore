@interface CNUIUserActionItemComparator
+ (BOOL)isUserActionForDefaultApps:(id)apps;
+ (id)comparatorWithActionItemGrouping;
+ (id)comparatorWithAlphabeticalOrderByLabel;
+ (id)comparatorWithAlphabeticalOrderByTargetHandle;
+ (id)comparatorWithDefaultAppsScorer:(id)scorer;
+ (id)comparatorWithPreferredLabelsFirst;
+ (id)defaultAppScoreForUserAction:(id)action scorer:(id)scorer;
+ (id)preferredLabelScoreForUserAction:(id)action;
@end

@implementation CNUIUserActionItemComparator

+ (id)comparatorWithActionItemGrouping
{
  v2 = [&__block_literal_global_122 copy];

  return v2;
}

uint64_t __64__CNUIUserActionItemComparator_comparatorWithActionItemGrouping__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "group")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 group];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

+ (id)comparatorWithPreferredLabelsFirst
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__CNUIUserActionItemComparator_comparatorWithPreferredLabelsFirst__block_invoke;
  v4[3] = &__block_descriptor_40_e51_q24__0__CNUIUserActionItem_8__CNUIUserActionItem_16l;
  v4[4] = self;
  v2 = [v4 copy];

  return v2;
}

uint64_t __66__CNUIUserActionItemComparator_comparatorWithPreferredLabelsFirst__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 preferredLabelScoreForUserAction:a2];
  v8 = [*(a1 + 32) preferredLabelScoreForUserAction:v6];

  v9 = [v7 compare:v8];
  return v9;
}

+ (id)comparatorWithAlphabeticalOrderByLabel
{
  v2 = [&__block_literal_global_126 copy];

  return v2;
}

uint64_t __70__CNUIUserActionItemComparator_comparatorWithAlphabeticalOrderByLabel__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 label];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F162C170;
  }

  v8 = v7;

  v9 = [v4 label];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_1F162C170;
  }

  v11 = v10;

  v12 = [(__CFString *)v8 compare:v11];
  return v12;
}

+ (id)comparatorWithAlphabeticalOrderByTargetHandle
{
  v2 = [&__block_literal_global_131 copy];

  return v2;
}

uint64_t __77__CNUIUserActionItemComparator_comparatorWithAlphabeticalOrderByTargetHandle__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 targetHandle];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F162C170;
  }

  v8 = v7;

  v9 = [v4 targetHandle];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_1F162C170;
  }

  v11 = v10;

  v12 = [(__CFString *)v8 compare:v11];
  return v12;
}

+ (id)preferredLabelScoreForUserAction:(id)action
{
  v3 = preferredLabelScoreForUserAction__cn_once_token_1;
  actionCopy = action;
  if (v3 != -1)
  {
    +[CNUIUserActionItemComparator preferredLabelScoreForUserAction:];
  }

  v5 = preferredLabelScoreForUserAction__cn_once_object_1;
  label = [actionCopy label];

  v7 = [v5 objectForKeyedSubscript:label];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &unk_1F16460A0;
  }

  v9 = v8;

  return v8;
}

void __65__CNUIUserActionItemComparator_preferredLabelScoreForUserAction___block_invoke()
{
  v6[5] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695CB58];
  v5[0] = *MEMORY[0x1E695CBC0];
  v5[1] = v0;
  v6[0] = &unk_1F1645FD0;
  v6[1] = &unk_1F1646060;
  v1 = *MEMORY[0x1E695CBD8];
  v5[2] = *MEMORY[0x1E695CB90];
  v5[3] = v1;
  v6[2] = &unk_1F1646070;
  v6[3] = &unk_1F1646080;
  v5[4] = *MEMORY[0x1E695CB60];
  v6[4] = &unk_1F1646090;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v3 = [v2 copy];
  v4 = preferredLabelScoreForUserAction__cn_once_object_1;
  preferredLabelScoreForUserAction__cn_once_object_1 = v3;
}

+ (id)comparatorWithDefaultAppsScorer:(id)scorer
{
  scorerCopy = scorer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__CNUIUserActionItemComparator_comparatorWithDefaultAppsScorer___block_invoke;
  v8[3] = &unk_1E76EA5D0;
  v9 = scorerCopy;
  selfCopy = self;
  v5 = scorerCopy;
  v6 = [v8 copy];

  return v6;
}

uint64_t __64__CNUIUserActionItemComparator_comparatorWithDefaultAppsScorer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32) && [*(a1 + 40) isUserActionForDefaultApps:v5] && objc_msgSend(*(a1 + 40), "isUserActionForDefaultApps:", v6))
  {
    v7 = [*(a1 + 40) defaultAppScoreForUserAction:v5 scorer:*(a1 + 32)];
    v8 = [*(a1 + 40) defaultAppScoreForUserAction:v6 scorer:*(a1 + 32)];
    v9 = [v7 compare:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isUserActionForDefaultApps:(id)apps
{
  appsCopy = apps;
  v4 = [appsCopy group] == 2 || objc_msgSend(appsCopy, "group") == 3;

  return v4;
}

+ (id)defaultAppScoreForUserAction:(id)action scorer:(id)scorer
{
  scorerCopy = scorer;
  actionCopy = action;
  v7 = [scorerCopy count];
  bundleIdentifier = [actionCopy bundleIdentifier];

  v9 = [scorerCopy objectForKeyedSubscript:bundleIdentifier];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v7 + 10];
  }

  v11 = v10;

  return v11;
}

@end