@interface FCArticleListEditorialMetadata
- (FCArticleListEditorialMetadata)initWithDictionary:(id)dictionary;
@end

@implementation FCArticleListEditorialMetadata

- (FCArticleListEditorialMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = FCArticleListEditorialMetadata;
  v5 = [(FCArticleListEditorialMetadata *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"publishDate"];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DF00] fc_dateFromStringWithISO8601Format:v6];
      publishDate = v5->_publishDate;
      v5->_publishDate = v7;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"articleMetadata"];
    v10 = [v9 fc_dictionaryByTransformingValuesWithBlock:&__block_literal_global_144];
    articleMetadata = v5->_articleMetadata;
    v5->_articleMetadata = v10;
  }

  return v5;
}

FCArticleMetadata *__53__FCArticleListEditorialMetadata_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCArticleMetadata alloc] initWithDictionary:v2];

  return v3;
}

@end