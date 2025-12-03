@interface IXSInstallProgressServer
- (void)progressServer:(id)server requestCancelForIdentity:(id)identity withReason:(id)reason fromClient:(unint64_t)client;
@end

@implementation IXSInstallProgressServer

- (void)progressServer:(id)server requestCancelForIdentity:(id)identity withReason:(id)reason fromClient:(unint64_t)client
{
  reasonCopy = reason;
  identityCopy = identity;
  personaUniqueString = [identityCopy personaUniqueString];
  v11 = [IXApplicationIdentity alloc];
  bundleIdentifier = [identityCopy bundleIdentifier];

  if (personaUniqueString)
  {
    v13 = [(IXApplicationIdentity *)v11 initWithBundleIdentifier:bundleIdentifier personaUniqueString:personaUniqueString];
  }

  else
  {
    v13 = [(IXApplicationIdentity *)v11 initWithBundleIdentifier:bundleIdentifier];
  }

  v14 = v13;

  v15 = +[IXSCoordinatorManager sharedInstance];
  v16 = [v15 coordinatorForIdentity:v14];

  if (v16)
  {
    [v16 cancelForReason:reasonCopy client:client error:0];
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