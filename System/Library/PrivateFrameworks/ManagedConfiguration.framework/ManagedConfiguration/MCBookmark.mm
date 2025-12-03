@interface MCBookmark
- (BOOL)isEqual:(id)equal;
- (MCBookmark)initWithSerializableDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)serializableDictionary;
@end

@implementation MCBookmark

- (MCBookmark)initWithSerializableDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = MCBookmark;
  v5 = [(MCBookmark *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFF8];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"address"];
    v8 = [v6 URLWithString:v7];
    URL = v5->_URL;
    v5->_URL = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"pageTitle"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"bookmarkPath"];
    path = v5->_path;
    v5->_path = v12;
  }

  return v5;
}

- (id)serializableDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(MCBookmark *)self URL];

  if (v4)
  {
    v5 = [(MCBookmark *)self URL];
    absoluteString = [v5 absoluteString];
    [dictionary setObject:absoluteString forKeyedSubscript:@"address"];
  }

  title = [(MCBookmark *)self title];

  if (title)
  {
    title2 = [(MCBookmark *)self title];
    [dictionary setObject:title2 forKeyedSubscript:@"pageTitle"];
  }

  path = [(MCBookmark *)self path];

  if (path)
  {
    path2 = [(MCBookmark *)self path];
    [dictionary setObject:path2 forKeyedSubscript:@"bookmarkPath"];
  }

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MCBookmark alloc];
  serializableDictionary = [(MCBookmark *)self serializableDictionary];
  v6 = [(MCBookmark *)v4 initWithSerializableDictionary:serializableDictionary];

  return v6;
}

- (id)description
{
  v12.receiver = self;
  v12.super_class = MCBookmark;
  v3 = [(MCBookmark *)&v12 description];
  v4 = [v3 mutableCopy];

  v5 = [(MCBookmark *)self URL];

  if (v5)
  {
    v6 = [(MCBookmark *)self URL];
    [v4 appendFormat:@", URL: %@", v6];
  }

  title = [(MCBookmark *)self title];

  if (title)
  {
    title2 = [(MCBookmark *)self title];
    [v4 appendFormat:@", Title: %@", title2];
  }

  path = [(MCBookmark *)self path];

  if (path)
  {
    path2 = [(MCBookmark *)self path];
    [v4 appendFormat:@", Path: %@", path2];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    v8 = [(MCBookmark *)self URL];
    v9 = [v7 URL];
    if (v8 != v9)
    {
      v3 = [(MCBookmark *)self URL];
      v4 = [v7 URL];
      if (![v3 isEqual:v4])
      {
        v10 = 0;
        goto LABEL_17;
      }
    }

    title = [(MCBookmark *)self title];
    title2 = [v7 title];
    v13 = title2;
    if (title == title2)
    {
      v28 = title2;
    }

    else
    {
      title3 = [(MCBookmark *)self title];
      title4 = [v7 title];
      if (![title3 isEqualToString:?])
      {
        v10 = 0;
        goto LABEL_15;
      }

      v26 = title3;
      v28 = v13;
    }

    path = [(MCBookmark *)self path];
    path2 = [v7 path];
    v17 = path2;
    if (path == path2)
    {

      v10 = 1;
    }

    else
    {
      [(MCBookmark *)self path];
      v18 = v25 = v3;
      [v7 path];
      v24 = title;
      v19 = v4;
      v20 = v9;
      v22 = v21 = v8;
      v10 = [v18 isEqualToString:v22];

      v8 = v21;
      v9 = v20;
      v4 = v19;
      title = v24;

      v3 = v25;
    }

    v13 = v28;
    title3 = v26;
    if (title == v28)
    {
LABEL_16:

      if (v8 == v9)
      {
LABEL_18:

        goto LABEL_19;
      }

LABEL_17:

      goto LABEL_18;
    }

LABEL_15:

    goto LABEL_16;
  }

  v29.receiver = self;
  v29.super_class = MCBookmark;
  v10 = [(MCBookmark *)&v29 isEqual:equalCopy];
LABEL_19:

  return v10;
}

@end