@interface CPLBaseEngineLibrary
- (BOOL)createLibraryWithError:(id *)a3;
- (void)getStatusDictionaryWithCompletionHandler:(id)a3;
- (void)getStatusWithCompletionHandler:(id)a3;
- (void)openWithCompletionHandler:(id)a3;
@end

@implementation CPLBaseEngineLibrary

- (BOOL)createLibraryWithError:(id *)a3
{
  v5 = +[NSFileManager defaultManager];
  v6 = [(CPLBaseEngineLibrary *)self abstractObject];
  v7 = [v6 clientLibraryBaseURL];
  LOBYTE(a3) = [v5 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:a3];

  return a3;
}

- (void)openWithCompletionHandler:(id)a3
{
  v8 = 0;
  v4 = a3;
  LODWORD(self) = [(CPLBaseEngineLibrary *)self createLibraryWithError:&v8];
  v5 = v8;
  v6 = v5;
  if (self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  (v4)[2](v4, v7);
}

- (void)getStatusWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[CPLTransaction transactions];
  v3[2](v3, v4, 0);
}

- (void)getStatusDictionaryWithCompletionHandler:(id)a3
{
  v7 = @"transactions";
  v4 = a3;
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", +[CPLTransaction transactionCount]);
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  (*(a3 + 2))(v4, v6, 0);
}

@end