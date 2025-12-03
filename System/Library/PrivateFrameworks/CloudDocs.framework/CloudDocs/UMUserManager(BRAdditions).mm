@interface UMUserManager(BRAdditions)
+ (BOOL)_isInSyncBubble;
+ (uint64_t)br_isInSyncBubble;
- (__CFString)br_currentPersonaID;
@end

@implementation UMUserManager(BRAdditions)

- (__CFString)br_currentPersonaID
{
  currentPersona = [self currentPersona];
  v2 = currentPersona;
  if (currentPersona)
  {
    br_personaID = [currentPersona br_personaID];
  }

  else
  {
    br_personaID = @"__defaultPersonaID__";
  }

  return br_personaID;
}

+ (uint64_t)br_isInSyncBubble
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__UMUserManager_BRAdditions__br_isInSyncBubble__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (br_isInSyncBubble_onceToken != -1)
  {
    dispatch_once(&br_isInSyncBubble_onceToken, block);
  }

  return br_isInSyncBubble_res;
}

+ (BOOL)_isInSyncBubble
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  if ([mEMORY[0x1E69DF068] isSharedIPad])
  {
    currentUser = [mEMORY[0x1E69DF068] currentUser];
    v2 = [currentUser uid];
    v3 = v2 != geteuid();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end