@interface MRUserSettings
+ (id)currentSettings;
- (BOOL)alwaysShowVolumeControls;
- (BOOL)calculateDiscoveryUpdates;
- (BOOL)canHostMultiplayerStream;
- (BOOL)carPlayBannersEnabled;
- (BOOL)disableAWDLRoutes;
- (BOOL)enableQueueHandOffForRouteRecommendations;
- (BOOL)excessiveNowPlayingControllersABC;
- (BOOL)excessiveTaskAssertionsABC;
- (BOOL)forceDeviceInfoDiscovery;
- (BOOL)forceNowPlayingSessionFailure;
- (BOOL)groupSessionBoopAdvertisementEnabled;
- (BOOL)groupSessionListenForProxyJoinRequests;
- (BOOL)groupSessionRotateAfterLastGuest;
- (BOOL)hasExternalDeviceSocketQOSLevelSet;
- (BOOL)hasSystemVolumeCapabilitiesOverride;
- (BOOL)inconsistentPlaybackQueueCacheABC;
- (BOOL)internalUI;
- (BOOL)isMultiplayerAware;
- (BOOL)needsMXApplications;
- (BOOL)notifyDevicesInHomeThatPlaybackStarted;
- (BOOL)nowPlayingAppStackShouldAutomaticallyForwardFailedPlayCommands;
- (BOOL)removeLocalDevice;
- (BOOL)sendProactivePFSQOnSiriActivation;
- (BOOL)shouldConnectToLocalEndpoint;
- (BOOL)shouldLogArtwork;
- (BOOL)showBluePill;
- (BOOL)sonicMusicEnabled;
- (BOOL)sonicPodcastsEnabled;
- (BOOL)startNowPlayingSessionABC;
- (BOOL)staticWaveform;
- (BOOL)supportAirplayStereoPairPersistentConnections;
- (BOOL)supportElectedPlayer;
- (BOOL)supportLastPlayingDevice;
- (BOOL)supportMultiplayerHost;
- (BOOL)supportOutputContextPrewarming;
- (BOOL)supportOutputContextSync;
- (BOOL)supportProximityMigration;
- (BOOL)supportRoutingContinuity;
- (BOOL)supportSystemEndpoints;
- (BOOL)supportTopologyHealing;
- (BOOL)useProactivePFSQSender;
- (BOOL)verboseConnectionMonitorLogging;
- (BOOL)verboseDiscoveryLogging;
- (BOOL)verboseImageLoadingLogging;
- (BOOL)verboseMediaControlLogging;
- (BOOL)verboseNowPlayingControllerLogging;
- (BOOL)verboseNowPlayingStateObserver;
- (BOOL)verboseOriginClientLogging;
- (BOOL)verboseOriginForwarderLogging;
- (BOOL)verboseOutputContextDataSourceLogging;
- (BOOL)verboseOutputContextLogging;
- (BOOL)verbosePlaybackQueueRequestLogging;
- (BOOL)verboseProtocolMessageLogging;
- (BOOL)verboseRemoteControlDiscoveryLogging;
- (MRUserSettings)init;
- (NSArray)destinationResolverReconRetryIntervals;
- (NSArray)nearbyDeviceIdentifiers;
- (NSArray)routePickerAirPlayAllowList;
- (NSArray)routePickerAirPlayDenyList;
- (NSArray)routeRecommendationEligibleApps;
- (NSString)groupSessionNearbyContactDiscoveryDidChangeNotification;
- (NSString)nearbyDeviceIdentifiersDidChangeNotification;
- (double)_doubleValueForKey:(double)key usingDefaultValue:;
- (double)checkXPCConnectionStatusDefaultResponseTimeout;
- (double)electedPlayerInterval;
- (double)externalDeviceArtificalConnectionDelay;
- (double)groupSessionEndpointDiscoveryInterval;
- (double)mediaRecentlyPlayedInterval;
- (double)microphoneConnectionTimeout;
- (double)nowPlayingAppStackFailedPlayInterval;
- (double)nowPlayingApplicationTimeout;
- (double)nowPlayingObserverCoalesceInterval;
- (double)nowPlayingUIWakingPlayerEventAssertionDuration;
- (double)persistantDiscoveryModeDetectionDuration;
- (double)persistantDiscoveryModeDetectionWindowDuration;
- (double)persistentDiscoveryABCDuration;
- (double)quickControlsInactiveTimeout;
- (double)sendPlaybackSessionUpdateToCompanionCoalesceInterval;
- (double)wakingPlayerPathAssertionDuration;
- (float)proximitySortingNearbyRadius;
- (float)systemVolumeOverride;
- (uint64_t)_BOOLValueForKey:(uint64_t)key usingDefaultValue:;
- (uint64_t)_integerValueForKey:(uint64_t)key usingDefaultValue:;
- (uint64_t)groupSessionBoopAdvertisementEnabled;
- (unint64_t)checkXPCConnectionStatusDefaultInterval;
- (unint64_t)maxStreamCapacity;
- (unsigned)systemVolumeCapabilitiesOverride;
- (void)_loadNearbyDeviceIdentifiers;
- (void)_loadRoutePickerAirPlayAllowList;
- (void)_loadRoutePickerAirPlayDenyList;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation MRUserSettings

+ (id)currentSettings
{
  if (currentSettings___once != -1)
  {
    +[MRUserSettings currentSettings];
  }

  v3 = currentSettings___currentSettings;

  return v3;
}

- (MRUserSettings)init
{
  v6.receiver = self;
  v6.super_class = MRUserSettings;
  v2 = [(MRUserSettings *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mediaremote"];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;
  }

  return v2;
}

void __33__MRUserSettings_currentSettings__block_invoke()
{
  v0 = objc_alloc_init(MRUserSettings);
  v1 = currentSettings___currentSettings;
  currentSettings___currentSettings = v0;
}

- (BOOL)supportMultiplayerHost
{
  v2 = +[MRSharedSettings currentSettings];
  isMultiplayerHost = [v2 isMultiplayerHost];

  return isMultiplayerHost;
}

- (BOOL)verboseOriginClientLogging
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MRUserSettings_verboseOriginClientLogging__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (verboseOriginClientLogging___once != -1)
  {
    dispatch_once(&verboseOriginClientLogging___once, block);
  }

  return verboseOriginClientLogging___should;
}

uint64_t __44__MRUserSettings_verboseOriginClientLogging__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:0 usingDefaultValue:?];
  verboseOriginClientLogging___should = result;
  return result;
}

uint64_t __38__MRUserSettings_sonicPodcastsEnabled__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) BOOLForKey:@"SonicPodcastsEnabled"];
  sonicPodcastsEnabled___value = result;
  return result;
}

- (BOOL)sonicPodcastsEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MRUserSettings_sonicPodcastsEnabled__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (sonicPodcastsEnabled_onceToken != -1)
  {
    dispatch_once(&sonicPodcastsEnabled_onceToken, block);
  }

  return sonicPodcastsEnabled___value;
}

- (BOOL)supportOutputContextSync
{
  supportGenericAudioGroup = [(MRUserSettings *)self supportGenericAudioGroup];
  if (self || supportGenericAudioGroup)
  {
    return 1;
  }

  return [0 donateActiveRoutesToBiome];
}

- (unint64_t)checkXPCConnectionStatusDefaultInterval
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MRUserSettings_checkXPCConnectionStatusDefaultInterval__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (checkXPCConnectionStatusDefaultInterval___once != -1)
  {
    dispatch_once(&checkXPCConnectionStatusDefaultInterval___once, block);
  }

  return checkXPCConnectionStatusDefaultInterval___interval;
}

- (BOOL)sonicMusicEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MRUserSettings_sonicMusicEnabled__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (sonicMusicEnabled_onceToken != -1)
  {
    dispatch_once(&sonicMusicEnabled_onceToken, block);
  }

  return sonicMusicEnabled___value;
}

- (NSString)groupSessionNearbyContactDiscoveryDidChangeNotification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__MRUserSettings_groupSessionNearbyContactDiscoveryDidChangeNotification__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (groupSessionNearbyContactDiscoveryDidChangeNotification_onceToken != -1)
  {
    dispatch_once(&groupSessionNearbyContactDiscoveryDidChangeNotification_onceToken, block);
  }

  return @"MRGroupSessionNearbyContactDiscoveryDidChangeNotification";
}

- (BOOL)canHostMultiplayerStream
{
  v2 = +[MRSharedSettings currentSettings];
  canHostMultiplayerStream = [v2 canHostMultiplayerStream];

  return canHostMultiplayerStream;
}

- (BOOL)verboseOutputContextDataSourceLogging
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__MRUserSettings_verboseOutputContextDataSourceLogging__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (verboseOutputContextDataSourceLogging___once != -1)
  {
    dispatch_once(&verboseOutputContextDataSourceLogging___once, block);
  }

  return verboseOutputContextDataSourceLogging___should;
}

uint64_t __55__MRUserSettings_verboseOutputContextDataSourceLogging__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:0 usingDefaultValue:?];
  verboseOutputContextDataSourceLogging___should = result;
  return result;
}

uint64_t __35__MRUserSettings_disableAWDLRoutes__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:0 usingDefaultValue:?];
  disableAWDLRoutes___value = result;
  return result;
}

- (BOOL)disableAWDLRoutes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MRUserSettings_disableAWDLRoutes__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (disableAWDLRoutes_onceToken != -1)
  {
    dispatch_once(&disableAWDLRoutes_onceToken, block);
  }

  return disableAWDLRoutes___value;
}

- (BOOL)calculateDiscoveryUpdates
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MRUserSettings_calculateDiscoveryUpdates__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (calculateDiscoveryUpdates_onceToken != -1)
  {
    dispatch_once(&calculateDiscoveryUpdates_onceToken, block);
  }

  return calculateDiscoveryUpdates_support;
}

- (double)persistentDiscoveryABCDuration
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MRUserSettings_persistentDiscoveryABCDuration__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (persistentDiscoveryABCDuration_onceToken != -1)
  {
    dispatch_once(&persistentDiscoveryABCDuration_onceToken, block);
  }

  return *&persistentDiscoveryABCDuration_duration;
}

uint64_t __35__MRUserSettings_sonicMusicEnabled__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) BOOLForKey:@"SonicMusicEnabled"];
  sonicMusicEnabled___value = result;
  return result;
}

uint64_t __43__MRUserSettings_calculateDiscoveryUpdates__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:1 usingDefaultValue:?];
  calculateDiscoveryUpdates_support = result;
  return result;
}

- (BOOL)shouldConnectToLocalEndpoint
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MRUserSettings_shouldConnectToLocalEndpoint__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (shouldConnectToLocalEndpoint_onceToken != -1)
  {
    dispatch_once(&shouldConnectToLocalEndpoint_onceToken, block);
  }

  return shouldConnectToLocalEndpoint___value;
}

- (BOOL)forceDeviceInfoDiscovery
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MRUserSettings_forceDeviceInfoDiscovery__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (forceDeviceInfoDiscovery___once != -1)
  {
    dispatch_once(&forceDeviceInfoDiscovery___once, block);
  }

  return forceDeviceInfoDiscovery___value;
}

- (BOOL)verboseDiscoveryLogging
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MRUserSettings_verboseDiscoveryLogging__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (verboseDiscoveryLogging___once != -1)
  {
    dispatch_once(&verboseDiscoveryLogging___once, block);
  }

  return verboseDiscoveryLogging___should;
}

- (BOOL)verboseOutputContextLogging
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MRUserSettings_verboseOutputContextLogging__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (verboseOutputContextLogging___once != -1)
  {
    dispatch_once(&verboseOutputContextLogging___once, block);
  }

  return verboseOutputContextLogging___should;
}

- (BOOL)hasSystemVolumeCapabilitiesOverride
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"SystemVolumeCapabilitiesOverride"];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportSystemEndpoints
{
  if (([(MRUserSettings *)self _BOOLValueForKey:0 usingDefaultValue:?]& 1) != 0)
  {
    return 1;
  }

  v3 = MGGetSInt32Answer() - 1;
  if (v3 < 6 && ((0x27u >> v3) & 1) != 0)
  {
    return 1;
  }

  return [(MRUserSettings *)self _BOOLValueForKey:0 usingDefaultValue:?];
}

- (BOOL)isMultiplayerAware
{
  v2 = +[MRSharedSettings currentSettings];
  isMultiplayerAware = [v2 isMultiplayerAware];

  return isMultiplayerAware;
}

- (BOOL)supportRoutingContinuity
{
  if (![(MRUserSettings *)self supportSystemEndpoints]|| !_os_feature_enabled_impl())
  {
    return 0;
  }

  return [(MRUserSettings *)self supportTopologyHealing];
}

- (BOOL)supportTopologyHealing
{
  if (MSVDeviceIsAudioAccessory() & 1) != 0 || (MSVDeviceIsAppleTV())
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)removeLocalDevice
{
  v2 = +[MRSharedSettings currentSettings];
  supportNowPlayingSessionDataSource = [v2 supportNowPlayingSessionDataSource];

  return supportNowPlayingSessionDataSource ^ 1;
}

- (double)mediaRecentlyPlayedInterval
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MRUserSettings_mediaRecentlyPlayedInterval__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (mediaRecentlyPlayedInterval_onceToken != -1)
  {
    dispatch_once(&mediaRecentlyPlayedInterval_onceToken, block);
  }

  return *&mediaRecentlyPlayedInterval___value;
}

- (double)checkXPCConnectionStatusDefaultResponseTimeout
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MRUserSettings_checkXPCConnectionStatusDefaultResponseTimeout__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (checkXPCConnectionStatusDefaultResponseTimeout___once != -1)
  {
    dispatch_once(&checkXPCConnectionStatusDefaultResponseTimeout___once, block);
  }

  return checkXPCConnectionStatusDefaultResponseTimeout___timeout;
}

- (float)systemVolumeOverride
{
  OUTLINED_FUNCTION_6_4();
  v6 = 3221225472;
  v7 = __38__MRUserSettings_systemVolumeOverride__block_invoke;
  v8 = &unk_1E769A228;
  v9 = v3;
  if (systemVolumeOverride_onceToken != -1)
  {
    dispatch_once(&systemVolumeOverride_onceToken, block);
  }

  return [(MRUserSettings *)v2 _doubleValueForKey:-1.0 usingDefaultValue:?];
}

- (BOOL)verboseConnectionMonitorLogging
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__MRUserSettings_verboseConnectionMonitorLogging__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (verboseConnectionMonitorLogging___once != -1)
  {
    dispatch_once(&verboseConnectionMonitorLogging___once, block);
  }

  return verboseConnectionMonitorLogging___should;
}

- (BOOL)inconsistentPlaybackQueueCacheABC
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MRUserSettings_inconsistentPlaybackQueueCacheABC__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (inconsistentPlaybackQueueCacheABC_onceToken != -1)
  {
    dispatch_once(&inconsistentPlaybackQueueCacheABC_onceToken, block);
  }

  return inconsistentPlaybackQueueCacheABC_support;
}

- (BOOL)shouldLogArtwork
{
  if (MRProcessIsMediaRemoteDaemon())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__MRUserSettings_shouldLogArtwork__block_invoke;
    block[3] = &unk_1E769A228;
    block[4] = self;
    if (shouldLogArtwork_onceToken != -1)
    {
      dispatch_once(&shouldLogArtwork_onceToken, block);
    }
  }

  return shouldLogArtwork_shouldLogArtwork;
}

- (BOOL)verboseNowPlayingControllerLogging
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MRUserSettings_verboseNowPlayingControllerLogging__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (verboseNowPlayingControllerLogging___once != -1)
  {
    dispatch_once(&verboseNowPlayingControllerLogging___once, block);
  }

  return verboseNowPlayingControllerLogging___should;
}

- (BOOL)verboseOriginForwarderLogging
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MRUserSettings_verboseOriginForwarderLogging__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (verboseOriginForwarderLogging___once != -1)
  {
    dispatch_once(&verboseOriginForwarderLogging___once, block);
  }

  return verboseOriginForwarderLogging___should;
}

- (BOOL)verboseNowPlayingStateObserver
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MRUserSettings_verboseNowPlayingStateObserver__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (verboseNowPlayingStateObserver___once != -1)
  {
    dispatch_once(&verboseNowPlayingStateObserver___once, block);
  }

  return verboseNowPlayingStateObserver___should;
}

- (BOOL)verboseRemoteControlDiscoveryLogging
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MRUserSettings_verboseRemoteControlDiscoveryLogging__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (verboseRemoteControlDiscoveryLogging___once != -1)
  {
    dispatch_once(&verboseRemoteControlDiscoveryLogging___once, block);
  }

  return verboseRemoteControlDiscoveryLogging___should;
}

- (BOOL)verboseImageLoadingLogging
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MRUserSettings_verboseImageLoadingLogging__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (verboseImageLoadingLogging___once != -1)
  {
    dispatch_once(&verboseImageLoadingLogging___once, block);
  }

  return verboseImageLoadingLogging___should;
}

- (BOOL)verboseMediaControlLogging
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MRUserSettings_verboseMediaControlLogging__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (verboseMediaControlLogging___once != -1)
  {
    dispatch_once(&verboseMediaControlLogging___once, block);
  }

  return verboseMediaControlLogging___should;
}

- (BOOL)verbosePlaybackQueueRequestLogging
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MRUserSettings_verbosePlaybackQueueRequestLogging__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (verbosePlaybackQueueRequestLogging___once != -1)
  {
    dispatch_once(&verbosePlaybackQueueRequestLogging___once, block);
  }

  return verbosePlaybackQueueRequestLogging___should;
}

- (BOOL)hasExternalDeviceSocketQOSLevelSet
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"MRExternalDeviceSocketsQOSLevel"];
  v3 = v2 != 0;

  return v3;
}

- (double)wakingPlayerPathAssertionDuration
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MRUserSettings_wakingPlayerPathAssertionDuration__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (wakingPlayerPathAssertionDuration___once != -1)
  {
    dispatch_once(&wakingPlayerPathAssertionDuration___once, block);
  }

  return *&wakingPlayerPathAssertionDuration___duration;
}

- (double)nowPlayingUIWakingPlayerEventAssertionDuration
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MRUserSettings_nowPlayingUIWakingPlayerEventAssertionDuration__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (nowPlayingUIWakingPlayerEventAssertionDuration___once != -1)
  {
    dispatch_once(&nowPlayingUIWakingPlayerEventAssertionDuration___once, block);
  }

  return *&nowPlayingUIWakingPlayerEventAssertionDuration___duration;
}

uint64_t __57__MRUserSettings_checkXPCConnectionStatusDefaultInterval__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _integerValueForKey:100 usingDefaultValue:?];
  checkXPCConnectionStatusDefaultInterval___interval = result;
  return result;
}

- (double)nowPlayingObserverCoalesceInterval
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MRUserSettings_nowPlayingObserverCoalesceInterval__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (nowPlayingObserverCoalesceInterval___once != -1)
  {
    dispatch_once(&nowPlayingObserverCoalesceInterval___once, block);
  }

  return *&nowPlayingObserverCoalesceInterval___interval;
}

- (double)nowPlayingAppStackFailedPlayInterval
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MRUserSettings_nowPlayingAppStackFailedPlayInterval__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (nowPlayingAppStackFailedPlayInterval___once != -1)
  {
    dispatch_once(&nowPlayingAppStackFailedPlayInterval___once, block);
  }

  return *&nowPlayingAppStackFailedPlayInterval___interval;
}

void __54__MRUserSettings_nowPlayingAppStackFailedPlayInterval__block_invoke(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    __54__MRUserSettings_nowPlayingAppStackFailedPlayInterval__block_invoke_cold_1(a1);
  }
}

- (BOOL)nowPlayingAppStackShouldAutomaticallyForwardFailedPlayCommands
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__MRUserSettings_nowPlayingAppStackShouldAutomaticallyForwardFailedPlayCommands__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (nowPlayingAppStackShouldAutomaticallyForwardFailedPlayCommands___once != -1)
  {
    dispatch_once(&nowPlayingAppStackShouldAutomaticallyForwardFailedPlayCommands___once, block);
  }

  return nowPlayingAppStackShouldAutomaticallyForwardFailedPlayCommands_value;
}

- (double)externalDeviceArtificalConnectionDelay
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MRUserSettings_externalDeviceArtificalConnectionDelay__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (externalDeviceArtificalConnectionDelay___once != -1)
  {
    dispatch_once(&externalDeviceArtificalConnectionDelay___once, block);
  }

  return *&externalDeviceArtificalConnectionDelay___interval;
}

- (double)persistantDiscoveryModeDetectionDuration
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MRUserSettings_persistantDiscoveryModeDetectionDuration__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (persistantDiscoveryModeDetectionDuration___once != -1)
  {
    dispatch_once(&persistantDiscoveryModeDetectionDuration___once, block);
  }

  return *&persistantDiscoveryModeDetectionDuration___interval;
}

- (double)persistantDiscoveryModeDetectionWindowDuration
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MRUserSettings_persistantDiscoveryModeDetectionWindowDuration__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (persistantDiscoveryModeDetectionWindowDuration___once != -1)
  {
    dispatch_once(&persistantDiscoveryModeDetectionWindowDuration___once, block);
  }

  return *&persistantDiscoveryModeDetectionWindowDuration___interval;
}

- (double)nowPlayingApplicationTimeout
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MRUserSettings_nowPlayingApplicationTimeout__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (nowPlayingApplicationTimeout_onceToken != -1)
  {
    dispatch_once(&nowPlayingApplicationTimeout_onceToken, block);
  }

  return *&nowPlayingApplicationTimeout_timeout;
}

- (BOOL)supportElectedPlayer
{
  if ([(MRUserSettings *)self takelockScreenAssertion])
  {
    return 1;
  }

  return [(MRUserSettings *)self supportSystemEndpoints];
}

- (BOOL)notifyDevicesInHomeThatPlaybackStarted
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MRUserSettings_notifyDevicesInHomeThatPlaybackStarted__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (notifyDevicesInHomeThatPlaybackStarted_onceToken != -1)
  {
    dispatch_once(&notifyDevicesInHomeThatPlaybackStarted_onceToken, block);
  }

  return notifyDevicesInHomeThatPlaybackStarted___value;
}

- (double)electedPlayerInterval
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MRUserSettings_electedPlayerInterval__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (electedPlayerInterval_onceToken != -1)
  {
    dispatch_once(&electedPlayerInterval_onceToken, block);
  }

  return *&electedPlayerInterval___value;
}

- (NSArray)routePickerAirPlayAllowList
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MRUserSettings_routePickerAirPlayAllowList__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (routePickerAirPlayAllowList_onceToken != -1)
  {
    dispatch_once(&routePickerAirPlayAllowList_onceToken, block);
  }

  return self->_routePickerAirPlayAllowList;
}

uint64_t __45__MRUserSettings_routePickerAirPlayAllowList__block_invoke(uint64_t a1)
{
  [(MRUserSettings *)*(a1 + 32) _loadRoutePickerAirPlayAllowList];
  v2 = *(*(a1 + 32) + 8);

  return [v2 addObserver:? forKeyPath:? options:? context:?];
}

- (NSArray)routePickerAirPlayDenyList
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MRUserSettings_routePickerAirPlayDenyList__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (routePickerAirPlayDenyList_onceToken != -1)
  {
    dispatch_once(&routePickerAirPlayDenyList_onceToken, block);
  }

  return self->_routePickerAirPlayDenyList;
}

uint64_t __44__MRUserSettings_routePickerAirPlayDenyList__block_invoke(uint64_t a1)
{
  [(MRUserSettings *)*(a1 + 32) _loadRoutePickerAirPlayDenyList];
  v2 = *(*(a1 + 32) + 8);

  return [v2 addObserver:? forKeyPath:? options:? context:?];
}

- (BOOL)supportProximityMigration
{
  if ([(MRUserSettings *)self supportProximityMigrationV2]|| MGGetSInt32Answer() - 1 > 2)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (NSArray)destinationResolverReconRetryIntervals
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MRUserSettings_destinationResolverReconRetryIntervals__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (destinationResolverReconRetryIntervals_onceToken != -1)
  {
    dispatch_once(&destinationResolverReconRetryIntervals_onceToken, block);
  }

  return destinationResolverReconRetryIntervals_intervals;
}

void __56__MRUserSettings_destinationResolverReconRetryIntervals__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) arrayForKey:@"destinationResolverReconRetryIntervals"];
  v2 = destinationResolverReconRetryIntervals_intervals;
  destinationResolverReconRetryIntervals_intervals = v1;

  if (![destinationResolverReconRetryIntervals_intervals count])
  {
    v3 = destinationResolverReconRetryIntervals_intervals;
    destinationResolverReconRetryIntervals_intervals = &unk_1F1577560;
  }
}

- (BOOL)supportLastPlayingDevice
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MRUserSettings_supportLastPlayingDevice__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (supportLastPlayingDevice_onceToken != -1)
  {
    dispatch_once(&supportLastPlayingDevice_onceToken, block);
  }

  return *&supportLastPlayingDevice___value != 0.0;
}

- (double)sendPlaybackSessionUpdateToCompanionCoalesceInterval
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__MRUserSettings_sendPlaybackSessionUpdateToCompanionCoalesceInterval__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (sendPlaybackSessionUpdateToCompanionCoalesceInterval_onceToken != -1)
  {
    dispatch_once(&sendPlaybackSessionUpdateToCompanionCoalesceInterval_onceToken, block);
  }

  return *&sendPlaybackSessionUpdateToCompanionCoalesceInterval___value;
}

- (BOOL)showBluePill
{
  supportRouteRecommendations = [(MRUserSettings *)self supportRouteRecommendations];
  if (supportRouteRecommendations)
  {

    LOBYTE(supportRouteRecommendations) = [(MRUserSettings *)self _BOOLValueForKey:1 usingDefaultValue:?];
  }

  return supportRouteRecommendations;
}

- (BOOL)enableQueueHandOffForRouteRecommendations
{
  supportRouteRecommendations = [(MRUserSettings *)self supportRouteRecommendations];
  if (supportRouteRecommendations)
  {

    LOBYTE(supportRouteRecommendations) = [(MRUserSettings *)self _BOOLValueForKey:0 usingDefaultValue:?];
  }

  return supportRouteRecommendations;
}

- (BOOL)alwaysShowVolumeControls
{
  if (_AXSAlwaysShowVolumeControlEnabled())
  {
    return 1;
  }

  return [(MRUserSettings *)self internalUI];
}

- (NSString)nearbyDeviceIdentifiersDidChangeNotification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MRUserSettings_nearbyDeviceIdentifiersDidChangeNotification__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (nearbyDeviceIdentifiersDidChangeNotification_onceToken != -1)
  {
    dispatch_once(&nearbyDeviceIdentifiersDidChangeNotification_onceToken, block);
  }

  return @"MRUserSettingsNearbyDeviceIdentifiersDidChangeNotification";
}

- (NSArray)nearbyDeviceIdentifiers
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MRUserSettings_nearbyDeviceIdentifiers__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (nearbyDeviceIdentifiers_onceToken != -1)
  {
    dispatch_once(&nearbyDeviceIdentifiers_onceToken, block);
  }

  return self->_nearbyDeviceIdentifiers;
}

- (BOOL)supportOutputContextPrewarming
{
  v2 = +[MRUserSettings currentSettings];
  if ([v2 supportMultiplayerHost])
  {
    v3 = _os_feature_enabled_impl();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)supportAirplayStereoPairPersistentConnections
{
  v2 = +[MRUserSettings currentSettings];
  if ([v2 supportMultiplayerHost])
  {
    v3 = _os_feature_enabled_impl();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)maxStreamCapacity
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MRUserSettings_maxStreamCapacity__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (maxStreamCapacity_onceToken != -1)
  {
    dispatch_once(&maxStreamCapacity_onceToken, block);
  }

  return maxStreamCapacity_max;
}

- (float)proximitySortingNearbyRadius
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MRUserSettings_proximitySortingNearbyRadius__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (proximitySortingNearbyRadius___token != -1)
  {
    dispatch_once(&proximitySortingNearbyRadius___token, block);
  }

  return *&proximitySortingNearbyRadius___proximitySortingNearbyRadius;
}

- (BOOL)startNowPlayingSessionABC
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MRUserSettings_startNowPlayingSessionABC__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (startNowPlayingSessionABC_onceToken != -1)
  {
    dispatch_once(&startNowPlayingSessionABC_onceToken, block);
  }

  return startNowPlayingSessionABC_support;
}

- (BOOL)excessiveNowPlayingControllersABC
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MRUserSettings_excessiveNowPlayingControllersABC__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (excessiveNowPlayingControllersABC_onceToken != -1)
  {
    dispatch_once(&excessiveNowPlayingControllersABC_onceToken, block);
  }

  return excessiveNowPlayingControllersABC_support;
}

- (BOOL)forceNowPlayingSessionFailure
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MRUserSettings_forceNowPlayingSessionFailure__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (forceNowPlayingSessionFailure_onceToken != -1)
  {
    dispatch_once(&forceNowPlayingSessionFailure_onceToken, block);
  }

  return forceNowPlayingSessionFailure_support;
}

- (BOOL)excessiveTaskAssertionsABC
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MRUserSettings_excessiveTaskAssertionsABC__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (excessiveTaskAssertionsABC_onceToken != -1)
  {
    dispatch_once(&excessiveTaskAssertionsABC_onceToken, block);
  }

  return excessiveTaskAssertionsABC_support;
}

- (NSArray)routeRecommendationEligibleApps
{
  v2 = [(NSUserDefaults *)self->_userDefaults arrayForKey:@"BannerApps"];
  v3 = [v2 copy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (BOOL)useProactivePFSQSender
{
  if ([(MRUserSettings *)self sendProactivePFSQOnUserSelectedASEChange]|| [(MRUserSettings *)self sendProactivePFSQOnProactiveASEChange])
  {
    return 1;
  }

  return [(MRUserSettings *)self sendProactivePFSQAfterBoot];
}

- (BOOL)internalUI
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__MRUserSettings_internalUI__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (internalUI_onceToken != -1)
  {
    dispatch_once(&internalUI_onceToken, block);
  }

  return internalUI___internal;
}

- (double)groupSessionEndpointDiscoveryInterval
{
  [(MRUserSettings *)self groupSessionLeaderDiscoveryInterval];
  v4 = v3;
  [(MRUserSettings *)self discoverEndpointTimeoutInterval];
  return v4 + v5;
}

- (BOOL)groupSessionListenForProxyJoinRequests
{
  v2 = +[MRSharedSettings currentSettings];
  supportGroupSessionHome = [v2 supportGroupSessionHome];

  return supportGroupSessionHome;
}

- (BOOL)groupSessionBoopAdvertisementEnabled
{
  v3 = +[MRSharedSettings currentSettings];
  supportGroupSessionHomePodBoop = [v3 supportGroupSessionHomePodBoop];

  if (supportGroupSessionHomePodBoop)
  {
    IsAudioAccessory = MSVDeviceIsAudioAccessory();
    if (IsAudioAccessory)
    {
      [(MRUserSettings *)v7 groupSessionBoopAdvertisementEnabled];
      LOBYTE(IsAudioAccessory) = v8;
    }
  }

  else
  {
    LOBYTE(IsAudioAccessory) = 0;
  }

  return IsAudioAccessory;
}

- (BOOL)groupSessionRotateAfterLastGuest
{
  IsAudioAccessory = MSVDeviceIsAudioAccessory();
  if (IsAudioAccessory)
  {

    LOBYTE(IsAudioAccessory) = [(MRUserSettings *)self _BOOLValueForKey:0 usingDefaultValue:?];
  }

  return IsAudioAccessory;
}

- (double)quickControlsInactiveTimeout
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MRUserSettings_quickControlsInactiveTimeout__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (quickControlsInactiveTimeout___once != -1)
  {
    dispatch_once(&quickControlsInactiveTimeout___once, block);
  }

  return *&quickControlsInactiveTimeout___timeout;
}

- (double)microphoneConnectionTimeout
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MRUserSettings_microphoneConnectionTimeout__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (microphoneConnectionTimeout___once != -1)
  {
    dispatch_once(&microphoneConnectionTimeout___once, block);
  }

  return *&microphoneConnectionTimeout___timeout;
}

- (BOOL)staticWaveform
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__MRUserSettings_staticWaveform__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (staticWaveform___once != -1)
  {
    dispatch_once(&staticWaveform___once, block);
  }

  return staticWaveform___static;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (MRUserSettingsSystemVolumeCapabilitiesDidChangeContext == context)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v14 = defaultCenter;
    v15 = @"MRUserSettingsSystemVolumeCapabilitiesOverrideDidChange";
LABEL_13:
    [defaultCenter postNotificationName:v15 object:self];

    goto LABEL_14;
  }

  if (MRUserSettingsSystemVolumeDidChangeContext == context)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v14 = defaultCenter;
    v15 = @"MRUserSettingsSystemVolumeOverrideDidChange";
    goto LABEL_13;
  }

  if (MRUserSettingsGroupSessionNearbyDiscoveryContext == context)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v14 = defaultCenter;
    v15 = @"MRGroupSessionNearbyContactDiscoveryDidChangeNotification";
    goto LABEL_13;
  }

  if (MRUserSettingsRoutePickerAirPlayAllowListContext == context)
  {
    [(MRUserSettings *)self _loadRoutePickerAirPlayAllowList];
    goto LABEL_14;
  }

  if (MRUserSettingsRoutePickerAirPlayDenyListContext == context)
  {
    [(MRUserSettings *)self _loadRoutePickerAirPlayDenyList];
    goto LABEL_14;
  }

  if (MRUserSettingsNearbyDeviceIdentifiersContext == context)
  {
    [MRUserSettings observeValueForKeyPath:? ofObject:? change:? context:?];
    goto LABEL_14;
  }

  if (MRUserSettingsGroupSessionBoopContext == context)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v14 = defaultCenter;
    v15 = @"MRUserSettingsGroupSessionBoopEnabledDidChangeNotification";
    goto LABEL_13;
  }

  v16.receiver = self;
  v16.super_class = MRUserSettings;
  [(MRUserSettings *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_14:
}

- (BOOL)carPlayBannersEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MRUserSettings_carPlayBannersEnabled__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  if (carPlayBannersEnabled_onceToken != -1)
  {
    dispatch_once(&carPlayBannersEnabled_onceToken, block);
  }

  return carPlayBannersEnabled___value;
}

- (uint64_t)_BOOLValueForKey:(uint64_t)key usingDefaultValue:
{
  v5 = a2;
  if (self)
  {
    v6 = [OUTLINED_FUNCTION_12_2() objectForKey:?];

    if (v6)
    {
      key = [OUTLINED_FUNCTION_12_2() BOOLForKey:?];
    }
  }

  else
  {
    key = 0;
  }

  return key;
}

uint64_t __34__MRUserSettings_shouldLogArtwork__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:0 usingDefaultValue:?];
  shouldLogArtwork_shouldLogArtwork = result;
  return result;
}

- (BOOL)verboseProtocolMessageLogging
{
  v3 = MSVDeviceOSIsInternalInstall();

  return [(MRUserSettings *)self _BOOLValueForKey:v3 usingDefaultValue:?];
}

uint64_t __49__MRUserSettings_verboseConnectionMonitorLogging__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:0 usingDefaultValue:?];
  verboseConnectionMonitorLogging___should = result;
  return result;
}

uint64_t __52__MRUserSettings_verboseNowPlayingControllerLogging__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:1 usingDefaultValue:?];
  verboseNowPlayingControllerLogging___should = result;
  return result;
}

uint64_t __47__MRUserSettings_verboseOriginForwarderLogging__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:1 usingDefaultValue:?];
  verboseOriginForwarderLogging___should = result;
  return result;
}

uint64_t __48__MRUserSettings_verboseNowPlayingStateObserver__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:0 usingDefaultValue:?];
  verboseNowPlayingStateObserver___should = result;
  return result;
}

uint64_t __54__MRUserSettings_verboseRemoteControlDiscoveryLogging__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:0 usingDefaultValue:?];
  verboseRemoteControlDiscoveryLogging___should = result;
  return result;
}

uint64_t __41__MRUserSettings_verboseDiscoveryLogging__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:0 usingDefaultValue:?];
  verboseDiscoveryLogging___should = result;
  return result;
}

uint64_t __44__MRUserSettings_verboseImageLoadingLogging__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:0 usingDefaultValue:?];
  verboseImageLoadingLogging___should = result;
  return result;
}

uint64_t __44__MRUserSettings_verboseMediaControlLogging__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:0 usingDefaultValue:?];
  verboseMediaControlLogging___should = result;
  return result;
}

void __45__MRUserSettings_verboseOutputContextLogging__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[MRUserSettings currentSettings];
  verboseOutputContextLogging___should = -[MRUserSettings _BOOLValueForKey:usingDefaultValue:](v1, @"verboseOutputContextLogging", [v2 supportOutputContextSync]);
}

uint64_t __52__MRUserSettings_verbosePlaybackQueueRequestLogging__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:0 usingDefaultValue:?];
  verbosePlaybackQueueRequestLogging___should = result;
  return result;
}

- (double)_doubleValueForKey:(double)key usingDefaultValue:
{
  v5 = a2;
  if (self)
  {
    v6 = [*(self + 8) objectForKey:v5];

    if (v6)
    {
      [*(self + 8) doubleForKey:v5];
      key = v7;
    }
  }

  else
  {
    key = 0.0;
  }

  return key;
}

- (uint64_t)_integerValueForKey:(uint64_t)key usingDefaultValue:
{
  v5 = a2;
  if (self)
  {
    v6 = [OUTLINED_FUNCTION_12_2() objectForKey:?];

    if (v6)
    {
      key = [OUTLINED_FUNCTION_12_2() integerForKey:?];
    }
  }

  else
  {
    key = 0;
  }

  return key;
}

uint64_t __80__MRUserSettings_nowPlayingAppStackShouldAutomaticallyForwardFailedPlayCommands__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:0 usingDefaultValue:?];
  nowPlayingAppStackShouldAutomaticallyForwardFailedPlayCommands_value = result;
  return result;
}

uint64_t __56__MRUserSettings_notifyDevicesInHomeThatPlaybackStarted__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:0 usingDefaultValue:?];
  notifyDevicesInHomeThatPlaybackStarted___value = result;
  return result;
}

- (void)_loadRoutePickerAirPlayAllowList
{
  v8 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [*(self + 8) valueForKey:@"routepicker-airplay-allowlist"];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_11_4();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = v1;
    if ((isKindOfClass & 1) == 0)
    {
      if (v1)
      {
        v5 = [OUTLINED_FUNCTION_7_1() arrayWithObjects:? count:?];
        v6 = *(self + 16);
        *(self + 16) = v5;

LABEL_7:
        goto LABEL_8;
      }

      v4 = 0;
    }

    objc_storeStrong((self + 16), v4);
    goto LABEL_7;
  }

LABEL_8:
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_loadRoutePickerAirPlayDenyList
{
  v8 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [*(self + 8) valueForKey:@"routepicker-airplay-denylist"];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_11_4();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = v1;
    if ((isKindOfClass & 1) == 0)
    {
      if (v1)
      {
        v5 = [OUTLINED_FUNCTION_7_1() arrayWithObjects:? count:?];
        v6 = *(self + 24);
        *(self + 24) = v5;

LABEL_7:
        goto LABEL_8;
      }

      v4 = 0;
    }

    objc_storeStrong((self + 24), v4);
    goto LABEL_7;
  }

LABEL_8:
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_loadNearbyDeviceIdentifiers
{
  v8 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [*(self + 8) valueForKey:@"NearbyDeviceIdentifiers"];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_11_4();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = v1;
    if ((isKindOfClass & 1) == 0)
    {
      if (v1)
      {
        v5 = [OUTLINED_FUNCTION_7_1() arrayWithObjects:? count:?];
        v6 = *(self + 32);
        *(self + 32) = v5;

LABEL_7:
        goto LABEL_8;
      }

      v4 = 0;
    }

    objc_storeStrong((self + 32), v4);
    goto LABEL_7;
  }

LABEL_8:
  v7 = *MEMORY[0x1E69E9840];
}

double __42__MRUserSettings_supportLastPlayingDevice__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:0 usingDefaultValue:?];
  *&supportLastPlayingDevice___value = result;
  return result;
}

- (unsigned)systemVolumeCapabilitiesOverride
{
  OUTLINED_FUNCTION_6_4();
  v6 = 3221225472;
  v7 = __50__MRUserSettings_systemVolumeCapabilitiesOverride__block_invoke;
  v8 = &unk_1E769A228;
  v9 = v3;
  if (systemVolumeCapabilitiesOverride_onceToken != -1)
  {
    dispatch_once(&systemVolumeCapabilitiesOverride_onceToken, block);
  }

  return [(MRUserSettings *)v2 _integerValueForKey:0 usingDefaultValue:?];
}

- (BOOL)needsMXApplications
{
  if ([(MRUserSettings *)self supportNowPlayingPIP])
  {
    return 1;
  }

  if (self)
  {
    return MSVDeviceIsAudioAccessory() ^ 1;
  }

  return 0;
}

void __35__MRUserSettings_maxStreamCapacity__block_invoke(uint64_t a1)
{
  v4 = MGCopyAnswer();
  v2 = *(a1 + 32);
  if ([v4 containsString:{@"AudioAccessory1, "}])
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  maxStreamCapacity_max = [(MRUserSettings *)v2 _integerValueForKey:v3 usingDefaultValue:?];
}

uint64_t __42__MRUserSettings_forceDeviceInfoDiscovery__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:0 usingDefaultValue:?];
  forceDeviceInfoDiscovery___value = result;
  return result;
}

float __46__MRUserSettings_proximitySortingNearbyRadius__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _doubleValueForKey:4.0 usingDefaultValue:?];
  proximitySortingNearbyRadius___proximitySortingNearbyRadius = LODWORD(result);
  return result;
}

uint64_t __46__MRUserSettings_shouldConnectToLocalEndpoint__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  IsAudioAccessory = MSVDeviceIsAudioAccessory();
  result = [(MRUserSettings *)v1 _BOOLValueForKey:IsAudioAccessory usingDefaultValue:?];
  shouldConnectToLocalEndpoint___value = result;
  return result;
}

uint64_t __43__MRUserSettings_startNowPlayingSessionABC__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:1 usingDefaultValue:?];
  startNowPlayingSessionABC_support = result;
  return result;
}

void __51__MRUserSettings_excessiveNowPlayingControllersABC__block_invoke(uint64_t a1)
{
  v1 = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:1 usingDefaultValue:?];
  excessiveNowPlayingControllersABC_support = v1;
  if (v1)
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v3 bundleIdentifier];
    excessiveNowPlayingControllersABC_support = MRMediaRemoteApplicationIsSystemMediaApplication(v2) ^ 1;
  }
}

uint64_t __47__MRUserSettings_forceNowPlayingSessionFailure__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:0 usingDefaultValue:?];
  forceNowPlayingSessionFailure_support = result;
  return result;
}

uint64_t __44__MRUserSettings_excessiveTaskAssertionsABC__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:1 usingDefaultValue:?];
  excessiveTaskAssertionsABC_support = result;
  return result;
}

uint64_t __51__MRUserSettings_inconsistentPlaybackQueueCacheABC__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:1 usingDefaultValue:?];
  inconsistentPlaybackQueueCacheABC_support = result;
  return result;
}

- (BOOL)sendProactivePFSQOnSiriActivation
{
  IsAudioAccessory = MSVDeviceIsAudioAccessory();

  return [(MRUserSettings *)self _BOOLValueForKey:IsAudioAccessory usingDefaultValue:?];
}

uint64_t __28__MRUserSettings_internalUI__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:0 usingDefaultValue:?];
  internalUI___internal = result;
  return result;
}

uint64_t __32__MRUserSettings_staticWaveform__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:0 usingDefaultValue:?];
  staticWaveform___static = result;
  return result;
}

uint64_t __39__MRUserSettings_carPlayBannersEnabled__block_invoke(uint64_t a1)
{
  result = [(MRUserSettings *)*(a1 + 32) _BOOLValueForKey:1 usingDefaultValue:?];
  carPlayBannersEnabled___value = result;
  return result;
}

- (uint64_t)groupSessionBoopAdvertisementEnabled
{
  *block = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MRUserSettings_groupSessionBoopAdvertisementEnabled__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = a2;
  if (groupSessionBoopAdvertisementEnabled_onceToken != -1)
  {
    dispatch_once(&groupSessionBoopAdvertisementEnabled_onceToken, block);
  }

  result = [(MRUserSettings *)a2 _BOOLValueForKey:1 usingDefaultValue:?];
  *a3 = result;
  return result;
}

- (void)observeValueForKeyPath:(uint64_t)a1 ofObject:change:context:.cold.1(uint64_t a1)
{
  [(MRUserSettings *)a1 _loadNearbyDeviceIdentifiers];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MRUserSettingsNearbyDeviceIdentifiersDidChangeNotification" object:a1];
}

@end