@interface MCBookmark
- (BOOL)isEqual:(id)a3;
- (MCBookmark)initWithSerializableDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)serializableDictionary;
@end

@implementation MCBookmark

- (MCBookmark)initWithSerializableDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MCBookmark;
  v5 = [(MCBookmark *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFF8];
    v7 = [v4 objectForKeyedSubscript:@"address"];
    v8 = [v6 URLWithString:v7];
    URL = v5->_URL;
    v5->_URL = v8;

    v10 = [v4 objectForKeyedSubscript:@"pageTitle"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [v4 objectForKeyedSubscript:@"bookmarkPath"];
    path = v5->_path;
    v5->_path = v12;
  }

  return v5;
}

- (id)serializableDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(MCBookmark *)self URL];

  if (v4)
  {
    v5 = [(MCBookmark *)self URL];
    v6 = [v5 absoluteString];
    [v3 setObject:v6 forKeyedSubscript:@"address"];
  }

  v7 = [(MCBookmark *)self title];

  if (v7)
  {
    v8 = [(MCBookmark *)self title];
    [v3 setObject:v8 forKeyedSubscript:@"pageTitle"];
  }

  v9 = [(MCBookmark *)self path];

  if (v9)
  {
    v10 = [(MCBookmark *)self path];
    [v3 setObject:v10 forKeyedSubscript:@"bookmarkPath"];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MCBookmark alloc];
  v5 = [(MCBookmark *)self serializableDictionary];
  v6 = [(MCBookmark *)v4 initWithSerializableDictionary:v5];

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

  v7 = [(MCBookmark *)self title];

  if (v7)
  {
    v8 = [(MCBookmark *)self title];
    [v4 appendFormat:@", Title: %@", v8];
  }

  v9 = [(MCBookmark *)self path];

  if (v9)
  {
    v10 = [(MCBookmark *)self path];
    [v4 appendFormat:@", Path: %@", v10];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
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

    v11 = [(MCBookmark *)self title];
    v12 = [v7 title];
    v13 = v12;
    if (v11 == v12)
    {
      v28 = v12;
    }

    else
    {
      v14 = [(MCBookmark *)self title];
      v27 = [v7 title];
      if (![v14 isEqualToString:?])
      {
        v10 = 0;
        goto LABEL_15;
      }

      v26 = v14;
      v28 = v13;
    }

    v15 = [(MCBookmark *)self path];
    v16 = [v7 path];
    v17 = v16;
    if (v15 == v16)
    {

      v10 = 1;
    }

    else
    {
      [(MCBookmark *)self path];
      v18 = v25 = v3;
      [v7 path];
      v24 = v11;
      v19 = v4;
      v20 = v9;
      v22 = v21 = v8;
      v10 = [v18 isEqualToString:v22];

      v8 = v21;
      v9 = v20;
      v4 = v19;
      v11 = v24;

      v3 = v25;
    }

    v13 = v28;
    v14 = v26;
    if (v11 == v28)
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
  v10 = [(MCBookmark *)&v29 isEqual:v6];
LABEL_19:

  return v10;
}

@end