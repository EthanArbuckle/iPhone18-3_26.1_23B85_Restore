@interface QuickTypePFLBackgroundTask
- (QuickTypePFLBackgroundTask)initWithCoder:(id)coder;
- (QuickTypePFLBackgroundTask)initWithURL:(id)l;
- (id)activityForScheduling;
- (void)activityForScheduling;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QuickTypePFLBackgroundTask

- (QuickTypePFLBackgroundTask)initWithURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = QuickTypePFLBackgroundTask;
  v5 = [(MLBackgroundTask *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(QuickTypePFLBackgroundTask *)v5 setUrl:lCopy];
  }

  return v6;
}

- (id)activityForScheduling
{
  v17[1] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v15];
  v4 = v15;
  if (v3)
  {
    v5 = MEMORY[0x277D06A00];
    v6 = *MEMORY[0x277D06AA0];
    v7 = *MEMORY[0x277D06A90];
    v8 = *MEMORY[0x277D06A58];
    date = [MEMORY[0x277CBEAA8] date];
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v11 = [v5 extensionLaunchActivityWithName:@"com.apple.NLPLearner.QuickTypePFLExtension" priority:v6 forExtensionIdentifier:@"com.apple.NLPLearner.QuickTypePFLExtension" withReason:v7 duration:v8 startingAfter:date startingBefore:distantFuture];

    v16 = @"QuickTypePFLBackgroundTask";
    v17[0] = v3;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [v11 setUserInfo:v12];

    [v11 setRequiresDeviceInactivity:1];
    [v11 setCpuIntensive:1];
    [v11 setRequiresPlugin:1];
    [v11 setMemoryIntensive:1];
    [v11 setRequiresNetwork:1];
    [v11 setRequiresInexpensiveNetworking:1];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(QuickTypePFLBackgroundTask *)self activityForScheduling];
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = QuickTypePFLBackgroundTask;
  coderCopy = coder;
  [(MLBackgroundTask *)&v6 encodeWithCoder:coderCopy];
  v5 = [(QuickTypePFLBackgroundTask *)self url:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"url"];
}

- (QuickTypePFLBackgroundTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = QuickTypePFLBackgroundTask;
  v5 = [(MLBackgroundTask *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    [(QuickTypePFLBackgroundTask *)v5 setUrl:v6];
  }

  return v5;
}

- (void)activityForScheduling
{
  v9 = *MEMORY[0x277D85DE8];
  taskIdentifier = [self taskIdentifier];
  v5 = 138412546;
  v6 = taskIdentifier;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_25AE22000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to archive task %@: %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end