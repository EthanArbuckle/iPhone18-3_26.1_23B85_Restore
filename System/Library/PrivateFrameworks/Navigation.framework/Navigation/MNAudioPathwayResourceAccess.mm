@interface MNAudioPathwayResourceAccess
- (BOOL)_otherAudioIsPlaying;
- (BOOL)_routeIsAirTunes:(id)tunes;
- (BOOL)_routeIsBluetooth:(id)bluetooth;
- (BOOL)_routeIsForVehicle:(id)vehicle;
- (BOOL)_routeIsHFP:(id)p;
- (BOOL)_routeIsOverride:(id)override;
- (BOOL)_routeIsUsable:(id)usable;
- (BOOL)_routeIsWireless:(id)wireless;
- (MNAudioPathwayResourceAccess)initWithHFPEnabled:(BOOL)enabled;
- (id)_pickableRoutesDescription:(id)description;
- (id)_usableHFPRoute;
- (void)_mediaServerConnectionDied;
- (void)_registerForObservation;
- (void)_setHfpRoute:(id)route;
- (void)_unregisterForObservation;
- (void)_updateHFPRoute;
- (void)dealloc;
- (void)setEnableHFPUse:(BOOL)use;
- (void)setWantsVolumeControl:(BOOL)control;
@end

@implementation MNAudioPathwayResourceAccess

void __47__MNAudioPathwayResourceAccess__updateHFPRoute__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[32])
  {
    v3 = [v2 _usableHFPRoute];
    [*(a1 + 32) _setHfpRoute:v3];
  }

  else
  {

    [v2 _setHfpRoute:0];
  }
}

- (void)_updateHFPRoute
{
  pickableRoutesQueue = self->_pickableRoutesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MNAudioPathwayResourceAccess__updateHFPRoute__block_invoke;
  block[3] = &unk_1E8430ED8;
  block[4] = self;
  dispatch_async(pickableRoutesQueue, block);
}

- (id)_pickableRoutesDescription:(id)description
{
  v20 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(descriptionCopy, "count") + 1}];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found %d pickable audio routes:", objc_msgSend(descriptionCopy, "count")];
  [v4 addObject:v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = descriptionCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) description];
        [v4 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v4 componentsJoinedByString:@"\n"];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)_routeIsWireless:(id)wireless
{
  v3 = [wireless objectForKey:*MEMORY[0x1E69AEC98]];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69AEAD0]];

  return v4;
}

- (BOOL)_routeIsBluetooth:(id)bluetooth
{
  v3 = [bluetooth objectForKey:*MEMORY[0x1E69AEC28]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)_routeIsForVehicle:(id)vehicle
{
  v3 = [vehicle objectForKey:*MEMORY[0x1E69AEBA8]];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69AEBD8]];

  return v4;
}

- (BOOL)_routeIsHFP:(id)p
{
  v3 = [p objectForKey:*MEMORY[0x1E69AEBF8]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)_routeIsOverride:(id)override
{
  v3 = [override objectForKey:*MEMORY[0x1E69AEC98]];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69AEAC8]];

  return v4;
}

- (BOOL)_routeIsAirTunes:(id)tunes
{
  v3 = [tunes objectForKey:*MEMORY[0x1E69AEB90]];
  v4 = [v3 isEqualToString:@"AirTunes"];

  return v4;
}

- (BOOL)_otherAudioIsPlaying
{
  mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v3 = [mEMORY[0x1E69AED10] attributeForKey:*MEMORY[0x1E69AEAA8]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)_routeIsUsable:(id)usable
{
  usableCopy = usable;
  v5 = [usableCopy count] && !-[MNAudioPathwayResourceAccess _otherAudioIsPlaying](self, "_otherAudioIsPlaying") && !-[MNAudioPathwayResourceAccess _routeIsAirTunes:](self, "_routeIsAirTunes:", usableCopy) && !-[MNAudioPathwayResourceAccess _routeIsOverride:](self, "_routeIsOverride:", usableCopy) && -[MNAudioPathwayResourceAccess _routeIsHFP:](self, "_routeIsHFP:", usableCopy) && -[MNAudioPathwayResourceAccess _routeIsForVehicle:](self, "_routeIsForVehicle:", usableCopy) && -[MNAudioPathwayResourceAccess _routeIsBluetooth:](self, "_routeIsBluetooth:", usableCopy) && -[MNAudioPathwayResourceAccess _routeIsWireless:](self, "_routeIsWireless:", usableCopy);

  return v5;
}

- (id)_usableHFPRoute
{
  v31 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_pickableRoutesQueue);
  if (self->_enableHFPUse)
  {
    mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
    v4 = [mEMORY[0x1E69AED10] pickableRoutesForCategory:@"MediaPlayback" andMode:@"VoicePrompt"];

    v5 = [v4 count];
    forLoggingOnly_pickableRoutesCount = self->_forLoggingOnly_pickableRoutesCount;
    self->_forLoggingOnly_pickableRoutesCount = v5;
    if (v5 != forLoggingOnly_pickableRoutesCount)
    {
      v7 = GetAudioLogForMNAudioPathwayResourceAccessCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(MNAudioPathwayResourceAccess *)self _pickableRoutesDescription:v4];
        *buf = 138412290;
        v27 = v8;
        _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          if ([(MNAudioPathwayResourceAccess *)self _routeIsUsable:v14, v22])
          {
            v16 = GetAudioLogForMNAudioPathwayResourceAccessCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69AEC88]];
              v18 = [v14 objectForKeyedSubscript:@"PortNumber"];
              *buf = 138412546;
              v27 = v17;
              v28 = 2112;
              v29 = v18;
              _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_DEFAULT, "Found usable audio route: %@, port: %@", buf, 0x16u);
            }

            v15 = v14;
            goto LABEL_18;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_18:

    if (v5 != forLoggingOnly_pickableRoutesCount && !v15)
    {
      v19 = GetAudioLogForMNAudioPathwayResourceAccessCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_DEFAULT, "useHFP is enabled but we didn't find a usable HFP route.", buf, 2u);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)_setHfpRoute:(id)route
{
  v30 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  dispatch_assert_queue_V2(self->_pickableRoutesQueue);
  hfpRoute = self->_hfpRoute;
  p_hfpRoute = &self->_hfpRoute;
  v8 = hfpRoute;
  v9 = routeCopy;
  if (v9 | v8)
  {
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      if (!*p_hfpRoute)
      {
        goto LABEL_11;
      }

      mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
      v12 = [mEMORY[0x1E69AED10] setBTHFPRoute:*p_hfpRoute availableForVoicePrompts:0];

      v13 = GetAudioLogForMNAudioPathwayResourceAccessCategory();
      v14 = v13;
      if (v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *p_hfpRoute;
          v28 = 138412290;
          v29 = v15;
          v16 = "Successfully cleared HFP route: %@";
          v17 = v14;
          v18 = OS_LOG_TYPE_DEFAULT;
LABEL_9:
          _os_log_impl(&dword_1D311E000, v17, v18, v16, &v28, 0xCu);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v19 = *p_hfpRoute;
        v28 = 138412290;
        v29 = v19;
        v16 = "Unable to clear voice prompt for route (this is an error in AVSystemController) : %@";
        v17 = v14;
        v18 = OS_LOG_TYPE_ERROR;
        goto LABEL_9;
      }

LABEL_11:
      if (!v9)
      {
LABEL_19:
        objc_storeStrong(p_hfpRoute, route);
        goto LABEL_20;
      }

      mEMORY[0x1E69AED10]2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
      v21 = [mEMORY[0x1E69AED10]2 setBTHFPRoute:v9 availableForVoicePrompts:1];

      v22 = GetAudioLogForMNAudioPathwayResourceAccessCategory();
      v23 = v22;
      if (v21)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 138412290;
          v29 = v9;
          v24 = "Successfully set HFP route to %@";
          v25 = v23;
          v26 = OS_LOG_TYPE_DEFAULT;
LABEL_17:
          _os_log_impl(&dword_1D311E000, v25, v26, v24, &v28, 0xCu);
        }
      }

      else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v28 = 138412290;
        v29 = v9;
        v24 = "Unable to set voice prompt for route (this is an error in AVSystemController) : %@";
        v25 = v23;
        v26 = OS_LOG_TYPE_ERROR;
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

LABEL_20:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_mediaServerConnectionDied
{
  v3 = GetAudioLogForMNAudioPathwayResourceAccessCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_INFO, "Server connection died (unless there are lots of these, this is not an error)", buf, 2u);
  }

  pickableRoutesQueue = self->_pickableRoutesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MNAudioPathwayResourceAccess__mediaServerConnectionDied__block_invoke;
  block[3] = &unk_1E8430ED8;
  block[4] = self;
  dispatch_sync(pickableRoutesQueue, block);
  [(MNAudioPathwayResourceAccess *)self _unregisterForObservation];
  [(MNAudioPathwayResourceAccess *)self _registerForObservation];
}

void __58__MNAudioPathwayResourceAccess__mediaServerConnectionDied__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

- (void)setWantsVolumeControl:(BOOL)control
{
  v27 = *MEMORY[0x1E69E9840];
  self->_wantsVolumeControl = control;
  mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_wantsVolumeControl];
  v6 = MEMORY[0x1E69AE9F0];
  v7 = *MEMORY[0x1E69AE9F0];
  v20 = 0;
  [mEMORY[0x1E69AED10] setAttribute:v5 forKey:v7 error:&v20];
  v8 = v20;

  v9 = GetAudioLogForMNAudioPathwayResourceAccessCategory();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *v6;
      if (self->_wantsVolumeControl)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      *buf = 138412802;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v8;
      v13 = "Error setting attribute for %@ : attributes %@ : error %@";
      v14 = v10;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 32;
LABEL_11:
      _os_log_impl(&dword_1D311E000, v14, v15, v13, buf, v16);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *v6;
    v18 = @"NO";
    if (self->_wantsVolumeControl)
    {
      v18 = @"YES";
    }

    *buf = 138412546;
    v22 = v17;
    v23 = 2112;
    v24 = v18;
    v13 = "Setting attributes for %@ was successful : attributes %@";
    v14 = v10;
    v15 = OS_LOG_TYPE_DEFAULT;
    v16 = 22;
    goto LABEL_11;
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setEnableHFPUse:(BOOL)use
{
  useCopy = use;
  v13 = *MEMORY[0x1E69E9840];
  v5 = GetAudioLogForMNAudioPathwayResourceAccessCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (useCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "[MNAudioPathwayResourceAccess setEnableHFPUse:] %@", buf, 0xCu);
  }

  pickableRoutesQueue = self->_pickableRoutesQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__MNAudioPathwayResourceAccess_setEnableHFPUse___block_invoke;
  v9[3] = &unk_1E8430928;
  v9[4] = self;
  v10 = useCopy;
  dispatch_async(pickableRoutesQueue, v9);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __48__MNAudioPathwayResourceAccess_setEnableHFPUse___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 32) != v2)
  {
    *(v1 + 32) = v2;
    return [*(result + 32) _updateHFPRoute];
  }

  return result;
}

- (void)_unregisterForObservation
{
  v3 = GetAudioLogForMNAudioPathwayResourceAccessCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "Unregistering from observation", v6, 2u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
  [mEMORY[0x1E69AED10] setAttribute:0 forKey:*MEMORY[0x1E69AECD8] error:0];
}

- (void)_registerForObservation
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = GetAudioLogForMNAudioPathwayResourceAccessCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "Registering for observation", buf, 2u);
  }

  mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v5 = MEMORY[0x1E69AEAF0];
  v27[0] = *MEMORY[0x1E69AEAF0];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v7 = MEMORY[0x1E69AECD8];
  v8 = *MEMORY[0x1E69AECD8];
  v20 = 0;
  [mEMORY[0x1E69AED10] setAttribute:v6 forKey:v8 error:&v20];
  v9 = v20;
  v10 = GetAudioLogForMNAudioPathwayResourceAccessCategory();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *v7;
      *buf = 138412802;
      v22 = v12;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v9;
      v13 = "Error setting attribute for %@ : attributes %@ : error %@";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 32;
LABEL_8:
      _os_log_impl(&dword_1D311E000, v14, v15, v13, buf, v16);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v17 = *v7;
    *buf = 138412546;
    v22 = v17;
    v23 = 2112;
    v24 = v6;
    v13 = "Setting attributes for %@ was successful : attributes %@";
    v14 = v11;
    v15 = OS_LOG_TYPE_INFO;
    v16 = 22;
    goto LABEL_8;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__mediaServerConnectionDied name:*MEMORY[0x1E69AECB8] object:mEMORY[0x1E69AED10]];
  [defaultCenter addObserver:self selector:sel__pickableRoutesChanged name:*v5 object:mEMORY[0x1E69AED10]];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(MNAudioPathwayResourceAccess *)self _unregisterForObservation];
  [(MNAudioPathwayResourceAccess *)self setWantsVolumeControl:0];
  if (self->_hfpRoute)
  {
    mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
    [mEMORY[0x1E69AED10] setBTHFPRoute:0 availableForVoicePrompts:0];
  }

  v4.receiver = self;
  v4.super_class = MNAudioPathwayResourceAccess;
  [(MNAudioPathwayResourceAccess *)&v4 dealloc];
}

- (MNAudioPathwayResourceAccess)initWithHFPEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v24 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = MNAudioPathwayResourceAccess;
  v4 = [(MNAudioPathwayResourceAccess *)&v21 init];
  v5 = v4;
  if (v4)
  {
    v4->_forLoggingOnly_pickableRoutesCount = 0x7FFFFFFFFFFFFFFFLL;
    v6 = GetAudioLogForMNAudioPathwayResourceAccessCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"NO";
      if (enabledCopy)
      {
        v7 = @"YES";
      }

      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "Initialization : enableHFP=%@", buf, 0xCu);
    }

    v8 = geo_dispatch_queue_create();
    pickableRoutesQueue = v5->_pickableRoutesQueue;
    v5->_pickableRoutesQueue = v8;

    v10 = v5->_pickableRoutesQueue;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __51__MNAudioPathwayResourceAccess_initWithHFPEnabled___block_invoke;
    v18 = &unk_1E8430928;
    v11 = v5;
    v19 = v11;
    v20 = enabledCopy;
    dispatch_async(v10, &v15);
    [(MNAudioPathwayResourceAccess *)v11 _registerForObservation:v15];
    v12 = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

@end