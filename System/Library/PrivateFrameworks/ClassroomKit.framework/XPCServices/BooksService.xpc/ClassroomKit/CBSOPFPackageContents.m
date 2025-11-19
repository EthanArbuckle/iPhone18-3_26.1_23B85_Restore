@interface CBSOPFPackageContents
- (CBSOPFPackageContents)initWithIdentifierType:(id)a3 identifier:(id)a4;
- (id)cfiWithItemIdentifier:(id)a3 fragment:(id)a4;
- (id)itemIdentifierForHref:(id)a3 fragment:(id *)a4;
- (id)urlWithItemIdentifier:(id)a3 fragment:(id)a4;
@end

@implementation CBSOPFPackageContents

- (CBSOPFPackageContents)initWithIdentifierType:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CBSOPFPackageContents;
  v9 = [(CBSOPFPackageContents *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bookIdentifier, a4);
    objc_storeStrong(&v10->_bookIdentifierType, a3);
    v11 = objc_opt_new();
    itemPathsByIdentifier = v10->_itemPathsByIdentifier;
    v10->_itemPathsByIdentifier = v11;

    v13 = objc_opt_new();
    spineItemIdentifiers = v10->_spineItemIdentifiers;
    v10->_spineItemIdentifiers = v13;
  }

  return v10;
}

- (id)itemIdentifierForHref:(id)a3 fragment:(id *)a4
{
  v6 = [NSURL URLWithString:a3];
  v7 = [v6 path];
  v8 = +[NSCharacterSet URLPathAllowedCharacterSet];
  v9 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v8];

  if (a4)
  {
    *a4 = [v6 fragment];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [(CBSOPFPackageContents *)self itemPathsByIdentifier];
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [(CBSOPFPackageContents *)self itemPathsByIdentifier];
        v17 = [v16 objectForKeyedSubscript:v15];
        v18 = [v17 isEqualToString:v9];

        if (v18)
        {
          v19 = v15;
          goto LABEL_13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
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

- (id)cfiWithItemIdentifier:(id)a3 fragment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CBSOPFPackageContents *)self spineItemIdentifiers];
  v9 = [v8 indexOfObject:v6];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v11 = [NSNumber numberWithInteger:2 * v9 + 2];
    v12 = v11;
    if (v7)
    {
      [NSString stringWithFormat:@"epubcfi(/6/%@[%@]!/4[%@])", v11, v6, v7];
    }

    else
    {
      [NSString stringWithFormat:@"epubcfi(/6/%@[%@]!/4)", v11, v6, v14];
    }
    v10 = ;
  }

  return v10;
}

- (id)urlWithItemIdentifier:(id)a3 fragment:(id)a4
{
  v5 = [(CBSOPFPackageContents *)self cfiWithItemIdentifier:a3 fragment:a4];
  v6 = [(CBSOPFPackageContents *)self bookIdentifierType];
  v7 = [(CBSOPFPackageContents *)self bookIdentifier];
  v8 = v7;
  if (v5)
  {
    [NSString stringWithFormat:@"ibooks://%@/%@#%@", v6, v7, v5];
  }

  else
  {
    [NSString stringWithFormat:@"ibooks://%@/%@", v6, v7, v12];
  }
  v9 = ;
  v10 = [NSURL URLWithString:v9];

  return v10;
}

@end