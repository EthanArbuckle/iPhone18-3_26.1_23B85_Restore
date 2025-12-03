@interface MADServiceVideoProcessingSubtask
+ (Class)taskClassForRequest:(id)request;
+ (id)taskWithRequest:(id)request forAsset:(id)asset cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
+ (void)unimplementedExceptionForMethodName:(id)name;
- (MADServiceVideoProcessingSubtask)initWithRequest:(id)request forAsset:(id)asset cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
@end

@implementation MADServiceVideoProcessingSubtask

+ (Class)taskClassForRequest:(id)request
{
  requestCopy = request;
  v4 = [requestCopy isMemberOfClass:objc_opt_class()];

  if (v4)
  {
    v5 = objc_opt_class();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)taskWithRequest:(id)request forAsset:(id)asset cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  blockCopy = block;
  assetCopy = asset;
  requestCopy = request;
  v17 = [objc_alloc(objc_msgSend(self taskClassForRequest:{requestCopy)), "initWithRequest:forAsset:cancelBlock:progressHandler:andCompletionHandler:", requestCopy, assetCopy, blockCopy, handlerCopy, completionHandlerCopy}];

  return v17;
}

+ (void)unimplementedExceptionForMethodName:(id)name
{
  nameCopy = name;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADServiceVideoProcessingSubtask %@] should not be called", nameCopy];
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:@"NotImplementedException" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v4);
}

- (MADServiceVideoProcessingSubtask)initWithRequest:(id)request forAsset:(id)asset cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  [objc_opt_class() unimplementedExceptionForMethodName:@"initWithRequest:forAsset:cancelBlock:andCompletionHandler:"];

  return 0;
}

@end