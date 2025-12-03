@interface MRUTVRemoteController
- (BOOL)transportSupportsTVRemote;
- (MRUTVRemoteController)initWithEndpointController:(id)controller;
- (MRUTVRemoteControllerDelegate)delegate;
- (id)_stateDumpObject;
- (id)airplayIdentifier;
- (id)mediaRemoteIdentifier;
- (int64_t)launchContext;
- (void)presentTVRemoteUsingApp:(BOOL)app;
- (void)prewarmIfNeeded;
- (void)updateShowTVRemote;
@end

@implementation MRUTVRemoteController

- (MRUTVRemoteController)initWithEndpointController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = MRUTVRemoteController;
  v6 = [(MRUTVRemoteController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpointController, controller);
    [(MRUEndpointController *)v7->_endpointController addObserver:v7];
    [(MRUTVRemoteController *)v7 updateShowTVRemote];
  }

  return v7;
}

- (id)mediaRemoteIdentifier
{
  route = [(MRUEndpointController *)self->_endpointController route];
  if (([route isAppleTVRoute] & 1) != 0 || objc_msgSend(route, "containsDeviceWithSubtype:", 18))
  {
    v3 = [objc_msgSend(route "endpoint")];
    deviceInfo = [v3 deviceInfo];
    identifier = [deviceInfo identifier];
    v6 = [identifier copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)airplayIdentifier
{
  route = [(MRUEndpointController *)self->_endpointController route];
  v3 = [objc_msgSend(route "endpoint")];
  firstObject = [v3 firstObject];
  if (([route isAppleTVRoute] & 1) != 0 || objc_msgSend(route, "isTVRoute") && objc_msgSend(firstObject, "isAddedToHomeKit"))
  {
    groupLeaderAirplayIdentifier = [route groupLeaderAirplayIdentifier];
LABEL_3:
    v6 = groupLeaderAirplayIdentifier;
    goto LABEL_22;
  }

  if ([route isDeviceRoute] && objc_msgSend(route, "isAirPlayingToDevice") && objc_msgSend(v3, "count") == 1)
  {
    v7 = [firstObject deviceSubtype] == 13 ? objc_msgSend(firstObject, "supportsRapport") : 0;
    v8 = [firstObject deviceSubtype] == 11 || objc_msgSend(firstObject, "deviceSubtype") == 17 || objc_msgSend(firstObject, "deviceSubtype") == 16 ? objc_msgSend(firstObject, "isAddedToHomeKit") : 0;
    v9 = [firstObject deviceSubtype] == 15 && objc_msgSend(firstObject, "clusterType") == 2;
    if (((v7 | v8) & 1) != 0 || v9)
    {
      groupLeaderAirplayIdentifier = [firstObject uid];
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_22:

  return v6;
}

- (BOOL)transportSupportsTVRemote
{
  route = [(MRUEndpointController *)self->_endpointController route];
  v3 = [objc_msgSend(route "endpoint")];
  firstObject = [v3 firstObject];
  v5 = [firstObject transportType] == 1;

  return v5;
}

- (void)prewarmIfNeeded
{
  if (self->_showTVRemote)
  {
    mEMORY[0x1E69D6100] = [MEMORY[0x1E69D6100] sharedInstance];
    [mEMORY[0x1E69D6100] prewarm];
  }
}

- (void)presentTVRemoteUsingApp:(BOOL)app
{
  appCopy = app;
  mediaRemoteIdentifier = [(MRUTVRemoteController *)self mediaRemoteIdentifier];
  if (mediaRemoteIdentifier)
  {
    v6 = 0;
    airplayIdentifier = mediaRemoteIdentifier;
  }

  else
  {
    airplayIdentifier = [(MRUTVRemoteController *)self airplayIdentifier];
    v6 = 1;
  }

  route = [(MRUEndpointController *)self->_endpointController route];
  isTVRoute = [route isTVRoute];

  launchContext = [(MRUTVRemoteController *)self launchContext];
  v10 = airplayIdentifier;
  if (airplayIdentifier)
  {
    if (isTVRoute)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v12 = [objc_alloc(MEMORY[0x1E69D60F8]) initWithDeviceIdentifier:airplayIdentifier identifierType:v6 deviceType:v11 launchContext:launchContext launchMethod:appCopy];
    mEMORY[0x1E69D6100] = [MEMORY[0x1E69D6100] sharedInstance];
    [mEMORY[0x1E69D6100] presentWithContext:v12];

    v10 = airplayIdentifier;
  }
}

- (void)updateShowTVRemote
{
  if ([(MRUTVRemoteController *)self transportSupportsTVRemote])
  {
    mediaRemoteIdentifier = [(MRUTVRemoteController *)self mediaRemoteIdentifier];
    if (mediaRemoteIdentifier)
    {
      v4 = 1;
    }

    else
    {
      airplayIdentifier = [(MRUTVRemoteController *)self airplayIdentifier];
      v4 = airplayIdentifier != 0;
    }
  }

  else
  {
    v4 = 0;
  }

  if (self->_showTVRemote != v4)
  {
    self->_showTVRemote = v4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained tvRemoteController:self didChangeShowTVRemote:v4];
  }
}

- (int64_t)launchContext
{
  v2 = self->_context - 1;
  if (v2 > 4)
  {
    return 0;
  }

  else
  {
    return qword_1A23082A0[v2];
  }
}

- (id)_stateDumpObject
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"airplayIdentifier";
  airplayIdentifier = [(MRUTVRemoteController *)self airplayIdentifier];
  v4 = airplayIdentifier;
  if (airplayIdentifier)
  {
    v5 = airplayIdentifier;
  }

  else
  {
    v5 = @"<NONE>";
  }

  v11[1] = @"mediaRemoteIdentifier";
  v12[0] = v5;
  mediaRemoteIdentifier = [(MRUTVRemoteController *)self mediaRemoteIdentifier];
  v7 = mediaRemoteIdentifier;
  if (mediaRemoteIdentifier)
  {
    v8 = mediaRemoteIdentifier;
  }

  else
  {
    v8 = @"<NONE>";
  }

  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (MRUTVRemoteControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end