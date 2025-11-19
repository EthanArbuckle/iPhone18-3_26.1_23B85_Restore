@interface MPStoreItemMetadataRequest(MPCHelper)
- (id)mpc_requestContextTag;
- (uint64_t)mpc_setRequestContextTag:()MPCHelper;
@end

@implementation MPStoreItemMetadataRequest(MPCHelper)

- (uint64_t)mpc_setRequestContextTag:()MPCHelper
{
  v7 = a3;
  v4 = objc_opt_respondsToSelector();
  v5 = v7;
  if (v4)
  {
    v4 = [a1 setRequestContextTag:v7];
    v5 = v7;
    if (v7)
    {
      v4 = objc_opt_respondsToSelector();
      v5 = v7;
      if (v4)
      {
        v4 = [a1 enableRequestNotifications];
        v5 = v7;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (id)mpc_requestContextTag
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 requestContextTag];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end