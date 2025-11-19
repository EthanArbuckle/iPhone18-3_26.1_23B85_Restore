@interface NSFileManager(FeedbackLogger)
- (id)feedbackLoggerDirectoryURL;
- (id)urlForStoreWithId:()FeedbackLogger;
@end

@implementation NSFileManager(FeedbackLogger)

- (id)urlForStoreWithId:()FeedbackLogger
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 feedbackLoggerDirectoryURL];
  v6 = [v5 URLByAppendingPathComponent:v4 isDirectory:1];

  if (v6)
  {
    v11 = *MEMORY[0x277CCA180];
    v12[0] = &unk_285E1AE98;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [a1 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:v7 error:0];
  }

  v8 = [v6 URLByAppendingPathComponent:@"data.sqlite" isDirectory:0];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)feedbackLoggerDirectoryURL
{
  v1 = [a1 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:0];
  v2 = [v1 URLByAppendingPathComponent:@"com.apple.feedbacklogger" isDirectory:1];

  return v2;
}

@end