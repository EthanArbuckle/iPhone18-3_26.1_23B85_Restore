@interface FMDURLSessionFactory
+ (id)sessionWithConfiguration:(id)a3 delegate:(id)a4 delegateQueue:(id)a5;
@end

@implementation FMDURLSessionFactory

+ (id)sessionWithConfiguration:(id)a3 delegate:(id)a4 delegateQueue:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[FMSystemInfo sharedInstance];
  v11 = [v10 isInternalBuild];

  if (v11 && (v12 = [FMPreferencesUtil BOOLForKey:@"RedirectServerToFile" inDomain:kFMDNotBackedUpPrefDomain], v13 = [FMPreferencesUtil integerForKey:@"RequestTimeoutSeconds" inDomain:kFMDNotBackedUpPrefDomain], v14 = [FMPreferencesUtil integerForKey:@"UseSimpleFilePath" inDomain:kFMDNotBackedUpPrefDomain], v12))
  {
    v15 = v14 != 0;
    v16 = v13;
    v17 = +[FMDAutomationHelperFactory sharedFactory];
    v18 = [v17 automationHelperClassWithName:@"FMDFileURLSession"];

    v19 = [v18 alloc];
    v20 = [v9 underlyingQueue];
    v21 = [v19 initWithConfiguration:v7 delegate:v8 delegateQueue:v20];

    [(FMDNSURLSession *)v21 setRequestTimeout:v16];
    [(FMDNSURLSession *)v21 setUseSimpleFilePath:v15];
  }

  else
  {
    v21 = objc_alloc_init(FMDNSURLSession);
    v22 = [NSURLSession sessionWithConfiguration:v7 delegate:v21 delegateQueue:v9];
    [(FMDNSURLSession *)v21 setSession:v22];
    [(FMDNSURLSession *)v21 setDelegate:v8];
  }

  return v21;
}

@end