@interface SUUICompletion
- (NSMutableDictionary)cacheRepresentation;
- (SUUICompletion)initWithCacheRepresentation:(id)a3;
- (SUUICompletion)initWithCompletionDictionary:(id)a3;
@end

@implementation SUUICompletion

- (SUUICompletion)initWithCompletionDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SUUICompletion;
  v5 = [(SUUICompletion *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"term"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      title = v5->_title;
      v5->_title = v7;
    }

    v9 = [v4 objectForKey:@"search-field-term"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      alternateTitle = v5->_alternateTitle;
      v5->_alternateTitle = v10;
    }

    v12 = [v4 objectForKey:@"url"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      URLString = v5->_URLString;
      v5->_URLString = v13;
    }
  }

  return v5;
}

- (SUUICompletion)initWithCacheRepresentation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16.receiver = self;
    v16.super_class = SUUICompletion;
    v5 = [(SUUICompletion *)&v16 init];
    if (v5)
    {
      v6 = [v4 objectForKey:@"title"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 copy];
        title = v5->_title;
        v5->_title = v7;
      }

      v9 = [v4 objectForKey:@"alttitle"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 copy];
        alternateTitle = v5->_alternateTitle;
        v5->_alternateTitle = v10;
      }

      v12 = [v4 objectForKey:@"url"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 copy];
        URLString = v5->_URLString;
        v5->_URLString = v13;
      }
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (NSMutableDictionary)cacheRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  alternateTitle = self->_alternateTitle;
  if (alternateTitle)
  {
    [v4 setObject:alternateTitle forKey:@"alttitle"];
  }

  URLString = self->_URLString;
  if (URLString)
  {
    [v4 setObject:URLString forKey:@"url"];
  }

  return v4;
}

@end