@interface MRUAudioModuleController
+ (MRUAudioModuleController)sharedController;
- (MRUAudioModuleController)init;
- (MRUAudioModuleController)initWithOutputDeviceRouteController:(id)a3;
- (MRUConversationAwarenessController)conversationAwarenessController;
- (MRUHearingServiceController)hearingServiceController;
- (MRUListeningModeController)listeningModeController;
- (MRUSpatialAudioController)spatialAudioController;
- (MRUSystemVolumeController)volumeController;
- (void)conversationAwarenessController:(id)a3 didChangeConversationAwarenessEnabled:(BOOL)a4;
- (void)conversationAwarenessController:(id)a3 didChangeConversationAwarenessSupported:(BOOL)a4;
- (void)hearingServiceController:(id)a3 didChangePrimaryAmplification:(float)a4;
- (void)hearingServiceController:(id)a3 didChangePrimaryHearingAidEnabled:(BOOL)a4;
- (void)hearingServiceController:(id)a3 didChangePrimaryListeningModeOffAllowed:(BOOL)a4;
- (void)hearingServiceController:(id)a3 didChangeSecondaryAmplification:(float)a4;
- (void)hearingServiceController:(id)a3 didChangeSecondaryHearingAidEnabled:(BOOL)a4;
- (void)hearingServiceController:(id)a3 didChangeSecondaryListeningModeOffAllowed:(BOOL)a4;
- (void)listeningModeController:(id)a3 didChangeAvailablePrimaryListeningMode:(id)a4;
- (void)listeningModeController:(id)a3 didChangeAvailableSecondaryListeningModes:(id)a4;
- (void)listeningModeController:(id)a3 didChangePrimaryListeningMode:(id)a4;
- (void)listeningModeController:(id)a3 didChangeSecondaryListeningMode:(id)a4;
- (void)spatialAudioController:(id)a3 didChangeAvailableSpatialModes:(id)a4;
- (void)spatialAudioController:(id)a3 didChangeNowPlayingInfo:(id)a4;
- (void)spatialAudioController:(id)a3 didChangeSelectedSpatialMode:(id)a4;
- (void)systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:(id)a3;
- (void)systemOutputDeviceRouteControllerDidUpdateOutputDevices:(id)a3;
- (void)systemVolumeController:(id)a3 didChangeVolumeControlCapabilities:(unsigned int)a4 effectiveVolumeValue:(float)a5 forType:(int64_t)a6;
@end

@implementation MRUAudioModuleController

- (MRUSpatialAudioController)spatialAudioController
{
  spatialAudioController = self->_spatialAudioController;
  if (!spatialAudioController)
  {
    v4 = [[MRUSpatialAudioController alloc] initWithOutputDeviceRouteController:self->_outputDeviceRouteController];
    v5 = self->_spatialAudioController;
    self->_spatialAudioController = v4;

    [(MRUSpatialAudioController *)self->_spatialAudioController setDelegate:self];
    spatialAudioController = self->_spatialAudioController;
  }

  return spatialAudioController;
}

- (MRUListeningModeController)listeningModeController
{
  listeningModeController = self->_listeningModeController;
  if (!listeningModeController)
  {
    v4 = [[MRUListeningModeController alloc] initWithOutputDeviceRouteController:self->_outputDeviceRouteController];
    v5 = self->_listeningModeController;
    self->_listeningModeController = v4;

    [(MRUListeningModeController *)self->_listeningModeController setDelegate:self];
    v6 = [(MRUAudioModuleController *)self hearingServiceController];
    [(MRUListeningModeController *)self->_listeningModeController setHearingServiceController:v6];

    listeningModeController = self->_listeningModeController;
  }

  return listeningModeController;
}

- (MRUConversationAwarenessController)conversationAwarenessController
{
  conversationAwarenessController = self->_conversationAwarenessController;
  if (!conversationAwarenessController)
  {
    v4 = [[MRUConversationAwarenessController alloc] initWithOutputDeviceRouteController:self->_outputDeviceRouteController];
    v5 = self->_conversationAwarenessController;
    self->_conversationAwarenessController = v4;

    [(MRUConversationAwarenessController *)self->_conversationAwarenessController setDelegate:self];
    conversationAwarenessController = self->_conversationAwarenessController;
  }

  return conversationAwarenessController;
}

- (MRUHearingServiceController)hearingServiceController
{
  hearingServiceController = self->_hearingServiceController;
  if (!hearingServiceController)
  {
    v4 = [[MRUHearingServiceController alloc] initWithOutputDeviceRouteController:self->_outputDeviceRouteController];
    v5 = self->_hearingServiceController;
    self->_hearingServiceController = v4;

    [(MRUHearingServiceController *)self->_hearingServiceController addObserver:self];
    hearingServiceController = self->_hearingServiceController;
  }

  return hearingServiceController;
}

- (MRUSystemVolumeController)volumeController
{
  volumeController = self->_volumeController;
  if (!volumeController)
  {
    v4 = [[MRUSystemVolumeController alloc] initWithOutputDeviceRouteController:self->_outputDeviceRouteController];
    v5 = self->_volumeController;
    self->_volumeController = v4;

    [(MRUSystemVolumeController *)self->_volumeController setDelegate:self];
    volumeController = self->_volumeController;
  }

  return volumeController;
}

+ (MRUAudioModuleController)sharedController
{
  if (sharedController___once_0 != -1)
  {
    +[MRUAudioModuleController sharedController];
  }

  v3 = sharedController___sharedController_0;

  return v3;
}

uint64_t __44__MRUAudioModuleController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(MRUAudioModuleController);
  v1 = sharedController___sharedController_0;
  sharedController___sharedController_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MRUAudioModuleController)init
{
  v3 = +[MRUSystemOutputDeviceRouteController sharedController];
  v4 = [(MRUAudioModuleController *)self initWithOutputDeviceRouteController:v3];

  return v4;
}

- (MRUAudioModuleController)initWithOutputDeviceRouteController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MRUAudioModuleController;
  v6 = [(MRUAudioModuleController *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v7;

    objc_storeStrong(&v6->_outputDeviceRouteController, a3);
    [(MRUSystemOutputDeviceRouteController *)v6->_outputDeviceRouteController add:v6];
  }

  return v6;
}

- (void)systemOutputDeviceRouteControllerDidUpdateOutputDevices:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 audioModuleController:self systemOutputDeviceRouteControllerDidUpdateOutputDevices:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 audioModuleController:self systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)conversationAwarenessController:(id)a3 didChangeConversationAwarenessEnabled:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 audioModuleController:self conversationAwarenessController:v6 didChangeConversationAwarenessEnabled:v4];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)conversationAwarenessController:(id)a3 didChangeConversationAwarenessSupported:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 audioModuleController:self conversationAwarenessController:v6 didChangeConversationAwarenessSupported:v4];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)listeningModeController:(id)a3 didChangeAvailablePrimaryListeningMode:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 audioModuleController:self listeningModeController:v6 didChangeAvailablePrimaryListeningMode:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)listeningModeController:(id)a3 didChangePrimaryListeningMode:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 audioModuleController:self listeningModeController:v6 didChangePrimaryListeningMode:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)listeningModeController:(id)a3 didChangeAvailableSecondaryListeningModes:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 audioModuleController:self listeningModeController:v6 didChangeAvailableSecondaryListeningModes:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)listeningModeController:(id)a3 didChangeSecondaryListeningMode:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 audioModuleController:self listeningModeController:v6 didChangeSecondaryListeningMode:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)spatialAudioController:(id)a3 didChangeAvailableSpatialModes:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 audioModuleController:self spatialAudioController:v6 didChangeAvailableSpatialModes:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)spatialAudioController:(id)a3 didChangeSelectedSpatialMode:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 audioModuleController:self spatialAudioController:v6 didChangeSelectedSpatialMode:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)spatialAudioController:(id)a3 didChangeNowPlayingInfo:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 audioModuleController:self spatialAudioController:v6 didChangeNowPlayingInfo:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)systemVolumeController:(id)a3 didChangeVolumeControlCapabilities:(unsigned int)a4 effectiveVolumeValue:(float)a5 forType:(int64_t)a6
{
  v8 = *&a4;
  v23 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [(NSHashTable *)self->_observers copy];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          *&v17 = a5;
          [v16 audioModuleController:self volumeController:v10 didChangeVolumeControlCapabilities:v8 effectiveVolumeValue:a6 forType:v17];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (void)hearingServiceController:(id)a3 didChangePrimaryHearingAidEnabled:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 audioModuleController:self hearingServiceController:v6 didChangePrimaryHearingAidEnabled:v4];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)hearingServiceController:(id)a3 didChangePrimaryAmplification:(float)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          *&v13 = a4;
          [v12 audioModuleController:self hearingServiceController:v6 didChangePrimaryAmplification:v13];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)hearingServiceController:(id)a3 didChangePrimaryListeningModeOffAllowed:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 audioModuleController:self hearingServiceController:v6 didChangePrimaryListeningModeOffAllowed:v4];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)hearingServiceController:(id)a3 didChangeSecondaryHearingAidEnabled:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 audioModuleController:self hearingServiceController:v6 didChangeSecondaryHearingAidEnabled:v4];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)hearingServiceController:(id)a3 didChangeSecondaryAmplification:(float)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          *&v13 = a4;
          [v12 audioModuleController:self hearingServiceController:v6 didChangeSecondaryAmplification:v13];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)hearingServiceController:(id)a3 didChangeSecondaryListeningModeOffAllowed:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 audioModuleController:self hearingServiceController:v6 didChangeSecondaryListeningModeOffAllowed:v4];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

@end