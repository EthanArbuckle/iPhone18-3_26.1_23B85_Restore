@interface IXSInstallProgressServer
- (void)progressServer:(id)a3 requestCancelForIdentity:(id)a4 withReason:(id)a5 fromClient:(unint64_t)a6;
@end

@implementation IXSInstallProgressServer

- (void)progressServer:(id)a3 requestCancelForIdentity:(id)a4 withReason:(id)a5 fromClient:(unint64_t)a6
{
  v8 = a5;
  v9 = a4;
  v10 = [v9 personaUniqueString];
  v11 = [IXApplicationIdentity alloc];
  v12 = [v9 bundleIdentifier];

  if (v10)
  {
    v13 = [(IXApplicationIdentity *)v11 initWithBundleIdentifier:v12 personaUniqueString:v10];
  }

  else
  {
    v13 = [(IXApplicationIdentity *)v11 initWithBundleIdentifier:v12];
  }

  v14 = v13;

  v15 = +[IXSCoordinatorManager sharedInstance];
  v16 = [v15 coordinatorForIdentity:v14];

  if (v16)
  {
    [v16 cancelForReason:v8 client:a6 error:0];
  }

  else
  {
    v17 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[IXSInstallProgressServer progressServer:requestCancelForIdentity:withReason:fromClient:]";
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: Failed to fetch the coordinator for %@", &v18, 0x16u);
    }
  }
}

@end