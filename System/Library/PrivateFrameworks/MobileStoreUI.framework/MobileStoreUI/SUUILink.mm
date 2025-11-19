@interface SUUILink
- (NSDictionary)linkDictionary;
- (SUUILink)initWithComponentContext:(id)a3;
- (SUUILink)initWithLinkDictionary:(id)a3;
- (SUUILink)initWithURL:(id)a3 title:(id)a4 targetString:(id)a5;
- (id)valueForMetricsField:(id)a3;
- (void)_setItem:(id)a3;
@end

@implementation SUUILink

- (SUUILink)initWithLinkDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SUUILink;
  v5 = [(SUUILink *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      title = v5->_title;
      v5->_title = v7;
    }

    v9 = [v4 objectForKey:@"url"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
      url = v5->_url;
      v5->_url = v10;
    }

    v12 = [v4 objectForKey:@"target"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      target = v5->_target;
      v5->_target = v13;
    }
  }

  return v5;
}

- (SUUILink)initWithComponentContext:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SUUILink;
  v5 = [(SUUILink *)&v24 init];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = [v4 componentDictionary];
  v7 = [v6 objectForKey:@"label"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 copy];
    title = v5->_title;
    v5->_title = v8;
  }

  v10 = [v6 objectForKey:@"url"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
    url = v5->_url;
    v5->_url = v11;
  }

  v13 = [v6 objectForKey:@"lockupData"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [[SUUIItem alloc] initWithLookupDictionary:v13];
    v15 = 16;
    v16 = v13;
  }

  else
  {
    v16 = [v6 objectForKey:@"adamId"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    v18 = [v4 itemForItemIdentifier:v16];
    item = v5->_item;
    v5->_item = v18;

    if (v5->_item || ([v4 isUnavailableItemIdentifier:v16] & 1) != 0)
    {
      goto LABEL_12;
    }

    v14 = [v16 copy];
    v15 = 24;
  }

  v17 = *(&v5->super.isa + v15);
  *(&v5->super.isa + v15) = v14;

LABEL_12:
  v20 = [v6 objectForKey:@"target"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [v20 copy];
    target = v5->_target;
    v5->_target = v21;
  }

LABEL_15:
  return v5;
}

- (SUUILink)initWithURL:(id)a3 title:(id)a4 targetString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SUUILink;
  v11 = [(SUUILink *)&v19 init];
  if (v11)
  {
    v12 = [v10 copy];
    target = v11->_target;
    v11->_target = v12;

    v14 = [v9 copy];
    title = v11->_title;
    v11->_title = v14;

    v16 = [v8 copy];
    url = v11->_url;
    v11->_url = v16;
  }

  return v11;
}

- (NSDictionary)linkDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  target = self->_target;
  if (target)
  {
    [v3 setObject:target forKey:@"target"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"label"];
  }

  url = self->_url;
  if (url)
  {
    v8 = [(NSURL *)url absoluteString];
    [v4 setObject:v8 forKey:@"url"];
  }

  return v4;
}

- (id)valueForMetricsField:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277D6A490]])
  {
    item = self->_item;
    if (item)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[SUUIItem itemIdentifier](item, "itemIdentifier")}];
    }

    else
    {
      v6 = self->_itemIdentifier;
    }

    goto LABEL_8;
  }

  if (([v4 isEqualToString:*MEMORY[0x277D6A4A0]] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D6A4A8]))
  {
    v6 = [(SUUILink *)self title];
LABEL_8:
    v7 = v6;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (void)_setItem:(id)a3
{
  v5 = a3;
  item = self->_item;
  p_item = &self->_item;
  if (item != v5)
  {
    v8 = v5;
    objc_storeStrong(p_item, a3);
    v5 = v8;
  }
}

@end