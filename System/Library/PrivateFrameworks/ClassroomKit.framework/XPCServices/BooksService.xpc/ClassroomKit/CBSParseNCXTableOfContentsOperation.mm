@interface CBSParseNCXTableOfContentsOperation
- (CBSParseNCXTableOfContentsOperation)initWithFilePath:(id)path packageContents:(id)contents;
- (void)main;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
@end

@implementation CBSParseNCXTableOfContentsOperation

- (CBSParseNCXTableOfContentsOperation)initWithFilePath:(id)path packageContents:(id)contents
{
  pathCopy = path;
  contentsCopy = contents;
  v16.receiver = self;
  v16.super_class = CBSParseNCXTableOfContentsOperation;
  v9 = [(CBSParseNCXTableOfContentsOperation *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mNCXFilePath, path);
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

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  elementCopy = element;
  attributesCopy = attributes;
  if ([elementCopy isEqualToString:@"navPoint"])
  {
    if (self->mCurrentChapter)
    {
      [(NSMutableArray *)self->mParentChapters addObject:?];
    }

    v11 = objc_opt_new();
    mCurrentChapter = self->mCurrentChapter;
    self->mCurrentChapter = v11;
  }

  else if ([elementCopy isEqualToString:@"navLabel"])
  {
    v13 = objc_opt_new();
    mCurrentText = self->mCurrentText;
    self->mCurrentText = v13;
  }

  else if ([elementCopy isEqualToString:@"content"])
  {
    mPackageContents = self->mPackageContents;
    v16 = [attributesCopy objectForKeyedSubscript:@"src"];
    v21 = 0;
    v17 = [(CBSOPFPackageContents *)mPackageContents itemIdentifierForHref:v16 fragment:&v21];
    v18 = v21;

    v19 = [(CBSOPFPackageContents *)self->mPackageContents urlWithItemIdentifier:v17 fragment:v18];
    [(CRKChapter *)self->mCurrentChapter setWebURL:v19];
  }

  mCurrentElementName = self->mCurrentElementName;
  self->mCurrentElementName = elementCopy;
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  elementCopy = element;
  if ([elementCopy isEqualToString:@"navPoint"])
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
      goto LABEL_11;
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
    if (![elementCopy isEqualToString:@"navLabel"])
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

- (void)parser:(id)parser foundCharacters:(id)characters
{
  charactersCopy = characters;
  if ([(NSString *)self->mCurrentElementName isEqualToString:@"text"])
  {
    [(NSMutableString *)self->mCurrentText appendString:charactersCopy];
  }
}

@end