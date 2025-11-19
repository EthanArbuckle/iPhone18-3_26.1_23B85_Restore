@interface RTAddress(SiriVocabularyAdditions)
- (id)siriVocabularySpatialNames;
@end

@implementation RTAddress(SiriVocabularyAdditions)

- (id)siriVocabularySpatialNames
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [a1 thoroughfare];
  if (v3)
  {
    [v2 addObject:v3];
  }

  v4 = [a1 subLocality];
  if (v4)
  {
    [v2 addObject:v4];
  }

  v5 = [a1 locality];
  if (v5)
  {
    [v2 addObject:v5];
  }

  v6 = [a1 country];
  if (v6)
  {
    [v2 addObject:v6];
  }

  return v2;
}

@end