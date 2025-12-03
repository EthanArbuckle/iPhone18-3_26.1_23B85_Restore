@interface CBSRequestServicer
- (void)fetchBooksWithRequest:(id)request completion:(id)completion;
- (void)fetchChaptersWithRequest:(id)request completion:(id)completion;
- (void)performOperation:(id)operation completion:(id)completion;
@end

@implementation CBSRequestServicer

- (void)performOperation:(id)operation completion:(id)completion
{
  operationCopy = operation;
  completionCopy = completion;
  v7 = +[CATOperationQueue crk_backgroundQueue];
  [v7 addOperation:operationCopy];

  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100004340;
  v15 = &unk_10000C388;
  v16 = operationCopy;
  v17 = completionCopy;
  v8 = operationCopy;
  v9 = completionCopy;
  v10 = [NSBlockOperation blockOperationWithBlock:&v12];
  [v10 addDependency:{v8, v12, v13, v14, v15}];
  v11 = +[NSOperationQueue mainQueue];
  [v11 addOperation:v10];
}

- (void)fetchBooksWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100004480;
    v8[3] = &unk_10000C3B0;
    v9 = requestCopy;
    selfCopy = self;
    v11 = completionCopy;
    [NSRunLoop cat_performBlockOnMainRunLoop:v8];
  }
}

- (void)fetchChaptersWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000045A8;
    v8[3] = &unk_10000C3B0;
    v9 = requestCopy;
    selfCopy = self;
    v11 = completionCopy;
    [NSRunLoop cat_performBlockOnMainRunLoop:v8];
  }
}

@end