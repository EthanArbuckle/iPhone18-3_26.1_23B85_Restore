@interface CBSParseOPFFilePathOperation
- (CBSParseOPFFilePathOperation)initWithBookFilePath:(id)path;
- (void)main;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation CBSParseOPFFilePathOperation

- (CBSParseOPFFilePathOperation)initWithBookFilePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = CBSParseOPFFilePathOperation;
  v6 = [(CBSParseOPFFilePathOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mBookFilePath, path);
  }

  return v7;
}

- (void)main
{
  v9 = [(NSString *)self->mBookFilePath stringByAppendingPathComponent:@"META-INF/container.xml"];
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:v9 isDirectory:0];

  if (v4)
  {
    v5 = [NSXMLParser alloc];
    v6 = [NSURL fileURLWithPath:v9];
    v7 = [v5 initWithContentsOfURL:v6];
    mContainerParser = self->mContainerParser;
    self->mContainerParser = v7;

    [(NSXMLParser *)self->mContainerParser setDelegate:self];
    [(NSXMLParser *)self->mContainerParser parse];
  }

  else
  {
    [(CBSParseOPFFilePathOperation *)self endOperationWithResultObject:0];
  }
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  parserCopy = parser;
  attributesCopy = attributes;
  if ([element isEqualToString:@"rootfile"])
  {
    v11 = [attributesCopy objectForKeyedSubscript:@"full-path"];
    if (v11)
    {
      v12 = v11;
      v13 = [attributesCopy objectForKeyedSubscript:@"media-type"];
      v14 = [v13 isEqualToString:@"application/oebps-package+xml"];

      if (v14)
      {
        mBookFilePath = self->mBookFilePath;
        v16 = [attributesCopy objectForKeyedSubscript:@"full-path"];
        v17 = [(NSString *)mBookFilePath stringByAppendingPathComponent:v16];

        [(CBSParseOPFFilePathOperation *)self endOperationWithResultObject:v17];
        [parserCopy setDelegate:0];
        [parserCopy abortParsing];
      }
    }
  }
}

@end