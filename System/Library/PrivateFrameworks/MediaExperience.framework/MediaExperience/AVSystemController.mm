@interface AVSystemController
+ (id)sharedInstance;
- (AVSystemController)init;
- (BOOL)addRemoteDeviceID:(id)d;
- (BOOL)changeActiveCategoryVolume:(BOOL)volume fallbackCategory:(id)category resultVolume:(float *)resultVolume affectedCategory:(id *)affectedCategory;
- (BOOL)changeActiveCategoryVolume:(BOOL)volume forRoute:(id)route andDeviceIdentifier:(id)identifier;
- (BOOL)changeActiveCategoryVolumeBy:(float)by fallbackCategory:(id)category resultVolume:(float *)volume affectedCategory:(id *)affectedCategory;
- (BOOL)changeActiveCategoryVolumeBy:(float)by forRoute:(id)route andDeviceIdentifier:(id)identifier;
- (BOOL)changeVolume:(BOOL)volume forCategory:(id)category mode:(id)mode;
- (BOOL)changeVolumeBy:(float)by forCategory:(id)category;
- (BOOL)changeVolumeForRoute:(BOOL)route forCategory:(id)category mode:(id)mode route:(id)a6 deviceIdentifier:(id)identifier andRouteSubtype:(id)subtype;
- (BOOL)changeVolumeForRouteBy:(float)by forCategory:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier andRouteSubtype:(id)subtype;
- (BOOL)currentRouteHasVolumeControl;
- (BOOL)getActiveCategoryMuted:(BOOL *)muted;
- (BOOL)getActiveCategoryMuted:(BOOL *)muted forRoute:(id)route andDeviceIdentifier:(id)identifier;
- (BOOL)getActiveCategoryVolume:(float *)volume andName:(id *)name fallbackCategory:(id)category;
- (BOOL)getActiveCategoryVolume:(float *)volume andName:(id *)name forRoute:(id)route andDeviceIdentifier:(id)identifier;
- (BOOL)getSilentMode;
- (BOOL)getSilentMode:(BOOL *)mode error:(id *)error;
- (BOOL)getVibeIntensity:(float *)intensity;
- (BOOL)getVolume:(float *)volume forCategory:(id)category mode:(id)mode;
- (BOOL)getVolumeForRoute:(float *)route forCategory:(id)category mode:(id)mode route:(id)a6 deviceIdentifier:(id)identifier andRouteSubtype:(id)subtype;
- (BOOL)hasRouteSharingPolicyLongFormVideo:(id)video;
- (BOOL)overrideToPartnerRoute;
- (BOOL)remoteDeviceControlIsAllowed:(unsigned int *)allowed;
- (BOOL)removeRemoteDeviceID:(id)d;
- (BOOL)setActiveCategoryVolumeTo:(float)to fallbackCategory:(id)category resultVolume:(float *)volume affectedCategory:(id *)affectedCategory;
- (BOOL)setActiveCategoryVolumeTo:(float)to forRoute:(id)route andDeviceIdentifier:(id)identifier;
- (BOOL)setPickedRouteWithPassword:(id)password withPassword:(id)withPassword;
- (BOOL)setVibeIntensityTo:(float)to;
- (BOOL)setVolumeForRouteTo:(float)to forCategory:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier andRouteSubtype:(id)subtype;
- (BOOL)setVolumeTo:(float)to forCategory:(id)category mode:(id)mode;
- (BOOL)setVolumeTo:(float)to forCategory:(id)category retainFullMute:(BOOL)mute;
- (BOOL)toggleActiveCategoryMuted;
- (BOOL)toggleActiveCategoryMutedForRoute:(id)route andDeviceIdentifier:(id)identifier;
- (id)errorWithCode:(int)code description:(id)description;
- (id)pickableRoutesForCategory:(id)category;
- (id)pickableRoutesForCategory:(id)category andMode:(id)mode;
- (id)routeForCategory:(id)category;
- (id)topOfNowPlayingAppStack;
- (id)volumeCategoryForAudioCategory:(id)category;
- (int)allowAppToInitiateRecordingTemporarily:(id)temporarily;
- (int)clearUplinkMutedCache;
- (int)getDuckScalarForVoiceOver:(float *)over;
- (int)getInputMute:(id *)mute outMuteValue:(BOOL *)value;
- (int)getVolume:(float *)volume category:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier routeSubtype:(id)subtype;
- (int)getVolumeButtonDelta:(id)delta outVolumeDelta:(float *)volumeDelta;
- (int)grantMediaEndowmentWithEnvironmentID:(id)d endowmentPayload:(id)payload;
- (int)popNowPlayingAppStack;
- (int)revokeMediaEndowmentWithEnvironmentID:(id)d;
- (int)setDuckScalarForVoiceOver:(float)over;
- (int)setVolume:(float)volume category:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)duration rampDownDuration:(float)self0;
- (int)setVolume:(float)volume category:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)duration rampDownDuration:(float)self0 retainFullMute:(BOOL)self1;
- (int)setVolume:(float)volume category:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpwardDuration:(id)duration rampDownwardDuration:(id)self0;
- (int)toggleInputMute;
- (int)volumeCategoryAndMode:(id)mode mode:(id)a4 outCategory:(id *)category outMode:(id *)outMode;
- (void)dealloc;
- (void)handleServerDied;
- (void)postEffectiveVolumeNotification:(id)notification;
- (void)postFullMuteDidChangeNotification:(id)notification;
- (void)releaseSharedInstance;
@end

@implementation AVSystemController

+ (id)sharedInstance
{
  v9 = *MEMORY[0x1E69E9840];
  if (sharedInstance_onceToken_7 != -1)
  {
    +[AVSystemController sharedInstance];
  }

  [gSharedInstanceLock lock];
  v2 = gSharedInstance;
  if (!gSharedInstance)
  {
    v6 = 1;
    do
    {
      v2 = objc_alloc_init(AVSystemController);
      gSharedInstance = v2;
      if (v2)
      {
        break;
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v2 = gSharedInstance;
      if (gSharedInstance)
      {
        break;
      }
    }

    while (v6++ < 3);
  }

  v3 = v2;
  [gSharedInstanceLock unlock];
  result = gSharedInstance;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

id __36__AVSystemController_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E696AE68]);
  gSharedInstanceLock = result;
  return result;
}

- (AVSystemController)init
{
  [(AVSystemControllerCommon *)self setSelfWeak:self];
  v6.receiver = self;
  v6.super_class = AVSystemController;
  v3 = [(AVSystemControllerCommon *)&v6 init];
  v4 = v3;
  if (v3)
  {
    v3->mCategory = 0;
    v3->mFullMute = 0;
    v3->mVolume = 0.0;
    v3->mRemoteDeviceIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4->mRemoteDeviceIDsLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v4->mFigController = [(AVSystemControllerCommon *)v4 copyFigController];
  }

  return v4;
}

- (BOOL)currentRouteHasVolumeControl
{
  cf = 0;
  mFigController = self->mFigController;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 1;
  }

  v4 = v3(mFigController, @"CurrentRouteHasVolumeControl", *MEMORY[0x1E695E480], &cf);
  v5 = cf;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = cf == 0;
  }

  if (!v6)
  {
    v7 = CFGetTypeID(cf);
    TypeID = CFBooleanGetTypeID();
    v5 = cf;
    if (v7 == TypeID)
    {
      v9 = CFBooleanGetValue(cf) != 0;
      v5 = cf;
      if (!cf)
      {
        return v9;
      }

      goto LABEL_11;
    }
  }

  v9 = 1;
  if (v5)
  {
LABEL_11:
    CFRelease(v5);
  }

  return v9;
}

- (id)errorWithCode:(int)code description:(id)description
{
  descriptionCopy = description;
  if (description)
  {
    v6 = objc_alloc(MEMORY[0x1E695DF20]);
    descriptionCopy = [v6 initWithObjectsAndKeys:{descriptionCopy, *MEMORY[0x1E696A578], 0}];
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:code userInfo:descriptionCopy];

  return v7;
}

- (void)handleServerDied
{
  [(AVSystemController(InternalUse) *)self releaseSharedInstance];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = AVSystemController_ServerConnectionDiedNotification;

  [defaultCenter postNotificationName:v4 object:self];
}

- (void)postEffectiveVolumeNotification:(id)notification
{
  v23 = 1065353216;
  v5 = [notification objectForKey:@"Volume"];
  v6 = [notification objectForKey:@"AudioCategory"];
  v24 = v6;
  v7 = [notification objectForKey:@"Reason"];
  v8 = [notification objectForKey:@"SilenceVolumeHUD"];
  v9 = [notification objectForKey:@"ActiveAudioCategory"];
  if (!v8)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:0];
  }

  mCategory = self->mCategory;
  if (!mCategory)
  {
    if (v6)
    {
      if (v5)
      {
        [v5 floatValue];
LABEL_16:
        self->mVolume = v13;
        v14 = v24;
        self->mCategory = v24;
        goto LABEL_17;
      }

      [(AVSystemController *)self getVolume:&v23 forCategory:v6 mode:0];
    }

    else
    {
      [(AVSystemController *)self getActiveCategoryVolume:&v23 andName:&v24];
    }

    v13 = *&v23;
    goto LABEL_16;
  }

  if (v6)
  {

    v11 = v6;
    self->mCategory = v6;
  }

  if (v5)
  {
    [v5 floatValue];
  }

  else
  {
    [(AVSystemController *)self getActiveCategoryVolume:&v23 andName:&v24];
    v12 = *&v23;
  }

  self->mVolume = v12;
LABEL_17:
  v15 = self->mCategory;
  mVolume = 0.0;
  if (!self->mFullMute)
  {
    mVolume = self->mVolume;
  }

  v23 = LODWORD(mVolume);
  if (v7)
  {
    v17 = v7;
  }

  else
  {
    v17 = @"FullMuteChange";
  }

  v18 = objc_alloc(MEMORY[0x1E696AD98]);
  LODWORD(v19) = v23;
  v20 = [v18 initWithFloat:v19];
  v21 = objc_alloc(MEMORY[0x1E695DF20]);
  v22 = [v21 initWithObjectsAndKeys:{v15, AVSystemController_EffectiveVolumeNotificationParameter_Category, v20, AVSystemController_EffectiveVolumeNotificationParameter_Volume, v17, AVSystemController_EffectiveVolumeNotificationParameter_VolumeChangeReason, v8, AVSystemController_EffectiveVolumeNotificationParameter_SilenceVolumeHUD, v9, AVSystemController_EffectiveVolumeNotificationParameter_ActiveAudioCategory, 0}];
  [(AVSystemControllerCommon *)AVSystemController postNotificationOnMainQueue:v22 notification:AVSystemController_EffectiveVolumeDidChangeNotification object:self];
}

- (void)postFullMuteDidChangeNotification:(id)notification
{
  v4 = [notification objectForKey:@"FullMuted"];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *MEMORY[0x1E695E4C0];
  }

  v6 = objc_alloc(MEMORY[0x1E695DF20]);
  v7 = [v6 initWithObjectsAndKeys:{v5, AVSystemController_AudioFullMutedNotificationParameter, 0}];
  self->mFullMute = CFBooleanGetValue(v5) != 0;
  [(AVSystemControllerCommon *)AVSystemController postNotificationOnMainQueue:v7 notification:AVSystemController_FullMuteDidChangeNotification object:self];
}

- (void)dealloc
{
  mCategory = self->mCategory;
  if (mCategory)
  {
    CFRelease(mCategory);
  }

  self->mRemoteDeviceIDs = 0;
  self->mRemoteDeviceIDsLock = 0;
  mFigController = self->mFigController;
  if (mFigController)
  {
    CFRelease(mFigController);
  }

  v5.receiver = self;
  v5.super_class = AVSystemController;
  [(AVSystemControllerCommon *)&v5 dealloc];
}

- (void)releaseSharedInstance
{
  [gSharedInstanceLock lock];
  if (gSharedInstance == self)
  {
    v3 = gSharedInstance;
    gSharedInstance = 0;
  }

  v4 = gSharedInstanceLock;

  [v4 unlock];
}

- (BOOL)changeActiveCategoryVolumeBy:(float)by fallbackCategory:(id)category resultVolume:(float *)volume affectedCategory:(id *)affectedCategory
{
  if (affectedCategory)
  {
    *affectedCategory = 0;
  }

  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v11 = *(*(VTable + 16) + 8);
  if (v11)
  {
    v12 = *(VTable + 16) + 8;
    v13 = v11(mFigController, 1, 0, 0, 0, 0, 0, volume, by, 0.0, 0.0, 0, affectedCategory, 0, 0) == 0;
    if (!affectedCategory)
    {
      return v13;
    }

    goto LABEL_7;
  }

  v13 = 0;
  if (affectedCategory)
  {
LABEL_7:
    v14 = *affectedCategory;
  }

  return v13;
}

- (BOOL)changeActiveCategoryVolume:(BOOL)volume fallbackCategory:(id)category resultVolume:(float *)resultVolume affectedCategory:(id *)affectedCategory
{
  if (affectedCategory)
  {
    *affectedCategory = 0;
  }

  if (volume)
  {
    v8 = 0.0625;
  }

  else
  {
    v8 = -0.0625;
  }

  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v11 = *(*(VTable + 16) + 8);
  if (v11)
  {
    v12 = *(VTable + 16) + 8;
    v13 = v11(mFigController, 1, 0, 0, 0, 0, 0, resultVolume, v8, 0.0, 0.0, 0, affectedCategory, 0, 0) == 0;
    if (!affectedCategory)
    {
      return v13;
    }

    goto LABEL_10;
  }

  v13 = 0;
  if (affectedCategory)
  {
LABEL_10:
    v14 = *affectedCategory;
  }

  return v13;
}

- (BOOL)setVibeIntensityTo:(float)to
{
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = to;
  v7 = [v5 initWithFloat:v6];
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 8) + 56);
  if (v10)
  {
    v11 = *(VTable + 8) + 56;
    v12 = v10(mFigController, @"VibeIntensity", v7) == 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)getVibeIntensity:(float *)intensity
{
  v12 = 0;
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 8) + 48);
  if (v6)
  {
    v7 = *(VTable + 8) + 48;
    v8 = v6(mFigController, @"VibeIntensity", *MEMORY[0x1E695E480], &v12) == 0;
    v9 = v12;
    if (!intensity)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = 0;
  v8 = 0;
  if (intensity)
  {
LABEL_5:
    [v9 floatValue];
    *intensity = v10;
    v9 = v12;
  }

LABEL_6:

  return v8;
}

- (BOOL)setActiveCategoryVolumeTo:(float)to fallbackCategory:(id)category resultVolume:(float *)volume affectedCategory:(id *)affectedCategory
{
  if (affectedCategory)
  {
    *affectedCategory = 0;
  }

  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v12 = *(*(VTable + 16) + 8);
  if (v12)
  {
    v13 = *(VTable + 16) + 8;
    v14 = v12(mFigController, 2, category, 0, 0, 0, 0, volume, to, 0.0, 0.0, 0, affectedCategory, 0, 0) == 0;
    if (!affectedCategory)
    {
      return v14;
    }

    goto LABEL_7;
  }

  v14 = 0;
  if (affectedCategory)
  {
LABEL_7:
    v15 = *affectedCategory;
  }

  return v14;
}

- (BOOL)getActiveCategoryVolume:(float *)volume andName:(id *)name fallbackCategory:(id)category
{
  if (name)
  {
    *name = 0;
  }

  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 16) + 8);
  if (v10)
  {
    v11 = *(VTable + 16) + 8;
    v12 = v10(mFigController, 3, category, 0, 0, 0, 0, volume, 0.0, 0.0, 0.0, 0, name, 0, 0) == 0;
    if (!name)
    {
      return v12;
    }

    goto LABEL_7;
  }

  v12 = 0;
  if (name)
  {
LABEL_7:
    v13 = *name;
  }

  return v12;
}

- (BOOL)changeActiveCategoryVolumeBy:(float)by forRoute:(id)route andDeviceIdentifier:(id)identifier
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 16) + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = *(VTable + 16) + 8;
  return v10(mFigController, 4, 0, 0, route, identifier, 0, 0, by, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)changeActiveCategoryVolume:(BOOL)volume forRoute:(id)route andDeviceIdentifier:(id)identifier
{
  if (volume)
  {
    v7 = 0.0625;
  }

  else
  {
    v7 = -0.0625;
  }

  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 16) + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = *(VTable + 16) + 8;
  return v10(mFigController, 4, 0, 0, route, identifier, 0, 0, v7, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)setActiveCategoryVolumeTo:(float)to forRoute:(id)route andDeviceIdentifier:(id)identifier
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 16) + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = *(VTable + 16) + 8;
  return v10(mFigController, 5, 0, 0, route, identifier, 0, 0, to, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)getActiveCategoryVolume:(float *)volume andName:(id *)name forRoute:(id)route andDeviceIdentifier:(id)identifier
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v11 = *(*(VTable + 16) + 8);
  if (!v11)
  {
    return 0;
  }

  v12 = *(VTable + 16) + 8;
  return v11(mFigController, 6, 0, 0, route, identifier, 0, volume, 0.0, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)changeVolumeForRouteBy:(float)by forCategory:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier andRouteSubtype:(id)subtype
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v15 = *(*(VTable + 16) + 8);
  if (!v15)
  {
    return 0;
  }

  v16 = *(VTable + 16) + 8;
  return v15(mFigController, 11, category, 0, route, identifier, subtype, 0, by, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)changeVolumeForRoute:(BOOL)route forCategory:(id)category mode:(id)mode route:(id)a6 deviceIdentifier:(id)identifier andRouteSubtype:(id)subtype
{
  if (route)
  {
    v12 = 0.0625;
  }

  else
  {
    v12 = -0.0625;
  }

  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v15 = *(*(VTable + 16) + 8);
  if (!v15)
  {
    return 0;
  }

  v16 = *(VTable + 16) + 8;
  return v15(mFigController, 11, category, 0, a6, identifier, subtype, 0, v12, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)setVolumeForRouteTo:(float)to forCategory:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier andRouteSubtype:(id)subtype
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v15 = *(*(VTable + 16) + 8);
  if (!v15)
  {
    return 0;
  }

  v16 = *(VTable + 16) + 8;
  return v15(mFigController, 12, category, 0, route, identifier, subtype, 0, to, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (int)setVolume:(float)volume category:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpwardDuration:(id)duration rampDownwardDuration:(id)self0
{
  mFigController = self->mFigController;
  [duration floatValue];
  v17 = v16;
  [downwardDuration floatValue];
  v19 = v18;
  VTable = CMBaseObjectGetVTable();
  v21 = *(*(VTable + 16) + 8);
  if (!v21)
  {
    return -12782;
  }

  v22 = *(VTable + 16) + 8;
  return v21(mFigController, 12, category, 0, route, identifier, subtype, 0, volume, v17, v19, 0, 0, 0, 0);
}

- (int)setVolume:(float)volume category:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)duration rampDownDuration:(float)self0
{
  result = -12981;
  if (duration >= 0.0 && downDuration >= 0.0)
  {
    mFigController = self->mFigController;
    VTable = CMBaseObjectGetVTable();
    v21 = *(*(VTable + 16) + 8);
    if (v21)
    {
      v22 = *(VTable + 16) + 8;
      return v21(mFigController, 12, category, 0, route, identifier, subtype, 0, volume, duration, downDuration, 0, 0, 0, 0);
    }

    else
    {
      return -12782;
    }
  }

  return result;
}

- (int)setVolume:(float)volume category:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)duration rampDownDuration:(float)self0 retainFullMute:(BOOL)self1
{
  result = -12981;
  if (duration >= 0.0 && downDuration >= 0.0)
  {
    mFigController = self->mFigController;
    VTable = CMBaseObjectGetVTable();
    v23 = *(*(VTable + 16) + 8);
    if (v23)
    {
      v24 = *(VTable + 16) + 8;
      return v23(mFigController, 12, category, 0, route, identifier, subtype, 0, volume, duration, downDuration, 0, 0, 0, mute);
    }

    else
    {
      return -12782;
    }
  }

  return result;
}

- (BOOL)getVolumeForRoute:(float *)route forCategory:(id)category mode:(id)mode route:(id)a6 deviceIdentifier:(id)identifier andRouteSubtype:(id)subtype
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v15 = *(*(VTable + 16) + 8);
  if (!v15)
  {
    return 0;
  }

  v16 = *(VTable + 16) + 8;
  return v15(mFigController, 13, category, 0, a6, identifier, subtype, route, 0.0, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (int)getVolume:(float *)volume category:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier routeSubtype:(id)subtype
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v15 = *(*(VTable + 16) + 8);
  if (!v15)
  {
    return -12782;
  }

  v16 = *(VTable + 16) + 8;
  return v15(mFigController, 13, category, 0, route, identifier, subtype, volume, 0.0, 0.0, 0.0, 0, 0, 0, 0);
}

- (int)volumeCategoryAndMode:(id)mode mode:(id)a4 outCategory:(id *)category outMode:(id *)outMode
{
  v21[22] = *MEMORY[0x1E69E9840];
  v6 = -12980;
  if (category && outMode)
  {
    v20 = 0;
    v21[0] = 0;
    mFigController = self->mFigController;
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v12)
    {
      v6 = v12(mFigController, mode, a4, v21, &v20);
      if (!v6)
      {
        v14 = v20;
        v13 = v21[0];
        *category = v21[0];
        *outMode = v14;
        v15 = v13;
        v16 = v20;
        goto LABEL_8;
      }
    }

    else
    {
      v6 = -12782;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_8:
  v18 = *MEMORY[0x1E69E9840];
  return v6;
}

- (int)setDuckScalarForVoiceOver:(float)over
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = over;
  v7 = [v5 initWithFloat:v6];
  mFigController = self->mFigController;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v9)
  {
    v10 = v9(mFigController, @"DuckScalarForVoiceOver", v7);
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = -12782;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_6:

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (int)getDuckScalarForVoiceOver:(float *)over
{
  v11[22] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  mFigController = self->mFigController;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v6 = -12782;
    goto LABEL_6;
  }

  v6 = v5(mFigController, @"DuckScalarForVoiceOver", *MEMORY[0x1E695E480], v11);
  if (v6)
  {
LABEL_6:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_7;
  }

  if (over)
  {
    [v11[0] floatValue];
    v6 = 0;
    *over = v7;
  }

  else
  {
    v6 = 0;
  }

LABEL_7:

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (int)popNowPlayingAppStack
{
  v8 = *MEMORY[0x1E69E9840];
  mFigController = self->mFigController;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v3)
  {
    v4 = v3(mFigController, @"PopNowPlayingAppStack", 0);
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = -12782;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)topOfNowPlayingAppStack
{
  v8[22] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  mFigController = self->mFigController;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3 || v3(mFigController, @"TopOfNowPlayingAppStackDisplayID", *MEMORY[0x1E695E480], v8))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = v8[0];
  result = v8[0];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)toggleActiveCategoryMuted
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 16) + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = *(VTable + 16) + 8;
  return v4(mFigController, 7, 0, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)toggleActiveCategoryMutedForRoute:(id)route andDeviceIdentifier:(id)identifier
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 16) + 8);
  if (!v8)
  {
    return 0;
  }

  v9 = *(VTable + 16) + 8;
  return v8(mFigController, 9, 0, 0, route, identifier, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)getActiveCategoryMuted:(BOOL *)muted
{
  v10 = 0;
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 8);
  if (!v6)
  {
    return 0;
  }

  v7 = *(VTable + 16) + 8;
  v9 = 0;
  if (v6(mFigController, 8, 0, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, &v10, 0, 0, v9))
  {
    return 0;
  }

  *muted = v10 != 0;
  return 1;
}

- (BOOL)getActiveCategoryMuted:(BOOL *)muted forRoute:(id)route andDeviceIdentifier:(id)identifier
{
  v14 = 0;
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 16) + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = *(VTable + 16) + 8;
  v13 = 0;
  if (v10(mFigController, 10, 0, 0, route, identifier, 0, 0, 0.0, 0.0, 0.0, &v14, 0, 0, v13))
  {
    return 0;
  }

  *muted = v14 != 0;
  return 1;
}

- (BOOL)changeVolumeBy:(float)by forCategory:(id)category
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 16) + 8);
  if (!v8)
  {
    return 0;
  }

  v9 = *(VTable + 16) + 8;
  return v8(mFigController, 11, category, 0, 0, 0, 0, 0, by, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)changeVolume:(BOOL)volume forCategory:(id)category mode:(id)mode
{
  if (volume)
  {
    v7 = 0.0625;
  }

  else
  {
    v7 = -0.0625;
  }

  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 16) + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = *(VTable + 16) + 8;
  return v10(mFigController, 11, category, mode, 0, 0, 0, 0, v7, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)setVolumeTo:(float)to forCategory:(id)category retainFullMute:(BOOL)mute
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 16) + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = *(VTable + 16) + 8;
  return v10(mFigController, 12, category, 0, 0, 0, 0, 0, to, 0.0, 0.0, 0, 0, 0, mute) == 0;
}

- (BOOL)setVolumeTo:(float)to forCategory:(id)category mode:(id)mode
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 16) + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = *(VTable + 16) + 8;
  return v10(mFigController, 12, category, mode, 0, 0, 0, 0, to, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)setPickedRouteWithPassword:(id)password withPassword:(id)withPassword
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = v7;
  if (password)
  {
    [v7 addEntriesFromDictionary:password];
    [v8 setObject:withPassword forKey:@"PortPassword"];
    mFigController = self->mFigController;
    VTable = CMBaseObjectGetVTable();
    v11 = *(*(VTable + 8) + 56);
    if (v11)
    {
      v12 = *(VTable + 8) + 56;
      v13 = v11(mFigController, @"PickedRouteWithPassword", v8) == 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)getVolume:(float *)volume forCategory:(id)category mode:(id)mode
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 16) + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = *(VTable + 16) + 8;
  return v10(mFigController, 13, category, mode, 0, 0, 0, volume, 0.0, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)getSilentMode
{
  v2 = [(AVSystemControllerCommon *)self attributeForKey:AVSystemController_SilentModeEnabledAttribute];

  return [v2 BOOLValue];
}

- (BOOL)getSilentMode:(BOOL *)mode error:(id *)error
{
  v14 = 0;
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v9 = *(*(VTable + 8) + 48);
  if (!v9)
  {
    v12 = 0;
    v11 = 4294954514;
    if (!mode)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = *(VTable + 8) + 48;
  v11 = v9(mFigController, @"SilentModeEnabled", *MEMORY[0x1E695E480], &v14);
  v12 = v14;
  if (mode)
  {
LABEL_5:
    *mode = [v12 BOOLValue];
    v12 = v14;
  }

LABEL_6:

  if (error)
  {
    *error = -[AVSystemController errorWithCode:description:](self, "errorWithCode:description:", v11, [MEMORY[0x1E696AEC0] stringWithFormat:@"Error querying SilentModeEnabled with err = %d", v11]);
  }

  return v11 == 0;
}

- (id)routeForCategory:(id)category
{
  v11 = 0;
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 16);
  if (v6)
  {
    v7 = *(VTable + 16) + 16;
    v6(mFigController, category, &v11, 0);
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  return v11;
}

- (id)volumeCategoryForAudioCategory:(id)category
{
  if (volumeCategoryForAudioCategory__onceToken != -1)
  {
    [AVSystemController volumeCategoryForAudioCategory:];
  }

  if (!category)
  {
    category = @"Audio/Video";
  }

  [volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCacheLock lock];
  v10 = [volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCache valueForKey:category];
  [volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCacheLock unlock];
  if (!v10)
  {
    mFigController = self->mFigController;
    VTable = CMBaseObjectGetVTable();
    v8 = *(*(VTable + 16) + 24);
    if (v8)
    {
      v9 = *(VTable + 16) + 24;
      if (!v8(mFigController, category, 0, &v10, 0))
      {
        [volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCacheLock lock];
        [volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCache setValue:v10 forKey:category];
        [volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCacheLock unlock];
      }
    }
  }

  return v10;
}

id __53__AVSystemController_volumeCategoryForAudioCategory___block_invoke()
{
  volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCache = objc_alloc_init(MEMORY[0x1E695DF90]);
  result = objc_alloc_init(MEMORY[0x1E696AD10]);
  volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCacheLock = result;
  return result;
}

- (int)toggleInputMute
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 16) + 56);
  if (!v4)
  {
    return -12782;
  }

  v5 = *(VTable + 16) + 56;

  return v4(mFigController);
}

- (int)getInputMute:(id *)mute outMuteValue:(BOOL *)value
{
  v15 = *MEMORY[0x1E69E9840];
  mFigController = self->mFigController;
  v6 = *&mute->var0[4];
  v13 = *mute->var0;
  v14 = v6;
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 16) + 72);
  if (v8)
  {
    v9 = *(VTable + 16) + 72;
    v12[0] = v13;
    v12[1] = v14;
    result = v8(mFigController, v12, value);
  }

  else
  {
    result = -12782;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)clearUplinkMutedCache
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 16) + 80);
  if (!v4)
  {
    return -12782;
  }

  v5 = *(VTable + 16) + 80;

  return v4(mFigController);
}

- (int)allowAppToInitiateRecordingTemporarily:(id)temporarily
{
  v10 = *MEMORY[0x1E69E9840];
  mFigController = self->mFigController;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v5)
  {
    v6 = v5(mFigController, temporarily);
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = -12782;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_6:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (int)grantMediaEndowmentWithEnvironmentID:(id)d endowmentPayload:(id)payload
{
  v12 = *MEMORY[0x1E69E9840];
  mFigController = self->mFigController;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (v7)
  {
    v8 = v7(mFigController, d, payload);
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = -12782;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_6:
  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (int)revokeMediaEndowmentWithEnvironmentID:(id)d
{
  v10 = *MEMORY[0x1E69E9840];
  mFigController = self->mFigController;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v5)
  {
    v6 = v5(mFigController, d);
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = -12782;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_6:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)pickableRoutesForCategory:(id)category andMode:(id)mode
{
  v13 = 0;
  if (category)
  {
    categoryCopy = category;
  }

  else
  {
    categoryCopy = @"Audio/Video";
  }

  if (mode)
  {
    modeCopy = mode;
  }

  else
  {
    modeCopy = @"Default";
  }

  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 16) + 32);
  if (v8)
  {
    v9 = *(VTable + 16) + 32;
    v8(mFigController, categoryCopy, modeCopy, &v13);
    v10 = v13;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v13)
  {
    return v13;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)pickableRoutesForCategory:(id)category
{
  v11 = 0;
  if (category)
  {
    categoryCopy = category;
  }

  else
  {
    categoryCopy = @"Audio/Video";
  }

  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 32);
  if (v6)
  {
    v7 = *(VTable + 16) + 32;
    v6(mFigController, categoryCopy, @"Default", &v11);
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v11)
  {
    return v11;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (BOOL)overrideToPartnerRoute
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 8) + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = *(VTable + 8) + 56;
  return v4(mFigController, @"OverrideToPartnerRoute", 0) == 0;
}

- (BOOL)hasRouteSharingPolicyLongFormVideo:(id)video
{
  v11 = 0;
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 40);
  if (!v6)
  {
    return 0;
  }

  v7 = *(VTable + 16) + 40;
  v8 = v6(mFigController, video, &v11);
  return v11 && v8 == 0;
}

- (BOOL)remoteDeviceControlIsAllowed:(unsigned int *)allowed
{
  v4 = 1;
  v9 = 1;
  mFigController = self->mFigController;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (v6)
  {
    v7 = v6(mFigController, &v9);
    v4 = v9;
    if (allowed)
    {
      if (!v7)
      {
        *allowed = v9;
      }
    }
  }

  return v4 == 0;
}

- (BOOL)addRemoteDeviceID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  if (d)
  {
    [(NSLock *)self->mRemoteDeviceIDsLock lock];
    [(NSMutableSet *)self->mRemoteDeviceIDs addObject:d];
    allObjects = [(NSMutableSet *)self->mRemoteDeviceIDs allObjects];
    [(NSLock *)self->mRemoteDeviceIDsLock unlock];
    mFigController = self->mFigController;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7 && !v7(mFigController, @"RemoteDeviceIDs", allObjects))
    {
      v9 = 1;
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)removeRemoteDeviceID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  if (d)
  {
    [(NSLock *)self->mRemoteDeviceIDsLock lock];
    [(NSMutableSet *)self->mRemoteDeviceIDs removeObject:d];
    allObjects = [(NSMutableSet *)self->mRemoteDeviceIDs allObjects];
    [(NSLock *)self->mRemoteDeviceIDsLock unlock];
    mFigController = self->mFigController;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7 && !v7(mFigController, @"RemoteDeviceIDs", allObjects))
    {
      v9 = 1;
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (int)getVolumeButtonDelta:(id)delta outVolumeDelta:(float *)volumeDelta
{
  if (!volumeDelta)
  {
    return -12980;
  }

  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 16) + 128);
  if (!v8)
  {
    return -12782;
  }

  v9 = *(VTable + 16) + 128;

  return v8(mFigController, delta, volumeDelta);
}

@end