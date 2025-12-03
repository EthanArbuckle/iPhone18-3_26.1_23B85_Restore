@interface FCPeopleAlsoReadConfiguration
- (FCPeopleAlsoReadConfiguration)initWithDictionary:(id)dictionary;
- (id)candidateArticleListIDForSeedArticleID:(id)d storeFrontID:(id)iD;
@end

@implementation FCPeopleAlsoReadConfiguration

- (FCPeopleAlsoReadConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FCPeopleAlsoReadConfiguration;
  v5 = [(FCPeopleAlsoReadConfiguration *)&v10 init];
  if (v5)
  {
    v5->_seedMaxCount = FCAppConfigurationIntegerValue(dictionaryCopy, @"seedMaxCount", 0);
    v5->_seedMaxAgeSeconds = FCAppConfigurationIntegerValue(dictionaryCopy, @"seedMaxAgeSeconds", 31536000);
    v5->_seedMaxIntervalSinceLastReadSeconds = FCAppConfigurationIntegerValue(dictionaryCopy, @"seedMaxIntervalSinceLastReadSeconds", 1209600);
    v6 = [dictionaryCopy objectForKeyedSubscript:@"candidateArticleListSuffix"];
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

    v5->_candidateArticleListMaxCachedAgeSeconds = FCAppConfigurationIntegerValue(dictionaryCopy, @"candidateArticleListMaxCachedAgeSeconds", 7200);
    v5->_candidateMaxAgeSeconds = FCAppConfigurationIntegerValue(dictionaryCopy, @"candidateMaxAgeSeconds", 1209600);
  }

  return v5;
}

- (id)candidateArticleListIDForSeedArticleID:(id)d storeFrontID:(id)iD
{
  v6 = MEMORY[0x1E696AEC0];
  iDCopy = iD;
  dCopy = d;
  candidateArticleListSuffix = [(FCPeopleAlsoReadConfiguration *)self candidateArticleListSuffix];
  v10 = [v6 stringWithFormat:@"%@-%@-%@-%@", @"LX", dCopy, iDCopy, candidateArticleListSuffix];

  return v10;
}

@end