@interface NMSPodcastsDownloadSettings
- (BOOL)isEqual:(id)equal;
- (NMSPodcastsDownloadSettings)initWithCollectionType:(int64_t)type dictionary:(id)dictionary;
- (NMSPodcastsDownloadSettings)initWithCollectionType:(int64_t)type legacyDownloadSettings:(id)settings;
- (NMSPodcastsDownloadSettings)initWithCollectionType:(int64_t)type legacyDownloadSettingsDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)numberOfEpisodes;
- (void)setNumberOfEpisodes:(int64_t)episodes;
@end

@implementation NMSPodcastsDownloadSettings

- (NMSPodcastsDownloadSettings)initWithCollectionType:(int64_t)type dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = NMSPodcastsDownloadSettings;
  v7 = [(NMSPodcastsDownloadSettings *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_collectionType = type;
    v9 = [dictionaryCopy mutableCopy];
    dictionary = v8->_dictionary;
    v8->_dictionary = v9;
  }

  return v8;
}

- (int64_t)numberOfEpisodes
{
  dictionary = self->_dictionary;
  if (!dictionary)
  {
    collectionType = self->_collectionType;
    if (collectionType < 4)
    {
      return qword_25B2CEBB8[collectionType];
    }
  }

  v6 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:@"NumberOfEpisodes"];
  v7 = v6;
  if (v6 || (v8 = self->_collectionType, v8 >= 4))
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = qword_25B2CEBD8[v8];
  }

  return integerValue;
}

- (void)setNumberOfEpisodes:(int64_t)episodes
{
  if (!self->_dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary = self->_dictionary;
    self->_dictionary = dictionary;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:episodes];
  [(NSMutableDictionary *)self->_dictionary setObject:v7 forKeyedSubscript:@"NumberOfEpisodes"];
}

- (id)dictionaryRepresentation
{
  v2 = [(NSMutableDictionary *)self->_dictionary copy];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (self->_collectionType != v6->_collectionType || (dictionary = self->_dictionary, (dictionary == 0) == (v6->_dictionary != 0)))
    {
      v8 = 0;
    }

    else
    {
      v8 = [(NSMutableDictionary *)dictionary isEqualToDictionary:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  if ([(NMSPodcastsDownloadSettings *)self isEnabled])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld episodes", -[NMSPodcastsDownloadSettings numberOfEpisodes](self, "numberOfEpisodes")];
  }

  else
  {
    v3 = @"Disabled";
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@>", v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(NSMutableDictionary *)self->_dictionary copy];
  v6 = [v4 initWithDictionary:v5];

  return v6;
}

- (NMSPodcastsDownloadSettings)initWithCollectionType:(int64_t)type legacyDownloadSettingsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"NumberOfEpisodes"];
    if (!v8 || (v9 = v8, [v7 objectForKeyedSubscript:@"NumberOfEpisodes"], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "integerValue"), v10, v9, v11 == -1))
    {
      v12 = MEMORY[0x277CBEC10];
    }

    else
    {
      v12 = v7;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NMSPodcastsDownloadSettings *)self initWithCollectionType:type dictionary:v12];

  return v13;
}

- (NMSPodcastsDownloadSettings)initWithCollectionType:(int64_t)type legacyDownloadSettings:(id)settings
{
  settingsCopy = settings;
  v7 = [(NMSPodcastsDownloadSettings *)self initWithCollectionType:type];
  if (v7 && [settingsCopy numberOfEpisodes] != -1)
  {
    -[NMSPodcastsDownloadSettings setNumberOfEpisodes:](v7, "setNumberOfEpisodes:", [settingsCopy numberOfEpisodes]);
  }

  return v7;
}

@end