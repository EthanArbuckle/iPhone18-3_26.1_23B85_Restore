@interface GPUserExperienceProxy
+ (id)proxy;
- (void)launchGameOverlayWithOptions:(unint64_t)options reply:(id)reply;
@end

@implementation GPUserExperienceProxy

+ (id)proxy
{
  v2 = objc_opt_new();

  return v2;
}

- (void)launchGameOverlayWithOptions:(unint64_t)options reply:(id)reply
{
  replyCopy = reply;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__GPUserExperienceProxy_launchGameOverlayWithOptions_reply___block_invoke;
  v7[3] = &unk_2796857C8;
  v8 = replyCopy;
  v6 = replyCopy;
  [_TtC10GamePolicy37GamePolicyDaemonPrivilegedProxyBridge requestLaunchGameOverlayWithConditional:options & 1 fallbackToApp:(options >> 1) & 1 withReply:v7];
}

uint64_t __60__GPUserExperienceProxy_launchGameOverlayWithOptions_reply___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 32);
  if (result)
  {
    if ((a2 & a3) != 0)
    {
      a2 = 2;
    }

    else
    {
      a2 = a2;
    }

    return (*(result + 16))(result, a2);
  }

  return result;
}

@end