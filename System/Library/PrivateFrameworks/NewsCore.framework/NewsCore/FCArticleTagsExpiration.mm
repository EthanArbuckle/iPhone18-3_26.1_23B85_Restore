@interface FCArticleTagsExpiration
+ (id)tagsExpirationsFromRecord:(id)a3;
- (FCArticleTagsExpiration)initWithTagsExpiration:(id)a3;
- (id)description;
@end

@implementation FCArticleTagsExpiration

+ (id)tagsExpirationsFromRecord:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
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

- (FCArticleTagsExpiration)initWithTagsExpiration:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FCArticleTagsExpiration;
  v5 = [(FCArticleTagsExpiration *)&v11 init];
  if (v5)
  {
    v6 = [v4 tagId];
    tagID = v5->_tagID;
    v5->_tagID = v6;

    v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v4, "expireUtcTime") / 1000.0}];
    expireTime = v5->_expireTime;
    v5->_expireTime = v8;
  }

  return v5;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  v4 = [(FCArticleTagsExpiration *)self tagID];
  [(FCDescription *)v3 addField:@"tagID" value:v4];

  v5 = [(FCArticleTagsExpiration *)self expireTime];
  v6 = [v5 description];
  [(FCDescription *)v3 addField:@"expireTime" value:v6];

  v7 = [(FCDescription *)v3 descriptionString];

  return v7;
}

@end