@interface FCForYouGroupsConfiguration
+ (id)_groupIdentifiersByType;
- (BOOL)isEqual:(id)equal;
- (FCForYouGroupsConfiguration)initWithJSONConfiguration:(id)configuration;
- (id)_identifierForGroupType:(int64_t)type;
- (id)configurationForGroupType:(int64_t)type;
- (unint64_t)_defaultGroupPositionValueForGroupType:(int64_t)type;
- (unint64_t)_defaultPrecedingGroupsCount:(int64_t)count;
@end

@implementation FCForYouGroupsConfiguration

+ (id)_groupIdentifiersByType
{
  if (qword_1EDB277E0 != -1)
  {
    dispatch_once(&qword_1EDB277E0, &__block_literal_global_435);
  }

  v3 = qword_1EDB277D8;

  return v3;
}

void __54__FCForYouGroupsConfiguration__groupIdentifiersByType__block_invoke()
{
  v4[20] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F2E70980;
  v3[1] = &unk_1F2E70998;
  v4[0] = @"TopStories";
  v4[1] = @"TrendingStories";
  v3[2] = &unk_1F2E709B0;
  v3[3] = &unk_1F2E709C8;
  v4[2] = @"DailyBriefings";
  v4[3] = @"SavedStories";
  v3[4] = &unk_1F2E709E0;
  v3[5] = &unk_1F2E709F8;
  v4[4] = @"GreatStoriesYouMissed";
  v4[5] = @"Editorial";
  v3[6] = &unk_1F2E70A10;
  v3[7] = &unk_1F2E70A28;
  v4[6] = @"Latest";
  v4[7] = @"Topic";
  v3[8] = &unk_1F2E70A40;
  v3[9] = &unk_1F2E70A58;
  v4[8] = @"MoreFromYou";
  v4[9] = @"NewFavorite";
  v3[10] = &unk_1F2E70A70;
  v3[11] = &unk_1F2E70A88;
  v4[10] = @"PaidSubscription";
  v4[11] = @"BestOfEdition";
  v3[12] = &unk_1F2E70AA0;
  v3[13] = &unk_1F2E70AB8;
  v4[12] = @"AutoFavorite";
  v4[13] = @"Magazines";
  v3[14] = &unk_1F2E70AD0;
  v3[15] = &unk_1F2E70AE8;
  v4[14] = @"Spotlight";
  v4[15] = @"Curated";
  v3[16] = &unk_1F2E70B00;
  v3[17] = &unk_1F2E70B18;
  v4[16] = @"LocalNews";
  v4[17] = @"AudioDailyBriefing";
  v3[18] = &unk_1F2E70B30;
  v3[19] = &unk_1F2E70B48;
  v4[18] = @"MagazineTrending";
  v4[19] = @"MySports";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:20];
  v1 = qword_1EDB277D8;
  qword_1EDB277D8 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (FCForYouGroupsConfiguration)initWithJSONConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v25.receiver = self;
  v25.super_class = FCForYouGroupsConfiguration;
  v6 = [(FCForYouGroupsConfiguration *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = [MEMORY[0x1E695DF20] fc_dictionaryFromJSON:configurationCopy];
    v9 = MEMORY[0x1E695DF20];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __57__FCForYouGroupsConfiguration_initWithJSONConfiguration___block_invoke;
    v22 = &unk_1E7C37D00;
    v10 = v7;
    v23 = v10;
    v11 = v8;
    v24 = v11;
    v12 = [v9 fc_dictionary:&v19];
    groupConfigurationsByIdentifier = v10->_groupConfigurationsByIdentifier;
    v10->_groupConfigurationsByIdentifier = v12;

    v14 = [v11 objectForKeyedSubscript:{@"WeekendGreatStoriesYouMissed", v19, v20, v21, v22}];
    v15 = [v14 objectForKeyedSubscript:@"timeRange"];
    v16 = v15;
    if (v15)
    {
      [v15 doubleValue];
    }

    else
    {
      v17 = 0x411A5E0000000000;
    }

    *&v10->_weekendGreatStoriesYouMissedTimeRange = v17;
  }

  return v7;
}

void __57__FCForYouGroupsConfiguration_initWithJSONConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() _groupIdentifiersByType];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__FCForYouGroupsConfiguration_initWithJSONConfiguration___block_invoke_2;
  v7[3] = &unk_1E7C44E70;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v3;
  v6 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __57__FCForYouGroupsConfiguration_initWithJSONConfiguration___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v18];
  v8 = [v6 integerValue];

  v9 = objc_alloc_init(FCForYouGroupConfiguration);
  [(FCForYouGroupConfiguration *)v9 setIdentifier:v18];
  [(FCForYouGroupConfiguration *)v9 setGroupType:v8];
  v10 = [v7 objectForKeyedSubscript:@"position"];
  if (v10)
  {
    v11 = [v7 objectForKeyedSubscript:@"position"];
    -[FCForYouGroupConfiguration setGroupPosition:](v9, "setGroupPosition:", [v11 integerValue]);
  }

  else
  {
    -[FCForYouGroupConfiguration setGroupPosition:](v9, "setGroupPosition:", [*(a1 + 40) _defaultGroupPositionValueForGroupType:v8]);
  }

  v12 = [v7 objectForKeyedSubscript:@"precedingGroupsCount"];
  if (v12)
  {
    v13 = [v7 objectForKeyedSubscript:@"precedingGroupsCount"];
    -[FCForYouGroupConfiguration setPrecedingGroupsCount:](v9, "setPrecedingGroupsCount:", [v13 integerValue]);
  }

  else
  {
    -[FCForYouGroupConfiguration setPrecedingGroupsCount:](v9, "setPrecedingGroupsCount:", [*(a1 + 40) _defaultPrecedingGroupsCount:v8]);
  }

  v14 = [v7 objectForKeyedSubscript:@"precedingGroupsCountForFirstGroup"];
  if (v14)
  {
    v15 = [v7 objectForKeyedSubscript:@"precedingGroupsCountForFirstGroup"];
    -[FCForYouGroupConfiguration setPrecedingGroupsCountForFirstGroup:](v9, "setPrecedingGroupsCountForFirstGroup:", [v15 integerValue]);
  }

  else
  {
    [(FCForYouGroupConfiguration *)v9 setPrecedingGroupsCountForFirstGroup:[(FCForYouGroupConfiguration *)v9 precedingGroupsCount]];
  }

  v16 = [v7 objectForKeyedSubscript:@"allowsNativeAds"];
  if (v16)
  {
    v17 = [v7 objectForKeyedSubscript:@"allowsNativeAds"];
    -[FCForYouGroupConfiguration setAllowsNativeAds:](v9, "setAllowsNativeAds:", [v17 BOOLValue]);
  }

  else
  {
    -[FCForYouGroupConfiguration setAllowsNativeAds:](v9, "setAllowsNativeAds:", [*(a1 + 40) _defaultAllowsNativeAdsValueForGroupType:v8]);
  }

  [*(a1 + 48) setObject:v9 forKeyedSubscript:v18];
}

- (id)configurationForGroupType:(int64_t)type
{
  v4 = [(FCForYouGroupsConfiguration *)self _identifierForGroupType:type];
  if (v4)
  {
    groupConfigurationsByIdentifier = [(FCForYouGroupsConfiguration *)self groupConfigurationsByIdentifier];
    v6 = [groupConfigurationsByIdentifier objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_defaultPrecedingGroupsCount:(int64_t)count
{
  v3 = 2;
  v4 = 2;
  if (count != 23)
  {
    v4 = 0;
  }

  if (count != 15)
  {
    v3 = v4;
  }

  v5 = 2;
  v6 = 2;
  if (count != 12)
  {
    v6 = 0;
  }

  if (count != 6)
  {
    v5 = v6;
  }

  if (count <= 14)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)_defaultGroupPositionValueForGroupType:(int64_t)type
{
  if (type > 0x2D)
  {
    return 1;
  }

  else
  {
    return qword_1B681B4F0[type];
  }
}

- (id)_identifierForGroupType:(int64_t)type
{
  _groupIdentifiersByType = [objc_opt_class() _groupIdentifiersByType];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v6 = [_groupIdentifiersByType objectForKey:v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [(NSString *)self->_configuration isEqualToString:v6[1]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end