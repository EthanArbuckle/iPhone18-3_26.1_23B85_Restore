@interface MRUTVRemoteController
- (BOOL)transportSupportsTVRemote;
- (MRUTVRemoteController)initWithEndpointController:(id)a3;
- (MRUTVRemoteControllerDelegate)delegate;
- (id)_stateDumpObject;
- (id)airplayIdentifier;
- (id)mediaRemoteIdentifier;
- (int64_t)launchContext;
- (void)presentTVRemoteUsingApp:(BOOL)a3;
- (void)prewarmIfNeeded;
- (void)updateShowTVRemote;
@end

@implementation MRUTVRemoteController

- (MRUTVRemoteController)initWithEndpointController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRUTVRemoteController;
  v6 = [(MRUTVRemoteController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpointController, a3);
    [(MRUEndpointController *)v7->_endpointController addObserver:v7];
    [(MRUTVRemoteController *)v7 updateShowTVRemote];
  }

  return v7;
}

- (id)mediaRemoteIdentifier
{
  v2 = [(MRUEndpointController *)self->_endpointController route];
  if (([v2 isAppleTVRoute] & 1) != 0 || objc_msgSend(v2, "containsDeviceWithSubtype:", 18))
  {
    v3 = [objc_msgSend(v2 "endpoint")];
    v4 = [v3 deviceInfo];
    v5 = [v4 identifier];
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)airplayIdentifier
{
  v2 = [(MRUEndpointController *)self->_endpointController route];
  v3 = [objc_msgSend(v2 "endpoint")];
  v4 = [v3 firstObject];
  if (([v2 isAppleTVRoute] & 1) != 0 || objc_msgSend(v2, "isTVRoute") && objc_msgSend(v4, "isAddedToHomeKit"))
  {
    v5 = [v2 groupLeaderAirplayIdentifier];
LABEL_3:
    v6 = v5;
    goto LABEL_22;
  }

  if ([v2 isDeviceRoute] && objc_msgSend(v2, "isAirPlayingToDevice") && objc_msgSend(v3, "count") == 1)
  {
    v7 = [v4 deviceSubtype] == 13 ? objc_msgSend(v4, "supportsRapport") : 0;
    v8 = [v4 deviceSubtype] == 11 || objc_msgSend(v4, "deviceSubtype") == 17 || objc_msgSend(v4, "deviceSubtype") == 16 ? objc_msgSend(v4, "isAddedToHomeKit") : 0;
    v9 = [v4 deviceSubtype] == 15 && objc_msgSend(v4, "clusterType") == 2;
    if (((v7 | v8) & 1) != 0 || v9)
    {
      v5 = [v4 uid];
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_22:

  return v6;
}

- (BOOL)transportSupportsTVRemote
{
  v2 = [(MRUEndpointController *)self->_endpointController route];
  v3 = [objc_msgSend(v2 "endpoint")];
  v4 = [v3 firstObject];
  v5 = [v4 transportType] == 1;

  return v5;
}

- (void)prewarmIfNeeded
{
  if (self->_showTVRemote)
  {
    v3 = [MEMORY[0x1E69D6100] sharedInstance];
    [v3 prewarm];
  }
}

- (void)presentTVRemoteUsingApp:(BOOL)a3
{
  v3 = a3;
  v5 = [(MRUTVRemoteController *)self mediaRemoteIdentifier];
  if (v5)
  {
    v6 = 0;
    v14 = v5;
  }

  else
  {
    v14 = [(MRUTVRemoteController *)self airplayIdentifier];
    v6 = 1;
  }

  v7 = [(MRUEndpointController *)self->_endpointController route];
  v8 = [v7 isTVRoute];

  v9 = [(MRUTVRemoteController *)self launchContext];
  v10 = v14;
  if (v14)
  {
    if (v8)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v12 = [objc_alloc(MEMORY[0x1E69D60F8]) initWithDeviceIdentifier:v14 identifierType:v6 deviceType:v11 launchContext:v9 launchMethod:v3];
    v13 = [MEMORY[0x1E69D6100] sharedInstance];
    [v13 presentWithContext:v12];

    v10 = v14;
  }
}

- (void)updateShowTVRemote
{
  if ([(MRUTVRemoteController *)self transportSupportsTVRemote])
  {
    v3 = [(MRUTVRemoteController *)self mediaRemoteIdentifier];
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v5 = [(MRUTVRemoteController *)self airplayIdentifier];
      v4 = v5 != 0;
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
  v3 = [(MRUTVRemoteController *)self airplayIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"<NONE>";
  }

  v11[1] = @"mediaRemoteIdentifier";
  v12[0] = v5;
  v6 = [(MRUTVRemoteController *)self mediaRemoteIdentifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
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