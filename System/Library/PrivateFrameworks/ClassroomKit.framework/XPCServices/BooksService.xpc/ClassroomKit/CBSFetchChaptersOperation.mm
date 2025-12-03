@interface CBSFetchChaptersOperation
- (CBSFetchChaptersOperation)initWithRequest:(id)request;
- (void)cleanUp;
- (void)finishOperation:(id)operation;
- (void)finishOperationWithError:(id)error;
- (void)parseOFPPackageContentsOperationDidFinish:(id)finish;
- (void)parseOPFFilePathOperationDidFinish:(id)finish;
- (void)run;
@end

@implementation CBSFetchChaptersOperation

- (CBSFetchChaptersOperation)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = CBSFetchChaptersOperation;
  v6 = [(CBSFetchChaptersOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mRequest, request);
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
    path = [(CRKFetchChaptersRequest *)self->mRequest path];
    v6 = [(CBSParseOPFFilePathOperation *)v3 initWithBookFilePath:path];

    [(CBSParseOPFFilePathOperation *)v6 addTarget:self selector:"parseOPFFilePathOperationDidFinish:" forOperationEvents:6];
    v5 = +[CATOperationQueue crk_backgroundQueue];
    [v5 addOperation:v6];
  }
}

- (void)parseOPFFilePathOperationDidFinish:(id)finish
{
  finishCopy = finish;
  resultObject = [finishCopy resultObject];

  if (resultObject)
  {
    v5 = [CBSParseOPFPackageContentsOperation alloc];
    resultObject2 = [finishCopy resultObject];
    identifierType = [(CRKFetchChaptersRequest *)self->mRequest identifierType];
    identifier = [(CRKFetchChaptersRequest *)self->mRequest identifier];
    v9 = [(CBSParseOPFPackageContentsOperation *)v5 initWithOPFFilePath:resultObject2 identifierType:identifierType identifier:identifier];

    [(CBSParseOPFPackageContentsOperation *)v9 addTarget:self selector:"parseOFPPackageContentsOperationDidFinish:" forOperationEvents:6];
    v10 = +[CATOperationQueue crk_backgroundQueue];
    [v10 addOperation:v9];
  }

  else
  {
    [(CBSFetchChaptersOperation *)self finishOperation:finishCopy];
  }
}

- (void)parseOFPPackageContentsOperationDidFinish:(id)finish
{
  finishCopy = finish;
  resultObject = [finishCopy resultObject];

  if (resultObject)
  {
    resultObject2 = [finishCopy resultObject];

    tableOfContentsMediaType = [resultObject2 tableOfContentsMediaType];
    v8 = [tableOfContentsMediaType isEqualToString:@"application/x-dtbncx+xml"];

    if (v8)
    {
      v9 = CBSParseNCXTableOfContentsOperation;
    }

    else
    {
      tableOfContentsMediaType2 = [resultObject2 tableOfContentsMediaType];
      v11 = [tableOfContentsMediaType2 isEqualToString:@"application/xhtml+xml"];

      if (!v11)
      {
        if (qword_100011E88 != -1)
        {
          sub_10000510C();
        }

        v16 = qword_100011E80;
        if (os_log_type_enabled(qword_100011E80, OS_LOG_TYPE_ERROR))
        {
          sub_100005120(v16, resultObject2);
        }

        v14 = CRKErrorWithCodeAndUserInfo();
        [(CBSFetchChaptersOperation *)self finishOperationWithError:v14];
        goto LABEL_13;
      }

      v9 = CBSParseHTMLTableOfContentsOperation;
    }

    v12 = [v9 alloc];
    tableOfContentsFilePath = [resultObject2 tableOfContentsFilePath];
    v14 = [v12 initWithFilePath:tableOfContentsFilePath packageContents:resultObject2];

    [v14 addTarget:self selector:"parseTableOfContentsOperationDidFinish:" forOperationEvents:6];
    v15 = +[CATOperationQueue crk_backgroundQueue];
    [v15 addOperation:v14];

LABEL_13:
    goto LABEL_14;
  }

  [(CBSFetchChaptersOperation *)self finishOperation:finishCopy];
  resultObject2 = finishCopy;
LABEL_14:
}

- (void)finishOperation:(id)operation
{
  operationCopy = operation;
  [(CBSFetchChaptersOperation *)self cleanUp];
  error = [operationCopy error];

  if (error)
  {
    error2 = [operationCopy error];
    [(CBSFetchChaptersOperation *)self endOperationWithError:error2];
  }

  else
  {
    error2 = objc_opt_new();
    resultObject = [operationCopy resultObject];
    v7 = resultObject;
    if (resultObject)
    {
      v8 = resultObject;
    }

    else
    {
      v8 = &__NSArray0__struct;
    }

    [error2 setChapters:v8];

    [(CBSFetchChaptersOperation *)self endOperationWithResultObject:error2];
  }
}

- (void)finishOperationWithError:(id)error
{
  errorCopy = error;
  [(CBSFetchChaptersOperation *)self cleanUp];
  [(CBSFetchChaptersOperation *)self endOperationWithError:errorCopy];
}

- (void)cleanUp
{
  mSandboxExtension = self->mSandboxExtension;
  self->mSandboxExtension = 0;
  _objc_release_x1();
}

@end