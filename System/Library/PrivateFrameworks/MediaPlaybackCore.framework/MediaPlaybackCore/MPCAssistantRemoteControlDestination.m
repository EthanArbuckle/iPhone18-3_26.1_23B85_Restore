@interface MPCAssistantRemoteControlDestination
+ (id)iBooksApplicationDestination;
+ (id)nowPlayingApplicationDestination;
+ (id)podcastsApplicationDestination;
+ (id)systemMediaApplicationDestination;
- (MPCAssistantRemoteControlDestination)initWithAppBundleID:(id)a3 playerID:(id)a4 origin:(void *)a5;
- (MPCAssistantRemoteControlDestination)initWithCoder:(id)a3;
- (MPCAssistantRemoteControlDestination)initWithPlayerPath:(id)a3;
- (id)_copyWithZone:(_NSZone *)a3 usingConcreteClass:(Class)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)createPlayerPath;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)resolveForWatchControlCommandWithRouteIdentifiers:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)resolveWithQueue:(id)a3 hashedRouteIdentifiers:(id)a4 localPlaybackPermitted:(BOOL)a5 audioRoutingInfo:(id)a6 completion:(id)a7;
- (void)resolveWithQueue:(id)a3 routeIdentifiers:(id)a4 localPlaybackPermitted:(BOOL)a5 audioRoutingInfo:(id)a6 completion:(id)a7;
@end

@implementation MPCAssistantRemoteControlDestination

- (MPCAssistantRemoteControlDestination)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AppBundleID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PlayerID"];
  v7 = [(MPCAssistantRemoteControlDestination *)self initWithAppBundleID:v5 playerID:v6 origin:0];
  if (v7)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OriginatingOutputDeviceUID"];
    originatingOutputDeviceUID = v7->_originatingOutputDeviceUID;
    v7->_originatingOutputDeviceUID = v8;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  originatingOutputDeviceUID = self->_originatingOutputDeviceUID;
  v5 = a3;
  [v5 encodeObject:originatingOutputDeviceUID forKey:@"OriginatingOutputDeviceUID"];
  [v5 encodeObject:self->_appBundleID forKey:@"AppBundleID"];
  [v5 encodeObject:self->_playerID forKey:@"PlayerID"];
}

- (id)_copyWithZone:(_NSZone *)a3 usingConcreteClass:(Class)a4
{
  v5 = objc_alloc_init(a4);
  v6 = [(NSString *)self->_appBundleID copy];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_playerID copy];
  v9 = v5[2];
  v5[2] = v8;

  origin = self->_origin;
  if (origin)
  {
    origin = CFRetain(origin);
  }

  v5[3] = origin;
  v11 = [(NSArray *)self->_outputDeviceUIDs copy];
  v12 = v5[4];
  v5[4] = v11;

  v13 = [(NSArray *)self->_hashedOutputDeviceUIDs copy];
  v14 = v5[5];
  v5[5] = v13;

  v15 = [(NSArray *)self->_outputGroups copy];
  v16 = v5[6];
  v5[6] = v15;

  v17 = [(NSString *)self->_outputGroupID copy];
  v18 = v5[7];
  v5[7] = v17;

  v19 = [(NSString *)self->_originatingOutputDeviceUID copy];
  v20 = v5[8];
  v5[8] = v19;

  *(v5 + 72) = self->_singleGroup;
  *(v5 + 73) = self->_originatingDeviceControl;
  *(v5 + 74) = self->_isCompanion;
  *(v5 + 75) = self->_isLocal;
  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MPCAssistantRemoteControlDestination *)self _copyWithZone:a3 usingConcreteClass:v5];
}

+ (id)nowPlayingApplicationDestination
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (id)iBooksApplicationDestination
{
  v2 = [objc_alloc(objc_opt_class()) initWithAppBundleID:@"com.apple.iBooks"];

  return v2;
}

+ (id)podcastsApplicationDestination
{
  v2 = [objc_alloc(objc_opt_class()) initWithAppBundleID:*MEMORY[0x1E69B12F8]];

  return v2;
}

+ (id)systemMediaApplicationDestination
{
  v2 = *MEMORY[0x1E69B12F0];
  v3 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v4 = [v3 sonicHijack];

  if (v4)
  {

    v2 = @"com.apple.Sonic";
  }

  v5 = [objc_alloc(objc_opt_class()) initWithAppBundleID:v2];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MPCAssistantRemoteControlDestination *)self _copyWithZone:a3 usingConcreteClass:v5];
}

- (void)resolveForWatchControlCommandWithRouteIdentifiers:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MPCAssistantRemoteControlDestination *)self mutableCopy];
  if ([v8 count])
  {
    [v11 setOutputDeviceUIDs:v8];
    v10[2](v10, v11);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __107__MPCAssistantRemoteControlDestination_resolveForWatchControlCommandWithRouteIdentifiers_queue_completion___block_invoke;
    aBlock[3] = &unk_1E82311C0;
    aBlock[4] = self;
    v12 = v11;
    v28 = v12;
    v13 = _Block_copy(aBlock);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __107__MPCAssistantRemoteControlDestination_resolveForWatchControlCommandWithRouteIdentifiers_queue_completion___block_invoke_43;
    v23[3] = &unk_1E8231210;
    v23[4] = self;
    v24 = v9;
    v25 = v12;
    v14 = v13;
    v26 = v14;
    v15 = _Block_copy(v23);
    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "resolveForWatchControlCommand: GetElectedPlayerPath start", buf, 2u);
    }

    v19 = v15;
    v20 = v10;
    v21 = v14;
    v17 = v14;
    v18 = v15;
    MRMediaRemoteGetElectedPlayerPath();
  }
}

void __107__MPCAssistantRemoteControlDestination_resolveForWatchControlCommandWithRouteIdentifiers_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "resolveForWatchControlCommand: Using local origin", v5, 2u);
  }

  if ([*(*(a1 + 32) + 8) isEqualToString:@"com.apple.iBooks"])
  {
    [*(a1 + 40) setAppBundleID:@"com.apple.NanoBooks"];
  }

  [*(a1 + 40) setOrigin:MRMediaRemoteGetLocalOrigin()];
  v3[2](v3, *(a1 + 40));
}

void __107__MPCAssistantRemoteControlDestination_resolveForWatchControlCommandWithRouteIdentifiers_queue_completion___block_invoke_43(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "resolveForWatchControlCommand: Attempting to fetch companion origin", buf, 2u);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __107__MPCAssistantRemoteControlDestination_resolveForWatchControlCommandWithRouteIdentifiers_queue_completion___block_invoke_44;
  v8[3] = &unk_1E82311E8;
  v9 = *(a1 + 48);
  v10 = v3;
  v11 = *(a1 + 56);
  v7 = v3;
  [v5 _getCompanionOriginWithQueue:v6 completion:v8];
}

void __107__MPCAssistantRemoteControlDestination_resolveForWatchControlCommandWithRouteIdentifiers_queue_completion___block_invoke_46(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 origin];
  v5 = [v4 identifier];

  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v3 origin];
    v9[0] = 67109376;
    v9[1] = [v7 identifier];
    v10 = 1024;
    v11 = v5 == 1129140302;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "resolveForWatchControlCommand: GetElectedPlayerPath finish. identifier:'%d'  isCompanionOriginElected:%{BOOL}u", v9, 0xEu);
  }

  v8 = 48;
  if (v5 == 1129140302)
  {
    v8 = 32;
  }

  (*(*(a1 + v8) + 16))();
}

uint64_t __107__MPCAssistantRemoteControlDestination_resolveForWatchControlCommandWithRouteIdentifiers_queue_completion___block_invoke_44(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = a2;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "resolveForWatchControlCommand: Found companion origin: %{public}@", &v10, 0xCu);
    }

    v7 = *(a1 + 32);
    v6 = (a1 + 32);
    [v7 setOrigin:a2];
    [*v6 setIsCompanion:1];
    v8 = v6 + 1;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_ERROR, "resolveForWatchControlCommand: Companion origin not found. Falling back to local origin.", &v10, 2u);
    }

    v8 = (a1 + 48);
  }

  return (*(*v8 + 2))();
}

- (void)resolveWithQueue:(id)a3 routeIdentifiers:(id)a4 localPlaybackPermitted:(BOOL)a5 audioRoutingInfo:(id)a6 completion:(id)a7
{
  v12 = a4;
  v9 = a7;
  v10 = [(MPCAssistantRemoteControlDestination *)self mutableCopy];
  if ([v12 count])
  {
    [v10 setOutputDeviceUIDs:v12];
    v9[2](v9, v10);
  }

  else
  {
    v11 = [(MPCAssistantRemoteControlDestination *)self copy];
    v9[2](v9, v11);

    v9 = v11;
  }
}

- (void)resolveWithQueue:(id)a3 hashedRouteIdentifiers:(id)a4 localPlaybackPermitted:(BOOL)a5 audioRoutingInfo:(id)a6 completion:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if ([v13 count])
  {
    v15 = [(MPCAssistantRemoteControlDestination *)self mutableCopy];
    v16 = objc_alloc_init(MPCAssistantEncodings);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __131__MPCAssistantRemoteControlDestination_resolveWithQueue_hashedRouteIdentifiers_localPlaybackPermitted_audioRoutingInfo_completion___block_invoke;
    v19[3] = &unk_1E8231198;
    v20 = v16;
    v21 = v15;
    v22 = v14;
    v17 = v15;
    v18 = v16;
    [(MPCAssistantEncodings *)v18 decodeHashedRouteUIDs:v13 completion:v19];
  }

  else
  {
    [(MPCAssistantRemoteControlDestination *)self resolveWithQueue:v12 routeIdentifiers:0 localPlaybackPermitted:v9 audioRoutingInfo:*&a6 completion:v14];
  }
}

void __131__MPCAssistantRemoteControlDestination_resolveWithQueue_hashedRouteIdentifiers_localPlaybackPermitted_audioRoutingInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 allKeys];
  [*(a1 + 40) setOutputDeviceUIDs:v5];

  v6 = [v4 allValues];

  [*(a1 + 40) setHashedOutputDeviceUIDs:v6];
  (*(*(a1 + 48) + 16))();
}

- (void)createPlayerPath
{
  if (self->_appBundleID)
  {
    v3 = MRNowPlayingClientCreate();
  }

  else
  {
    v3 = 0;
  }

  if (self->_playerID)
  {
    v4 = MRNowPlayingPlayerCreate();
  }

  else
  {
    v4 = 0;
  }

  v5 = MRNowPlayingPlayerPathCreate();
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@ %p ", objc_opt_class(), self];
  if ([(NSArray *)self->_outputDeviceUIDs count])
  {
    v4 = [(NSArray *)self->_outputDeviceUIDs msv_compactDescription];
    [v3 appendFormat:@"outputDeviceUIDs=[%@] ", v4];
  }

  if ([(NSArray *)self->_outputGroups count])
  {
    v5 = [(NSArray *)self->_outputGroups msv_compactDescription];
    [v3 appendFormat:@"outputGroups=[%@] ", v5];
  }

  if ([(NSString *)self->_outputGroupID length])
  {
    [v3 appendFormat:@"outputGroupID=%@ ", self->_outputGroupID];
  }

  if (self->_originatingOutputDeviceUID)
  {
    [v3 appendFormat:@"originatingOutputDeviceUID=%@ ", self->_originatingOutputDeviceUID];
  }

  v6 = [(MPCAssistantRemoteControlDestination *)self createPlayerPath];
  [v3 appendFormat:@"playerPath=%@ ", v6];
  if (self->_isCompanion)
  {
    [v3 appendString:@"isCompanion=YES "];
  }

  v7 = @"NO";
  if (self->_singleGroup)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_originatingDeviceControl)
  {
    v7 = @"YES";
  }

  [v3 appendFormat:@"singleGroup=%@ originatingDeviceControl=%@>", v8, v7];

  return v3;
}

- (void)dealloc
{
  origin = self->_origin;
  if (origin)
  {
    CFRelease(origin);
  }

  v4.receiver = self;
  v4.super_class = MPCAssistantRemoteControlDestination;
  [(MPCAssistantRemoteControlDestination *)&v4 dealloc];
}

- (MPCAssistantRemoteControlDestination)initWithPlayerPath:(id)a3
{
  v4 = a3;
  v5 = [v4 client];
  v6 = [v5 bundleIdentifier];
  v7 = [v4 player];
  v8 = [v7 identifier];
  v9 = [v4 origin];

  v10 = [(MPCAssistantRemoteControlDestination *)self initWithAppBundleID:v6 playerID:v8 origin:v9];
  return v10;
}

- (MPCAssistantRemoteControlDestination)initWithAppBundleID:(id)a3 playerID:(id)a4 origin:(void *)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = MPCAssistantRemoteControlDestination;
  v10 = [(MPCAssistantRemoteControlDestination *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    appBundleID = v10->_appBundleID;
    v10->_appBundleID = v11;

    v13 = [v9 copy];
    playerID = v10->_playerID;
    v10->_playerID = v13;

    if (a5)
    {
      v15 = CFRetain(a5);
    }

    else
    {
      v15 = 0;
    }

    v10->_origin = v15;
  }

  return v10;
}

@end