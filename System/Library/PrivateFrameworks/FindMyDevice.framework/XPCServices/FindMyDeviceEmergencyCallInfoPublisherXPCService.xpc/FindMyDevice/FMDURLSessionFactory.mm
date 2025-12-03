@interface FMDURLSessionFactory
+ (id)sessionWithConfiguration:(id)configuration delegate:(id)delegate delegateQueue:(id)queue;
@end

@implementation FMDURLSessionFactory

+ (id)sessionWithConfiguration:(id)configuration delegate:(id)delegate delegateQueue:(id)queue
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  queueCopy = queue;
  v10 = +[FMSystemInfo sharedInstance];
  isInternalBuild = [v10 isInternalBuild];

  if (isInternalBuild && (v12 = [FMPreferencesUtil BOOLForKey:@"RedirectServerToFile" inDomain:kFMDNotBackedUpPrefDomain], v13 = [FMPreferencesUtil integerForKey:@"RequestTimeoutSeconds" inDomain:kFMDNotBackedUpPrefDomain], v14 = [FMPreferencesUtil integerForKey:@"UseSimpleFilePath" inDomain:kFMDNotBackedUpPrefDomain], v12))
  {
    v15 = v14 != 0;
    v16 = v13;
    v17 = +[FMDAutomationHelperFactory sharedFactory];
    v18 = [v17 automationHelperClassWithName:@"FMDFileURLSession"];

    v19 = [v18 alloc];
    underlyingQueue = [queueCopy underlyingQueue];
    v21 = [v19 initWithConfiguration:configurationCopy delegate:delegateCopy delegateQueue:underlyingQueue];

    [(FMDNSURLSession *)v21 setRequestTimeout:v16];
    [(FMDNSURLSession *)v21 setUseSimpleFilePath:v15];
  }

  else
  {
    v21 = objc_alloc_init(FMDNSURLSession);
    v22 = [NSURLSession sessionWithConfiguration:configurationCopy delegate:v21 delegateQueue:queueCopy];
    [(FMDNSURLSession *)v21 setSession:v22];
    [(FMDNSURLSession *)v21 setDelegate:delegateCopy];
  }

  return v21;
}

@end