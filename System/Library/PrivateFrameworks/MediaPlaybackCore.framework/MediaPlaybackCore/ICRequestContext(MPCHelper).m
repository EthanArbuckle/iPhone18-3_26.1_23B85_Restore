@interface ICRequestContext(MPCHelper)
- (id)mpc_tag;
- (uint64_t)mpc_setTag:()MPCHelper;
@end

@implementation ICRequestContext(MPCHelper)

- (uint64_t)mpc_setTag:()MPCHelper
{
  v7 = a3;
  v4 = objc_opt_respondsToSelector();
  v5 = v7;
  if (v4)
  {
    v4 = [a1 setTag:v7];
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

- (id)mpc_tag
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 tag];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v2 = 0;
LABEL_5:

  return v2;
}

@end