@interface NSObject(MusicKit_SoftLinking_MPCPlayerPath)
- (id)_musicKit_self_playerPath;
- (id)musicKit_playerPath_bundleID;
- (id)musicKit_playerPath_mrPlayerPath;
- (id)musicKit_playerPath_playerID;
- (id)musicKit_playerPath_route;
- (uint64_t)musicKit_playerPath_hasNonLocalEndpointRoute;
- (uint64_t)musicKit_playerPath_isCompanion;
- (uint64_t)musicKit_playerPath_isInProcess;
- (uint64_t)musicKit_playerPath_isLocal;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerPath)

- (id)musicKit_playerPath_route
{
  _musicKit_self_playerPath = [self _musicKit_self_playerPath];
  route = [_musicKit_self_playerPath route];

  return route;
}

- (id)_musicKit_self_playerPath
{
  getMPCPlayerPathClass();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)musicKit_playerPath_playerID
{
  _musicKit_self_playerPath = [self _musicKit_self_playerPath];
  playerID = [_musicKit_self_playerPath playerID];

  return playerID;
}

- (id)musicKit_playerPath_bundleID
{
  _musicKit_self_playerPath = [self _musicKit_self_playerPath];
  bundleID = [_musicKit_self_playerPath bundleID];

  return bundleID;
}

- (uint64_t)musicKit_playerPath_isInProcess
{
  _musicKit_self_playerPath = [self _musicKit_self_playerPath];
  isInProcess = [_musicKit_self_playerPath isInProcess];

  return isInProcess;
}

- (uint64_t)musicKit_playerPath_isLocal
{
  _musicKit_self_playerPath = [self _musicKit_self_playerPath];
  isLocalDevice = [_musicKit_self_playerPath isLocalDevice];

  return isLocalDevice;
}

- (uint64_t)musicKit_playerPath_hasNonLocalEndpointRoute
{
  v19 = *MEMORY[0x1E69E9840];
  _musicKit_self_playerPath = [self _musicKit_self_playerPath];
  route = [_musicKit_self_playerPath route];
  getMPAVEndpointRouteClass();
  v3 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && route)
  {
    endpointObject = [route endpointObject];
    outputDevices = [endpointObject outputDevices];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = outputDevices;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (![v11 isLocalDevice] || objc_msgSend(v11, "deviceSubtype") == 14 || objc_msgSend(v11, "deviceType") == 3)
          {
            v3 = 1;
            goto LABEL_16;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v3 = 0;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v3 = 0;
    }

LABEL_16:
  }

  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

- (uint64_t)musicKit_playerPath_isCompanion
{
  _musicKit_self_playerPath = [self _musicKit_self_playerPath];
  route = [_musicKit_self_playerPath route];
  getMPAVEndpointRouteClass();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v3 = route) != 0)
  {
    v4 = v3;
    endpointObject = [v3 endpointObject];
    isCompanionEndpoint = [endpointObject isCompanionEndpoint];
  }

  else
  {
    isCompanionEndpoint = 0;
  }

  return isCompanionEndpoint;
}

- (id)musicKit_playerPath_mrPlayerPath
{
  _musicKit_self_playerPath = [self _musicKit_self_playerPath];
  mrPlayerPath = [_musicKit_self_playerPath mrPlayerPath];

  return mrPlayerPath;
}

@end