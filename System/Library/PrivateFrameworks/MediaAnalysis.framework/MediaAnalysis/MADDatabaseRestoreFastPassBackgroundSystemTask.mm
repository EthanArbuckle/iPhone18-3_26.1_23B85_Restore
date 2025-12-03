@interface MADDatabaseRestoreFastPassBackgroundSystemTask
- (id)processingTaskWithCancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation MADDatabaseRestoreFastPassBackgroundSystemTask

- (id)processingTaskWithCancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v5 = [MADDatabaseRestoreFastPassProcessingTask taskWithCancelBlock:block progressHandler:handler andCompletionHandler:completionHandler];

  return v5;
}

@end