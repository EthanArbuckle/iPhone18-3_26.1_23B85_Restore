@interface FLUtilities
+ (BOOL)launchPasswordChangeForAppleID:(id)d;
+ (BOOL)launchPasswordResetForAppleID:(id)d;
+ (void)tapToRadarWithTitle:(id)title initialMessage:(id)message;
@end

@implementation FLUtilities

+ (void)tapToRadarWithTitle:(id)title initialMessage:(id)message
{
  messageCopy = message;
  v5 = MEMORY[0x277CCACE0];
  titleCopy = title;
  v7 = objc_alloc_init(v5);
  [v7 setScheme:@"tap-to-radar"];
  [v7 setHost:@"new"];
  array = [MEMORY[0x277CBEB18] array];
  v9 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentName" value:@"FollowUp"];
  [array addObject:v9];

  v10 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentVersion" value:@"iOS"];
  [array addObject:v10];

  v11 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentID" value:@"637431"];
  [array addObject:v11];

  v12 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Classification" value:@"Serious Bug"];
  [array addObject:v12];

  v13 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Reproducibility" value:@"I Didn't Try"];
  [array addObject:v13];

  v14 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"AutoDiagnostics" value:@"phone"];
  [array addObject:v14];

  v15 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Title" value:titleCopy];
  [array addObject:v15];

  if (messageCopy)
  {
    v16 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Description" value:messageCopy];
    [array addObject:v16];
  }

  [v7 setQueryItems:array];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v18 = [v7 URL];
  [defaultWorkspace openURL:v18];
}

+ (BOOL)launchPasswordResetForAppleID:(id)d
{
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [FLUtilities launchPasswordResetForAppleID:v3];
  }

  return 0;
}

+ (BOOL)launchPasswordChangeForAppleID:(id)d
{
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [FLUtilities launchPasswordChangeForAppleID:v3];
  }

  return 0;
}

@end