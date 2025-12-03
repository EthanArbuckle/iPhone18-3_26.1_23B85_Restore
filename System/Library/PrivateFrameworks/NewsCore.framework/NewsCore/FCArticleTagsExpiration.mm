@interface FCArticleTagsExpiration
+ (id)tagsExpirationsFromRecord:(id)record;
- (FCArticleTagsExpiration)initWithTagsExpiration:(id)expiration;
- (id)description;
@end

@implementation FCArticleTagsExpiration

+ (id)tagsExpirationsFromRecord:(id)record
{
  v20 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  if ([recordCopy count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(recordCopy, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = recordCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [FCArticleTagsExpiration alloc];
          v12 = [(FCArticleTagsExpiration *)v11 initWithTagsExpiration:v10, v15];
          [v4 addObject:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (FCArticleTagsExpiration)initWithTagsExpiration:(id)expiration
{
  expirationCopy = expiration;
  v11.receiver = self;
  v11.super_class = FCArticleTagsExpiration;
  v5 = [(FCArticleTagsExpiration *)&v11 init];
  if (v5)
  {
    tagId = [expirationCopy tagId];
    tagID = v5->_tagID;
    v5->_tagID = tagId;

    v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(expirationCopy, "expireUtcTime") / 1000.0}];
    expireTime = v5->_expireTime;
    v5->_expireTime = v8;
  }

  return v5;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  tagID = [(FCArticleTagsExpiration *)self tagID];
  [(FCDescription *)v3 addField:@"tagID" value:tagID];

  expireTime = [(FCArticleTagsExpiration *)self expireTime];
  v6 = [expireTime description];
  [(FCDescription *)v3 addField:@"expireTime" value:v6];

  descriptionString = [(FCDescription *)v3 descriptionString];

  return descriptionString;
}

@end