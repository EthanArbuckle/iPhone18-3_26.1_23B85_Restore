@interface CBSFetchChaptersOperation
- (CBSFetchChaptersOperation)initWithRequest:(id)a3;
- (void)cleanUp;
- (void)finishOperation:(id)a3;
- (void)finishOperationWithError:(id)a3;
- (void)parseOFPPackageContentsOperationDidFinish:(id)a3;
- (void)parseOPFFilePathOperationDidFinish:(id)a3;
- (void)run;
@end

@implementation CBSFetchChaptersOperation

- (CBSFetchChaptersOperation)initWithRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CBSFetchChaptersOperation;
  v6 = [(CBSFetchChaptersOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mRequest, a3);
  }

  return v7;
}

- (void)run
{
  if ([(CBSFetchChaptersOperation *)self isCanceled])
  {
    v6 = CATErrorWithCodeAndUserInfo();
    [(CBSFetchChaptersOperation *)self endOperationWithError:?];
  }

  else
  {
    v3 = [CBSParseOPFFilePathOperation alloc];
    v4 = [(CRKFetchChaptersRequest *)self->mRequest path];
    v6 = [(CBSParseOPFFilePathOperation *)v3 initWithBookFilePath:v4];

    [(CBSParseOPFFilePathOperation *)v6 addTarget:self selector:"parseOPFFilePathOperationDidFinish:" forOperationEvents:6];
    v5 = +[CATOperationQueue crk_backgroundQueue];
    [v5 addOperation:v6];
  }
}

- (void)parseOPFFilePathOperationDidFinish:(id)a3
{
  v11 = a3;
  v4 = [v11 resultObject];

  if (v4)
  {
    v5 = [CBSParseOPFPackageContentsOperation alloc];
    v6 = [v11 resultObject];
    v7 = [(CRKFetchChaptersRequest *)self->mRequest identifierType];
    v8 = [(CRKFetchChaptersRequest *)self->mRequest identifier];
    v9 = [(CBSParseOPFPackageContentsOperation *)v5 initWithOPFFilePath:v6 identifierType:v7 identifier:v8];

    [(CBSParseOPFPackageContentsOperation *)v9 addTarget:self selector:"parseOFPPackageContentsOperationDidFinish:" forOperationEvents:6];
    v10 = +[CATOperationQueue crk_backgroundQueue];
    [v10 addOperation:v9];
  }

  else
  {
    [(CBSFetchChaptersOperation *)self finishOperation:v11];
  }
}

- (void)parseOFPPackageContentsOperationDidFinish:(id)a3
{
  v4 = a3;
  v5 = [v4 resultObject];

  if (v5)
  {
    v6 = [v4 resultObject];

    v7 = [v6 tableOfContentsMediaType];
    v8 = [v7 isEqualToString:@"application/x-dtbncx+xml"];

    if (v8)
    {
      v9 = CBSParseNCXTableOfContentsOperation;
    }

    else
    {
      v10 = [v6 tableOfContentsMediaType];
      v11 = [v10 isEqualToString:@"application/xhtml+xml"];

      if (!v11)
      {
        if (qword_100011E88 != -1)
        {
          sub_10000510C();
        }

        v16 = qword_100011E80;
        if (os_log_type_enabled(qword_100011E80, OS_LOG_TYPE_ERROR))
        {
          sub_100005120(v16, v6);
        }

        v14 = CRKErrorWithCodeAndUserInfo();
        [(CBSFetchChaptersOperation *)self finishOperationWithError:v14];
        goto LABEL_13;
      }

      v9 = CBSParseHTMLTableOfContentsOperation;
    }

    v12 = [v9 alloc];
    v13 = [v6 tableOfContentsFilePath];
    v14 = [v12 initWithFilePath:v13 packageContents:v6];

    [v14 addTarget:self selector:"parseTableOfContentsOperationDidFinish:" forOperationEvents:6];
    v15 = +[CATOperationQueue crk_backgroundQueue];
    [v15 addOperation:v14];

LABEL_13:
    goto LABEL_14;
  }

  [(CBSFetchChaptersOperation *)self finishOperation:v4];
  v6 = v4;
LABEL_14:
}

- (void)finishOperation:(id)a3
{
  v9 = a3;
  [(CBSFetchChaptersOperation *)self cleanUp];
  v4 = [v9 error];

  if (v4)
  {
    v5 = [v9 error];
    [(CBSFetchChaptersOperation *)self endOperationWithError:v5];
  }

  else
  {
    v5 = objc_opt_new();
    v6 = [v9 resultObject];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &__NSArray0__struct;
    }

    [v5 setChapters:v8];

    [(CBSFetchChaptersOperation *)self endOperationWithResultObject:v5];
  }
}

- (void)finishOperationWithError:(id)a3
{
  v4 = a3;
  [(CBSFetchChaptersOperation *)self cleanUp];
  [(CBSFetchChaptersOperation *)self endOperationWithError:v4];
}

- (void)cleanUp
{
  mSandboxExtension = self->mSandboxExtension;
  self->mSandboxExtension = 0;
  _objc_release_x1();
}

@end