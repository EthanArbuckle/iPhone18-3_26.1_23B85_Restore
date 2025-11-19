@interface CBSRequestServicer
- (void)fetchBooksWithRequest:(id)a3 completion:(id)a4;
- (void)fetchChaptersWithRequest:(id)a3 completion:(id)a4;
- (void)performOperation:(id)a3 completion:(id)a4;
@end

@implementation CBSRequestServicer

- (void)performOperation:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[CATOperationQueue crk_backgroundQueue];
  [v7 addOperation:v5];

  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100004340;
  v15 = &unk_10000C388;
  v16 = v5;
  v17 = v6;
  v8 = v5;
  v9 = v6;
  v10 = [NSBlockOperation blockOperationWithBlock:&v12];
  [v10 addDependency:{v8, v12, v13, v14, v15}];
  v11 = +[NSOperationQueue mainQueue];
  [v11 addOperation:v10];
}

- (void)fetchBooksWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100004480;
    v8[3] = &unk_10000C3B0;
    v9 = v6;
    v10 = self;
    v11 = v7;
    [NSRunLoop cat_performBlockOnMainRunLoop:v8];
  }
}

- (void)fetchChaptersWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000045A8;
    v8[3] = &unk_10000C3B0;
    v9 = v6;
    v10 = self;
    v11 = v7;
    [NSRunLoop cat_performBlockOnMainRunLoop:v8];
  }
}

@end