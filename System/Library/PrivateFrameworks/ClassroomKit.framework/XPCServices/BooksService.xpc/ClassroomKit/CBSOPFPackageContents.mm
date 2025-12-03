@interface CBSOPFPackageContents
- (CBSOPFPackageContents)initWithIdentifierType:(id)type identifier:(id)identifier;
- (id)cfiWithItemIdentifier:(id)identifier fragment:(id)fragment;
- (id)itemIdentifierForHref:(id)href fragment:(id *)fragment;
- (id)urlWithItemIdentifier:(id)identifier fragment:(id)fragment;
@end

@implementation CBSOPFPackageContents

- (CBSOPFPackageContents)initWithIdentifierType:(id)type identifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = CBSOPFPackageContents;
  v9 = [(CBSOPFPackageContents *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bookIdentifier, identifier);
    objc_storeStrong(&v10->_bookIdentifierType, type);
    v11 = objc_opt_new();
    itemPathsByIdentifier = v10->_itemPathsByIdentifier;
    v10->_itemPathsByIdentifier = v11;

    v13 = objc_opt_new();
    spineItemIdentifiers = v10->_spineItemIdentifiers;
    v10->_spineItemIdentifiers = v13;
  }

  return v10;
}

- (id)itemIdentifierForHref:(id)href fragment:(id *)fragment
{
  v6 = [NSURL URLWithString:href];
  path = [v6 path];
  v8 = +[NSCharacterSet URLPathAllowedCharacterSet];
  v9 = [path stringByAddingPercentEncodingWithAllowedCharacters:v8];

  if (fragment)
  {
    *fragment = [v6 fragment];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  itemPathsByIdentifier = [(CBSOPFPackageContents *)self itemPathsByIdentifier];
  v11 = [itemPathsByIdentifier countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v21 = v6;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(itemPathsByIdentifier);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        itemPathsByIdentifier2 = [(CBSOPFPackageContents *)self itemPathsByIdentifier];
        v17 = [itemPathsByIdentifier2 objectForKeyedSubscript:v15];
        v18 = [v17 isEqualToString:v9];

        if (v18)
        {
          v19 = v15;
          goto LABEL_13;
        }
      }

      v12 = [itemPathsByIdentifier countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v19 = 0;
LABEL_13:
    v6 = v21;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)cfiWithItemIdentifier:(id)identifier fragment:(id)fragment
{
  identifierCopy = identifier;
  fragmentCopy = fragment;
  spineItemIdentifiers = [(CBSOPFPackageContents *)self spineItemIdentifiers];
  v9 = [spineItemIdentifiers indexOfObject:identifierCopy];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v11 = [NSNumber numberWithInteger:2 * v9 + 2];
    v12 = v11;
    if (fragmentCopy)
    {
      [NSString stringWithFormat:@"epubcfi(/6/%@[%@]!/4[%@])", v11, identifierCopy, fragmentCopy];
    }

    else
    {
      [NSString stringWithFormat:@"epubcfi(/6/%@[%@]!/4)", v11, identifierCopy, v14];
    }
    v10 = ;
  }

  return v10;
}

- (id)urlWithItemIdentifier:(id)identifier fragment:(id)fragment
{
  v5 = [(CBSOPFPackageContents *)self cfiWithItemIdentifier:identifier fragment:fragment];
  bookIdentifierType = [(CBSOPFPackageContents *)self bookIdentifierType];
  bookIdentifier = [(CBSOPFPackageContents *)self bookIdentifier];
  v8 = bookIdentifier;
  if (v5)
  {
    [NSString stringWithFormat:@"ibooks://%@/%@#%@", bookIdentifierType, bookIdentifier, v5];
  }

  else
  {
    [NSString stringWithFormat:@"ibooks://%@/%@", bookIdentifierType, bookIdentifier, v12];
  }
  v9 = ;
  v10 = [NSURL URLWithString:v9];

  return v10;
}

@end