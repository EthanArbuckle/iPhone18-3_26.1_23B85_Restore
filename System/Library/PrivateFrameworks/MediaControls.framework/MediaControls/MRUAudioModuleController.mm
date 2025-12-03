@interface MRUAudioModuleController
+ (MRUAudioModuleController)sharedController;
- (MRUAudioModuleController)init;
- (MRUAudioModuleController)initWithOutputDeviceRouteController:(id)controller;
- (MRUConversationAwarenessController)conversationAwarenessController;
- (MRUHearingServiceController)hearingServiceController;
- (MRUListeningModeController)listeningModeController;
- (MRUSpatialAudioController)spatialAudioController;
- (MRUSystemVolumeController)volumeController;
- (void)conversationAwarenessController:(id)controller didChangeConversationAwarenessEnabled:(BOOL)enabled;
- (void)conversationAwarenessController:(id)controller didChangeConversationAwarenessSupported:(BOOL)supported;
- (void)hearingServiceController:(id)controller didChangePrimaryAmplification:(float)amplification;
- (void)hearingServiceController:(id)controller didChangePrimaryHearingAidEnabled:(BOOL)enabled;
- (void)hearingServiceController:(id)controller didChangePrimaryListeningModeOffAllowed:(BOOL)allowed;
- (void)hearingServiceController:(id)controller didChangeSecondaryAmplification:(float)amplification;
- (void)hearingServiceController:(id)controller didChangeSecondaryHearingAidEnabled:(BOOL)enabled;
- (void)hearingServiceController:(id)controller didChangeSecondaryListeningModeOffAllowed:(BOOL)allowed;
- (void)listeningModeController:(id)controller didChangeAvailablePrimaryListeningMode:(id)mode;
- (void)listeningModeController:(id)controller didChangeAvailableSecondaryListeningModes:(id)modes;
- (void)listeningModeController:(id)controller didChangePrimaryListeningMode:(id)mode;
- (void)listeningModeController:(id)controller didChangeSecondaryListeningMode:(id)mode;
- (void)spatialAudioController:(id)controller didChangeAvailableSpatialModes:(id)modes;
- (void)spatialAudioController:(id)controller didChangeNowPlayingInfo:(id)info;
- (void)spatialAudioController:(id)controller didChangeSelectedSpatialMode:(id)mode;
- (void)systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:(id)properties;
- (void)systemOutputDeviceRouteControllerDidUpdateOutputDevices:(id)devices;
- (void)systemVolumeController:(id)controller didChangeVolumeControlCapabilities:(unsigned int)capabilities effectiveVolumeValue:(float)value forType:(int64_t)type;
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
    hearingServiceController = [(MRUAudioModuleController *)self hearingServiceController];
    [(MRUListeningModeController *)self->_listeningModeController setHearingServiceController:hearingServiceController];

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

- (MRUAudioModuleController)initWithOutputDeviceRouteController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = MRUAudioModuleController;
  v6 = [(MRUAudioModuleController *)&v10 init];
  if (v6)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = weakObjectsHashTable;

    objc_storeStrong(&v6->_outputDeviceRouteController, controller);
    [(MRUSystemOutputDeviceRouteController *)v6->_outputDeviceRouteController add:v6];
  }

  return v6;
}

- (void)systemOutputDeviceRouteControllerDidUpdateOutputDevices:(id)devices
{
  v16 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
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
          [v10 audioModuleController:self systemOutputDeviceRouteControllerDidUpdateOutputDevices:devicesCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:(id)properties
{
  v16 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
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
          [v10 audioModuleController:self systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:propertiesCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)conversationAwarenessController:(id)controller didChangeConversationAwarenessEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v18 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
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
          [v12 audioModuleController:self conversationAwarenessController:controllerCopy didChangeConversationAwarenessEnabled:enabledCopy];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)conversationAwarenessController:(id)controller didChangeConversationAwarenessSupported:(BOOL)supported
{
  supportedCopy = supported;
  v18 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
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
          [v12 audioModuleController:self conversationAwarenessController:controllerCopy didChangeConversationAwarenessSupported:supportedCopy];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)listeningModeController:(id)controller didChangeAvailablePrimaryListeningMode:(id)mode
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  modeCopy = mode;
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
          [v13 audioModuleController:self listeningModeController:controllerCopy didChangeAvailablePrimaryListeningMode:modeCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)listeningModeController:(id)controller didChangePrimaryListeningMode:(id)mode
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  modeCopy = mode;
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
          [v13 audioModuleController:self listeningModeController:controllerCopy didChangePrimaryListeningMode:modeCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)listeningModeController:(id)controller didChangeAvailableSecondaryListeningModes:(id)modes
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  modesCopy = modes;
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
          [v13 audioModuleController:self listeningModeController:controllerCopy didChangeAvailableSecondaryListeningModes:modesCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)listeningModeController:(id)controller didChangeSecondaryListeningMode:(id)mode
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  modeCopy = mode;
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
          [v13 audioModuleController:self listeningModeController:controllerCopy didChangeSecondaryListeningMode:modeCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)spatialAudioController:(id)controller didChangeAvailableSpatialModes:(id)modes
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  modesCopy = modes;
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
          [v13 audioModuleController:self spatialAudioController:controllerCopy didChangeAvailableSpatialModes:modesCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)spatialAudioController:(id)controller didChangeSelectedSpatialMode:(id)mode
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  modeCopy = mode;
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
          [v13 audioModuleController:self spatialAudioController:controllerCopy didChangeSelectedSpatialMode:modeCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)spatialAudioController:(id)controller didChangeNowPlayingInfo:(id)info
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  infoCopy = info;
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
          [v13 audioModuleController:self spatialAudioController:controllerCopy didChangeNowPlayingInfo:infoCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)systemVolumeController:(id)controller didChangeVolumeControlCapabilities:(unsigned int)capabilities effectiveVolumeValue:(float)value forType:(int64_t)type
{
  v8 = *&capabilities;
  v23 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
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
          *&v17 = value;
          [v16 audioModuleController:self volumeController:controllerCopy didChangeVolumeControlCapabilities:v8 effectiveVolumeValue:type forType:v17];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (void)hearingServiceController:(id)controller didChangePrimaryHearingAidEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v18 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
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
          [v12 audioModuleController:self hearingServiceController:controllerCopy didChangePrimaryHearingAidEnabled:enabledCopy];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)hearingServiceController:(id)controller didChangePrimaryAmplification:(float)amplification
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
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
          *&v13 = amplification;
          [v12 audioModuleController:self hearingServiceController:controllerCopy didChangePrimaryAmplification:v13];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)hearingServiceController:(id)controller didChangePrimaryListeningModeOffAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v18 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
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
          [v12 audioModuleController:self hearingServiceController:controllerCopy didChangePrimaryListeningModeOffAllowed:allowedCopy];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)hearingServiceController:(id)controller didChangeSecondaryHearingAidEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v18 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
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
          [v12 audioModuleController:self hearingServiceController:controllerCopy didChangeSecondaryHearingAidEnabled:enabledCopy];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)hearingServiceController:(id)controller didChangeSecondaryAmplification:(float)amplification
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
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
          *&v13 = amplification;
          [v12 audioModuleController:self hearingServiceController:controllerCopy didChangeSecondaryAmplification:v13];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)hearingServiceController:(id)controller didChangeSecondaryListeningModeOffAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v18 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
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
          [v12 audioModuleController:self hearingServiceController:controllerCopy didChangeSecondaryListeningModeOffAllowed:allowedCopy];
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