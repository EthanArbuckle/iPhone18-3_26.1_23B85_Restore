@interface RTAddress(SiriVocabularyAdditions)
- (id)siriVocabularySpatialNames;
@end

@implementation RTAddress(SiriVocabularyAdditions)

- (id)siriVocabularySpatialNames
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  thoroughfare = [self thoroughfare];
  if (thoroughfare)
  {
    [v2 addObject:thoroughfare];
  }

  subLocality = [self subLocality];
  if (subLocality)
  {
    [v2 addObject:subLocality];
  }

  locality = [self locality];
  if (locality)
  {
    [v2 addObject:locality];
  }

  country = [self country];
  if (country)
  {
    [v2 addObject:country];
  }

  return v2;
}

@end