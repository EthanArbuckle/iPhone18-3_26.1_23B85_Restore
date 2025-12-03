@interface MPCPlayerPath
+ (MPCPlayerPath)pathWithCustomOrigin:(void *)origin bundleID:(id)d playerID:(id)iD;
+ (MPCPlayerPath)pathWithDeviceUID:(id)d bundleID:(id)iD pid:(int)pid playerID:(id)playerID;
+ (MPCPlayerPath)pathWithDeviceUIDs:(id)ds bundleID:(id)d pid:(int)pid playerID:(id)iD;
+ (MPCPlayerPath)pathWithRoute:(id)route bundleID:(id)d playerID:(id)iD;
+ (MPCPlayerPath)pathWithRoute:(id)route mediaRemotePlayerPath:(void *)path isResolved:(BOOL)resolved;
+ (id)deviceActivePlayerPath;
+ (id)systemMusicPathWithRoute:(id)route playerID:(id)d;
+ (id)systemPodcastsPathWithRoute:(id)route playerID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFullyResolved;
- (BOOL)isInProcess;
- (BOOL)isLocal;
- (BOOL)isLocalDevice;
- (BOOL)isSystemMusicPath;
- (MPCPlayerPath)initWithCoder:(id)coder;
- (MPCPlayerPath)initWithDeviceUID:(id)d bundleID:(id)iD pid:(int)pid playerID:(id)playerID;
- (MPCPlayerPath)initWithRoute:(id)route bundleID:(id)d pid:(int)pid playerID:(id)iD;
- (MRPlayerPath)mrPlayerPath;
- (NSString)representedBundleDisplayName;
- (NSString)representedBundleID;
- (id)description;
- (id)pathByAppendingPlayerIDSuffix:(id)suffix;
- (int64_t)resolvedPlaybackIntentDestination;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)getPlaybackIntentDestinationWithCompletion:(id)completion;
- (void)resolveWithRouteResolvedHandler:(id)handler completion:(id)completion;
@end

@implementation MPCPlayerPath

+ (id)deviceActivePlayerPath
{
  v2 = [[self alloc] initWithRoute:0 bundleID:0 playerID:0];

  return v2;
}

- (void)dealloc
{
  mediaRemotePlayerPath = self->_mediaRemotePlayerPath;
  if (mediaRemotePlayerPath)
  {
    CFRelease(mediaRemotePlayerPath);
  }

  v4.receiver = self;
  v4.super_class = MPCPlayerPath;
  [(MPCPlayerPath *)&v4 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:", objc_opt_class()];
  v4 = v3;
  route = self->_route;
  v6 = route != 0;
  if (route)
  {
    [v3 appendFormat:@" route=%@", self->_route];
  }

  if (self->_deviceUID)
  {
    [v4 appendFormat:@" deviceUID=%@", self->_deviceUID];
    v6 = 1;
  }

  if (!self->_mediaRemotePlayerPath)
  {
    bundleID = self->_bundleID;
    if (!bundleID)
    {
      goto LABEL_20;
    }

    v12 = bundleID;
    if ([(NSString *)v12 isEqualToString:*MEMORY[0x1E69B12F0]])
    {
      v14 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();

      v12 = [v14 stringByAppendingString:@" [system media app]"];
    }

    [v4 appendFormat:@" bundleID=%@", v12];
    goto LABEL_19;
  }

  if (MRNowPlayingPlayerPathGetOrigin())
  {
    DisplayName = MROriginGetDisplayName();
    [v4 appendFormat:@" origin[MR]=%@-%d", DisplayName, MROriginGetUniqueIdentifier()];
    v6 = 1;
  }

  if (MRNowPlayingPlayerPathGetClient())
  {
    v8 = MRNowPlayingClientCopyBundleIdentifierHierarchy();
    v9 = [v8 componentsJoinedByString:@"/"];
    [v4 appendFormat:@" bundleID[MR]=%@", v9];

    if (MRNowPlayingClientGetProcessIdentifier())
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInt:self->_pid];
      [v4 appendFormat:@" pid[MR]=%@", v10];
    }

    v6 = 1;
  }

  if (MRNowPlayingPlayerPathGetPlayer())
  {
    v11 = MRNowPlayingPlayerGetIdentifier();
    v12 = v11;
    if (v11)
    {
      [v4 appendFormat:@" playerID[MR]=%@", v11];
    }

LABEL_19:

    v6 = 1;
  }

LABEL_20:
  if (self->_pid)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v4 appendFormat:@" pid=%@", v15];
  }

  if (self->_playerID)
  {
    [v4 appendFormat:@" playerID=%@", self->_playerID];
  }

  else if (!v6)
  {
    [v4 appendString:@" local active"];
  }

  [v4 appendString:@">"];

  return v4;
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v4 ^ 0x646F72616E646F6DLL;
  v8 = v3 ^ 0x6C7967656E657261;
  v9 = [(MPAVRoute *)self->_route hash];
  v10 = v5 ^ 0x7465646279746573 ^ v9;
  v11 = (v6 + v7) ^ __ROR8__(v7, 51);
  v12 = v8 + v10;
  v13 = (v8 + v10) ^ __ROR8__(v10, 48);
  v14 = v13 + __ROR8__(v6 + v7, 32);
  v85 = __ROR8__(v12 + v11, 32);
  v90 = v14 ^ __ROR8__(v13, 43);
  v15 = v14 ^ v9;
  v80 = (v12 + v11) ^ __ROR8__(v11, 47);
  v16 = self->_bundleID;
  v17 = [(NSString *)v16 hash];
  v18 = (v15 + v80) ^ __ROR8__(v80, 51);
  v19 = v85 + (v90 ^ v17);
  v20 = __ROR8__(v90 ^ v17, 48);
  v21 = (v19 ^ v20) + __ROR8__(v15 + v80, 32);
  v22 = v21 ^ __ROR8__(v19 ^ v20, 43);
  v23 = v19 + v18;
  v86 = __ROR8__(v23, 32);
  v91 = v22;
  v76 = v21 ^ v17;
  v81 = v23 ^ __ROR8__(v18, 47);

  pid = self->_pid;
  v25 = (v76 + v81) ^ __ROR8__(v81, 51);
  v26 = v86 + (v91 ^ pid);
  v27 = __ROR8__(v91 ^ pid, 48);
  v28 = (v26 ^ v27) + __ROR8__(v76 + v81, 32);
  v29 = v28 ^ __ROR8__(v26 ^ v27, 43);
  v30 = v26 + v25;
  v87 = __ROR8__(v30, 32);
  v92 = v29;
  v77 = v28 ^ pid;
  v82 = v30 ^ __ROR8__(v25, 47);
  v31 = self->_playerID;
  v32 = [(NSString *)v31 hash];
  v33 = (v77 + v82) ^ __ROR8__(v82, 51);
  v34 = v87 + (v92 ^ v32);
  v35 = __ROR8__(v92 ^ v32, 48);
  v36 = (v34 ^ v35) + __ROR8__(v77 + v82, 32);
  v37 = v36 ^ __ROR8__(v34 ^ v35, 43);
  v38 = v34 + v33;
  v88 = __ROR8__(v38, 32);
  v93 = v37;
  v78 = v36 ^ v32;
  v83 = v38 ^ __ROR8__(v33, 47);

  v39 = self->_deviceUID;
  v40 = [(NSString *)v39 hash];
  v41 = (v78 + v83) ^ __ROR8__(v83, 51);
  v42 = v88 + (v93 ^ v40);
  v43 = __ROR8__(v93 ^ v40, 48);
  v44 = (v42 ^ v43) + __ROR8__(v78 + v83, 32);
  v45 = v44 ^ __ROR8__(v42 ^ v43, 43);
  v46 = v42 + v41;
  v89 = __ROR8__(v46, 32);
  v94 = v45;
  v79 = v44 ^ v40;
  v84 = v46 ^ __ROR8__(v41, 47);

  v47 = (v79 + v84) ^ __ROR8__(v84, 51);
  v48 = v89 + (v94 ^ 0x2800000000000000);
  v49 = __ROR8__(v94 ^ 0x2800000000000000, 48);
  v50 = (v48 ^ v49) + __ROR8__(v79 + v84, 32);
  v51 = v50 ^ __ROR8__(v48 ^ v49, 43);
  v52 = v48 + v47;
  v53 = v52 ^ __ROR8__(v47, 47);
  v54 = (v50 ^ 0x2800000000000000) + v53;
  v55 = v54 ^ __ROR8__(v53, 51);
  v56 = (__ROR8__(v52, 32) ^ 0xFFLL) + v51;
  v57 = __ROR8__(v51, 48);
  v58 = __ROR8__(v54, 32) + (v56 ^ v57);
  v59 = v58 ^ __ROR8__(v56 ^ v57, 43);
  v60 = v55 + v56;
  v61 = v60 ^ __ROR8__(v55, 47);
  v62 = v61 + v58;
  v63 = v62 ^ __ROR8__(v61, 51);
  v64 = __ROR8__(v60, 32) + v59;
  v65 = __ROR8__(v59, 48);
  v66 = __ROR8__(v62, 32) + (v64 ^ v65);
  v67 = v66 ^ __ROR8__(v64 ^ v65, 43);
  v68 = v63 + v64;
  v69 = v68 ^ __ROR8__(v63, 47);
  v70 = v69 + v66;
  v71 = v70 ^ __ROR8__(v69, 51);
  v72 = __ROR8__(v68, 32) + v67;
  v73 = __ROR8__(v67, 48);
  v74 = __ROR8__(v70, 32) + (v72 ^ v73);
  return (v71 + v72) ^ __ROR8__(v71, 47) ^ v74 ^ __ROR8__(v71 + v72, 32) ^ v74 ^ __ROR8__(v72 ^ v73, 43);
}

- (NSString)representedBundleID
{
  v3 = self->_bundleID;
  if (self->_mediaRemotePlayerPath)
  {
    MRNowPlayingPlayerPathGetClient();
    v4 = MRNowPlayingClientCopyBundleIdentifierHierarchy();
    v5 = MRNowPlayingClientGetParentAppBundleIdentifier();
    if ([v4 count])
    {
      lastObject = [v4 lastObject];
    }

    else
    {
      if (![v5 length])
      {
LABEL_7:

        goto LABEL_8;
      }

      lastObject = v5;
    }

    v7 = lastObject;

    v3 = v7;
    goto LABEL_7;
  }

LABEL_8:

  return v3;
}

- (BOOL)isInProcess
{
  if (!self->_mediaRemotePlayerPath)
  {
    return 0;
  }

  MRNowPlayingPlayerPathGetClient();
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  BundleIdentifier = MRNowPlayingClientGetBundleIdentifier();
  if (bundleIdentifier == BundleIdentifier)
  {
  }

  else
  {
    v5 = [bundleIdentifier isEqual:BundleIdentifier];

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  return MRNowPlayingPlayerPathIsLocal();
}

- (BOOL)isSystemMusicPath
{
  representedBundleID = [(MPCPlayerPath *)self representedBundleID];
  v3 = [representedBundleID isEqualToString:*MEMORY[0x1E69B12F0]];
  IsSystemMediaApplication = v3;
  if (representedBundleID && (v3 & 1) == 0)
  {
    IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication();
  }

  return IsSystemMediaApplication;
}

- (int64_t)resolvedPlaybackIntentDestination
{
  if (![(MPCPlayerPath *)self isResolved])
  {
    return 0;
  }

  if ([(MPCPlayerPath *)self isInProcess])
  {
    return 1;
  }

  if ([(MPCPlayerPath *)self isLocalDevice])
  {
    return 2;
  }

  return 3;
}

- (void)getPlaybackIntentDestinationWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __90__MPCPlayerPath_MPCPlaybackIntentDestination__getPlaybackIntentDestinationWithCompletion___block_invoke;
  v6[3] = &unk_1E8237F30;
  v7 = completionCopy;
  v5 = completionCopy;
  [(MPCPlayerPath *)self resolveWithCompletion:v6];
}

uint64_t __90__MPCPlayerPath_MPCPlaybackIntentDestination__getPlaybackIntentDestinationWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);
    v6 = 0;
  }

  else
  {
    v6 = [a2 resolvedPlaybackIntentDestination];
    v4 = *(v3 + 16);
    v5 = v3;
    a3 = 0;
  }

  return v4(v5, v6, a3);
}

- (MRPlayerPath)mrPlayerPath
{
  mediaRemotePlayerPath = self->_mediaRemotePlayerPath;
  if (mediaRemotePlayerPath)
  {
    v3 = mediaRemotePlayerPath;
  }

  return mediaRemotePlayerPath;
}

- (id)pathByAppendingPlayerIDSuffix:(id)suffix
{
  if (self->_mediaRemotePlayerPath)
  {
    suffixCopy = suffix;
    v5 = MRNowPlayingPlayerPathCopy();
    MRNowPlayingPlayerPathGetPlayer();
    v6 = MRNowPlayingPlayerGetIdentifier();
    v7 = [v6 stringByAppendingString:suffixCopy];

    MRNowPlayingPlayerSetIdentifier();
    v8 = [MPCPlayerPath pathWithRoute:self->_route mediaRemotePlayerPath:v5 isResolved:self->_resolved];
    CFRelease(v5);
  }

  else
  {
    playerID = self->_playerID;
    suffixCopy2 = suffix;
    v7 = [(NSString *)playerID stringByAppendingString:suffixCopy2];

    v8 = [[MPCPlayerPath alloc] initWithRoute:self->_route bundleID:self->_bundleID pid:self->_pid playerID:v7];
  }

  return v8;
}

- (void)resolveWithRouteResolvedHandler:(id)handler completion:(id)completion
{
  v48[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  completionCopy = completion;
  if (![(MPCPlayerPath *)self isResolved])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__MPCPlayerPath_resolveWithRouteResolvedHandler_completion___block_invoke;
    aBlock[3] = &unk_1E8238DD0;
    aBlock[4] = self;
    v8 = handlerCopy;
    v44 = v8;
    v9 = _Block_copy(aBlock);
    Origin = MRNowPlayingPlayerPathGetOrigin();
    if (Origin && !MROriginIsLocalOrigin() || self->_deviceUID || (-[MPCPlayerPath route](self, "route"), (v23 = objc_claimAutoreleasedReturnValue()) != 0) && (v24 = v23, v25 = [v23 isDeviceRoute], v24, v24, !v25))
    {
      if (self->_deviceUID)
      {
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __60__MPCPlayerPath_resolveWithRouteResolvedHandler_completion___block_invoke_3;
        v40[3] = &unk_1E8238E20;
        v40[4] = self;
        v41 = completionCopy;
        v42 = v8;
        v11 = _Block_copy(v40);
        deviceUID = self->_deviceUID;
        localDeviceUID = [MEMORY[0x1E69B09A8] localDeviceUID];
        LODWORD(deviceUID) = [(NSString *)deviceUID isEqualToString:localDeviceUID];

        if (deviceUID)
        {
          mEMORY[0x1E69B09A0] = [MEMORY[0x1E69B09A0] sharedLocalEndpoint];
          v48[0] = mEMORY[0x1E69B09A0];
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
          v11[2](v11, v15, 0);
        }

        else
        {
          mEMORY[0x1E69B09A0] = objc_opt_new();
          v47 = self->_deviceUID;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
          [mEMORY[0x1E69B09A0] discoverRemoteControlEndpointsMatchingUIDs:v15 completion:v11];
        }

        v27 = v41;
      }

      else
      {
        route = [(MPCPlayerPath *)self route];

        if (route)
        {
          route2 = [(MPCPlayerPath *)self route];
          connection = [route2 connection];

          if (connection)
          {
            route3 = [(MPCPlayerPath *)self route];
            connection2 = [route3 connection];

            [connection2 reset];
            v45 = *MEMORY[0x1E696F858];
            v46 = @"MPCPlayerPath";
            route4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __60__MPCPlayerPath_resolveWithRouteResolvedHandler_completion___block_invoke_6;
            v30[3] = &unk_1E8238E70;
            v31 = connection2;
            v32 = v9;
            v33 = completionCopy;
            v22 = connection2;
            [v22 connectWithUserInfo:route4 completion:v30];
          }

          else
          {
            v28 = MEMORY[0x1E696ABC0];
            route4 = [(MPCPlayerPath *)self route];
            v22 = [v28 msv_errorWithDomain:@"MPCPlayerRequestError" code:5000 debugDescription:{@"%@ did not have connection", route4}];
            (*(completionCopy + 2))(completionCopy, 0, v22);
          }

          goto LABEL_23;
        }

        if (Origin)
        {
          (*(v9 + 2))(v9, Origin, completionCopy);
          goto LABEL_23;
        }

        v29 = dispatch_get_global_queue(21, 0);
        v34 = MEMORY[0x1E69E9820];
        v35 = 3221225472;
        v36 = __60__MPCPlayerPath_resolveWithRouteResolvedHandler_completion___block_invoke_5;
        v37 = &unk_1E8238E48;
        v38 = v9;
        v39 = completionCopy;
        MRMediaRemoteGetActiveOrigin();

        v27 = v38;
      }
    }

    else
    {
      LocalOrigin = MRMediaRemoteGetLocalOrigin();
      (*(v9 + 2))(v9, LocalOrigin, completionCopy);
    }

LABEL_23:

    goto LABEL_24;
  }

  (*(completionCopy + 2))(completionCopy, self, 0);
LABEL_24:
}

void __60__MPCPlayerPath_resolveWithRouteResolvedHandler_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) bundleID];
  v6 = [*(a1 + 32) playerID];
  v7 = *(*(a1 + 32) + 8);
  v8 = v5;
  v9 = v6;
  v10 = v9;
  if (v8)
  {
    if (!v7)
    {
      if (MROriginIsLocalOrigin())
      {
        v11 = [MEMORY[0x1E696AAE8] mainBundle];
        v12 = [v11 bundleIdentifier];
        v13 = [v8 isEqualToString:v12];

        if (v13)
        {
          v14 = [MEMORY[0x1E696AE30] processInfo];
          [v14 processIdentifier];
        }
      }
    }

    v15 = MRNowPlayingClientCreate();
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_7:
    v16 = 0;
    goto LABEL_10;
  }

  v15 = 0;
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_9:
  v16 = MRNowPlayingPlayerCreate();
LABEL_10:
  v17 = MRNowPlayingPlayerPathCreate();
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (*(a1 + 40))
  {
    v18 = [MPCPlayerPath pathWithRoute:*(*(a1 + 32) + 40) mediaRemotePlayerPath:v17 isResolved:0];
    (*(*(a1 + 40) + 16))();
  }

  v19 = dispatch_get_global_queue(21, 0);
  v21 = v4;
  v20 = v4;
  MRMediaRemoteNowPlayingResolvePlayerPath();
}

void __60__MPCPlayerPath_resolveWithRouteResolvedHandler_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];

    v5 = [objc_alloc(MEMORY[0x1E6970450]) initWithEndpoint:v4];
    ExternalDevice = MRAVEndpointGetExternalDevice();
    if ((MRAVEndpointIsLocalEndpoint() & 1) != 0 || ExternalDevice)
    {
      if (ExternalDevice)
      {
        v11 = [objc_alloc(MEMORY[0x1E6970488]) initWithExternalDevice:ExternalDevice];
        [v5 setConnection:v11];
      }

      v12 = [[MPCPlayerPath alloc] initWithRoute:v5 bundleID:*(*(a1 + 32) + 16) pid:*(*(a1 + 32) + 8) playerID:*(*(a1 + 32) + 24)];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __60__MPCPlayerPath_resolveWithRouteResolvedHandler_completion___block_invoke_4;
      v15[3] = &unk_1E8238DF8;
      v16 = v12;
      v13 = *(a1 + 48);
      v17 = *(a1 + 40);
      v14 = v12;
      [(MPCPlayerPath *)v14 resolveWithRouteResolvedHandler:v13 completion:v15];
    }

    else
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:5000 debugDescription:{@"Missing external device for endpoint %@.", v4}];
      (*(v7 + 16))(v7, 0, v8);
    }
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:5000 debugDescription:{@"Could not discover endpoint for device UID (%@).", *(*(a1 + 32) + 48)}];
    (*(v9 + 16))(v9, 0, v10);
  }
}

void __60__MPCPlayerPath_resolveWithRouteResolvedHandler_completion___block_invoke_5(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 16);
    v6 = *(a1 + 32);

    v5(v6, a3, v4);
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:5000 debugDescription:@"Could not get active origin."];
    (*(v7 + 16))(v7, 0, v8);
  }
}

void __60__MPCPlayerPath_resolveWithRouteResolvedHandler_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 48) + 16);
    v7 = v3;
LABEL_3:
    v4();

    return;
  }

  [*(a1 + 32) externalDevice];
  v5 = MRExternalDeviceCopyCustomOrigin();
  if (!v5)
  {
    v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:5000 debugDescription:{@"external device %@ did not have an origin. (connection %@, isConnected:%d isInvalidated:%d)", *(a1 + 32), objc_msgSend(*(a1 + 32), "externalDevice"), objc_msgSend(*(a1 + 32), "isConnected"), objc_msgSend(*(a1 + 32), "isInvalidated")}];
    v4 = *(*(a1 + 48) + 16);
    goto LABEL_3;
  }

  v6 = v5;
  (*(*(a1 + 40) + 16))();

  CFRelease(v6);
}

void __60__MPCPlayerPath_resolveWithRouteResolvedHandler_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = *(a1 + 32);
  v6(v5, a2, a3);
}

void __60__MPCPlayerPath_resolveWithRouteResolvedHandler_completion___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    goto LABEL_2;
  }

  if (!MRNowPlayingPlayerPathGetOrigin())
  {
    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:5000 debugDescription:{@"resolved player path %@ did not have an origin. (unresolved player path %@)", a2, a1[6]}];
LABEL_2:
    v6 = v5;
    v7 = 0;
    goto LABEL_5;
  }

  v7 = [MPCPlayerPath pathWithRoute:*(a1[4] + 40) mediaRemotePlayerPath:a2 isResolved:1];
  v6 = 0;
LABEL_5:
  v9 = v7;
  (*(a1[5] + 16))();
  v8 = a1[6];
  if (v8)
  {
    CFRelease(v8);
  }
}

- (NSString)representedBundleDisplayName
{
  if (self->_mediaRemotePlayerPath)
  {
    MRNowPlayingPlayerPathGetClient();
    v2 = MRNowPlayingClientGetBundleIdentifier();
    mediaPlaybackCoreBundle = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
    v4 = [mediaPlaybackCoreBundle localizedStringForKey:v2 value:&stru_1F454A698 table:@"PlayerPathDisplayName"];

    if ([v4 isEqualToString:v2])
    {
      v5 = MRNowPlayingClientGetDisplayName();
    }

    else
    {
      v5 = v4;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 copy];

  return v7;
}

- (BOOL)isLocalDevice
{
  result = 0;
  if (self->_mediaRemotePlayerPath)
  {
    if (MRNowPlayingPlayerPathIsLocal())
    {
      return 1;
    }

    MRNowPlayingPlayerPathGetOrigin();
    if (MROriginIsLocalOrigin())
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)isLocal
{
  mediaRemotePlayerPath = self->_mediaRemotePlayerPath;
  if (mediaRemotePlayerPath)
  {
    LOBYTE(mediaRemotePlayerPath) = MRNowPlayingPlayerPathIsLocal();
  }

  return mediaRemotePlayerPath;
}

- (BOOL)isFullyResolved
{
  mediaRemotePlayerPath = self->_mediaRemotePlayerPath;
  if (mediaRemotePlayerPath)
  {
    LOBYTE(mediaRemotePlayerPath) = MRNowPlayingPlayerPathGetIsResolved();
  }

  return mediaRemotePlayerPath;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_route forKey:@"route"];
  [coderCopy encodeObject:self->_bundleID forKey:@"bundleID"];
  if (self->_mediaRemotePlayerPath)
  {
    MRNowPlayingPlayerPathGetClient();
    [coderCopy encodeInt32:MRNowPlayingClientGetProcessIdentifier() forKey:@"pid"];
  }

  [coderCopy encodeObject:self->_playerID forKey:@"playerID"];
}

- (MPCPlayerPath)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"route"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playerID"];
  v8 = [coderCopy decodeInt32ForKey:@"pid"];

  v9 = [(MPCPlayerPath *)self initWithRoute:v5 bundleID:v6 pid:v8 playerID:v7];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      route = self->_route;
      route = [(MPCPlayerPath *)v5 route];
      if (route == route)
      {
        v8 = 0;
      }

      else
      {
        v8 = [(MPAVRoute *)route isEqual:route]^ 1;
      }

      bundleID = self->_bundleID;
      bundleID = [(MPCPlayerPath *)v5 bundleID];
      if (bundleID == bundleID)
      {
        v12 = 0;
      }

      else
      {
        v12 = [(NSString *)bundleID isEqual:bundleID]^ 1;
      }

      pid = self->_pid;
      v14 = v5->_pid;
      playerID = self->_playerID;
      playerID = [(MPCPlayerPath *)v5 playerID];
      if (playerID == playerID)
      {
        v17 = 0;
      }

      else
      {
        v17 = [(NSString *)playerID isEqual:playerID]^ 1;
      }

      if (self->_mediaRemotePlayerPath == v5->_mediaRemotePlayerPath)
      {
        v18 = 1;
      }

      else
      {
        MRNowPlayingPlayerPathGetOrigin();
        MRNowPlayingPlayerPathGetOrigin();
        v18 = MROriginEqualToOrigin() != 0;
      }

      deviceUID = v5->_deviceUID;
      v20 = self->_deviceUID;
      v21 = v20;
      if (v20 == deviceUID)
      {
        v22 = 1;
      }

      else
      {
        v22 = [(NSString *)v20 isEqual:deviceUID];
      }

      if ((v8 | v12 | v17) & 1 | (pid != v14))
      {
        v9 = 0;
      }

      else
      {
        v9 = v18 & v22;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (MPCPlayerPath)initWithDeviceUID:(id)d bundleID:(id)iD pid:(int)pid playerID:(id)playerID
{
  dCopy = d;
  iDCopy = iD;
  playerIDCopy = playerID;
  v21.receiver = self;
  v21.super_class = MPCPlayerPath;
  v13 = [(MPCPlayerPath *)&v21 init];
  if (v13)
  {
    v14 = [dCopy copy];
    deviceUID = v13->_deviceUID;
    v13->_deviceUID = v14;

    v16 = [iDCopy copy];
    bundleID = v13->_bundleID;
    v13->_bundleID = v16;

    v18 = [playerIDCopy copy];
    playerID = v13->_playerID;
    v13->_playerID = v18;

    v13->_pid = pid;
  }

  return v13;
}

- (MPCPlayerPath)initWithRoute:(id)route bundleID:(id)d pid:(int)pid playerID:(id)iD
{
  routeCopy = route;
  dCopy = d;
  iDCopy = iD;
  if (routeCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlayerPath.m" lineNumber:85 description:{@"Unsupported route type %@", objc_opt_class()}];
    }
  }

  v23.receiver = self;
  v23.super_class = MPCPlayerPath;
  v15 = [(MPCPlayerPath *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_route, route);
    v17 = [dCopy copy];
    bundleID = v16->_bundleID;
    v16->_bundleID = v17;

    v19 = [iDCopy copy];
    playerID = v16->_playerID;
    v16->_playerID = v19;

    v16->_pid = pid;
  }

  return v16;
}

+ (MPCPlayerPath)pathWithCustomOrigin:(void *)origin bundleID:(id)d playerID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (MROriginIsLocalOrigin())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlayerPath.m" lineNumber:68 description:{@"%s is only for use with custom origins.", "+[MPCPlayerPath pathWithCustomOrigin:bundleID:playerID:]"}];
  }

  v10 = MRNowPlayingClientCreate();
  v11 = MRNowPlayingPlayerCreate();

  v12 = MRNowPlayingPlayerPathCreate();
  CFRelease(v11);
  CFRelease(v10);
  v13 = [self pathWithRoute:0 mediaRemotePlayerPath:v12 isResolved:0];
  CFRelease(v12);

  return v13;
}

+ (MPCPlayerPath)pathWithRoute:(id)route mediaRemotePlayerPath:(void *)path isResolved:(BOOL)resolved
{
  routeCopy = route;
  MRNowPlayingPlayerPathGetClient();
  v8 = MRNowPlayingClientGetBundleIdentifier();
  MRNowPlayingPlayerPathGetPlayer();
  v9 = MRNowPlayingPlayerGetIdentifier();
  v10 = [self pathWithRoute:routeCopy bundleID:v8 playerID:v9];

  *(v10 + 32) = MRNowPlayingPlayerPathCopy();
  *(v10 + 8) = MRNowPlayingClientGetProcessIdentifier();
  *(v10 + 12) = resolved;

  return v10;
}

+ (MPCPlayerPath)pathWithDeviceUID:(id)d bundleID:(id)iD pid:(int)pid playerID:(id)playerID
{
  v6 = *&pid;
  playerIDCopy = playerID;
  iDCopy = iD;
  dCopy = d;
  v13 = [[self alloc] initWithDeviceUID:dCopy bundleID:iDCopy pid:v6 playerID:playerIDCopy];

  return v13;
}

+ (MPCPlayerPath)pathWithDeviceUIDs:(id)ds bundleID:(id)d pid:(int)pid playerID:(id)iD
{
  v6 = *&pid;
  iDCopy = iD;
  dCopy = d;
  dsCopy = ds;
  v13 = [self alloc];
  firstObject = [dsCopy firstObject];

  v15 = [v13 initWithDeviceUID:firstObject bundleID:dCopy pid:v6 playerID:iDCopy];

  return v15;
}

+ (MPCPlayerPath)pathWithRoute:(id)route bundleID:(id)d playerID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  routeCopy = route;
  v11 = [[self alloc] initWithRoute:routeCopy bundleID:dCopy playerID:iDCopy];

  return v11;
}

+ (id)systemPodcastsPathWithRoute:(id)route playerID:(id)d
{
  dCopy = d;
  routeCopy = route;
  v8 = [self alloc];
  v9 = [v8 initWithRoute:routeCopy bundleID:*MEMORY[0x1E69B12F8] playerID:dCopy];

  return v9;
}

+ (id)systemMusicPathWithRoute:(id)route playerID:(id)d
{
  v6 = MEMORY[0x1E69708A8];
  dCopy = d;
  routeCopy = route;
  standardUserDefaults = [v6 standardUserDefaults];
  sonicHijack = [standardUserDefaults sonicHijack];

  v11 = [self alloc];
  if (sonicHijack)
  {
    v12 = @"com.apple.Sonic";
  }

  else
  {
    v12 = *MEMORY[0x1E69B12F0];
  }

  v13 = [v11 initWithRoute:routeCopy bundleID:v12 playerID:dCopy];

  return v13;
}

@end