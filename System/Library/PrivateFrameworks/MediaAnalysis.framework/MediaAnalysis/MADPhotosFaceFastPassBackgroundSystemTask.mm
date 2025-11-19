@interface MADPhotosFaceFastPassBackgroundSystemTask
- (id)processingTaskWithCancelBlock:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
@end

@implementation MADPhotosFaceFastPassBackgroundSystemTask

- (id)processingTaskWithCancelBlock:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v5 = [MADPhotosFaceFastPassProcessingTask taskWithCancelBlock:a3 progressHandler:a4 andCompletionHandler:a5];

  return v5;
}

@end