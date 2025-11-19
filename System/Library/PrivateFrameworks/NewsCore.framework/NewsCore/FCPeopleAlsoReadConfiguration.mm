@interface FCPeopleAlsoReadConfiguration
- (FCPeopleAlsoReadConfiguration)initWithDictionary:(id)a3;
- (id)candidateArticleListIDForSeedArticleID:(id)a3 storeFrontID:(id)a4;
@end

@implementation FCPeopleAlsoReadConfiguration

- (FCPeopleAlsoReadConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FCPeopleAlsoReadConfiguration;
  v5 = [(FCPeopleAlsoReadConfiguration *)&v10 init];
  if (v5)
  {
    v5->_seedMaxCount = FCAppConfigurationIntegerValue(v4, @"seedMaxCount", 0);
    v5->_seedMaxAgeSeconds = FCAppConfigurationIntegerValue(v4, @"seedMaxAgeSeconds", 31536000);
    v5->_seedMaxIntervalSinceLastReadSeconds = FCAppConfigurationIntegerValue(v4, @"seedMaxIntervalSinceLastReadSeconds", 1209600);
    v6 = [v4 objectForKeyedSubscript:@"candidateArticleListSuffix"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"base";
    }

    objc_storeStrong(&v5->_candidateArticleListSuffix, v8);

    v5->_candidateArticleListMaxCachedAgeSeconds = FCAppConfigurationIntegerValue(v4, @"candidateArticleListMaxCachedAgeSeconds", 7200);
    v5->_candidateMaxAgeSeconds = FCAppConfigurationIntegerValue(v4, @"candidateMaxAgeSeconds", 1209600);
  }

  return v5;
}

- (id)candidateArticleListIDForSeedArticleID:(id)a3 storeFrontID:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = a3;
  v9 = [(FCPeopleAlsoReadConfiguration *)self candidateArticleListSuffix];
  v10 = [v6 stringWithFormat:@"%@-%@-%@-%@", @"LX", v8, v7, v9];

  return v10;
}

@end