@interface MADPhotosSceneFastPassBackgroundSystemTask
- (id)processingTaskWithCancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation MADPhotosSceneFastPassBackgroundSystemTask

- (id)processingTaskWithCancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v5 = [MADPhotosSceneFastPassProcessingTask taskWithCancelBlock:block progressHandler:handler andCompletionHandler:completionHandler];

  return v5;
}

@end