@interface FCVideoGroupsConfig
- (BOOL)moreFromPublisherBarEnabled;
- (BOOL)playsMutedByDefault;
- (FCVideoGroupsConfig)initWithCoder:(id)a3;
- (FCVideoGroupsConfig)initWithConfigDictionary:(id)a3;
- (FCVideoGroupsConfig)initWithVideoGroupsConfig:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)moreFromPublisherBarTime;
- (int64_t)moreVideosGroupMaxNumberOfVideos;
- (int64_t)moreVideosGroupMinNumberOfVideos;
- (int64_t)nowPlayingBarTime;
- (int64_t)upNextBarTime;
- (unint64_t)moreVideosGroupFilterOption;
- (unint64_t)moreVideosGroupSortOption;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCVideoGroupsConfig

- (FCVideoGroupsConfig)initWithVideoGroupsConfig:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FCVideoGroupsConfig;
  v5 = [(FCVideoGroupsConfig *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    pbVideoGroupsConfig = v5->_pbVideoGroupsConfig;
    v5->_pbVideoGroupsConfig = v6;
  }

  return v5;
}

- (FCVideoGroupsConfig)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FCVideoGroupsConfig;
  v5 = [(FCVideoGroupsConfig *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    configDictionary = v5->_configDictionary;
    v5->_configDictionary = v6;
  }

  return v5;
}

- (BOOL)playsMutedByDefault
{
  v3 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];

  if (v3)
  {
    v4 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
    v5 = [v4 playsMutedByDefault];
  }

  else
  {
    v4 = [(FCVideoGroupsConfig *)self configDictionary];
    v5 = FCAppConfigurationBoolValue(v4, @"playsMutedByDefault", 0);
  }

  v6 = v5;

  return v6;
}

- (int64_t)nowPlayingBarTime
{
  v3 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];

  if (v3)
  {
    v4 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
    v5 = [v4 nowPlayingBarTime];
  }

  else
  {
    v4 = [(FCVideoGroupsConfig *)self configDictionary];
    v5 = FCAppConfigurationIntegerValue(v4, @"nowPlayingBarTime", 2);
  }

  v6 = v5;

  return v6;
}

- (int64_t)upNextBarTime
{
  v3 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];

  if (v3)
  {
    v4 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
    v5 = [v4 upNextBarTime];
  }

  else
  {
    v4 = [(FCVideoGroupsConfig *)self configDictionary];
    v5 = FCAppConfigurationIntegerValue(v4, @"upNextBarTime", 4);
  }

  v6 = v5;

  return v6;
}

- (int64_t)moreFromPublisherBarTime
{
  v3 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];

  if (v3)
  {
    v4 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
    v5 = [v4 moreFromPublisherBarTime];
  }

  else
  {
    v4 = [(FCVideoGroupsConfig *)self configDictionary];
    v5 = FCAppConfigurationIntegerValue(v4, @"moreFromPublisherBarTime", 2);
  }

  v6 = v5;

  return v6;
}

- (BOOL)moreFromPublisherBarEnabled
{
  v3 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];

  if (v3)
  {
    v4 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
    v5 = [v4 moreFromPublisherBarEnabled];
  }

  else
  {
    v4 = [(FCVideoGroupsConfig *)self configDictionary];
    v5 = FCAppConfigurationBoolValue(v4, @"moreFromPublisherBarEnabled", 1);
  }

  v6 = v5;

  return v6;
}

- (unint64_t)moreVideosGroupSortOption
{
  v3 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];

  if (v3)
  {
    v4 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
    v5 = [v4 moreVideosGroupSortOption];
    if (v5 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5 == 1;
    }
  }

  else
  {
    v4 = [(FCVideoGroupsConfig *)self configDictionary];
    v7 = FCAppConfigurationStringValue(v4, @"moreVideosGroupSortOption", 0);
    v6 = FCSortOptionForStringSortOption(v7);
  }

  return v6;
}

- (unint64_t)moreVideosGroupFilterOption
{
  v3 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];

  if (v3)
  {
    v4 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
    v5 = [v4 moreVideosGroupFilterOption] != 0;
  }

  else
  {
    v4 = [(FCVideoGroupsConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(v4, @"moreVideosGroupFilterOption", 0);
    v5 = [v6 isEqualToString:@"VideoGroupFilterOptionWatched"];
  }

  return v5;
}

- (int64_t)moreVideosGroupMinNumberOfVideos
{
  v3 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];

  if (v3)
  {
    v4 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
    v5 = [v4 moreVideosGroupMinNumberOfVideos];
  }

  else
  {
    v4 = [(FCVideoGroupsConfig *)self configDictionary];
    v5 = FCAppConfigurationIntegerValue(v4, @"moreVideosGroupMinNumberOfVideos", 6);
  }

  v6 = v5;

  return v6;
}

- (int64_t)moreVideosGroupMaxNumberOfVideos
{
  v3 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];

  if (v3)
  {
    v4 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
    v5 = [v4 moreVideosGroupMaxNumberOfVideos];
  }

  else
  {
    v4 = [(FCVideoGroupsConfig *)self configDictionary];
    v5 = FCAppConfigurationIntegerValue(v4, @"moreVideosGroupMaxNumberOfVideos", 20);
  }

  v6 = v5;

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(FCVideoGroupsConfig);
  v5 = [(FCVideoGroupsConfig *)self configDictionary];
  [(FCVideoGroupsConfig *)v4 setConfigDictionary:v5];

  v6 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
  [(FCVideoGroupsConfig *)v4 setPbVideoGroupsConfig:v6];

  return v4;
}

- (FCVideoGroupsConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FCVideoGroupsConfig;
  v5 = [(FCVideoGroupsConfig *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pbVideoGroupsConfig"];
    pbVideoGroupsConfig = v5->_pbVideoGroupsConfig;
    v5->_pbVideoGroupsConfig = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configDictionary"];
    configDictionary = v5->_configDictionary;
    v5->_configDictionary = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
  [v4 encodeObject:v5 forKey:@"pbVideoGroupsConfig"];

  v6 = [(FCVideoGroupsConfig *)self configDictionary];
  [v4 encodeObject:v6 forKey:@"configDictionary"];
}

@end