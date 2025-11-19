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
- (id)registerDiscoveryTokenForConfiguration:(id)a3;
- (int64_t)port;
- (uint64_t)_highestDiscoveryModeForConfiguration:(uint64_t)a1;
- (void)adjustOutputDeviceVolume:(int64_t)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)connectWithOptions:(unsigned int)a3 userInfo:(id)a4 completion:(id)a5;
- (void)createHostedEndpointWithOutputDeviceUIDs:(id)a3 details:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)disconnect:(id)a3;
- (void)modifyTopologyWithRequest:(id)a3 withReplyQueue:(id)a4 completion:(id)a5;
- (void)muteOutputDeviceVolume:(BOOL)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)notifyDiscoveryOutputDevicesChanged:(id)a3 forConfiguration:(id)a4;
- (void)outputDeviceVolume:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)outputDeviceVolumeControlCapabilities:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)ping:(double)a3 callback:(id)a4 withQueue:(id)a5;
- (void)removeFromParentGroup:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)requestGroupSessionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)requestMicrophoneConnectionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)sendClientUpdatesConfigMessage;
- (void)sendCustomData:(id)a3 withName:(id)a4;
- (void)setConnectionStateCallback:(id)a3 withQueue:(id)a4;
- (void)setConversationDetectionEnabled:(BOOL)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)setCustomDataCallback:(id)a3 withQueue:(id)a4;
- (void)setDeviceInfoChangedCallback:(id)a3 withQueue:(id)a4;
- (void)setDiscoveryMode:(unsigned int)a3 forConfiguration:(id)a4;
- (void)setDiscoveryOutputDevicesChangedCallback:(id)a3 forToken:(id)a4;
- (void)setListeningMode:(id)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)setNameCallback:(id)a3 withQueue:(id)a4;
- (void)setOutputDeviceVolume:(float)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)setOutputDeviceVolume:(float)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)setPairingAllowedCallback:(id)a3 withQueue:(id)a4;
- (void)setPairingCallback:(id)a3 withQueue:(id)a4;
- (void)setSubscribedPlayerPaths:(id)a3;
- (void)setVolumeCallback:(id)a3 withQueue:(id)a4;
- (void)setVolumeChangedCallback:(id)a3 withQueue:(id)a4;
- (void)setVolumeControlCapabilitiesCallback:(id)a3 withQueue:(id)a4;
- (void)setVolumeMutedChangedCallback:(id)a3 withQueue:(id)a4;
- (void)setWantsNowPlayingArtworkNotifications:(BOOL)a3;
- (void)setWantsNowPlayingNotifications:(BOOL)a3;
- (void)setWantsOutputDeviceNotifications:(BOOL)a3;
- (void)setWantsSystemEndpointNotifications:(BOOL)a3;
- (void)setWantsVolumeNotifications:(BOOL)a3;
- (void)unregisterDiscoveryToken:(id)a3;
- (void)updateDesignatedGroupLeader:(id)a3;
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

- (void)setSubscribedPlayerPaths:(id)a3
{
  v3 = a3;
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

- (void)setWantsNowPlayingNotifications:(BOOL)a3
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

- (void)setWantsNowPlayingArtworkNotifications:(BOOL)a3
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

- (void)setWantsVolumeNotifications:(BOOL)a3
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

- (void)setWantsOutputDeviceNotifications:(BOOL)a3
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

- (void)setWantsSystemEndpointNotifications:(BOOL)a3
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

- (void)disconnect:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice disconnect:]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)setPairingCallback:(id)a3 withQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setPairingCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setConnectionStateCallback:(id)a3 withQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setConnectionStateCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setNameCallback:(id)a3 withQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setNameCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setPairingAllowedCallback:(id)a3 withQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setPairingAllowedCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setCustomDataCallback:(id)a3 withQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setCustomDataCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setVolumeCallback:(id)a3 withQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setVolumeCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setVolumeChangedCallback:(id)a3 withQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setVolumeChangedCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setVolumeControlCapabilitiesCallback:(id)a3 withQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setVolumeControlCapabilitiesCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setVolumeMutedChangedCallback:(id)a3 withQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setVolumeMutedChangedCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setDeviceInfoChangedCallback:(id)a3 withQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setDeviceInfoChangedCallback:withQueue:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)removeFromParentGroup:(id)a3 queue:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D930];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice removeFromParentGroup:queue:completion:]"];
  v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)requestGroupSessionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D930];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice requestGroupSessionWithDetails:queue:completion:]"];
  v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)requestMicrophoneConnectionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D930];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice requestMicrophoneConnectionWithDetails:queue:completion:]"];
  v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)outputDeviceVolumeControlCapabilities:(id)a3 queue:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D930];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice outputDeviceVolumeControlCapabilities:queue:completion:]"];
  v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)outputDeviceVolume:(id)a3 queue:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D930];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice outputDeviceVolume:queue:completion:]"];
  v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)setOutputDeviceVolume:(float)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v14 = [[MRRequestDetails alloc] initWithName:@"setOutputDeviceVolume" requestID:0 reason:@"LegacyAPI"];
  *&v13 = a3;
  [(MRExternalDevice *)self setOutputDeviceVolume:v12 outputDeviceUID:v14 details:v11 queue:v10 completion:v13];
}

- (void)setOutputDeviceVolume:(float)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = MEMORY[0x1E695DF30];
  v15 = *MEMORY[0x1E695D930];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setOutputDeviceVolume:outputDeviceUID:details:queue:completion:]"];
  v17 = [v14 exceptionWithName:v15 reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)adjustOutputDeviceVolume:(int64_t)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = MEMORY[0x1E695DF30];
  v15 = *MEMORY[0x1E695D930];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice adjustOutputDeviceVolume:outputDeviceUID:details:queue:completion:]"];
  v17 = [v14 exceptionWithName:v15 reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)muteOutputDeviceVolume:(BOOL)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = MEMORY[0x1E695DF30];
  v15 = *MEMORY[0x1E695D930];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice muteOutputDeviceVolume:outputDeviceUID:details:queue:completion:]"];
  v17 = [v14 exceptionWithName:v15 reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)setListeningMode:(id)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x1E695DF30];
  v14 = *MEMORY[0x1E695D930];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setListeningMode:outputDeviceUID:queue:completion:]"];
  v16 = [v13 exceptionWithName:v14 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)setConversationDetectionEnabled:(BOOL)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = MEMORY[0x1E695DF30];
  v12 = *MEMORY[0x1E695D930];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setConversationDetectionEnabled:outputDeviceUID:queue:completion:]"];
  v14 = [v11 exceptionWithName:v12 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)modifyTopologyWithRequest:(id)a3 withReplyQueue:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D930];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice modifyTopologyWithRequest:withReplyQueue:completion:]"];
  v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)createHostedEndpointWithOutputDeviceUIDs:(id)a3 details:(id)a4 queue:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x1E695DF30];
  v14 = *MEMORY[0x1E695D930];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice createHostedEndpointWithOutputDeviceUIDs:details:queue:completion:]"];
  v16 = [v13 exceptionWithName:v14 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)sendCustomData:(id)a3 withName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice sendCustomData:withName:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)ping:(double)a3 callback:(id)a4 withQueue:(id)a5
{
  v6 = a4;
  v7 = a5;
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

- (void)updateDesignatedGroupLeader:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice updateDesignatedGroupLeader:]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)connectWithOptions:(unsigned int)a3 userInfo:(id)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice connectWithOptions:userInfo:completion:]"];
  v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (BOOL)supportsExternalDiscovery
{
  v2 = [(MRExternalDevice *)self supportedMessages];
  v3 = [v2 isSupported:109];

  return v3;
}

- (id)registerDiscoveryTokenForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:arc4random()];
  v6 = self;
  objc_sync_enter(v6);
  discoveryConfigurations = v6->_discoveryConfigurations;
  if (!discoveryConfigurations)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = v6->_discoveryConfigurations;
    v6->_discoveryConfigurations = v8;

    discoveryConfigurations = v6->_discoveryConfigurations;
  }

  [(NSMutableDictionary *)discoveryConfigurations setObject:v4 forKeyedSubscript:v5];
  objc_sync_exit(v6);

  return v5;
}

- (uint64_t)_highestDiscoveryModeForConfiguration:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v5 = *(a1 + 24);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__MRExternalDevice__highestDiscoveryModeForConfiguration___block_invoke;
    v7[3] = &unk_1E769E9D0;
    v7[4] = a1;
    v8 = v3;
    v9 = &v10;
    [v5 enumerateKeysAndObjectsUsingBlock:v7];
    a1 = *(v11 + 6);

    _Block_object_dispose(&v10, 8);
  }

  return a1;
}

- (void)setDiscoveryMode:(unsigned int)a3 forConfiguration:(id)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDevice setDiscoveryMode:forConfiguration:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)setDiscoveryOutputDevicesChangedCallback:(id)a3 forToken:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = v13;
  if (!v7->_discoveryOutputDevicesCallbacks)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    discoveryOutputDevicesCallbacks = v7->_discoveryOutputDevicesCallbacks;
    v7->_discoveryOutputDevicesCallbacks = v9;

    v8 = v13;
  }

  v11 = [v8 copy];
  v12 = MEMORY[0x1A58E3570]();
  [(NSMutableDictionary *)v7->_discoveryOutputDevicesCallbacks setObject:v12 forKeyedSubscript:v6];

  objc_sync_exit(v7);
}

- (void)unregisterDiscoveryToken:(id)a3
{
  v5 = a3;
  [(MRExternalDevice *)self setDiscoveryMode:0 forToken:v5];
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)v4->_discoveryOutputDevicesCallbacks setObject:0 forKeyedSubscript:v5];
  [(NSMutableDictionary *)v4->_discoveryConfigurations setObject:0 forKeyedSubscript:v5];
  [(NSMutableDictionary *)v4->_discoveryModes setObject:0 forKeyedSubscript:v5];
  objc_sync_exit(v4);
}

- (void)notifyDiscoveryOutputDevicesChanged:(id)a3 forConfiguration:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = self;
  objc_sync_enter(v9);
  discoveryOutputDevicesCallbacks = v9->_discoveryOutputDevicesCallbacks;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __73__MRExternalDevice_notifyDiscoveryOutputDevicesChanged_forConfiguration___block_invoke;
  v22[3] = &unk_1E769E980;
  v22[4] = v9;
  v11 = v7;
  v23 = v11;
  v12 = v8;
  v24 = v12;
  [(NSMutableDictionary *)discoveryOutputDevicesCallbacks enumerateKeysAndObjectsUsingBlock:v22];

  objc_sync_exit(v9);
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = [(NSMutableDictionary *)v2->_discoveryConfigurations allValues];
  v6 = [v4 initWithArray:v5];

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __40__MRExternalDevice_discoveryDescription__block_invoke;
  v13 = &unk_1E769E9A8;
  v14 = v2;
  v7 = v3;
  v15 = v7;
  [v6 enumerateObjectsUsingBlock:&v10];
  v8 = [v7 componentsJoinedByString:{@", ", v10, v11, v12, v13, v14}];

  objc_sync_exit(v2);

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