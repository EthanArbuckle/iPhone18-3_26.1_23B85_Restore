@interface MRSharedSettings
+ (MRSharedSettings)currentSettings;
- (BOOL)canHostMultiplayerStream;
- (BOOL)isMultiplayerHost;
- (BOOL)staticWaveform;
- (BOOL)supportAirPlayLeaderInfoSync;
- (BOOL)supportGroupSessionHome;
- (BOOL)supportGroupSessionHomePodBoop;
- (BOOL)supportLockScreenBackground;
- (BOOL)supportManyRecommendationsPlatters;
- (BOOL)supportNowPlayingSessionDataSource;
- (BOOL)supportPTOTRefactorPart2;
- (BOOL)supportSessionBasedLockScreenPlatter;
- (BOOL)supportSessionBasedUI;
- (BOOL)suppressScreenMirroringErrors;
- (BOOL)verboseImageLoadingLogging;
- (BOOL)verboseMediaControlLogging;
- (double)afterRoutingCompleteTimeout;
- (double)autoRouteInactiveTimeout;
- (double)lockScreenAPLRatio;
- (double)lockScreenAPLTarget;
- (double)oneTapSuggestionInactiveTimeout;
- (double)quickControlsInactiveTimeout;
@end

@implementation MRSharedSettings

+ (MRSharedSettings)currentSettings
{
  if (currentSettings___once_0 != -1)
  {
    +[MRSharedSettings currentSettings];
  }

  v3 = currentSettings___currentSharedSettings;

  return v3;
}

- (BOOL)isMultiplayerHost
{
  IsAudioAccessory = MSVDeviceIsAudioAccessory();
  if (IsAudioAccessory)
  {

    LOBYTE(IsAudioAccessory) = _os_feature_enabled_impl();
  }

  return IsAudioAccessory;
}

void __35__MRSharedSettings_currentSettings__block_invoke()
{
  v0 = objc_alloc_init(MRSharedSettings);
  v1 = currentSettings___currentSharedSettings;
  currentSettings___currentSharedSettings = v0;
}

- (BOOL)canHostMultiplayerStream
{
  if (![(MRSharedSettings *)self isMultiplayerHost])
  {
    return 0;
  }

  v2 = +[MRAVClusterController sharedController];
  v3 = [v2 clusterType] != 2;

  return v3;
}

- (BOOL)supportNowPlayingSessionDataSource
{
  IsAudioAccessory = MSVDeviceIsAudioAccessory();
  if (IsAudioAccessory)
  {

    LOBYTE(IsAudioAccessory) = _os_feature_enabled_impl();
  }

  return IsAudioAccessory;
}

- (BOOL)supportGroupSessionHome
{
  v2 = _os_feature_enabled_impl();
  if (MSVDeviceIsAudioAccessory())
  {
    return v2 & _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)supportSessionBasedUI
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = MRSupportsSystemUIActivities();
  }

  return v2;
}

- (BOOL)supportSessionBasedLockScreenPlatter
{
  supportSessionBasedUI = [(MRSharedSettings *)self supportSessionBasedUI];
  if (supportSessionBasedUI)
  {

    LOBYTE(supportSessionBasedUI) = _os_feature_enabled_impl();
  }

  return supportSessionBasedUI;
}

- (BOOL)supportLockScreenBackground
{
  supportSessionBasedLockScreenPlatter = [(MRSharedSettings *)self supportSessionBasedLockScreenPlatter];
  if (supportSessionBasedLockScreenPlatter)
  {

    LOBYTE(supportSessionBasedLockScreenPlatter) = _os_feature_enabled_impl();
  }

  return supportSessionBasedLockScreenPlatter;
}

- (double)quickControlsInactiveTimeout
{
  v2 = +[MRUserSettings currentSettings];
  [v2 quickControlsInactiveTimeout];
  v4 = v3;

  return v4;
}

- (BOOL)staticWaveform
{
  v2 = +[MRUserSettings currentSettings];
  staticWaveform = [v2 staticWaveform];

  return staticWaveform;
}

- (double)lockScreenAPLTarget
{
  v2 = +[MRUserSettings currentSettings];
  [v2 lockScreenAPLTarget];
  v4 = v3;

  return v4;
}

- (double)lockScreenAPLRatio
{
  v2 = +[MRUserSettings currentSettings];
  [v2 lockScreenAPLRatio];
  v4 = v3;

  return v4;
}

- (BOOL)supportGroupSessionHomePodBoop
{
  supportGroupSessionHome = [(MRSharedSettings *)self supportGroupSessionHome];
  if (supportGroupSessionHome)
  {

    LOBYTE(supportGroupSessionHome) = _os_feature_enabled_impl();
  }

  return supportGroupSessionHome;
}

- (BOOL)supportAirPlayLeaderInfoSync
{
  if ([(MRSharedSettings *)self supportGroupSessionHomePodBoop])
  {
    return 1;
  }

  v3 = +[MRUserSettings currentSettings];
  if ([v3 supportMRRelay])
  {
    supportTopologyHealing = 1;
  }

  else
  {
    v4 = +[MRUserSettings currentSettings];
    if ([v4 supportRoutingContinuity])
    {
      supportTopologyHealing = 1;
    }

    else
    {
      v5 = +[MRUserSettings currentSettings];
      supportTopologyHealing = [v5 supportTopologyHealing];
    }
  }

  return supportTopologyHealing;
}

- (double)oneTapSuggestionInactiveTimeout
{
  v2 = +[MRUserSettings currentSettings];
  [v2 oneTapSuggestionInactiveTimeout];
  v4 = v3;

  return v4;
}

- (double)autoRouteInactiveTimeout
{
  v2 = +[MRUserSettings currentSettings];
  [v2 autoRouteInactiveTimeout];
  v4 = v3;

  return v4;
}

- (double)afterRoutingCompleteTimeout
{
  v2 = +[MRUserSettings currentSettings];
  [v2 afterRoutingCompleteTimeout];
  v4 = v3;

  return v4;
}

- (BOOL)supportManyRecommendationsPlatters
{
  v2 = +[MRUserSettings currentSettings];
  supportManyRecommendationsPlatters = [v2 supportManyRecommendationsPlatters];

  return supportManyRecommendationsPlatters;
}

- (BOOL)suppressScreenMirroringErrors
{
  v2 = +[MRUserSettings currentSettings];
  suppressScreenMirroringErrors = [v2 suppressScreenMirroringErrors];

  return suppressScreenMirroringErrors;
}

- (BOOL)verboseImageLoadingLogging
{
  v2 = +[MRUserSettings currentSettings];
  verboseImageLoadingLogging = [v2 verboseImageLoadingLogging];

  return verboseImageLoadingLogging;
}

- (BOOL)verboseMediaControlLogging
{
  v2 = +[MRUserSettings currentSettings];
  verboseMediaControlLogging = [v2 verboseMediaControlLogging];

  return verboseMediaControlLogging;
}

- (BOOL)supportPTOTRefactorPart2
{
  v2 = +[MRUserSettings currentSettings];
  supportPTOTRefactorPart2 = [v2 supportPTOTRefactorPart2];

  return supportPTOTRefactorPart2;
}

@end