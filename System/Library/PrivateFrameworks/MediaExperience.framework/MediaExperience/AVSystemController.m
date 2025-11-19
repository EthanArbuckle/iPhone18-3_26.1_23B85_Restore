@interface AVSystemController
+ (id)sharedInstance;
- (AVSystemController)init;
- (BOOL)addRemoteDeviceID:(id)a3;
- (BOOL)changeActiveCategoryVolume:(BOOL)a3 fallbackCategory:(id)a4 resultVolume:(float *)a5 affectedCategory:(id *)a6;
- (BOOL)changeActiveCategoryVolume:(BOOL)a3 forRoute:(id)a4 andDeviceIdentifier:(id)a5;
- (BOOL)changeActiveCategoryVolumeBy:(float)a3 fallbackCategory:(id)a4 resultVolume:(float *)a5 affectedCategory:(id *)a6;
- (BOOL)changeActiveCategoryVolumeBy:(float)a3 forRoute:(id)a4 andDeviceIdentifier:(id)a5;
- (BOOL)changeVolume:(BOOL)a3 forCategory:(id)a4 mode:(id)a5;
- (BOOL)changeVolumeBy:(float)a3 forCategory:(id)a4;
- (BOOL)changeVolumeForRoute:(BOOL)a3 forCategory:(id)a4 mode:(id)a5 route:(id)a6 deviceIdentifier:(id)a7 andRouteSubtype:(id)a8;
- (BOOL)changeVolumeForRouteBy:(float)a3 forCategory:(id)a4 mode:(id)a5 route:(id)a6 deviceIdentifier:(id)a7 andRouteSubtype:(id)a8;
- (BOOL)currentRouteHasVolumeControl;
- (BOOL)getActiveCategoryMuted:(BOOL *)a3;
- (BOOL)getActiveCategoryMuted:(BOOL *)a3 forRoute:(id)a4 andDeviceIdentifier:(id)a5;
- (BOOL)getActiveCategoryVolume:(float *)a3 andName:(id *)a4 fallbackCategory:(id)a5;
- (BOOL)getActiveCategoryVolume:(float *)a3 andName:(id *)a4 forRoute:(id)a5 andDeviceIdentifier:(id)a6;
- (BOOL)getSilentMode;
- (BOOL)getSilentMode:(BOOL *)a3 error:(id *)a4;
- (BOOL)getVibeIntensity:(float *)a3;
- (BOOL)getVolume:(float *)a3 forCategory:(id)a4 mode:(id)a5;
- (BOOL)getVolumeForRoute:(float *)a3 forCategory:(id)a4 mode:(id)a5 route:(id)a6 deviceIdentifier:(id)a7 andRouteSubtype:(id)a8;
- (BOOL)hasRouteSharingPolicyLongFormVideo:(id)a3;
- (BOOL)overrideToPartnerRoute;
- (BOOL)remoteDeviceControlIsAllowed:(unsigned int *)a3;
- (BOOL)removeRemoteDeviceID:(id)a3;
- (BOOL)setActiveCategoryVolumeTo:(float)a3 fallbackCategory:(id)a4 resultVolume:(float *)a5 affectedCategory:(id *)a6;
- (BOOL)setActiveCategoryVolumeTo:(float)a3 forRoute:(id)a4 andDeviceIdentifier:(id)a5;
- (BOOL)setPickedRouteWithPassword:(id)a3 withPassword:(id)a4;
- (BOOL)setVibeIntensityTo:(float)a3;
- (BOOL)setVolumeForRouteTo:(float)a3 forCategory:(id)a4 mode:(id)a5 route:(id)a6 deviceIdentifier:(id)a7 andRouteSubtype:(id)a8;
- (BOOL)setVolumeTo:(float)a3 forCategory:(id)a4 mode:(id)a5;
- (BOOL)setVolumeTo:(float)a3 forCategory:(id)a4 retainFullMute:(BOOL)a5;
- (BOOL)toggleActiveCategoryMuted;
- (BOOL)toggleActiveCategoryMutedForRoute:(id)a3 andDeviceIdentifier:(id)a4;
- (id)errorWithCode:(int)a3 description:(id)a4;
- (id)pickableRoutesForCategory:(id)a3;
- (id)pickableRoutesForCategory:(id)a3 andMode:(id)a4;
- (id)routeForCategory:(id)a3;
- (id)topOfNowPlayingAppStack;
- (id)volumeCategoryForAudioCategory:(id)a3;
- (int)allowAppToInitiateRecordingTemporarily:(id)a3;
- (int)clearUplinkMutedCache;
- (int)getDuckScalarForVoiceOver:(float *)a3;
- (int)getInputMute:(id *)a3 outMuteValue:(BOOL *)a4;
- (int)getVolume:(float *)a3 category:(id)a4 mode:(id)a5 route:(id)a6 deviceIdentifier:(id)a7 routeSubtype:(id)a8;
- (int)getVolumeButtonDelta:(id)a3 outVolumeDelta:(float *)a4;
- (int)grantMediaEndowmentWithEnvironmentID:(id)a3 endowmentPayload:(id)a4;
- (int)popNowPlayingAppStack;
- (int)revokeMediaEndowmentWithEnvironmentID:(id)a3;
- (int)setDuckScalarForVoiceOver:(float)a3;
- (int)setVolume:(float)a3 category:(id)a4 mode:(id)a5 route:(id)a6 deviceIdentifier:(id)a7 routeSubtype:(id)a8 rampUpDuration:(float)a9 rampDownDuration:(float)a10;
- (int)setVolume:(float)a3 category:(id)a4 mode:(id)a5 route:(id)a6 deviceIdentifier:(id)a7 routeSubtype:(id)a8 rampUpDuration:(float)a9 rampDownDuration:(float)a10 retainFullMute:(BOOL)a11;
- (int)setVolume:(float)a3 category:(id)a4 mode:(id)a5 route:(id)a6 deviceIdentifier:(id)a7 routeSubtype:(id)a8 rampUpwardDuration:(id)a9 rampDownwardDuration:(id)a10;
- (int)toggleInputMute;
- (int)volumeCategoryAndMode:(id)a3 mode:(id)a4 outCategory:(id *)a5 outMode:(id *)a6;
- (void)dealloc;
- (void)handleServerDied;
- (void)postEffectiveVolumeNotification:(id)a3;
- (void)postFullMuteDidChangeNotification:(id)a3;
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

- (id)errorWithCode:(int)a3 description:(id)a4
{
  v4 = a4;
  if (a4)
  {
    v6 = objc_alloc(MEMORY[0x1E695DF20]);
    v4 = [v6 initWithObjectsAndKeys:{v4, *MEMORY[0x1E696A578], 0}];
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:a3 userInfo:v4];

  return v7;
}

- (void)handleServerDied
{
  [(AVSystemController(InternalUse) *)self releaseSharedInstance];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = AVSystemController_ServerConnectionDiedNotification;

  [v3 postNotificationName:v4 object:self];
}

- (void)postEffectiveVolumeNotification:(id)a3
{
  v23 = 1065353216;
  v5 = [a3 objectForKey:@"Volume"];
  v6 = [a3 objectForKey:@"AudioCategory"];
  v24 = v6;
  v7 = [a3 objectForKey:@"Reason"];
  v8 = [a3 objectForKey:@"SilenceVolumeHUD"];
  v9 = [a3 objectForKey:@"ActiveAudioCategory"];
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

- (void)postFullMuteDidChangeNotification:(id)a3
{
  v4 = [a3 objectForKey:@"FullMuted"];
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

- (BOOL)changeActiveCategoryVolumeBy:(float)a3 fallbackCategory:(id)a4 resultVolume:(float *)a5 affectedCategory:(id *)a6
{
  if (a6)
  {
    *a6 = 0;
  }

  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v11 = *(*(VTable + 16) + 8);
  if (v11)
  {
    v12 = *(VTable + 16) + 8;
    v13 = v11(mFigController, 1, 0, 0, 0, 0, 0, a5, a3, 0.0, 0.0, 0, a6, 0, 0) == 0;
    if (!a6)
    {
      return v13;
    }

    goto LABEL_7;
  }

  v13 = 0;
  if (a6)
  {
LABEL_7:
    v14 = *a6;
  }

  return v13;
}

- (BOOL)changeActiveCategoryVolume:(BOOL)a3 fallbackCategory:(id)a4 resultVolume:(float *)a5 affectedCategory:(id *)a6
{
  if (a6)
  {
    *a6 = 0;
  }

  if (a3)
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
    v13 = v11(mFigController, 1, 0, 0, 0, 0, 0, a5, v8, 0.0, 0.0, 0, a6, 0, 0) == 0;
    if (!a6)
    {
      return v13;
    }

    goto LABEL_10;
  }

  v13 = 0;
  if (a6)
  {
LABEL_10:
    v14 = *a6;
  }

  return v13;
}

- (BOOL)setVibeIntensityTo:(float)a3
{
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = a3;
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

- (BOOL)getVibeIntensity:(float *)a3
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
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = 0;
  v8 = 0;
  if (a3)
  {
LABEL_5:
    [v9 floatValue];
    *a3 = v10;
    v9 = v12;
  }

LABEL_6:

  return v8;
}

- (BOOL)setActiveCategoryVolumeTo:(float)a3 fallbackCategory:(id)a4 resultVolume:(float *)a5 affectedCategory:(id *)a6
{
  if (a6)
  {
    *a6 = 0;
  }

  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v12 = *(*(VTable + 16) + 8);
  if (v12)
  {
    v13 = *(VTable + 16) + 8;
    v14 = v12(mFigController, 2, a4, 0, 0, 0, 0, a5, a3, 0.0, 0.0, 0, a6, 0, 0) == 0;
    if (!a6)
    {
      return v14;
    }

    goto LABEL_7;
  }

  v14 = 0;
  if (a6)
  {
LABEL_7:
    v15 = *a6;
  }

  return v14;
}

- (BOOL)getActiveCategoryVolume:(float *)a3 andName:(id *)a4 fallbackCategory:(id)a5
{
  if (a4)
  {
    *a4 = 0;
  }

  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 16) + 8);
  if (v10)
  {
    v11 = *(VTable + 16) + 8;
    v12 = v10(mFigController, 3, a5, 0, 0, 0, 0, a3, 0.0, 0.0, 0.0, 0, a4, 0, 0) == 0;
    if (!a4)
    {
      return v12;
    }

    goto LABEL_7;
  }

  v12 = 0;
  if (a4)
  {
LABEL_7:
    v13 = *a4;
  }

  return v12;
}

- (BOOL)changeActiveCategoryVolumeBy:(float)a3 forRoute:(id)a4 andDeviceIdentifier:(id)a5
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 16) + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = *(VTable + 16) + 8;
  return v10(mFigController, 4, 0, 0, a4, a5, 0, 0, a3, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)changeActiveCategoryVolume:(BOOL)a3 forRoute:(id)a4 andDeviceIdentifier:(id)a5
{
  if (a3)
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
  return v10(mFigController, 4, 0, 0, a4, a5, 0, 0, v7, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)setActiveCategoryVolumeTo:(float)a3 forRoute:(id)a4 andDeviceIdentifier:(id)a5
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 16) + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = *(VTable + 16) + 8;
  return v10(mFigController, 5, 0, 0, a4, a5, 0, 0, a3, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)getActiveCategoryVolume:(float *)a3 andName:(id *)a4 forRoute:(id)a5 andDeviceIdentifier:(id)a6
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v11 = *(*(VTable + 16) + 8);
  if (!v11)
  {
    return 0;
  }

  v12 = *(VTable + 16) + 8;
  return v11(mFigController, 6, 0, 0, a5, a6, 0, a3, 0.0, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)changeVolumeForRouteBy:(float)a3 forCategory:(id)a4 mode:(id)a5 route:(id)a6 deviceIdentifier:(id)a7 andRouteSubtype:(id)a8
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v15 = *(*(VTable + 16) + 8);
  if (!v15)
  {
    return 0;
  }

  v16 = *(VTable + 16) + 8;
  return v15(mFigController, 11, a4, 0, a6, a7, a8, 0, a3, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)changeVolumeForRoute:(BOOL)a3 forCategory:(id)a4 mode:(id)a5 route:(id)a6 deviceIdentifier:(id)a7 andRouteSubtype:(id)a8
{
  if (a3)
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
  return v15(mFigController, 11, a4, 0, a6, a7, a8, 0, v12, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)setVolumeForRouteTo:(float)a3 forCategory:(id)a4 mode:(id)a5 route:(id)a6 deviceIdentifier:(id)a7 andRouteSubtype:(id)a8
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v15 = *(*(VTable + 16) + 8);
  if (!v15)
  {
    return 0;
  }

  v16 = *(VTable + 16) + 8;
  return v15(mFigController, 12, a4, 0, a6, a7, a8, 0, a3, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (int)setVolume:(float)a3 category:(id)a4 mode:(id)a5 route:(id)a6 deviceIdentifier:(id)a7 routeSubtype:(id)a8 rampUpwardDuration:(id)a9 rampDownwardDuration:(id)a10
{
  mFigController = self->mFigController;
  [a9 floatValue];
  v17 = v16;
  [a10 floatValue];
  v19 = v18;
  VTable = CMBaseObjectGetVTable();
  v21 = *(*(VTable + 16) + 8);
  if (!v21)
  {
    return -12782;
  }

  v22 = *(VTable + 16) + 8;
  return v21(mFigController, 12, a4, 0, a6, a7, a8, 0, a3, v17, v19, 0, 0, 0, 0);
}

- (int)setVolume:(float)a3 category:(id)a4 mode:(id)a5 route:(id)a6 deviceIdentifier:(id)a7 routeSubtype:(id)a8 rampUpDuration:(float)a9 rampDownDuration:(float)a10
{
  result = -12981;
  if (a9 >= 0.0 && a10 >= 0.0)
  {
    mFigController = self->mFigController;
    VTable = CMBaseObjectGetVTable();
    v21 = *(*(VTable + 16) + 8);
    if (v21)
    {
      v22 = *(VTable + 16) + 8;
      return v21(mFigController, 12, a4, 0, a6, a7, a8, 0, a3, a9, a10, 0, 0, 0, 0);
    }

    else
    {
      return -12782;
    }
  }

  return result;
}

- (int)setVolume:(float)a3 category:(id)a4 mode:(id)a5 route:(id)a6 deviceIdentifier:(id)a7 routeSubtype:(id)a8 rampUpDuration:(float)a9 rampDownDuration:(float)a10 retainFullMute:(BOOL)a11
{
  result = -12981;
  if (a9 >= 0.0 && a10 >= 0.0)
  {
    mFigController = self->mFigController;
    VTable = CMBaseObjectGetVTable();
    v23 = *(*(VTable + 16) + 8);
    if (v23)
    {
      v24 = *(VTable + 16) + 8;
      return v23(mFigController, 12, a4, 0, a6, a7, a8, 0, a3, a9, a10, 0, 0, 0, a11);
    }

    else
    {
      return -12782;
    }
  }

  return result;
}

- (BOOL)getVolumeForRoute:(float *)a3 forCategory:(id)a4 mode:(id)a5 route:(id)a6 deviceIdentifier:(id)a7 andRouteSubtype:(id)a8
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v15 = *(*(VTable + 16) + 8);
  if (!v15)
  {
    return 0;
  }

  v16 = *(VTable + 16) + 8;
  return v15(mFigController, 13, a4, 0, a6, a7, a8, a3, 0.0, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (int)getVolume:(float *)a3 category:(id)a4 mode:(id)a5 route:(id)a6 deviceIdentifier:(id)a7 routeSubtype:(id)a8
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v15 = *(*(VTable + 16) + 8);
  if (!v15)
  {
    return -12782;
  }

  v16 = *(VTable + 16) + 8;
  return v15(mFigController, 13, a4, 0, a6, a7, a8, a3, 0.0, 0.0, 0.0, 0, 0, 0, 0);
}

- (int)volumeCategoryAndMode:(id)a3 mode:(id)a4 outCategory:(id *)a5 outMode:(id *)a6
{
  v21[22] = *MEMORY[0x1E69E9840];
  v6 = -12980;
  if (a5 && a6)
  {
    v20 = 0;
    v21[0] = 0;
    mFigController = self->mFigController;
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v12)
    {
      v6 = v12(mFigController, a3, a4, v21, &v20);
      if (!v6)
      {
        v14 = v20;
        v13 = v21[0];
        *a5 = v21[0];
        *a6 = v14;
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

- (int)setDuckScalarForVoiceOver:(float)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = a3;
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

- (int)getDuckScalarForVoiceOver:(float *)a3
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

  if (a3)
  {
    [v11[0] floatValue];
    v6 = 0;
    *a3 = v7;
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

- (BOOL)toggleActiveCategoryMutedForRoute:(id)a3 andDeviceIdentifier:(id)a4
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 16) + 8);
  if (!v8)
  {
    return 0;
  }

  v9 = *(VTable + 16) + 8;
  return v8(mFigController, 9, 0, 0, a3, a4, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)getActiveCategoryMuted:(BOOL *)a3
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

  *a3 = v10 != 0;
  return 1;
}

- (BOOL)getActiveCategoryMuted:(BOOL *)a3 forRoute:(id)a4 andDeviceIdentifier:(id)a5
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
  if (v10(mFigController, 10, 0, 0, a4, a5, 0, 0, 0.0, 0.0, 0.0, &v14, 0, 0, v13))
  {
    return 0;
  }

  *a3 = v14 != 0;
  return 1;
}

- (BOOL)changeVolumeBy:(float)a3 forCategory:(id)a4
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 16) + 8);
  if (!v8)
  {
    return 0;
  }

  v9 = *(VTable + 16) + 8;
  return v8(mFigController, 11, a4, 0, 0, 0, 0, 0, a3, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)changeVolume:(BOOL)a3 forCategory:(id)a4 mode:(id)a5
{
  if (a3)
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
  return v10(mFigController, 11, a4, a5, 0, 0, 0, 0, v7, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)setVolumeTo:(float)a3 forCategory:(id)a4 retainFullMute:(BOOL)a5
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 16) + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = *(VTable + 16) + 8;
  return v10(mFigController, 12, a4, 0, 0, 0, 0, 0, a3, 0.0, 0.0, 0, 0, 0, a5) == 0;
}

- (BOOL)setVolumeTo:(float)a3 forCategory:(id)a4 mode:(id)a5
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 16) + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = *(VTable + 16) + 8;
  return v10(mFigController, 12, a4, a5, 0, 0, 0, 0, a3, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)setPickedRouteWithPassword:(id)a3 withPassword:(id)a4
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = v7;
  if (a3)
  {
    [v7 addEntriesFromDictionary:a3];
    [v8 setObject:a4 forKey:@"PortPassword"];
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

- (BOOL)getVolume:(float *)a3 forCategory:(id)a4 mode:(id)a5
{
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 16) + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = *(VTable + 16) + 8;
  return v10(mFigController, 13, a4, a5, 0, 0, 0, a3, 0.0, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)getSilentMode
{
  v2 = [(AVSystemControllerCommon *)self attributeForKey:AVSystemController_SilentModeEnabledAttribute];

  return [v2 BOOLValue];
}

- (BOOL)getSilentMode:(BOOL *)a3 error:(id *)a4
{
  v14 = 0;
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v9 = *(*(VTable + 8) + 48);
  if (!v9)
  {
    v12 = 0;
    v11 = 4294954514;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = *(VTable + 8) + 48;
  v11 = v9(mFigController, @"SilentModeEnabled", *MEMORY[0x1E695E480], &v14);
  v12 = v14;
  if (a3)
  {
LABEL_5:
    *a3 = [v12 BOOLValue];
    v12 = v14;
  }

LABEL_6:

  if (a4)
  {
    *a4 = -[AVSystemController errorWithCode:description:](self, "errorWithCode:description:", v11, [MEMORY[0x1E696AEC0] stringWithFormat:@"Error querying SilentModeEnabled with err = %d", v11]);
  }

  return v11 == 0;
}

- (id)routeForCategory:(id)a3
{
  v11 = 0;
  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 16);
  if (v6)
  {
    v7 = *(VTable + 16) + 16;
    v6(mFigController, a3, &v11, 0);
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  return v11;
}

- (id)volumeCategoryForAudioCategory:(id)a3
{
  if (volumeCategoryForAudioCategory__onceToken != -1)
  {
    [AVSystemController volumeCategoryForAudioCategory:];
  }

  if (!a3)
  {
    a3 = @"Audio/Video";
  }

  [volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCacheLock lock];
  v10 = [volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCache valueForKey:a3];
  [volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCacheLock unlock];
  if (!v10)
  {
    mFigController = self->mFigController;
    VTable = CMBaseObjectGetVTable();
    v8 = *(*(VTable + 16) + 24);
    if (v8)
    {
      v9 = *(VTable + 16) + 24;
      if (!v8(mFigController, a3, 0, &v10, 0))
      {
        [volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCacheLock lock];
        [volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCache setValue:v10 forKey:a3];
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

- (int)getInputMute:(id *)a3 outMuteValue:(BOOL *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  mFigController = self->mFigController;
  v6 = *&a3->var0[4];
  v13 = *a3->var0;
  v14 = v6;
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 16) + 72);
  if (v8)
  {
    v9 = *(VTable + 16) + 72;
    v12[0] = v13;
    v12[1] = v14;
    result = v8(mFigController, v12, a4);
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

- (int)allowAppToInitiateRecordingTemporarily:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  mFigController = self->mFigController;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v5)
  {
    v6 = v5(mFigController, a3);
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

- (int)grantMediaEndowmentWithEnvironmentID:(id)a3 endowmentPayload:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  mFigController = self->mFigController;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (v7)
  {
    v8 = v7(mFigController, a3, a4);
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

- (int)revokeMediaEndowmentWithEnvironmentID:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  mFigController = self->mFigController;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v5)
  {
    v6 = v5(mFigController, a3);
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

- (id)pickableRoutesForCategory:(id)a3 andMode:(id)a4
{
  v13 = 0;
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = @"Audio/Video";
  }

  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = @"Default";
  }

  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 16) + 32);
  if (v8)
  {
    v9 = *(VTable + 16) + 32;
    v8(mFigController, v4, v5, &v13);
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

- (id)pickableRoutesForCategory:(id)a3
{
  v11 = 0;
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = @"Audio/Video";
  }

  mFigController = self->mFigController;
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 32);
  if (v6)
  {
    v7 = *(VTable + 16) + 32;
    v6(mFigController, v3, @"Default", &v11);
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

- (BOOL)hasRouteSharingPolicyLongFormVideo:(id)a3
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
  v8 = v6(mFigController, a3, &v11);
  return v11 && v8 == 0;
}

- (BOOL)remoteDeviceControlIsAllowed:(unsigned int *)a3
{
  v4 = 1;
  v9 = 1;
  mFigController = self->mFigController;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (v6)
  {
    v7 = v6(mFigController, &v9);
    v4 = v9;
    if (a3)
    {
      if (!v7)
      {
        *a3 = v9;
      }
    }
  }

  return v4 == 0;
}

- (BOOL)addRemoteDeviceID:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [(NSLock *)self->mRemoteDeviceIDsLock lock];
    [(NSMutableSet *)self->mRemoteDeviceIDs addObject:a3];
    v5 = [(NSMutableSet *)self->mRemoteDeviceIDs allObjects];
    [(NSLock *)self->mRemoteDeviceIDsLock unlock];
    mFigController = self->mFigController;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7 && !v7(mFigController, @"RemoteDeviceIDs", v5))
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

- (BOOL)removeRemoteDeviceID:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [(NSLock *)self->mRemoteDeviceIDsLock lock];
    [(NSMutableSet *)self->mRemoteDeviceIDs removeObject:a3];
    v5 = [(NSMutableSet *)self->mRemoteDeviceIDs allObjects];
    [(NSLock *)self->mRemoteDeviceIDsLock unlock];
    mFigController = self->mFigController;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7 && !v7(mFigController, @"RemoteDeviceIDs", v5))
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

- (int)getVolumeButtonDelta:(id)a3 outVolumeDelta:(float *)a4
{
  if (!a4)
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

  return v8(mFigController, a3, a4);
}

@end