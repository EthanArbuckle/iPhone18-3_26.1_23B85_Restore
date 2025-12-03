@interface FCArticleList
- (FCArticleList)initWithRecord:(id)record interestToken:(id)token;
@end

@implementation FCArticleList

- (FCArticleList)initWithRecord:(id)record interestToken:(id)token
{
  recordCopy = record;
  tokenCopy = token;
  v29.receiver = self;
  v29.super_class = FCArticleList;
  v9 = [(FCArticleList *)&v29 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_record, record);
    objc_storeStrong(&v10->_interestToken, token);
    base = [recordCopy base];
    identifier = [base identifier];
    identifier = v10->_identifier;
    v10->_identifier = identifier;

    articleIDs = [recordCopy articleIDs];
    articleIDs = v10->_articleIDs;
    v10->_articleIDs = articleIDs;

    type = [recordCopy type];
    v17 = type == 1;
    if (type == 2)
    {
      v17 = 2;
    }

    v10->_type = v17;
    v18 = MEMORY[0x1E695DF00];
    base2 = [recordCopy base];
    modificationDate = [base2 modificationDate];
    v21 = [v18 dateWithPBDate:modificationDate];
    lastModifiedDate = v10->_lastModifiedDate;
    v10->_lastModifiedDate = v21;

    if ([recordCopy type] - 1 <= 1)
    {
      v23 = MEMORY[0x1E695DF20];
      metadata = [recordCopy metadata];
      v25 = [v23 fc_dictionaryFromJSON:metadata];

      v26 = [[FCArticleListEditorialMetadata alloc] initWithDictionary:v25];
      editorialMetadata = v10->_editorialMetadata;
      v10->_editorialMetadata = v26;
    }
  }

  return v10;
}

@end