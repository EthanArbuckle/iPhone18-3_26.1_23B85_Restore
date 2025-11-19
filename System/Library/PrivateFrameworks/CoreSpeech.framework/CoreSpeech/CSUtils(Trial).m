@interface CSUtils(Trial)
+ (uint64_t)getAssetTypeForNamespace:()Trial;
+ (void)getTrialIdsForAssetType:()Trial withCompletion:;
@end

@implementation CSUtils(Trial)

+ (void)getTrialIdsForAssetType:()Trial withCompletion:
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (a3 == 3)
  {
    v6 = 114;
    v7 = 322;
  }

  else if (a3 == 4)
  {
    v6 = 117;
    v7 = 404;
  }

  else
  {
    v8 = *MEMORY[0x277D015D8];
    v9 = os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT);
    v7 = 0;
    v6 = 0;
    if (v9)
    {
      v12 = 136315394;
      v13 = "+[CSUtils(Trial) getTrialIdsForAssetType:withCompletion:]";
      v14 = 2050;
      v15 = a3;
      _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s Unknown namespaceId for assetType %{public}lu ", &v12, 0x16u);
      v7 = 0;
      v6 = 0;
    }
  }

  if (v5)
  {
    v10 = [MEMORY[0x277D73B50] namespaceNameFromId:v7];
    v5[2](v5, v6, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (uint64_t)getAssetTypeForNamespace:()Trial
{
  v3 = a3;
  v4 = [MEMORY[0x277D73B50] namespaceNameFromId:322];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v7 = [MEMORY[0x277D73B50] namespaceNameFromId:404];
    v8 = [v3 isEqualToString:v7];

    if (v8)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end