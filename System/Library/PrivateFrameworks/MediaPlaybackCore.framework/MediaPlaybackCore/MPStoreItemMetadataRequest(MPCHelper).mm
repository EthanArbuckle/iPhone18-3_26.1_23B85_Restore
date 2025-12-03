@interface MPStoreItemMetadataRequest(MPCHelper)
- (id)mpc_requestContextTag;
- (uint64_t)mpc_setRequestContextTag:()MPCHelper;
@end

@implementation MPStoreItemMetadataRequest(MPCHelper)

- (uint64_t)mpc_setRequestContextTag:()MPCHelper
{
  v7 = a3;
  enableRequestNotifications = objc_opt_respondsToSelector();
  v5 = v7;
  if (enableRequestNotifications)
  {
    enableRequestNotifications = [self setRequestContextTag:v7];
    v5 = v7;
    if (v7)
    {
      enableRequestNotifications = objc_opt_respondsToSelector();
      v5 = v7;
      if (enableRequestNotifications)
      {
        enableRequestNotifications = [self enableRequestNotifications];
        v5 = v7;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](enableRequestNotifications, v5);
}

- (id)mpc_requestContextTag
{
  if (objc_opt_respondsToSelector())
  {
    requestContextTag = [self requestContextTag];
  }

  else
  {
    requestContextTag = 0;
  }

  return requestContextTag;
}

@end