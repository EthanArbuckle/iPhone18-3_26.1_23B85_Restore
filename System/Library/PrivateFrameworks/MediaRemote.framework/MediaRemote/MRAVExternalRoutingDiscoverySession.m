@interface MRAVExternalRoutingDiscoverySession
- (BOOL)devicePresenceDetected;
- (MRAVExternalRoutingDiscoverySession)initWithConfiguration:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)destinationOutputDeviceUID;
- (unsigned)discoveryMode;
- (unsigned)endpointFeatures;
- (void)dealloc;
- (void)setDestination:(id)a3;
- (void)setExternalDevice:(id)a3;
@end

@implementation MRAVExternalRoutingDiscoverySession

- (MRAVExternalRoutingDiscoverySession)initWithConfiguration:(id)a3
{
  v6 = a3;
  v33.receiver = self;
  v33.super_class = MRAVExternalRoutingDiscoverySession;
  v7 = [(MRAVRoutingDiscoverySession *)&v33 initWithConfiguration:v6];
  if (v7)
  {
    v8 = [v6 outputDeviceUID];

    if (!v8)
    {
      [(MRAVExternalRoutingDiscoverySession *)a2 initWithConfiguration:v7];
    }

    objc_storeStrong(&v7->_configuration, a3);
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = MRMediaRemoteEndpointFeaturesDescription([v6 features]);
    v11 = [v9 initWithFormat:@"External.%@", v10];

    v12 = [MRRollingWindowActivityTracker alloc];
    v13 = +[MRUserSettings currentSettings];
    [v13 persistantDiscoveryModeDetectionDuration];
    v15 = v14;
    v16 = +[MRUserSettings currentSettings];
    [v16 persistantDiscoveryModeDetectionWindowDuration];
    v18 = v17;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __61__MRAVExternalRoutingDiscoverySession_initWithConfiguration___block_invoke;
    v31[3] = &unk_1E769A228;
    v19 = v11;
    v32 = v19;
    v20 = [(MRRollingWindowActivityTracker *)v12 initWithActivityName:v19 maxAllowedTime:v31 windowDuration:v15 handler:v18];
    discoveryTracker = v7->_discoveryTracker;
    v7->_discoveryTracker = v20;

    objc_initWeak(&location, v7);
    v22 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __61__MRAVExternalRoutingDiscoverySession_initWithConfiguration___block_invoke_2;
    v28[3] = &unk_1E769B680;
    v29 = v6;
    v23 = MEMORY[0x1E69E96A0];
    v24 = MEMORY[0x1E69E96A0];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __61__MRAVExternalRoutingDiscoverySession_initWithConfiguration___block_invoke_3;
    v26[3] = &unk_1E769B6A8;
    objc_copyWeak(&v27, &location);
    [(MRAVLightweightReconnaissanceSession *)v22 searchEndpointsWithPredicate:v28 timeout:@"MRAVExternalRoutingDiscoverySession" reason:v23 queue:v26 completion:7.0];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __61__MRAVExternalRoutingDiscoverySession_initWithConfiguration___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69B13D8];
  v2 = *MEMORY[0x1E69B1348];
  v3 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v5 bundleIdentifier];
  [v1 snapshotWithDomain:v2 type:@"Discovery" subType:v3 context:v4 triggerThresholdValues:0 events:0 completion:0];
}

uint64_t __61__MRAVExternalRoutingDiscoverySession_initWithConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 designatedGroupLeader];
  v5 = [v4 canBeAirPlayReceiver];

  if (v5)
  {
    v6 = [*(a1 + 32) outputDeviceUID];
    v7 = [v3 containsOutputDeviceWithUID:v6];
  }

  else
  {
    v6 = [v3 designatedGroupLeader];
    v8 = [v6 uid];
    v9 = [*(a1 + 32) outputDeviceUID];
    v7 = [v8 isEqualToString:v9];
  }

  return v7;
}

void __61__MRAVExternalRoutingDiscoverySession_initWithConfiguration___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDestination:v3];
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MRMediaRemoteEndpointFeaturesDescription([(MRAVExternalRoutingDiscoverySession *)v2 endpointFeatures]);
  v6 = MRMediaRemoteCopyRouteDiscoveryModeDescription(v2->_discoveryMode);
  v7 = [v3 stringWithFormat:@"<%@: %p> (%@ - %@)", v4, v2, v5, v6];

  objc_sync_exit(v2);

  return v7;
}

- (id)debugDescription
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MRAVExternalRoutingDiscoverySession *)v2 description];
  v5 = [(MRAVExternalRoutingDiscoverySession *)v2 availableOutputDevices];
  v6 = MRCreateIndentedDebugDescriptionFromObject(v2->_discoveryTracker);
  v7 = [v3 stringWithFormat:@"%@\n%@ %@", v4, v5, v6];

  objc_sync_exit(v2);

  return v7;
}

- (void)dealloc
{
  if (self->_externalDeviceDiscoveryToken)
  {
    [(MRExternalDevice *)self->_externalDevice unregisterDiscoveryToken:?];
  }

  v3.receiver = self;
  v3.super_class = MRAVExternalRoutingDiscoverySession;
  [(MRAVExternalRoutingDiscoverySession *)&v3 dealloc];
}

- (unsigned)discoveryMode
{
  v2 = self;
  objc_sync_enter(v2);
  discoveryMode = v2->_discoveryMode;
  objc_sync_exit(v2);

  return discoveryMode;
}

- (unsigned)endpointFeatures
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MRAVRoutingDiscoverySessionConfiguration *)v2->_configuration features];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)devicePresenceDetected
{
  if (([(MRAVExternalRoutingDiscoverySession *)self endpointFeatures]& 1) != 0)
  {
    v4 = [(MRAVExternalRoutingDiscoverySession *)self availableOutputDevices];
LABEL_6:
    v5 = v4;
    v3 = [v4 count] != 0;

    return v3;
  }

  if (([(MRAVExternalRoutingDiscoverySession *)self endpointFeatures]& 8) != 0)
  {
    v4 = [(MRAVExternalRoutingDiscoverySession *)self availableEndpoints];
    goto LABEL_6;
  }

  return 0;
}

- (void)setDestination:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  objc_storeStrong(&v6->_destination, a3);
  if (v5)
  {
    v11 = @"MREndpointConnectionReasonUserInfoKey";
    v12[0] = @"MRAVExternalRoutingDiscoverySession";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__MRAVExternalRoutingDiscoverySession_setDestination___block_invoke;
    v9[3] = &unk_1E769B6D0;
    v9[4] = v6;
    v10 = v5;
    [v10 connectToExternalDeviceWithUserInfo:v7 completion:v9];
  }

  else
  {
    [(MRAVExternalRoutingDiscoverySession *)v6 setExternalDevice:0];
  }

  objc_sync_exit(v6);

  v8 = *MEMORY[0x1E69E9840];
}

void __54__MRAVExternalRoutingDiscoverySession_setDestination___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = *(a1 + 40);
  if (v4 == *(*(a1 + 32) + 168))
  {
    v5 = [v4 externalDevice];
    [*(a1 + 32) setExternalDevice:v5];
  }

  objc_sync_exit(v3);
}

- (id)destinationOutputDeviceUID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MRAVRoutingDiscoverySessionConfiguration *)v2->_configuration outputDeviceUID];
  objc_sync_exit(v2);

  return v3;
}

- (void)setExternalDevice:(id)a3
{
  v5 = a3;
  if (self->_externalDeviceDiscoveryToken)
  {
    [(MRExternalDevice *)self->_externalDevice unregisterDiscoveryToken:?];
  }

  objc_storeStrong(&self->_externalDevice, a3);
  objc_initWeak(&location, self);
  v6 = [(MRExternalDevice *)self->_externalDevice registerDiscoveryTokenForConfiguration:self->_configuration];
  externalDeviceDiscoveryToken = self->_externalDeviceDiscoveryToken;
  self->_externalDeviceDiscoveryToken = v6;

  externalDevice = self->_externalDevice;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __57__MRAVExternalRoutingDiscoverySession_setExternalDevice___block_invoke;
  v12 = &unk_1E769B720;
  objc_copyWeak(&v13, &location);
  [(MRExternalDevice *)externalDevice setDiscoveryOutputDevicesChangedCallback:&v9 forToken:self->_externalDeviceDiscoveryToken];
  [(MRExternalDevice *)self->_externalDevice setDiscoveryMode:self->_discoveryMode forToken:self->_externalDeviceDiscoveryToken, v9, v10, v11, v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __57__MRAVExternalRoutingDiscoverySession_setExternalDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__MRAVExternalRoutingDiscoverySession_setExternalDevice___block_invoke_2;
    v7[3] = &unk_1E769B6F8;
    v7[4] = WeakRetained;
    v6 = [v3 msv_map:v7];
    [v5 notifyOutputDevicesChanged:v6];
  }
}

MRAVDistantOutputDevice *__57__MRAVExternalRoutingDiscoverySession_setExternalDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLocalDevice])
  {
    v4 = [*(a1 + 32) destination];
    v5 = [*(a1 + 32) destinationOutputDeviceUID];
    v6 = [v4 outputDeviceWithUID:v5];
  }

  else
  {
    v6 = v3;
  }

  v7 = [v6 descriptor];
  if ([v3 isLocalDevice])
  {
    [v7 setIsGroupable:{objc_msgSend(v3, "isGroupable")}];
  }

  v8 = [*(a1 + 32) destination];
  v9 = [v8 designatedGroupLeader];
  [v7 setTransportType:{objc_msgSend(v9, "transportType")}];

  v10 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v7];

  return v10;
}

- (void)initWithConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRAVExternalRoutingDiscoverySession.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"configuration.outputDeviceUID"}];
}

@end