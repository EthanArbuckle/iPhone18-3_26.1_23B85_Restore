@interface CBSParseBookMetadataOperation
- (CBSParseBookMetadataOperation)initWithBook:(id)a3 parseImage:(BOOL)a4;
- (void)main;
- (void)parseBookContentsOperationDidFinish:(id)a3;
- (void)parseContentsFilePathOperationDidFinish:(id)a3;
- (void)updateAuthor:(id)a3;
- (void)updateTitle:(id)a3;
@end

@implementation CBSParseBookMetadataOperation

- (CBSParseBookMetadataOperation)initWithBook:(id)a3 parseImage:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CBSParseBookMetadataOperation;
  v8 = [(CBSParseBookMetadataOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_book, a3);
    v9->mParseImage = a4;
  }

  return v9;
}

- (void)main
{
  v3 = [CBSParseOPFFilePathOperation alloc];
  v4 = [(CBSParseBookMetadataOperation *)self book];
  v5 = [v4 path];
  v7 = [(CBSParseOPFFilePathOperation *)v3 initWithBookFilePath:v5];

  [(CBSParseOPFFilePathOperation *)v7 addTarget:self selector:"parseContentsFilePathOperationDidFinish:" forOperationEvents:6];
  v6 = +[CATOperationQueue crk_backgroundQueue];
  [v6 addOperation:v7];
}

- (void)parseContentsFilePathOperationDidFinish:(id)a3
{
  v17 = a3;
  v4 = [v17 error];

  if (v4)
  {
    v5 = [v17 error];
    [(CBSParseBookMetadataOperation *)self endOperationWithError:v5];
  }

  else
  {
    v6 = [v17 resultObject];

    if (v6)
    {
      v7 = [CBSParseOPFPackageContentsOperation alloc];
      v8 = [v17 resultObject];
      v9 = [(CBSParseBookMetadataOperation *)self book];
      v10 = [v9 webURL];
      v11 = [v10 host];
      v12 = [(CBSParseBookMetadataOperation *)self book];
      v13 = [v12 webURL];
      v14 = [v13 lastPathComponent];
      v15 = [(CBSParseOPFPackageContentsOperation *)v7 initWithOPFFilePath:v8 identifierType:v11 identifier:v14];

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

- (void)parseBookContentsOperationDidFinish:(id)a3
{
  v4 = a3;
  v5 = [v4 error];

  if (v5)
  {
    v13 = [v4 error];

    [(CBSParseBookMetadataOperation *)self endOperationWithError:v13];
  }

  else
  {
    v13 = [v4 resultObject];

    v6 = [v13 title];

    if (v6)
    {
      v7 = [v13 title];
      [(CBSParseBookMetadataOperation *)self updateTitle:v7];

      v8 = [v13 author];
      [(CBSParseBookMetadataOperation *)self updateAuthor:v8];

      if (self->mParseImage)
      {
        v9 = [v13 coverImagePath];
        v10 = [NSData dataWithContentsOfFile:v9];
        v11 = [(CBSParseBookMetadataOperation *)self book];
        [v11 setImage:v10];
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

- (void)updateTitle:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CBSParseBookMetadataOperation *)self book];
    [v5 setTitle:v4];
  }
}

- (void)updateAuthor:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CBSParseBookMetadataOperation *)self book];
    [v5 setAuthor:v4];
  }
}

@end