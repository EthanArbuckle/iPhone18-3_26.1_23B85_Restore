@interface MADServiceVideoProcessingSubtask
+ (Class)taskClassForRequest:(id)a3;
+ (id)taskWithRequest:(id)a3 forAsset:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 andCompletionHandler:(id)a7;
+ (void)unimplementedExceptionForMethodName:(id)a3;
- (MADServiceVideoProcessingSubtask)initWithRequest:(id)a3 forAsset:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 andCompletionHandler:(id)a7;
@end

@implementation MADServiceVideoProcessingSubtask

+ (Class)taskClassForRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

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

+ (id)taskWithRequest:(id)a3 forAsset:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 andCompletionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [objc_alloc(objc_msgSend(a1 taskClassForRequest:{v16)), "initWithRequest:forAsset:cancelBlock:progressHandler:andCompletionHandler:", v16, v15, v14, v13, v12}];

  return v17;
}

+ (void)unimplementedExceptionForMethodName:(id)a3
{
  v3 = a3;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADServiceVideoProcessingSubtask %@] should not be called", v3];
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:@"NotImplementedException" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v4);
}

- (MADServiceVideoProcessingSubtask)initWithRequest:(id)a3 forAsset:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 andCompletionHandler:(id)a7
{
  [objc_opt_class() unimplementedExceptionForMethodName:@"initWithRequest:forAsset:cancelBlock:andCompletionHandler:"];

  return 0;
}

@end