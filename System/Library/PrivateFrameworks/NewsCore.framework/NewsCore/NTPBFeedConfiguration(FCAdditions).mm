@interface NTPBFeedConfiguration(FCAdditions)
+ (id)feedConfigurationFromDict:()FCAdditions;
+ (id)feedConfigurationFromJSON:()FCAdditions;
- (id)feedIDForBin:()FCAdditions paid:;
@end

@implementation NTPBFeedConfiguration(FCAdditions)

+ (id)feedConfigurationFromJSON:()FCAdditions
{
  v2 = [MEMORY[0x1E695DF20] fc_dictionaryFromJSON:?];
  v3 = [a1 feedConfigurationFromDict:v2];

  return v3;
}

+ (id)feedConfigurationFromDict:()FCAdditions
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69B6E28]);
    v5 = [v3 objectForKeyedSubscript:@"limitOnePerHourFeedID"];
    [v4 setFreeAFeedID:v5];

    v6 = [v3 objectForKeyedSubscript:@"limitTwelvePerHourFeedID"];
    [v4 setFreeBFeedID:v6];

    v7 = [v3 objectForKeyedSubscript:@"everythingFeedID"];
    [v4 setFreeCFeedID:v7];

    v8 = [v3 objectForKeyedSubscript:@"paidLimitOnePerHourFeedID"];
    [v4 setPaidAFeedID:v8];

    v9 = [v3 objectForKeyedSubscript:@"paidLimitTwelvePerHourFeedID"];
    [v4 setPaidBFeedID:v9];

    v10 = [v3 objectForKeyedSubscript:@"paidEverythingFeedID"];
    [v4 setPaidCFeedID:v10];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)feedIDForBin:()FCAdditions paid:
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (a4)
      {
        v7 = [a1 paidBFeedID];
        if (v7)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v7 = [a1 freeBFeedID];
        if (v7)
        {
          goto LABEL_22;
        }
      }
    }

    else if (a3 == 3)
    {
      if (a4)
      {
        [a1 paidCFeedID];
      }

      else
      {
        [a1 freeCFeedID];
      }
      v7 = ;
      goto LABEL_22;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      if (a4)
      {
        v7 = [a1 paidAFeedID];
        if (v7)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v7 = [a1 freeAFeedID];
        if (v7)
        {
          goto LABEL_22;
        }
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't get feed ID for unknown bin"];
    v11 = 136315906;
    v12 = "[NTPBFeedConfiguration(FCAdditions) feedIDForBin:paid:]";
    v13 = 2080;
    v14 = "NTPBFeedConfiguration+FCAdditions.m";
    v15 = 1024;
    v16 = 56;
    v17 = 2114;
    v18 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
  }

  v7 = [a1 feedIDForBin:FCNextHigherVolumeFeedBin(a3) paid:a4];
LABEL_22:
  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

@end