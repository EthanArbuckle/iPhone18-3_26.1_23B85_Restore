@interface MADPhotosFaceFastPassBackgroundSystemTask
- (id)processingTaskWithCancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation MADPhotosFaceFastPassBackgroundSystemTask

- (id)processingTaskWithCancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v5 = [MADPhotosFaceFastPassProcessingTask taskWithCancelBlock:block progressHandler:handler andCompletionHandler:completionHandler];

  return v5;
}

@end