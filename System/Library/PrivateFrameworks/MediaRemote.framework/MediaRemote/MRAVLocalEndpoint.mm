@interface MRAVLocalEndpoint
+ (MRAVLocalEndpoint)sharedSystemAudioLocalEndpoint;
+ (id)sharedLocalEndpoint;
+ (id)sharedLocalEndpointForRoutingContextWithUID:(id)a3;
- (BOOL)canModifyGroupMembership;
- (BOOL)groupContainsDiscoverableGroupLeader;
- (BOOL)isEligibleForHostingGroupSessionExcludingAcknowledgements;
- (MRAVRoutingDiscoverySession)audioDiscoverySession;
- (MRGroupSessionEligibilityMonitor)groupSessionEligibilityMonitor;
- (id)groupLeader;
- (id)groupSessionInfo;
- (id)initWithOutputContext:(void *)a1;
- (void)groupSessionMonitor:(id)a3 statusDidChangeFrom:(id)a4 to:(id)a5;
- (void)handleActiveGroupSessionDidChangeNotification:(id)a3;
- (void)registerNotifications;
- (void)requestGroupSessionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5;
@end

@implementation MRAVLocalEndpoint

- (BOOL)groupContainsDiscoverableGroupLeader
{
  v2 = [(MRAVOutputContextEndpoint *)self deviceInfo];
  v3 = [v2 groupContainsDiscoverableGroupLeader];

  return v3;
}

- (void)registerNotifications
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 addObserver:a1 selector:sel_handleActiveGroupSessionDidChangeNotification_ name:@"MRActiveGroupSessionInfoDidChangeNotification" object:0];
  }
}

- (id)groupLeader
{
  v3 = [(MRAVOutputContextEndpoint *)self outputDevices];
  v4 = [v3 msv_firstWhere:&__block_literal_global_21];

  if (!v4)
  {
    v5 = [(MRAVLocalEndpoint *)self audioDiscoverySession];
    v6 = [v5 availableOutputDevices];
    v4 = [v6 msv_firstWhere:&__block_literal_global_23];
  }

  return v4;
}

BOOL __32__MRAVLocalEndpoint_groupLeader__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 isLocalDevice] & 1) != 0 || objc_msgSend(v2, "deviceType") != 1;

  return v3;
}

+ (id)sharedLocalEndpoint
{
  v2 = objc_opt_class();

  return [v2 sharedLocalEndpointForRoutingContextWithUID:0];
}

- (id)groupSessionInfo
{
  v2 = +[MRGroupSessionRequestManager sharedManager];
  v3 = [v2 groupSessionInfo];
  v4 = v3;
  if (v3 && [v3 isHosted])
  {
    v5 = v4;
    goto LABEL_9;
  }

  v6 = +[MRUserSettings currentSettings];
  if ([v6 groupSessionDelayedInitializationEnabled])
  {
    v7 = [v2 eligibilityStatus];
    v8 = [v7 isEligibleForHostingGroupSessionExcludingAcknowledgements];

    if (v8)
    {
      v9 = +[MRDeviceInfoRequest localDeviceInfo];
      v10 = [[MRGroupSessionToken alloc] initWithDeviceInfo:v9];
      v5 = [[MRGroupSessionInfo alloc] initWithToken:v10 isHosted:0 isPlaceholder:1];

      goto LABEL_9;
    }
  }

  else
  {
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (BOOL)canModifyGroupMembership
{
  v2 = [(MRAVOutputContextEndpoint *)self deviceInfo];
  if ([v2 supportsTwoHop])
  {
    v3 = 1;
  }

  else
  {
    if ([v2 isAirPlayActive])
    {
      v4 = [v2 parentGroupContainsDiscoverableGroupLeader];
    }

    else
    {
      v4 = [v2 groupContainsDiscoverableGroupLeader];
    }

    v3 = v4;
  }

  return v3;
}

+ (MRAVLocalEndpoint)sharedSystemAudioLocalEndpoint
{
  v2 = objc_opt_class();
  v3 = +[MRAVOutputContext sharedSystemAudioContext];
  v4 = [v3 uniqueIdentifier];
  v5 = [v2 sharedLocalEndpointForRoutingContextWithUID:v4];

  return v5;
}

+ (id)sharedLocalEndpointForRoutingContextWithUID:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (sharedLocalEndpointForRoutingContextWithUID____once == -1)
  {
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    +[MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:];
    if (v4)
    {
      goto LABEL_6;
    }
  }

  v5 = +[MRAVOutputContext sharedAudioPresentationContext];
  v6 = [v5 uniqueIdentifier];

  if (v6)
  {
    v4 = v6;
  }

  else
  {
    v4 = @"SYSTEM";
  }

LABEL_6:
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v7 = sharedLocalEndpointForRoutingContextWithUID____serialQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__MRAVLocalEndpoint_sharedLocalEndpointForRoutingContextWithUID___block_invoke_10;
  v11[3] = &unk_1E769A2A0;
  v12 = v4;
  v13 = &v14;
  v8 = v4;
  dispatch_sync(v7, v11);
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __65__MRAVLocalEndpoint_sharedLocalEndpointForRoutingContextWithUID___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = sharedLocalEndpointForRoutingContextWithUID____contextUIDToLocalEndpointMap;
  sharedLocalEndpointForRoutingContextWithUID____contextUIDToLocalEndpointMap = v0;

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.MRAVEndpoint.sharedLocalEndpointSerialQueue", v4);
  v3 = sharedLocalEndpointForRoutingContextWithUID____serialQueue;
  sharedLocalEndpointForRoutingContextWithUID____serialQueue = v2;
}

void __65__MRAVLocalEndpoint_sharedLocalEndpointForRoutingContextWithUID___block_invoke_10(uint64_t a1)
{
  v2 = [sharedLocalEndpointForRoutingContextWithUID____contextUIDToLocalEndpointMap objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    return;
  }

  v5 = +[MRAVOutputContext sharedAudioPresentationContext];
  v6 = [v5 uniqueIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v8 = +[MRAVConcreteOutputContext sharedAudioPresentationContext];
  }

  else
  {
    v9 = +[MRAVOutputContext sharedSystemAudioContext];
    v10 = [v9 uniqueIdentifier];
    v11 = [v10 isEqualToString:*(a1 + 32)];

    if (v11)
    {
      +[MRAVConcreteOutputContext sharedSystemAudioContext];
    }

    else
    {
      [MRAVConcreteOutputContext createOutputContextWithUniqueIdentifier:*(a1 + 32)];
    }
    v8 = ;
  }

  v24 = v8;
  v12 = [[MRAVLocalEndpoint alloc] initWithOutputContext:v8];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = +[MRAVOutputContext sharedAudioPresentationContext];
  v16 = [v15 uniqueIdentifier];
  v17 = [v16 isEqualToString:*(a1 + 32)];

  if (v17)
  {
    v18 = +[MROutputContextController sharedOutputContextController];
    [*(*(*(a1 + 40) + 8) + 40) setOutputContextController:v18];
LABEL_12:

    goto LABEL_13;
  }

  v19 = +[MRAVOutputContext sharedSystemAudioContext];
  v20 = [v19 uniqueIdentifier];
  v21 = [v20 isEqualToString:*(a1 + 32)];

  if (v21)
  {
    v22 = [MROutputContextController alloc];
    v18 = +[MRAVOutputContext sharedSystemAudioContext];
    v23 = [(MROutputContextController *)v22 initWithOutputContext:v18];
    [*(*(*(a1 + 40) + 8) + 40) setOutputContextController:v23];

    goto LABEL_12;
  }

LABEL_13:
  [sharedLocalEndpointForRoutingContextWithUID____contextUIDToLocalEndpointMap setObject:*(*(*(a1 + 40) + 8) + 40) forKey:*(a1 + 32)];
}

BOOL __32__MRAVLocalEndpoint_groupLeader__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 isLocalDevice] & 1) != 0 || objc_msgSend(v2, "deviceType") != 1;

  return v3;
}

- (MRAVRoutingDiscoverySession)audioDiscoverySession
{
  if (audioDiscoverySession___token != -1)
  {
    [MRAVLocalEndpoint audioDiscoverySession];
  }

  v3 = audioDiscoverySession___audioDiscoverySession;

  return v3;
}

void __42__MRAVLocalEndpoint_audioDiscoverySession__block_invoke()
{
  v2 = [MRAVRoutingDiscoverySessionConfiguration configurationWithEndpointFeatures:1];
  [v2 setAlwaysAllowUpdates:1];
  v0 = [MRAVRoutingDiscoverySession discoverySessionWithConfiguration:v2];
  v1 = audioDiscoverySession___audioDiscoverySession;
  audioDiscoverySession___audioDiscoverySession = v0;
}

- (BOOL)isEligibleForHostingGroupSessionExcludingAcknowledgements
{
  v2 = [(MRAVLocalEndpoint *)self groupSessionEligibilityMonitor];
  v3 = [v2 status];
  v4 = [v3 isEligibleForHostingGroupSessionExcludingAcknowledgements];

  return v4;
}

- (MRGroupSessionEligibilityMonitor)groupSessionEligibilityMonitor
{
  if (groupSessionEligibilityMonitor___token != -1)
  {
    [MRAVLocalEndpoint groupSessionEligibilityMonitor];
  }

  [groupSessionEligibilityMonitor___groupSessionEligibilityMonitor addObserver:self];
  v3 = groupSessionEligibilityMonitor___groupSessionEligibilityMonitor;

  return v3;
}

void __51__MRAVLocalEndpoint_groupSessionEligibilityMonitor__block_invoke()
{
  v0 = objc_alloc_init(MRGroupSessionEligibilityMonitor);
  v1 = groupSessionEligibilityMonitor___groupSessionEligibilityMonitor;
  groupSessionEligibilityMonitor___groupSessionEligibilityMonitor = v0;
}

- (void)requestGroupSessionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a5;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __69__MRAVLocalEndpoint_requestGroupSessionWithDetails_queue_completion___block_invoke;
  v15 = &unk_1E769B768;
  v16 = v6;
  v17 = v7;
  v8 = v7;
  v9 = v6;
  v10 = MEMORY[0x1A58E3570](&v12);
  v11 = MRGetSharedService();
  [v11 requestGroupSessionWithCompletion:{v10, v12, v13, v14, v15}];
}

void __69__MRAVLocalEndpoint_requestGroupSessionWithDetails_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__MRAVLocalEndpoint_requestGroupSessionWithDetails_queue_completion___block_invoke_2;
  block[3] = &unk_1E769AC18;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)groupSessionMonitor:(id)a3 statusDidChangeFrom:(id)a4 to:(id)a5
{
  v7 = a5;
  LODWORD(a4) = [a4 isEligibleForHostingGroupSessionExcludingAcknowledgements];
  v8 = [v7 isEligibleForHostingGroupSessionExcludingAcknowledgements];

  if (a4 != v8)
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 postNotificationName:@"MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification" object:self userInfo:0];
  }
}

- (void)handleActiveGroupSessionDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v9 = [v5 mutableCopy];

  v6 = [(MRAVLocalEndpoint *)self groupSessionInfo];
  [v9 setObject:v6 forKeyedSubscript:@"MRAVEndpointGroupSessionInfoUserInfoKey"];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = [v4 userInfo];

  [v7 postNotificationName:@"MRAVEndpointGroupSessionInfoDidChangeNotification" object:self userInfo:v8];
}

- (id)initWithOutputContext:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = +[MRAVOutputDevice localDeviceUID];
    v7.receiver = v2;
    v7.super_class = MRAVLocalEndpoint;
    v2 = objc_msgSendSuper2(&v7, sel_initWithOutputContext_uniqueIdentifier_, v3, v4);

    if (v2)
    {
      v6 = +[MROrigin localOrigin];
      [v2 setOrigin:v6];

      [(MRAVLocalEndpoint *)v2 registerNotifications];
    }
  }

  return v2;
}

@end