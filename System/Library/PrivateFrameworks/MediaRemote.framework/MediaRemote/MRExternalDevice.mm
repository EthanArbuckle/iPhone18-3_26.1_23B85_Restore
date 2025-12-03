@interface MRExternalDevice
- (BOOL)isPaired;
- (BOOL)isUsingSystemPairing;
- (BOOL)supportsExternalDiscovery;
- (BOOL)wantsNowPlayingArtworkNotifications;
- (BOOL)wantsNowPlayingNotifications;
- (BOOL)wantsOutputDeviceNotifications;
- (BOOL)wantsSystemEndpointNotifications;
- (BOOL)wantsVolumeNotifications;
- (MRDeviceInfo)deviceInfo;
- (MRExternalOutputContextDataSource)externalOutputContext;
- (MRGroupSessionToken)groupSessionToken;
- (MROrigin)customOrigin;
- (MRSupportedProtocolMessages)supportedMessages;
- (NSArray)subscribedPlayerPaths;
- (NSError)lastConnectionError;
- (NSString)hostName;
- (NSString)name;
- (NSString)uid;
- (id)_init;
- (id)currentClientUpdatesConfigMessage;
- (id)discoveryDescription;
- (id)errorForCurrentState;
- (id)registerDiscoveryTokenForConfiguration:(id)configuration;
- (int64_t)port;
- (uint64_t)_highestDiscoveryModeForConfiguration:(uint64_t)configuration;
- (void)adjustOutputDeviceVolume:(int64_t)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion;
- (void)connectWithOptions:(unsigned int)options userInfo:(id)info completion:(id)completion;
- (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion;
- (void)disconnect:(id)disconnect;
- (void)modifyTopologyWithRequest:(id)request withReplyQueue:(id)queue completion:(id)completion;
- (void)muteOutputDeviceVolume:(BOOL)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion;
- (void)notifyDiscoveryOutputDevicesChanged:(id)changed forConfiguration:(id)configuration;
- (void)outputDeviceVolume:(id)volume queue:(id)queue completion:(id)completion;
- (void)outputDeviceVolumeControlCapabilities:(id)capabilities queue:(id)queue completion:(id)completion;
- (void)ping:(double)ping callback:(id)callback withQueue:(id)queue;
- (void)removeFromParentGroup:(id)group queue:(id)queue completion:(id)completion;
- (void)requestGroupSessionWithDetails:(id)details queue:(id)queue completion:(id)completion;
- (void)requestMicrophoneConnectionWithDetails:(id)details queue:(id)queue completion:(id)completion;
- (void)sendClientUpdatesConfigMessage;
- (void)sendCustomData:(id)data withName:(id)name;
- (void)setConnectionStateCallback:(id)callback withQueue:(id)queue;
- (void)setConversationDetectionEnabled:(BOOL)enabled outputDeviceUID:(id)d queue:(id)queue completion:(id)completion;
- (void)setCustomDataCallback:(id)callback withQueue:(id)queue;
- (void)setDeviceInfoChangedCallback:(id)callback withQueue:(id)queue;
- (void)setDiscoveryMode:(unsigned int)mode forConfiguration:(id)configuration;
- (void)setDiscoveryOutputDevicesChangedCallback:(id)callback forToken:(id)token;
- (void)setListeningMode:(id)mode outputDeviceUID:(id)d queue:(id)queue completion:(id)completion;
- (void)setNameCallback:(id)callback withQueue:(id)queue;
- (void)setOutputDeviceVolume:(float)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion;
- (void)setOutputDeviceVolume:(float)volume outputDeviceUID:(id)d queue:(id)queue completion:(id)completion;
- (void)setPairingAllowedCallback:(id)callback withQueue:(id)queue;
- (void)setPairingCallback:(id)callback withQueue:(id)queue;
- (void)setSubscribedPlayerPaths:(id)paths;
- (void)setVolumeCallback:(id)callback withQueue:(id)queue;
- (void)setVolumeChangedCallback:(id)callback withQueue:(id)queue;
- (void)setVolumeControlCapabilitiesCallback:(id)callback withQueue:(id)queue;
- (void)setVolumeMutedChangedCallback:(id)callback withQueue:(id)queue;
- (void)setWantsNowPlayingArtworkNotifications:(BOOL)notifications;
- (void)setWantsNowPlayingNotifications:(BOOL)notifications;
- (void)setWantsOutputDeviceNotifications:(BOOL)notifications;
- (void)setWantsSystemEndpointNotifications:(BOOL)notifications;
- (void)setWantsVolumeNotifications:(BOOL)notifications;
- (void)unregisterDiscoveryToken:(id)token;
- (void)updateDesignatedGroupLeader:(id)leader;
@end

@implementation MRExternalDevice

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MRExternalDevice;
  return [(MRExternalDevice *)&v3 init];
}

- (NSArray)subscribedPlayerPaths
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice subscribedPlayerPaths]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)setSubscribedPlayerPaths:(id)paths
{
  pathsCopy = paths;
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setSubscribedPlayerPaths:]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (NSString)name
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice name]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (NSString)hostName
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice hostName]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (int64_t)port
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice port]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (NSString)uid
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice uid]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (MROrigin)customOrigin
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice customOrigin]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (MRDeviceInfo)deviceInfo
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice deviceInfo]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (MRSupportedProtocolMessages)supportedMessages
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice supportedMessages]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (MRGroupSessionToken)groupSessionToken
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice groupSessionToken]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (MRExternalOutputContextDataSource)externalOutputContext
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice externalOutputContext]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (BOOL)wantsNowPlayingNotifications
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice wantsNowPlayingNotifications]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)setWantsNowPlayingNotifications:(BOOL)notifications
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setWantsNowPlayingNotifications:]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (BOOL)wantsNowPlayingArtworkNotifications
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice wantsNowPlayingArtworkNotifications]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)setWantsNowPlayingArtworkNotifications:(BOOL)notifications
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setWantsNowPlayingArtworkNotifications:]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (BOOL)wantsVolumeNotifications
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice wantsVolumeNotifications]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)setWantsVolumeNotifications:(BOOL)notifications
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setWantsVolumeNotifications:]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (BOOL)wantsOutputDeviceNotifications
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice wantsOutputDeviceNotifications]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)setWantsOutputDeviceNotifications:(BOOL)notifications
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setWantsOutputDeviceNotifications:]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (BOOL)wantsSystemEndpointNotifications
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice wantsSystemEndpointNotifications]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)setWantsSystemEndpointNotifications:(BOOL)notifications
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setWantsSystemEndpointNotifications:]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (BOOL)isPaired
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice isPaired]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (BOOL)isUsingSystemPairing
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice isUsingSystemPairing]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (NSError)lastConnectionError
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice lastConnectionError]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)disconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice disconnect:]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)setPairingCallback:(id)callback withQueue:(id)queue
{
  callbackCopy = callback;
  queueCopy = queue;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setPairingCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setConnectionStateCallback:(id)callback withQueue:(id)queue
{
  callbackCopy = callback;
  queueCopy = queue;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setConnectionStateCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setNameCallback:(id)callback withQueue:(id)queue
{
  callbackCopy = callback;
  queueCopy = queue;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setNameCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setPairingAllowedCallback:(id)callback withQueue:(id)queue
{
  callbackCopy = callback;
  queueCopy = queue;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setPairingAllowedCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setCustomDataCallback:(id)callback withQueue:(id)queue
{
  callbackCopy = callback;
  queueCopy = queue;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setCustomDataCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setVolumeCallback:(id)callback withQueue:(id)queue
{
  callbackCopy = callback;
  queueCopy = queue;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setVolumeCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setVolumeChangedCallback:(id)callback withQueue:(id)queue
{
  callbackCopy = callback;
  queueCopy = queue;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setVolumeChangedCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setVolumeControlCapabilitiesCallback:(id)callback withQueue:(id)queue
{
  callbackCopy = callback;
  queueCopy = queue;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setVolumeControlCapabilitiesCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setVolumeMutedChangedCallback:(id)callback withQueue:(id)queue
{
  callbackCopy = callback;
  queueCopy = queue;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setVolumeMutedChangedCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setDeviceInfoChangedCallback:(id)callback withQueue:(id)queue
{
  callbackCopy = callback;
  queueCopy = queue;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setDeviceInfoChangedCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)removeFromParentGroup:(id)group queue:(id)queue completion:(id)completion
{
  groupCopy = group;
  queueCopy = queue;
  completionCopy = completion;
  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D930];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice removeFromParentGroup:queue:completion:]"];
  v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)requestGroupSessionWithDetails:(id)details queue:(id)queue completion:(id)completion
{
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D930];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice requestGroupSessionWithDetails:queue:completion:]"];
  v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)requestMicrophoneConnectionWithDetails:(id)details queue:(id)queue completion:(id)completion
{
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D930];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice requestMicrophoneConnectionWithDetails:queue:completion:]"];
  v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)outputDeviceVolumeControlCapabilities:(id)capabilities queue:(id)queue completion:(id)completion
{
  capabilitiesCopy = capabilities;
  queueCopy = queue;
  completionCopy = completion;
  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D930];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice outputDeviceVolumeControlCapabilities:queue:completion:]"];
  v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)outputDeviceVolume:(id)volume queue:(id)queue completion:(id)completion
{
  volumeCopy = volume;
  queueCopy = queue;
  completionCopy = completion;
  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D930];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice outputDeviceVolume:queue:completion:]"];
  v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)setOutputDeviceVolume:(float)volume outputDeviceUID:(id)d queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  dCopy = d;
  v14 = [[MRRequestDetails alloc] initWithName:@"setOutputDeviceVolume" requestID:0 reason:@"LegacyAPI"];
  *&v13 = volume;
  [(MRExternalDevice *)self setOutputDeviceVolume:dCopy outputDeviceUID:v14 details:queueCopy queue:completionCopy completion:v13];
}

- (void)setOutputDeviceVolume:(float)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion
{
  dCopy = d;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v14 = MEMORY[0x1E695DF30];
  v15 = *MEMORY[0x1E695D930];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setOutputDeviceVolume:outputDeviceUID:details:queue:completion:]"];
  v17 = [v14 exceptionWithName:v15 reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)adjustOutputDeviceVolume:(int64_t)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion
{
  dCopy = d;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v14 = MEMORY[0x1E695DF30];
  v15 = *MEMORY[0x1E695D930];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice adjustOutputDeviceVolume:outputDeviceUID:details:queue:completion:]"];
  v17 = [v14 exceptionWithName:v15 reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)muteOutputDeviceVolume:(BOOL)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion
{
  dCopy = d;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v14 = MEMORY[0x1E695DF30];
  v15 = *MEMORY[0x1E695D930];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice muteOutputDeviceVolume:outputDeviceUID:details:queue:completion:]"];
  v17 = [v14 exceptionWithName:v15 reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)setListeningMode:(id)mode outputDeviceUID:(id)d queue:(id)queue completion:(id)completion
{
  modeCopy = mode;
  dCopy = d;
  queueCopy = queue;
  completionCopy = completion;
  v13 = MEMORY[0x1E695DF30];
  v14 = *MEMORY[0x1E695D930];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setListeningMode:outputDeviceUID:queue:completion:]"];
  v16 = [v13 exceptionWithName:v14 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)setConversationDetectionEnabled:(BOOL)enabled outputDeviceUID:(id)d queue:(id)queue completion:(id)completion
{
  dCopy = d;
  queueCopy = queue;
  completionCopy = completion;
  v11 = MEMORY[0x1E695DF30];
  v12 = *MEMORY[0x1E695D930];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setConversationDetectionEnabled:outputDeviceUID:queue:completion:]"];
  v14 = [v11 exceptionWithName:v12 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)modifyTopologyWithRequest:(id)request withReplyQueue:(id)queue completion:(id)completion
{
  requestCopy = request;
  queueCopy = queue;
  completionCopy = completion;
  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D930];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice modifyTopologyWithRequest:withReplyQueue:completion:]"];
  v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion
{
  dsCopy = ds;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v13 = MEMORY[0x1E695DF30];
  v14 = *MEMORY[0x1E695D930];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice createHostedEndpointWithOutputDeviceUIDs:details:queue:completion:]"];
  v16 = [v13 exceptionWithName:v14 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)sendCustomData:(id)data withName:(id)name
{
  dataCopy = data;
  nameCopy = name;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice sendCustomData:withName:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)ping:(double)ping callback:(id)callback withQueue:(id)queue
{
  callbackCopy = callback;
  queueCopy = queue;
  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice ping:callback:withQueue:]"];
  v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (id)errorForCurrentState
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice errorForCurrentState]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (id)currentClientUpdatesConfigMessage
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice currentClientUpdatesConfigMessage]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)sendClientUpdatesConfigMessage
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice sendClientUpdatesConfigMessage]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)updateDesignatedGroupLeader:(id)leader
{
  leaderCopy = leader;
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice updateDesignatedGroupLeader:]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)connectWithOptions:(unsigned int)options userInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice connectWithOptions:userInfo:completion:]"];
  v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (BOOL)supportsExternalDiscovery
{
  supportedMessages = [(MRExternalDevice *)self supportedMessages];
  v3 = [supportedMessages isSupported:109];

  return v3;
}

- (id)registerDiscoveryTokenForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:arc4random()];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  discoveryConfigurations = selfCopy->_discoveryConfigurations;
  if (!discoveryConfigurations)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = selfCopy->_discoveryConfigurations;
    selfCopy->_discoveryConfigurations = v8;

    discoveryConfigurations = selfCopy->_discoveryConfigurations;
  }

  [(NSMutableDictionary *)discoveryConfigurations setObject:configurationCopy forKeyedSubscript:v5];
  objc_sync_exit(selfCopy);

  return v5;
}

- (uint64_t)_highestDiscoveryModeForConfiguration:(uint64_t)configuration
{
  v3 = a2;
  v4 = v3;
  if (configuration)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v5 = *(configuration + 24);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__MRExternalDevice__highestDiscoveryModeForConfiguration___block_invoke;
    v7[3] = &unk_1E769E9D0;
    v7[4] = configuration;
    v8 = v3;
    v9 = &v10;
    [v5 enumerateKeysAndObjectsUsingBlock:v7];
    configuration = *(v11 + 6);

    _Block_object_dispose(&v10, 8);
  }

  return configuration;
}

- (void)setDiscoveryMode:(unsigned int)mode forConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setDiscoveryMode:forConfiguration:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)setDiscoveryOutputDevicesChangedCallback:(id)callback forToken:(id)token
{
  callbackCopy = callback;
  tokenCopy = token;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = callbackCopy;
  if (!selfCopy->_discoveryOutputDevicesCallbacks)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    discoveryOutputDevicesCallbacks = selfCopy->_discoveryOutputDevicesCallbacks;
    selfCopy->_discoveryOutputDevicesCallbacks = v9;

    v8 = callbackCopy;
  }

  v11 = [v8 copy];
  v12 = MEMORY[0x1A58E3570]();
  [(NSMutableDictionary *)selfCopy->_discoveryOutputDevicesCallbacks setObject:v12 forKeyedSubscript:tokenCopy];

  objc_sync_exit(selfCopy);
}

- (void)unregisterDiscoveryToken:(id)token
{
  tokenCopy = token;
  [(MRExternalDevice *)self setDiscoveryMode:0 forToken:tokenCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_discoveryOutputDevicesCallbacks setObject:0 forKeyedSubscript:tokenCopy];
  [(NSMutableDictionary *)selfCopy->_discoveryConfigurations setObject:0 forKeyedSubscript:tokenCopy];
  [(NSMutableDictionary *)selfCopy->_discoveryModes setObject:0 forKeyedSubscript:tokenCopy];
  objc_sync_exit(selfCopy);
}

- (void)notifyDiscoveryOutputDevicesChanged:(id)changed forConfiguration:(id)configuration
{
  v26 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  configurationCopy = configuration;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  discoveryOutputDevicesCallbacks = selfCopy->_discoveryOutputDevicesCallbacks;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __73__MRExternalDevice_notifyDiscoveryOutputDevicesChanged_forConfiguration___block_invoke;
  v22[3] = &unk_1E769E980;
  v22[4] = selfCopy;
  v11 = configurationCopy;
  v23 = v11;
  v12 = v8;
  v24 = v12;
  [(NSMutableDictionary *)discoveryOutputDevicesCallbacks enumerateKeysAndObjectsUsingBlock:v22];

  objc_sync_exit(selfCopy);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v14)
  {
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v13);
        }

        (*(*(*(&v18 + 1) + 8 * v16) + 16))(*(*(&v18 + 1) + 8 * v16));
        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __73__MRExternalDevice_notifyDiscoveryOutputDevicesChanged_forConfiguration___block_invoke(void *a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = *(a1[4] + 16);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [*(a1[4] + 24) objectForKeyedSubscript:v6];

  v9 = [v8 intValue];
  if ([v7 isEqual:a1[5]])
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = a1[6];
    v12 = MEMORY[0x1A58E3570](v13);
    [v11 addObject:v12];
  }
}

- (id)discoveryDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  allValues = [(NSMutableDictionary *)selfCopy->_discoveryConfigurations allValues];
  v6 = [v4 initWithArray:allValues];

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __40__MRExternalDevice_discoveryDescription__block_invoke;
  v13 = &unk_1E769E9A8;
  v14 = selfCopy;
  v7 = v3;
  v15 = v7;
  [v6 enumerateObjectsUsingBlock:&v10];
  v8 = [v7 componentsJoinedByString:{@", ", v10, v11, v12, v13, v14}];

  objc_sync_exit(selfCopy);

  return v8;
}

void __40__MRExternalDevice_discoveryDescription__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  LODWORD(v3) = [(MRExternalDevice *)v3 _highestDiscoveryModeForConfiguration:v4];
  v5 = [v4 features];

  v8 = MRMediaRemoteEndpointFeaturesDescription(v5);
  v6 = MRMediaRemoteCopyRouteDiscoveryModeDescription(v3);
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@: %@", v8, v6];
  [*(a1 + 40) addObject:v7];
}

void __58__MRExternalDevice__highestDiscoveryModeForConfiguration___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = *(a1[4] + 16);
  v6 = a3;
  v9 = [v5 objectForKeyedSubscript:a2];
  v7 = [v6 intValue];

  if ([v9 isEqual:a1[5]])
  {
    v8 = *(a1[6] + 8);
    if (v7 > *(v8 + 24))
    {
      *(v8 + 24) = v7;
    }
  }
}

@end