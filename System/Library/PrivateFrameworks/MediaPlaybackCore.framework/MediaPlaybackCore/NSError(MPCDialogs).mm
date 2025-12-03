@interface NSError(MPCDialogs)
- (id)mpc_remoteCommandStatus;
@end

@implementation NSError(MPCDialogs)

- (id)mpc_remoteCommandStatus
{
  v2 = [self msv_firstValueForUserInfoKey:@"MPCErrorUserInfoKeyRemoteCommandStatusCode"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 200;
  }

  v5 = [self msv_firstValueForUserInfoKey:@"MPCErrorUserInfoKeyRemoteDialog"];
  if (v5)
  {
    goto LABEL_5;
  }

  if (self && (_os_feature_enabled_impl() & 1) == 0)
  {
    v9 = [self msv_errorByUnwrappingDomain:*MEMORY[0x1E69B1380]];
    if (v9)
    {
      v10 = MEMORY[0x1E69708E8];
      mediaPlaybackCoreBundle = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
      v12 = [mediaPlaybackCoreBundle localizedStringForKey:@"LIVE_LINK_UNABLE_TO_SHAREPLAY_ALERT_TITLE" value:&stru_1F454A698 table:@"MediaPlaybackCore"];
      localizedDescription = [v9 localizedDescription];
      v5 = [v10 dialogWithTitle:v12 message:localizedDescription];

      v14 = MEMORY[0x1E69708F0];
      mediaPlaybackCoreBundle2 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
      mediaPlaybackCoreBundle4 = [mediaPlaybackCoreBundle2 localizedStringForKey:@"LIVE_LINK_UNABLE_TO_SHAREPLAY_ALERT_ACTION" value:&stru_1F454A698 table:@"MediaPlaybackCore"];
      v17 = [v14 actionWithTitle:mediaPlaybackCoreBundle4 type:0 commandEvent:0];
      [v5 addAction:v17];
    }

    else
    {
      mediaPlaybackCoreBundle2 = [self msv_errorByUnwrappingDomain:*MEMORY[0x1E69E41C0]];
      if (!mediaPlaybackCoreBundle2)
      {
        v5 = 0;
LABEL_17:

        if (v5)
        {
LABEL_5:
          v6 = [MEMORY[0x1E69708F8] statusWithCode:integerValue dialog:v5];
          goto LABEL_6;
        }

        goto LABEL_18;
      }

      v18 = MEMORY[0x1E69708E8];
      mediaPlaybackCoreBundle3 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
      v20 = [mediaPlaybackCoreBundle3 localizedStringForKey:@"LIVE_LINK_UNABLE_TO_SHAREPLAY_ALERT_TITLE" value:&stru_1F454A698 table:@"MediaPlaybackCore"];
      localizedDescription2 = [mediaPlaybackCoreBundle2 localizedDescription];
      v5 = [v18 dialogWithTitle:v20 message:localizedDescription2];

      v22 = [MEMORY[0x1E69708F0] actionWithTitle:@"MPC_PLAY_ONLY_FOR_ME" type:0 commandEvent:0];
      [v5 addAction:v22];

      v23 = MEMORY[0x1E69708F0];
      mediaPlaybackCoreBundle4 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
      v17 = [mediaPlaybackCoreBundle4 localizedStringForKey:@"LIVE_LINK_UNABLE_TO_SHAREPLAY_ALERT_ACTION" value:&stru_1F454A698 table:@"MediaPlaybackCore"];
      v24 = [v23 actionWithTitle:v17 type:0 commandEvent:0];
      [v5 addAction:v24];
    }

    goto LABEL_17;
  }

LABEL_18:
  v5 = [self msv_firstValueForUserInfoKey:@"MPCErrorUserInfoKeyCustomDataType"];
  if (v5)
  {
    v25 = [self msv_firstValueForUserInfoKey:@"MPCErrorUserInfoKeyCustomData"];
    v26 = v25;
    if (v25)
    {
      data = v25;
    }

    else
    {
      data = [MEMORY[0x1E695DEF0] data];
    }

    v28 = data;

    v7 = [MEMORY[0x1E69708F8] statusWithCode:integerValue customData:v28 type:v5];

    goto LABEL_7;
  }

  v6 = [MEMORY[0x1E69708F8] statusWithCode:integerValue error:self];
LABEL_6:
  v7 = v6;
LABEL_7:

  return v7;
}

@end