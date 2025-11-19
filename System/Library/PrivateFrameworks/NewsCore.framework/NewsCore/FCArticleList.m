@interface FCArticleList
- (FCArticleList)initWithRecord:(id)a3 interestToken:(id)a4;
@end

@implementation FCArticleList

- (FCArticleList)initWithRecord:(id)a3 interestToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = FCArticleList;
  v9 = [(FCArticleList *)&v29 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_record, a3);
    objc_storeStrong(&v10->_interestToken, a4);
    v11 = [v7 base];
    v12 = [v11 identifier];
    identifier = v10->_identifier;
    v10->_identifier = v12;

    v14 = [v7 articleIDs];
    articleIDs = v10->_articleIDs;
    v10->_articleIDs = v14;

    v16 = [v7 type];
    v17 = v16 == 1;
    if (v16 == 2)
    {
      v17 = 2;
    }

    v10->_type = v17;
    v18 = MEMORY[0x1E695DF00];
    v19 = [v7 base];
    v20 = [v19 modificationDate];
    v21 = [v18 dateWithPBDate:v20];
    lastModifiedDate = v10->_lastModifiedDate;
    v10->_lastModifiedDate = v21;

    if ([v7 type] - 1 <= 1)
    {
      v23 = MEMORY[0x1E695DF20];
      v24 = [v7 metadata];
      v25 = [v23 fc_dictionaryFromJSON:v24];

      v26 = [[FCArticleListEditorialMetadata alloc] initWithDictionary:v25];
      editorialMetadata = v10->_editorialMetadata;
      v10->_editorialMetadata = v26;
    }
  }

  return v10;
}

@end