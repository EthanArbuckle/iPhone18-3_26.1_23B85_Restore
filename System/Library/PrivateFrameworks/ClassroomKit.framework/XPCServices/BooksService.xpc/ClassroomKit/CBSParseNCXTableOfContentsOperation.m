@interface CBSParseNCXTableOfContentsOperation
- (CBSParseNCXTableOfContentsOperation)initWithFilePath:(id)a3 packageContents:(id)a4;
- (void)main;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
@end

@implementation CBSParseNCXTableOfContentsOperation

- (CBSParseNCXTableOfContentsOperation)initWithFilePath:(id)a3 packageContents:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CBSParseNCXTableOfContentsOperation;
  v9 = [(CBSParseNCXTableOfContentsOperation *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mNCXFilePath, a3);
    objc_storeStrong(&v10->mPackageContents, a4);
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
  v4 = [v3 fileExistsAtPath:self->mNCXFilePath isDirectory:0];

  if (v4)
  {
    v5 = [NSXMLParser alloc];
    v6 = [NSURL fileURLWithPath:self->mNCXFilePath];
    v7 = [v5 initWithContentsOfURL:v6];
    mNCXParser = self->mNCXParser;
    self->mNCXParser = v7;

    [(NSXMLParser *)self->mNCXParser setDelegate:self];
    v9 = self->mNCXParser;

    [(NSXMLParser *)v9 parse];
  }

  else
  {

    [(CBSParseNCXTableOfContentsOperation *)self endOperationWithResultObject:0];
  }
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v9 = a4;
  v10 = a7;
  if ([v9 isEqualToString:@"navPoint"])
  {
    if (self->mCurrentChapter)
    {
      [(NSMutableArray *)self->mParentChapters addObject:?];
    }

    v11 = objc_opt_new();
    mCurrentChapter = self->mCurrentChapter;
    self->mCurrentChapter = v11;
  }

  else if ([v9 isEqualToString:@"navLabel"])
  {
    v13 = objc_opt_new();
    mCurrentText = self->mCurrentText;
    self->mCurrentText = v13;
  }

  else if ([v9 isEqualToString:@"content"])
  {
    mPackageContents = self->mPackageContents;
    v16 = [v10 objectForKeyedSubscript:@"src"];
    v21 = 0;
    v17 = [(CBSOPFPackageContents *)mPackageContents itemIdentifierForHref:v16 fragment:&v21];
    v18 = v21;

    v19 = [(CBSOPFPackageContents *)self->mPackageContents urlWithItemIdentifier:v17 fragment:v18];
    [(CRKChapter *)self->mCurrentChapter setWebURL:v19];
  }

  mCurrentElementName = self->mCurrentElementName;
  self->mCurrentElementName = v9;
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v19 = a4;
  if ([v19 isEqualToString:@"navPoint"])
  {
    if ([(NSMutableArray *)self->mParentChapters count])
    {
      v7 = [(NSMutableArray *)self->mParentChapters lastObject];
      [(NSMutableArray *)self->mParentChapters removeLastObject];
      v8 = [(CRKChapter *)self->mCurrentChapter title];
      v9 = [v8 length];

      if (v9)
      {
        v10 = [v7 subchapters];
        v11 = [v10 arrayByAddingObject:self->mCurrentChapter];
        [v7 setSubchapters:v11];
      }

      mCurrentChapter = self->mCurrentChapter;
      self->mCurrentChapter = v7;
      goto LABEL_11;
    }

    v13 = 40;
    v17 = [(CRKChapter *)self->mCurrentChapter title];
    v18 = [v17 length];

    if (v18)
    {
      [(NSMutableArray *)self->mChapters addObject:self->mCurrentChapter];
    }
  }

  else
  {
    if (![v19 isEqualToString:@"navLabel"])
    {
      goto LABEL_12;
    }

    v13 = 56;
    mCurrentText = self->mCurrentText;
    v15 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v16 = [(NSMutableString *)mCurrentText stringByTrimmingCharactersInSet:v15];
    [(CRKChapter *)self->mCurrentChapter setTitle:v16];
  }

  mCurrentChapter = *&self->CATOperation_opaque[v13];
  *&self->CATOperation_opaque[v13] = 0;
LABEL_11:

LABEL_12:
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v5 = a4;
  if ([(NSString *)self->mCurrentElementName isEqualToString:@"text"])
  {
    [(NSMutableString *)self->mCurrentText appendString:v5];
  }
}

@end