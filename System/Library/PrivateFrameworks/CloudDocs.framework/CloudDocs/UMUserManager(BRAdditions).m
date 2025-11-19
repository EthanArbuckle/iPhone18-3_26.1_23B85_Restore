@interface UMUserManager(BRAdditions)
+ (BOOL)_isInSyncBubble;
+ (uint64_t)br_isInSyncBubble;
- (__CFString)br_currentPersonaID;
@end

@implementation UMUserManager(BRAdditions)

- (__CFString)br_currentPersonaID
{
  v1 = [a1 currentPersona];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 br_personaID];
  }

  else
  {
    v3 = @"__defaultPersonaID__";
  }

  return v3;
}

+ (uint64_t)br_isInSyncBubble
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__UMUserManager_BRAdditions__br_isInSyncBubble__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (br_isInSyncBubble_onceToken != -1)
  {
    dispatch_once(&br_isInSyncBubble_onceToken, block);
  }

  return br_isInSyncBubble_res;
}

+ (BOOL)_isInSyncBubble
{
  v0 = [MEMORY[0x1E69DF068] sharedManager];
  if ([v0 isSharedIPad])
  {
    v1 = [v0 currentUser];
    v2 = [v1 uid];
    v3 = v2 != geteuid();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end