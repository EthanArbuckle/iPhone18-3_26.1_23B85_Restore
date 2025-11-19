@interface GKLocalPlayer(UIExtras)
+ (id)currentLocalPlayer;
@end

@implementation GKLocalPlayer(UIExtras)

+ (id)currentLocalPlayer
{
  if (currentLocalPlayer_sDispatchOnceToken != -1)
  {
    +[GKLocalPlayer(UIExtras) currentLocalPlayer];
  }

  if ([currentLocalPlayer_sCurrentLocalPlayer hasAcknowledgedLatestGDPR])
  {
    v0 = currentLocalPlayer_sCurrentLocalPlayer;
  }

  else
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v1 = GKOSLoggers();
    }

    v2 = *MEMORY[0x277D0C260];
    if (os_log_type_enabled(*MEMORY[0x277D0C260], OS_LOG_TYPE_ERROR))
    {
      +[(GKLocalPlayer(UIExtras) *)v2];
    }

    v0 = 0;
  }

  return v0;
}

@end