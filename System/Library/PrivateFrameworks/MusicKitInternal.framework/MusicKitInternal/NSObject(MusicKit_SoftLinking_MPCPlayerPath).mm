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
  v1 = [a1 _musicKit_self_playerPath];
  v2 = [v1 route];

  return v2;
}

- (id)_musicKit_self_playerPath
{
  getMPCPlayerPathClass();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)musicKit_playerPath_playerID
{
  v1 = [a1 _musicKit_self_playerPath];
  v2 = [v1 playerID];

  return v2;
}

- (id)musicKit_playerPath_bundleID
{
  v1 = [a1 _musicKit_self_playerPath];
  v2 = [v1 bundleID];

  return v2;
}

- (uint64_t)musicKit_playerPath_isInProcess
{
  v1 = [a1 _musicKit_self_playerPath];
  v2 = [v1 isInProcess];

  return v2;
}

- (uint64_t)musicKit_playerPath_isLocal
{
  v1 = [a1 _musicKit_self_playerPath];
  v2 = [v1 isLocalDevice];

  return v2;
}

- (uint64_t)musicKit_playerPath_hasNonLocalEndpointRoute
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = [a1 _musicKit_self_playerPath];
  v2 = [v1 route];
  getMPAVEndpointRouteClass();
  v3 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && v2)
  {
    v4 = [v2 endpointObject];
    v5 = [v4 outputDevices];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
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
  v1 = [a1 _musicKit_self_playerPath];
  v2 = [v1 route];
  getMPAVEndpointRouteClass();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v3 = v2) != 0)
  {
    v4 = v3;
    v5 = [v3 endpointObject];
    v6 = [v5 isCompanionEndpoint];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)musicKit_playerPath_mrPlayerPath
{
  v1 = [a1 _musicKit_self_playerPath];
  v2 = [v1 mrPlayerPath];

  return v2;
}

@end