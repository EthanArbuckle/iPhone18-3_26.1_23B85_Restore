@interface CBSParseOPFPackageContentsOperation
- (CBSParseOPFPackageContentsOperation)initWithOPFFilePath:(id)path identifierType:(id)type identifier:(id)identifier;
- (void)main;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation CBSParseOPFPackageContentsOperation

- (CBSParseOPFPackageContentsOperation)initWithOPFFilePath:(id)path identifierType:(id)type identifier:(id)identifier
{
  pathCopy = path;
  typeCopy = type;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = CBSParseOPFPackageContentsOperation;
  v12 = [(CBSParseOPFPackageContentsOperation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mOPFFilePath, path);
    v14 = [[CBSOPFPackageContents alloc] initWithIdentifierType:typeCopy identifier:identifierCopy];
    mPackageContents = v13->mPackageContents;
    v13->mPackageContents = v14;
  }

  return v13;
}

- (void)main
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:self->mOPFFilePath isDirectory:0];

  if (v4)
  {
    v5 = [NSXMLParser alloc];
    v6 = [NSURL fileURLWithPath:self->mOPFFilePath];
    v7 = [v5 initWithContentsOfURL:v6];
    mOPFParser = self->mOPFParser;
    self->mOPFParser = v7;

    [(NSXMLParser *)self->mOPFParser setDelegate:self];
    v9 = self->mOPFParser;

    [(NSXMLParser *)v9 parse];
  }

  else
  {

    [(CBSParseOPFPackageContentsOperation *)self endOperationWithResultObject:0];
  }
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  elementCopy = element;
  attributesCopy = attributes;
  if (![elementCopy isEqualToString:@"item"])
  {
    if ([elementCopy isEqualToString:@"itemref"])
    {
      v18 = [attributesCopy objectForKeyedSubscript:@"idref"];

      if (!v18)
      {
        goto LABEL_23;
      }

      spineItemIdentifiers = [(CBSOPFPackageContents *)self->mPackageContents spineItemIdentifiers];
      v20 = [attributesCopy objectForKeyedSubscript:@"idref"];
      [spineItemIdentifiers addObject:v20];
    }

    else
    {
      if (([elementCopy isEqualToString:@"dc:title"] & 1) != 0 || objc_msgSend(elementCopy, "isEqualToString:", @"dc:creator"))
      {
        v21 = objc_opt_new();
        v22 = 32;
      }

      else
      {
        if (![elementCopy isEqualToString:@"meta"])
        {
          goto LABEL_23;
        }

        v23 = [attributesCopy objectForKeyedSubscript:@"name"];
        v24 = [v23 isEqualToString:@"cover"];

        if (!v24)
        {
          goto LABEL_23;
        }

        v21 = [attributesCopy objectForKeyedSubscript:@"content"];
        v22 = 40;
      }

      spineItemIdentifiers = *&self->CATOperation_opaque[v22];
      *&self->CATOperation_opaque[v22] = v21;
    }

LABEL_22:

    goto LABEL_23;
  }

  v10 = [attributesCopy objectForKeyedSubscript:@"id"];
  if (v10)
  {
    v11 = v10;
    v12 = [attributesCopy objectForKeyedSubscript:@"href"];

    if (v12)
    {
      v13 = [attributesCopy objectForKeyedSubscript:@"href"];
      itemPathsByIdentifier = [(CBSOPFPackageContents *)self->mPackageContents itemPathsByIdentifier];
      v15 = [attributesCopy objectForKeyedSubscript:@"id"];
      [itemPathsByIdentifier setObject:v13 forKeyedSubscript:v15];

      tableOfContentsFilePath = [(CBSOPFPackageContents *)self->mPackageContents tableOfContentsFilePath];
      if (!tableOfContentsFilePath)
      {
        v17 = [attributesCopy objectForKeyedSubscript:@"id"];
        if ([v17 isEqualToString:@"ncx"])
        {
        }

        else
        {
          v25 = [attributesCopy objectForKeyedSubscript:@"id"];
          v26 = [v25 isEqualToString:@"toc"];

          if (!v26)
          {
LABEL_20:
            v30 = [attributesCopy objectForKeyedSubscript:@"id"];
            v31 = [v30 isEqualToString:self->mCoverItemID];

            if (!v31)
            {
              goto LABEL_23;
            }

            spineItemIdentifiers = [(NSString *)self->mOPFFilePath stringByDeletingLastPathComponent];
            v32 = [attributesCopy objectForKeyedSubscript:@"href"];
            v33 = [spineItemIdentifiers stringByAppendingPathComponent:v32];
            [(CBSOPFPackageContents *)self->mPackageContents setCoverImagePath:v33];

            goto LABEL_22;
          }
        }

        tableOfContentsFilePath = [(NSString *)self->mOPFFilePath stringByDeletingLastPathComponent];
        v27 = [attributesCopy objectForKeyedSubscript:@"href"];
        v28 = [tableOfContentsFilePath stringByAppendingPathComponent:v27];
        [(CBSOPFPackageContents *)self->mPackageContents setTableOfContentsFilePath:v28];

        v29 = [attributesCopy objectForKeyedSubscript:@"media-type"];
        [(CBSOPFPackageContents *)self->mPackageContents setTableOfContentsMediaType:v29];
      }

      goto LABEL_20;
    }
  }

LABEL_23:
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  elementCopy = element;
  if ([elementCopy isEqualToString:@"dc:title"])
  {
    p_mCurrentText = &self->mCurrentText;
    [(CBSOPFPackageContents *)self->mPackageContents setTitle:self->mCurrentText];
  }

  else
  {
    if (![elementCopy isEqualToString:@"dc:creator"])
    {
      goto LABEL_6;
    }

    p_mCurrentText = &self->mCurrentText;
    [(CBSOPFPackageContents *)self->mPackageContents setAuthor:self->mCurrentText];
  }

  v8 = *p_mCurrentText;
  *p_mCurrentText = 0;

LABEL_6:
}

@end