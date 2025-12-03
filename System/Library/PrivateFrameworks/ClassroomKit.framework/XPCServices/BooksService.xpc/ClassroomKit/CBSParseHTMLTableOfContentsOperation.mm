@interface CBSParseHTMLTableOfContentsOperation
- (CBSParseHTMLTableOfContentsOperation)initWithFilePath:(id)path packageContents:(id)contents;
- (void)main;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
- (void)parserDidEndDocument:(id)document;
@end

@implementation CBSParseHTMLTableOfContentsOperation

- (CBSParseHTMLTableOfContentsOperation)initWithFilePath:(id)path packageContents:(id)contents
{
  pathCopy = path;
  contentsCopy = contents;
  v16.receiver = self;
  v16.super_class = CBSParseHTMLTableOfContentsOperation;
  v9 = [(CBSParseHTMLTableOfContentsOperation *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mHTMLFilePath, path);
    objc_storeStrong(&v10->mPackageContents, contents);
    v11 = objc_opt_new();
    mChapters = v10->mChapters;
    v10->mChapters = v11;

    v13 = objc_opt_new();
    mParentChapters = v10->mParentChapters;
    v10->mParentChapters = v13;
  }

  return v10;
}

- (void)main
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:self->mHTMLFilePath isDirectory:0];

  if (v4)
  {
    v5 = [NSXMLParser alloc];
    v6 = [NSURL fileURLWithPath:self->mHTMLFilePath];
    v7 = [v5 initWithContentsOfURL:v6];
    mHTMLParser = self->mHTMLParser;
    self->mHTMLParser = v7;

    [(NSXMLParser *)self->mHTMLParser setDelegate:self];
    v9 = self->mHTMLParser;

    [(NSXMLParser *)v9 parse];
  }

  else
  {

    [(CBSParseHTMLTableOfContentsOperation *)self endOperationWithResultObject:0];
  }
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  elementCopy = element;
  attributesCopy = attributes;
  if ([elementCopy isEqualToString:@"nav"])
  {
    self->mIsInNav = 1;
  }

  else if (!self->mIsInNav)
  {
    goto LABEL_10;
  }

  if ([elementCopy isEqualToString:@"li"])
  {
    if (self->mCurrentChapter)
    {
      [(NSMutableArray *)self->mParentChapters addObject:?];
    }

    v11 = objc_opt_new();
    mCurrentChapter = self->mCurrentChapter;
    self->mCurrentChapter = v11;
  }

  else if ([elementCopy isEqualToString:@"a"])
  {
    v13 = objc_opt_new();
    mCurrentText = self->mCurrentText;
    self->mCurrentText = v13;

    mPackageContents = self->mPackageContents;
    v16 = [attributesCopy objectForKeyedSubscript:@"href"];
    v20 = 0;
    v17 = [(CBSOPFPackageContents *)mPackageContents itemIdentifierForHref:v16 fragment:&v20];
    v18 = v20;

    v19 = [(CBSOPFPackageContents *)self->mPackageContents urlWithItemIdentifier:v17 fragment:v18];
    [(CRKChapter *)self->mCurrentChapter setWebURL:v19];
  }

LABEL_10:
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  elementCopy = element;
  if ([elementCopy isEqualToString:@"nav"])
  {
    self->mIsInNav = 0;
    goto LABEL_15;
  }

  if (self->mIsInNav)
  {
    if ([elementCopy isEqualToString:@"li"])
    {
      if ([(NSMutableArray *)self->mParentChapters count])
      {
        lastObject = [(NSMutableArray *)self->mParentChapters lastObject];
        [(NSMutableArray *)self->mParentChapters removeLastObject];
        title = [(CRKChapter *)self->mCurrentChapter title];
        v9 = [title length];

        if (v9)
        {
          subchapters = [lastObject subchapters];
          v11 = [subchapters arrayByAddingObject:self->mCurrentChapter];
          [lastObject setSubchapters:v11];
        }

        mCurrentChapter = self->mCurrentChapter;
        self->mCurrentChapter = lastObject;
        goto LABEL_14;
      }

      v13 = 40;
      title2 = [(CRKChapter *)self->mCurrentChapter title];
      v18 = [title2 length];

      if (v18)
      {
        [(NSMutableArray *)self->mChapters addObject:self->mCurrentChapter];
      }
    }

    else
    {
      if (![elementCopy isEqualToString:@"a"])
      {
        goto LABEL_15;
      }

      v13 = 56;
      mCurrentText = self->mCurrentText;
      v15 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v16 = [(NSMutableString *)mCurrentText stringByTrimmingCharactersInSet:v15];
      [(CRKChapter *)self->mCurrentChapter setTitle:v16];
    }

    mCurrentChapter = *&self->CATOperation_opaque[v13];
    *&self->CATOperation_opaque[v13] = 0;
LABEL_14:
  }

LABEL_15:
}

- (void)parserDidEndDocument:(id)document
{
  if ([(CBSParseHTMLTableOfContentsOperation *)self isExecuting])
  {
    mChapters = self->mChapters;

    [(CBSParseHTMLTableOfContentsOperation *)self endOperationWithResultObject:mChapters];
  }
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  occurredCopy = occurred;
  if ([(CBSParseHTMLTableOfContentsOperation *)self isExecuting])
  {
    [(CBSParseHTMLTableOfContentsOperation *)self endOperationWithError:occurredCopy];
  }
}

@end