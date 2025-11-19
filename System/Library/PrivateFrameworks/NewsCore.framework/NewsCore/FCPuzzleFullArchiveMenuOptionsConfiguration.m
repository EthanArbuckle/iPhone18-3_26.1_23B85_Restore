@interface FCPuzzleFullArchiveMenuOptionsConfiguration
- (FCPuzzleFullArchiveMenuOptionsConfiguration)initWithConfigDictionary:(id)a3;
@end

@implementation FCPuzzleFullArchiveMenuOptionsConfiguration

- (FCPuzzleFullArchiveMenuOptionsConfiguration)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = FCPuzzleFullArchiveMenuOptionsConfiguration;
  v5 = [(FCPuzzleFullArchiveMenuOptionsConfiguration *)&v20 init];
  if (v5)
  {
    v6 = FCAppConfigurationStringValue(v4, @"title", &stru_1F2DC7DC0);
    title = v5->_title;
    v5->_title = v6;

    v8 = FCAppConfigurationStringValue(v4, @"icon", &stru_1F2DC7DC0);
    icon = v5->_icon;
    v5->_icon = v8;

    v10 = FCAppConfigurationStringValue(v4, @"type", &stru_1F2DC7DC0);
    if ([v10 isEqualToString:@"progress"])
    {
      v11 = 2;
    }

    else if ([v10 isEqualToString:@"difficulty"])
    {
      v11 = 3;
    }

    else
    {
      v11 = 1;
    }

    v5->_type = v11;
    v12 = FCAppConfigurationArrayValueWithDefaultValue(v4, @"items", 0);
    v13 = [MEMORY[0x1E695DF70] array];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__FCPuzzleFullArchiveMenuOptionsConfiguration_initWithConfigDictionary___block_invoke;
    v18[3] = &unk_1E7C393D0;
    v14 = v13;
    v19 = v14;
    [v12 enumerateObjectsUsingBlock:v18];
    items = v5->_items;
    v5->_items = v14;
    v16 = v14;
  }

  return v5;
}

void __72__FCPuzzleFullArchiveMenuOptionsConfiguration_initWithConfigDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = FCAppConfigurationStringValue(v3, @"title", &stru_1F2DC7DC0);
  v4 = FCAppConfigurationStringValue(v3, @"icon", &stru_1F2DC7DC0);
  v5 = FCAppConfigurationIntegerValue(v3, @"difficultyIndex", 0);
  v6 = FCAppConfigurationStringValue(v3, @"level", &stru_1F2DC7DC0);

  if ([v6 isEqualToString:@"progress-unplayed"])
  {
    v7 = 2;
  }

  else if ([v6 isEqualToString:@"progress-inprogress"])
  {
    v7 = 3;
  }

  else if ([v6 isEqualToString:@"progress-completed"])
  {
    v7 = 4;
  }

  else if ([v6 isEqualToString:@"difficulty-10"])
  {
    v7 = 5;
  }

  else if ([v6 isEqualToString:@"difficulty-20"])
  {
    v7 = 6;
  }

  else if ([v6 isEqualToString:@"difficulty-30"])
  {
    v7 = 7;
  }

  else
  {
    v7 = 1;
  }

  v8 = [[FCPuzzleFullArchiveMenuOptionItem alloc] initWithTitle:v9 icon:v4 level:v7 difficultyIndex:v5];
  [*(a1 + 32) addObject:v8];
}

@end