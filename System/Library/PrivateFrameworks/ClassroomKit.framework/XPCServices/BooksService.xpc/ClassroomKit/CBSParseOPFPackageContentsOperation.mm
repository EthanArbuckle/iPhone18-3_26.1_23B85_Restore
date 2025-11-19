@interface CBSParseOPFPackageContentsOperation
- (CBSParseOPFPackageContentsOperation)initWithOPFFilePath:(id)a3 identifierType:(id)a4 identifier:(id)a5;
- (void)main;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
@end

@implementation CBSParseOPFPackageContentsOperation

- (CBSParseOPFPackageContentsOperation)initWithOPFFilePath:(id)a3 identifierType:(id)a4 identifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CBSParseOPFPackageContentsOperation;
  v12 = [(CBSParseOPFPackageContentsOperation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mOPFFilePath, a3);
    v14 = [[CBSOPFPackageContents alloc] initWithIdentifierType:v10 identifier:v11];
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

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v34 = a4;
  v9 = a7;
  if (![v34 isEqualToString:@"item"])
  {
    if ([v34 isEqualToString:@"itemref"])
    {
      v18 = [v9 objectForKeyedSubscript:@"idref"];

      if (!v18)
      {
        goto LABEL_23;
      }

      v19 = [(CBSOPFPackageContents *)self->mPackageContents spineItemIdentifiers];
      v20 = [v9 objectForKeyedSubscript:@"idref"];
      [v19 addObject:v20];
    }

    else
    {
      if (([v34 isEqualToString:@"dc:title"] & 1) != 0 || objc_msgSend(v34, "isEqualToString:", @"dc:creator"))
      {
        v21 = objc_opt_new();
        v22 = 32;
      }

      else
      {
        if (![v34 isEqualToString:@"meta"])
        {
          goto LABEL_23;
        }

        v23 = [v9 objectForKeyedSubscript:@"name"];
        v24 = [v23 isEqualToString:@"cover"];

        if (!v24)
        {
          goto LABEL_23;
        }

        v21 = [v9 objectForKeyedSubscript:@"content"];
        v22 = 40;
      }

      v19 = *&self->CATOperation_opaque[v22];
      *&self->CATOperation_opaque[v22] = v21;
    }

LABEL_22:

    goto LABEL_23;
  }

  v10 = [v9 objectForKeyedSubscript:@"id"];
  if (v10)
  {
    v11 = v10;
    v12 = [v9 objectForKeyedSubscript:@"href"];

    if (v12)
    {
      v13 = [v9 objectForKeyedSubscript:@"href"];
      v14 = [(CBSOPFPackageContents *)self->mPackageContents itemPathsByIdentifier];
      v15 = [v9 objectForKeyedSubscript:@"id"];
      [v14 setObject:v13 forKeyedSubscript:v15];

      v16 = [(CBSOPFPackageContents *)self->mPackageContents tableOfContentsFilePath];
      if (!v16)
      {
        v17 = [v9 objectForKeyedSubscript:@"id"];
        if ([v17 isEqualToString:@"ncx"])
        {
        }

        else
        {
          v25 = [v9 objectForKeyedSubscript:@"id"];
          v26 = [v25 isEqualToString:@"toc"];

          if (!v26)
          {
LABEL_20:
            v30 = [v9 objectForKeyedSubscript:@"id"];
            v31 = [v30 isEqualToString:self->mCoverItemID];

            if (!v31)
            {
              goto LABEL_23;
            }

            v19 = [(NSString *)self->mOPFFilePath stringByDeletingLastPathComponent];
            v32 = [v9 objectForKeyedSubscript:@"href"];
            v33 = [v19 stringByAppendingPathComponent:v32];
            [(CBSOPFPackageContents *)self->mPackageContents setCoverImagePath:v33];

            goto LABEL_22;
          }
        }

        v16 = [(NSString *)self->mOPFFilePath stringByDeletingLastPathComponent];
        v27 = [v9 objectForKeyedSubscript:@"href"];
        v28 = [v16 stringByAppendingPathComponent:v27];
        [(CBSOPFPackageContents *)self->mPackageContents setTableOfContentsFilePath:v28];

        v29 = [v9 objectForKeyedSubscript:@"media-type"];
        [(CBSOPFPackageContents *)self->mPackageContents setTableOfContentsMediaType:v29];
      }

      goto LABEL_20;
    }
  }

LABEL_23:
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v9 = a4;
  if ([v9 isEqualToString:@"dc:title"])
  {
    p_mCurrentText = &self->mCurrentText;
    [(CBSOPFPackageContents *)self->mPackageContents setTitle:self->mCurrentText];
  }

  else
  {
    if (![v9 isEqualToString:@"dc:creator"])
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