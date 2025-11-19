@interface FLUtilities
+ (BOOL)launchPasswordChangeForAppleID:(id)a3;
+ (BOOL)launchPasswordResetForAppleID:(id)a3;
+ (void)tapToRadarWithTitle:(id)a3 initialMessage:(id)a4;
@end

@implementation FLUtilities

+ (void)tapToRadarWithTitle:(id)a3 initialMessage:(id)a4
{
  v19 = a4;
  v5 = MEMORY[0x277CCACE0];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  [v7 setScheme:@"tap-to-radar"];
  [v7 setHost:@"new"];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentName" value:@"FollowUp"];
  [v8 addObject:v9];

  v10 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentVersion" value:@"iOS"];
  [v8 addObject:v10];

  v11 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentID" value:@"637431"];
  [v8 addObject:v11];

  v12 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Classification" value:@"Serious Bug"];
  [v8 addObject:v12];

  v13 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Reproducibility" value:@"I Didn't Try"];
  [v8 addObject:v13];

  v14 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"AutoDiagnostics" value:@"phone"];
  [v8 addObject:v14];

  v15 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Title" value:v6];
  [v8 addObject:v15];

  if (v19)
  {
    v16 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Description" value:v19];
    [v8 addObject:v16];
  }

  [v7 setQueryItems:v8];
  v17 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v18 = [v7 URL];
  [v17 openURL:v18];
}

+ (BOOL)launchPasswordResetForAppleID:(id)a3
{
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [FLUtilities launchPasswordResetForAppleID:v3];
  }

  return 0;
}

+ (BOOL)launchPasswordChangeForAppleID:(id)a3
{
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [FLUtilities launchPasswordChangeForAppleID:v3];
  }

  return 0;
}

@end