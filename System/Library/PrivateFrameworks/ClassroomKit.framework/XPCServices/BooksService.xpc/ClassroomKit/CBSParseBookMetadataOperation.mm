@interface CBSParseBookMetadataOperation
- (CBSParseBookMetadataOperation)initWithBook:(id)book parseImage:(BOOL)image;
- (void)main;
- (void)parseBookContentsOperationDidFinish:(id)finish;
- (void)parseContentsFilePathOperationDidFinish:(id)finish;
- (void)updateAuthor:(id)author;
- (void)updateTitle:(id)title;
@end

@implementation CBSParseBookMetadataOperation

- (CBSParseBookMetadataOperation)initWithBook:(id)book parseImage:(BOOL)image
{
  bookCopy = book;
  v11.receiver = self;
  v11.super_class = CBSParseBookMetadataOperation;
  v8 = [(CBSParseBookMetadataOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_book, book);
    v9->mParseImage = image;
  }

  return v9;
}

- (void)main
{
  v3 = [CBSParseOPFFilePathOperation alloc];
  book = [(CBSParseBookMetadataOperation *)self book];
  path = [book path];
  v7 = [(CBSParseOPFFilePathOperation *)v3 initWithBookFilePath:path];

  [(CBSParseOPFFilePathOperation *)v7 addTarget:self selector:"parseContentsFilePathOperationDidFinish:" forOperationEvents:6];
  v6 = +[CATOperationQueue crk_backgroundQueue];
  [v6 addOperation:v7];
}

- (void)parseContentsFilePathOperationDidFinish:(id)finish
{
  finishCopy = finish;
  error = [finishCopy error];

  if (error)
  {
    error2 = [finishCopy error];
    [(CBSParseBookMetadataOperation *)self endOperationWithError:error2];
  }

  else
  {
    resultObject = [finishCopy resultObject];

    if (resultObject)
    {
      v7 = [CBSParseOPFPackageContentsOperation alloc];
      resultObject2 = [finishCopy resultObject];
      book = [(CBSParseBookMetadataOperation *)self book];
      webURL = [book webURL];
      host = [webURL host];
      book2 = [(CBSParseBookMetadataOperation *)self book];
      webURL2 = [book2 webURL];
      lastPathComponent = [webURL2 lastPathComponent];
      v15 = [(CBSParseOPFPackageContentsOperation *)v7 initWithOPFFilePath:resultObject2 identifierType:host identifier:lastPathComponent];

      [(CBSParseOPFPackageContentsOperation *)v15 addTarget:self selector:"parseBookContentsOperationDidFinish:" forOperationEvents:6];
      v16 = +[CATOperationQueue crk_backgroundQueue];
      [v16 addOperation:v15];
    }

    else
    {
      [(CBSParseBookMetadataOperation *)self endOperationWithResultObject:&__NSArray0__struct];
    }
  }
}

- (void)parseBookContentsOperationDidFinish:(id)finish
{
  finishCopy = finish;
  error = [finishCopy error];

  if (error)
  {
    error2 = [finishCopy error];

    [(CBSParseBookMetadataOperation *)self endOperationWithError:error2];
  }

  else
  {
    error2 = [finishCopy resultObject];

    title = [error2 title];

    if (title)
    {
      title2 = [error2 title];
      [(CBSParseBookMetadataOperation *)self updateTitle:title2];

      author = [error2 author];
      [(CBSParseBookMetadataOperation *)self updateAuthor:author];

      if (self->mParseImage)
      {
        coverImagePath = [error2 coverImagePath];
        v10 = [NSData dataWithContentsOfFile:coverImagePath];
        book = [(CBSParseBookMetadataOperation *)self book];
        [book setImage:v10];
      }

      [(CBSParseBookMetadataOperation *)self endOperationWithResultObject:0];
    }

    else
    {
      v12 = CATErrorWithCodeAndUserInfo();
      [(CBSParseBookMetadataOperation *)self endOperationWithError:v12];
    }
  }
}

- (void)updateTitle:(id)title
{
  if (title)
  {
    titleCopy = title;
    book = [(CBSParseBookMetadataOperation *)self book];
    [book setTitle:titleCopy];
  }
}

- (void)updateAuthor:(id)author
{
  if (author)
  {
    authorCopy = author;
    book = [(CBSParseBookMetadataOperation *)self book];
    [book setAuthor:authorCopy];
  }
}

@end