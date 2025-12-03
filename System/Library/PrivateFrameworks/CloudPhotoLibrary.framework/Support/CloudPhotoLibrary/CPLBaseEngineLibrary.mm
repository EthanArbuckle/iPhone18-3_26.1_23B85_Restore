@interface CPLBaseEngineLibrary
- (BOOL)createLibraryWithError:(id *)error;
- (void)getStatusDictionaryWithCompletionHandler:(id)handler;
- (void)getStatusWithCompletionHandler:(id)handler;
- (void)openWithCompletionHandler:(id)handler;
@end

@implementation CPLBaseEngineLibrary

- (BOOL)createLibraryWithError:(id *)error
{
  v5 = +[NSFileManager defaultManager];
  abstractObject = [(CPLBaseEngineLibrary *)self abstractObject];
  clientLibraryBaseURL = [abstractObject clientLibraryBaseURL];
  LOBYTE(error) = [v5 createDirectoryAtURL:clientLibraryBaseURL withIntermediateDirectories:1 attributes:0 error:error];

  return error;
}

- (void)openWithCompletionHandler:(id)handler
{
  v8 = 0;
  handlerCopy = handler;
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

  (handlerCopy)[2](handlerCopy, v7);
}

- (void)getStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[CPLTransaction transactions];
  handlerCopy[2](handlerCopy, v4, 0);
}

- (void)getStatusDictionaryWithCompletionHandler:(id)handler
{
  v7 = @"transactions";
  handlerCopy = handler;
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", +[CPLTransaction transactionCount]);
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  (*(handler + 2))(handlerCopy, v6, 0);
}

@end