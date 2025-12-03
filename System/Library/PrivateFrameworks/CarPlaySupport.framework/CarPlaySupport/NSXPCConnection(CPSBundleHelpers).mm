@interface NSXPCConnection(CPSBundleHelpers)
- (id)cp_bundleIdentifier;
@end

@implementation NSXPCConnection(CPSBundleHelpers)

- (id)cp_bundleIdentifier
{
  location[2] = self;
  location[1] = a2;
  location[0] = [self valueForEntitlement:@"application-identifier"];
  if (location[0])
  {
    v11 = _CPAppIdentifierFromTeamAppTuple(location[0]);
    v9 = 1;
  }

  else
  {
    oslog = CarPlaySupportGeneralLogging();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v5 = type;
      __os_log_helper_16_0_0(v6);
      _os_log_error_impl(&dword_242FE8000, log, v5, "Unable to locate an application-identifier for the client app.", v6, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v11 = 0;
    v9 = 1;
  }

  objc_storeStrong(location, 0);
  v2 = v11;

  return v2;
}

@end