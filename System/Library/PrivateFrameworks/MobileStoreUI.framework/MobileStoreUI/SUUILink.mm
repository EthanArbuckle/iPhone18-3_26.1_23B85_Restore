@interface SUUILink
- (NSDictionary)linkDictionary;
- (SUUILink)initWithComponentContext:(id)context;
- (SUUILink)initWithLinkDictionary:(id)dictionary;
- (SUUILink)initWithURL:(id)l title:(id)title targetString:(id)string;
- (id)valueForMetricsField:(id)field;
- (void)_setItem:(id)item;
@end

@implementation SUUILink

- (SUUILink)initWithLinkDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = SUUILink;
  v5 = [(SUUILink *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      title = v5->_title;
      v5->_title = v7;
    }

    v9 = [dictionaryCopy objectForKey:@"url"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
      url = v5->_url;
      v5->_url = v10;
    }

    v12 = [dictionaryCopy objectForKey:@"target"];

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

- (SUUILink)initWithComponentContext:(id)context
{
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = SUUILink;
  v5 = [(SUUILink *)&v24 init];
  if (!v5)
  {
    goto LABEL_15;
  }

  componentDictionary = [contextCopy componentDictionary];
  v7 = [componentDictionary objectForKey:@"label"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 copy];
    title = v5->_title;
    v5->_title = v8;
  }

  v10 = [componentDictionary objectForKey:@"url"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
    url = v5->_url;
    v5->_url = v11;
  }

  v13 = [componentDictionary objectForKey:@"lockupData"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [[SUUIItem alloc] initWithLookupDictionary:v13];
    v15 = 16;
    v16 = v13;
  }

  else
  {
    v16 = [componentDictionary objectForKey:@"adamId"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    v18 = [contextCopy itemForItemIdentifier:v16];
    item = v5->_item;
    v5->_item = v18;

    if (v5->_item || ([contextCopy isUnavailableItemIdentifier:v16] & 1) != 0)
    {
      goto LABEL_12;
    }

    v14 = [v16 copy];
    v15 = 24;
  }

  v17 = *(&v5->super.isa + v15);
  *(&v5->super.isa + v15) = v14;

LABEL_12:
  v20 = [componentDictionary objectForKey:@"target"];

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

- (SUUILink)initWithURL:(id)l title:(id)title targetString:(id)string
{
  lCopy = l;
  titleCopy = title;
  stringCopy = string;
  v19.receiver = self;
  v19.super_class = SUUILink;
  v11 = [(SUUILink *)&v19 init];
  if (v11)
  {
    v12 = [stringCopy copy];
    target = v11->_target;
    v11->_target = v12;

    v14 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v14;

    v16 = [lCopy copy];
    url = v11->_url;
    v11->_url = v16;
  }

  return v11;
}

- (NSDictionary)linkDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  target = self->_target;
  if (target)
  {
    [dictionary setObject:target forKey:@"target"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"label"];
  }

  url = self->_url;
  if (url)
  {
    absoluteString = [(NSURL *)url absoluteString];
    [v4 setObject:absoluteString forKey:@"url"];
  }

  return v4;
}

- (id)valueForMetricsField:(id)field
{
  fieldCopy = field;
  if ([fieldCopy isEqualToString:*MEMORY[0x277D6A490]])
  {
    item = self->_item;
    if (item)
    {
      title = [MEMORY[0x277CCABB0] numberWithLongLong:{-[SUUIItem itemIdentifier](item, "itemIdentifier")}];
    }

    else
    {
      title = self->_itemIdentifier;
    }

    goto LABEL_8;
  }

  if (([fieldCopy isEqualToString:*MEMORY[0x277D6A4A0]] & 1) != 0 || objc_msgSend(fieldCopy, "isEqualToString:", *MEMORY[0x277D6A4A8]))
  {
    title = [(SUUILink *)self title];
LABEL_8:
    v7 = title;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (void)_setItem:(id)item
{
  itemCopy = item;
  item = self->_item;
  p_item = &self->_item;
  if (item != itemCopy)
  {
    v8 = itemCopy;
    objc_storeStrong(p_item, item);
    itemCopy = v8;
  }
}

@end