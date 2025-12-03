@interface FCVideoGroupsConfig
- (BOOL)moreFromPublisherBarEnabled;
- (BOOL)playsMutedByDefault;
- (FCVideoGroupsConfig)initWithCoder:(id)coder;
- (FCVideoGroupsConfig)initWithConfigDictionary:(id)dictionary;
- (FCVideoGroupsConfig)initWithVideoGroupsConfig:(id)config;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)moreFromPublisherBarTime;
- (int64_t)moreVideosGroupMaxNumberOfVideos;
- (int64_t)moreVideosGroupMinNumberOfVideos;
- (int64_t)nowPlayingBarTime;
- (int64_t)upNextBarTime;
- (unint64_t)moreVideosGroupFilterOption;
- (unint64_t)moreVideosGroupSortOption;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCVideoGroupsConfig

- (FCVideoGroupsConfig)initWithVideoGroupsConfig:(id)config
{
  configCopy = config;
  v9.receiver = self;
  v9.super_class = FCVideoGroupsConfig;
  v5 = [(FCVideoGroupsConfig *)&v9 init];
  if (v5)
  {
    v6 = [configCopy copy];
    pbVideoGroupsConfig = v5->_pbVideoGroupsConfig;
    v5->_pbVideoGroupsConfig = v6;
  }

  return v5;
}

- (FCVideoGroupsConfig)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = FCVideoGroupsConfig;
  v5 = [(FCVideoGroupsConfig *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    configDictionary = v5->_configDictionary;
    v5->_configDictionary = v6;
  }

  return v5;
}

- (BOOL)playsMutedByDefault
{
  pbVideoGroupsConfig = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];

  if (pbVideoGroupsConfig)
  {
    pbVideoGroupsConfig2 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
    playsMutedByDefault = [pbVideoGroupsConfig2 playsMutedByDefault];
  }

  else
  {
    pbVideoGroupsConfig2 = [(FCVideoGroupsConfig *)self configDictionary];
    playsMutedByDefault = FCAppConfigurationBoolValue(pbVideoGroupsConfig2, @"playsMutedByDefault", 0);
  }

  v6 = playsMutedByDefault;

  return v6;
}

- (int64_t)nowPlayingBarTime
{
  pbVideoGroupsConfig = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];

  if (pbVideoGroupsConfig)
  {
    pbVideoGroupsConfig2 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
    nowPlayingBarTime = [pbVideoGroupsConfig2 nowPlayingBarTime];
  }

  else
  {
    pbVideoGroupsConfig2 = [(FCVideoGroupsConfig *)self configDictionary];
    nowPlayingBarTime = FCAppConfigurationIntegerValue(pbVideoGroupsConfig2, @"nowPlayingBarTime", 2);
  }

  v6 = nowPlayingBarTime;

  return v6;
}

- (int64_t)upNextBarTime
{
  pbVideoGroupsConfig = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];

  if (pbVideoGroupsConfig)
  {
    pbVideoGroupsConfig2 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
    upNextBarTime = [pbVideoGroupsConfig2 upNextBarTime];
  }

  else
  {
    pbVideoGroupsConfig2 = [(FCVideoGroupsConfig *)self configDictionary];
    upNextBarTime = FCAppConfigurationIntegerValue(pbVideoGroupsConfig2, @"upNextBarTime", 4);
  }

  v6 = upNextBarTime;

  return v6;
}

- (int64_t)moreFromPublisherBarTime
{
  pbVideoGroupsConfig = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];

  if (pbVideoGroupsConfig)
  {
    pbVideoGroupsConfig2 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
    moreFromPublisherBarTime = [pbVideoGroupsConfig2 moreFromPublisherBarTime];
  }

  else
  {
    pbVideoGroupsConfig2 = [(FCVideoGroupsConfig *)self configDictionary];
    moreFromPublisherBarTime = FCAppConfigurationIntegerValue(pbVideoGroupsConfig2, @"moreFromPublisherBarTime", 2);
  }

  v6 = moreFromPublisherBarTime;

  return v6;
}

- (BOOL)moreFromPublisherBarEnabled
{
  pbVideoGroupsConfig = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];

  if (pbVideoGroupsConfig)
  {
    pbVideoGroupsConfig2 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
    moreFromPublisherBarEnabled = [pbVideoGroupsConfig2 moreFromPublisherBarEnabled];
  }

  else
  {
    pbVideoGroupsConfig2 = [(FCVideoGroupsConfig *)self configDictionary];
    moreFromPublisherBarEnabled = FCAppConfigurationBoolValue(pbVideoGroupsConfig2, @"moreFromPublisherBarEnabled", 1);
  }

  v6 = moreFromPublisherBarEnabled;

  return v6;
}

- (unint64_t)moreVideosGroupSortOption
{
  pbVideoGroupsConfig = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];

  if (pbVideoGroupsConfig)
  {
    pbVideoGroupsConfig2 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
    moreVideosGroupSortOption = [pbVideoGroupsConfig2 moreVideosGroupSortOption];
    if (moreVideosGroupSortOption == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = moreVideosGroupSortOption == 1;
    }
  }

  else
  {
    pbVideoGroupsConfig2 = [(FCVideoGroupsConfig *)self configDictionary];
    v7 = FCAppConfigurationStringValue(pbVideoGroupsConfig2, @"moreVideosGroupSortOption", 0);
    v6 = FCSortOptionForStringSortOption(v7);
  }

  return v6;
}

- (unint64_t)moreVideosGroupFilterOption
{
  pbVideoGroupsConfig = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];

  if (pbVideoGroupsConfig)
  {
    pbVideoGroupsConfig2 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
    v5 = [pbVideoGroupsConfig2 moreVideosGroupFilterOption] != 0;
  }

  else
  {
    pbVideoGroupsConfig2 = [(FCVideoGroupsConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(pbVideoGroupsConfig2, @"moreVideosGroupFilterOption", 0);
    v5 = [v6 isEqualToString:@"VideoGroupFilterOptionWatched"];
  }

  return v5;
}

- (int64_t)moreVideosGroupMinNumberOfVideos
{
  pbVideoGroupsConfig = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];

  if (pbVideoGroupsConfig)
  {
    pbVideoGroupsConfig2 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
    moreVideosGroupMinNumberOfVideos = [pbVideoGroupsConfig2 moreVideosGroupMinNumberOfVideos];
  }

  else
  {
    pbVideoGroupsConfig2 = [(FCVideoGroupsConfig *)self configDictionary];
    moreVideosGroupMinNumberOfVideos = FCAppConfigurationIntegerValue(pbVideoGroupsConfig2, @"moreVideosGroupMinNumberOfVideos", 6);
  }

  v6 = moreVideosGroupMinNumberOfVideos;

  return v6;
}

- (int64_t)moreVideosGroupMaxNumberOfVideos
{
  pbVideoGroupsConfig = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];

  if (pbVideoGroupsConfig)
  {
    pbVideoGroupsConfig2 = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
    moreVideosGroupMaxNumberOfVideos = [pbVideoGroupsConfig2 moreVideosGroupMaxNumberOfVideos];
  }

  else
  {
    pbVideoGroupsConfig2 = [(FCVideoGroupsConfig *)self configDictionary];
    moreVideosGroupMaxNumberOfVideos = FCAppConfigurationIntegerValue(pbVideoGroupsConfig2, @"moreVideosGroupMaxNumberOfVideos", 20);
  }

  v6 = moreVideosGroupMaxNumberOfVideos;

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(FCVideoGroupsConfig);
  configDictionary = [(FCVideoGroupsConfig *)self configDictionary];
  [(FCVideoGroupsConfig *)v4 setConfigDictionary:configDictionary];

  pbVideoGroupsConfig = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
  [(FCVideoGroupsConfig *)v4 setPbVideoGroupsConfig:pbVideoGroupsConfig];

  return v4;
}

- (FCVideoGroupsConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FCVideoGroupsConfig;
  v5 = [(FCVideoGroupsConfig *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pbVideoGroupsConfig"];
    pbVideoGroupsConfig = v5->_pbVideoGroupsConfig;
    v5->_pbVideoGroupsConfig = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configDictionary"];
    configDictionary = v5->_configDictionary;
    v5->_configDictionary = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pbVideoGroupsConfig = [(FCVideoGroupsConfig *)self pbVideoGroupsConfig];
  [coderCopy encodeObject:pbVideoGroupsConfig forKey:@"pbVideoGroupsConfig"];

  configDictionary = [(FCVideoGroupsConfig *)self configDictionary];
  [coderCopy encodeObject:configDictionary forKey:@"configDictionary"];
}

@end