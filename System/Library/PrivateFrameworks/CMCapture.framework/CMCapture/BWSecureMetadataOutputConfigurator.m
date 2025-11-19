@interface BWSecureMetadataOutputConfigurator
- (BWSecureMetadataOutputConfiguration)coalescedSecureMetadataOutputConfiguration;
- (BWSecureMetadataOutputConfiguration)configurationForPrimaryClient;
- (BWSecureMetadataOutputConfigurator)init;
- (id)_coalescedClientConfiguration;
- (void)_updateSecureMetadataOutputConfigurationForceDelegate:(BOOL)a3;
- (void)dealloc;
- (void)registerAttachedSessionID:(id)a3;
- (void)resetAllConfigurations;
- (void)setConfiguration:(id)a3 forAttachedSessionID:(id)a4;
- (void)setConfigurationForPrimaryClient:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setMaximumFrameRate:(float)a3 forAttachedSessionID:(id)a4;
- (void)unregisterAttachedSessionID:(id)a3;
@end

@implementation BWSecureMetadataOutputConfigurator

- (BWSecureMetadataOutputConfigurator)init
{
  v3.receiver = self;
  v3.super_class = BWSecureMetadataOutputConfigurator;
  result = [(BWSecureMetadataOutputConfigurator *)&v3 init];
  if (result)
  {
    result->_stateLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (BWSecureMetadataOutputConfiguration)configurationForPrimaryClient
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = self->_configurationForPrimaryClient;
  os_unfair_lock_unlock(&self->_stateLock);
  return v3;
}

- (id)_coalescedClientConfiguration
{
  v3 = [(BWSecureMetadataOutputConfiguration *)self->_configurationForPrimaryClient copy];
  if (!v3)
  {
    v3 = objc_alloc_init(BWSecureMetadataOutputConfiguration);
  }

  v4 = [(BWSecureMetadataOutputConfiguration *)self->_configurationForPrimaryClient enabledDetectedObjectTypes];
  v5 = [(BWSecureMetadataOutputConfiguration *)v3 motionToWakeEnabled];
  v6 = 0;
  v7 = 0.0;
  if (v5)
  {
    [(BWSecureMetadataOutputConfiguration *)v3 motionToWakeTargetFrameRate];
  }

  [(BWSecureMetadataOutputConfiguration *)v3 setMotionToWakeTargetFrameRate:v7];
  if ([(BWSecureMetadataOutputConfiguration *)v3 objectDetectionEnabled])
  {
    [(BWSecureMetadataOutputConfiguration *)v3 objectDetectionTargetFrameRate];
    v6 = LODWORD(v8);
  }

  LODWORD(v8) = v6;
  [(BWSecureMetadataOutputConfiguration *)v3 setObjectDetectionTargetFrameRate:v8];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = [(NSMutableDictionary *)self->_secondaryClientConfigurationsByClientID allKeys];
  v10 = [v9 countByEnumeratingWithState:&v40 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v40 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)self->_secondaryClientConfigurationsByClientID objectForKeyedSubscript:v14];
        [-[NSMutableDictionary objectForKeyedSubscript:](self->_maximumFrameRateByClientID objectForKeyedSubscript:{v14), "floatValue"}];
        v17 = v16;
        if ([(BWSecureMetadataOutputConfiguration *)v15 objectDetectionEnabled])
        {
          [(BWSecureMetadataOutputConfiguration *)v3 setObjectDetectionEnabled:1];
          if ([(BWSecureMetadataOutputConfiguration *)v15 enabledDetectedObjectTypes])
          {
            v4 = [(NSSet *)[(BWSecureMetadataOutputConfiguration *)v15 enabledDetectedObjectTypes] setByAddingObjectsFromSet:v4];
          }

          if (![(BWSecureMetadataOutputConfiguration *)self->_configurationForPrimaryClient objectDetectionEnabled])
          {
            [(BWSecureMetadataOutputConfiguration *)v15 objectDetectionTargetFrameRate];
            v18 = v17;
            if (v19 > 0.0)
            {
              [(BWSecureMetadataOutputConfiguration *)v15 objectDetectionTargetFrameRate];
              v18 = v20;
              if (v17 > 0.0)
              {
                v18 = v17;
                if (v17 >= v20)
                {
                  [(BWSecureMetadataOutputConfiguration *)v15 objectDetectionTargetFrameRate];
                  v18 = v21;
                }
              }
            }

            [(BWSecureMetadataOutputConfiguration *)v3 objectDetectionTargetFrameRate];
            if (*&v22 > v18)
            {
              [(BWSecureMetadataOutputConfiguration *)v3 objectDetectionTargetFrameRate];
              v18 = *&v22;
            }

            *&v22 = v18;
            [(BWSecureMetadataOutputConfiguration *)v3 setObjectDetectionTargetFrameRate:v22];
          }

          [(BWSecureMetadataOutputConfiguration *)v3 setAttentionDetectionEnabled:[(BWSecureMetadataOutputConfiguration *)v15 attentionDetectionEnabled]| [(BWSecureMetadataOutputConfiguration *)v3 attentionDetectionEnabled]];
          [(BWSecureMetadataOutputConfiguration *)v3 setFaceOcclusionDetectionEnabled:[(BWSecureMetadataOutputConfiguration *)v15 faceOcclusionDetectionEnabled]| [(BWSecureMetadataOutputConfiguration *)v3 faceOcclusionDetectionEnabled]];
        }

        if ([(BWSecureMetadataOutputConfiguration *)v15 faceTrackingEnabled])
        {
          [(BWSecureMetadataOutputConfiguration *)v3 setFaceTrackingEnabled:1];
          v23 = [(BWSecureMetadataOutputConfiguration *)v3 faceTrackingMaxNumTrackedFaces];
          if (v23 <= [(BWSecureMetadataOutputConfiguration *)v15 faceTrackingMaxNumTrackedFaces])
          {
            v24 = v15;
          }

          else
          {
            v24 = v3;
          }

          [(BWSecureMetadataOutputConfiguration *)v3 setFaceTrackingMaxNumTrackedFaces:[(BWSecureMetadataOutputConfiguration *)v24 faceTrackingMaxNumTrackedFaces]];
          [(BWSecureMetadataOutputConfiguration *)v3 faceTrackingNetworkFailureThresholdMultiplier];
          v26 = v25;
          [(BWSecureMetadataOutputConfiguration *)v15 faceTrackingNetworkFailureThresholdMultiplier];
          if (v26 <= v27)
          {
            v28 = v15;
          }

          else
          {
            v28 = v3;
          }

          [(BWSecureMetadataOutputConfiguration *)v28 faceTrackingNetworkFailureThresholdMultiplier];
          [(BWSecureMetadataOutputConfiguration *)v3 setFaceTrackingNetworkFailureThresholdMultiplier:?];
          [(BWSecureMetadataOutputConfiguration *)v3 faceTrackingFailureFieldOfViewModifier];
          v30 = v29;
          [(BWSecureMetadataOutputConfiguration *)v15 faceTrackingFailureFieldOfViewModifier];
          if (v30 >= v31)
          {
            v32 = v15;
          }

          else
          {
            v32 = v3;
          }

          [(BWSecureMetadataOutputConfiguration *)v32 faceTrackingFailureFieldOfViewModifier];
          [(BWSecureMetadataOutputConfiguration *)v3 setFaceTrackingFailureFieldOfViewModifier:?];
        }

        [(BWSecureMetadataOutputConfiguration *)v3 setEyeReliefStatusDetectionEnabled:[(BWSecureMetadataOutputConfiguration *)v15 eyeReliefStatusDetectionEnabled]| [(BWSecureMetadataOutputConfiguration *)v3 eyeReliefStatusDetectionEnabled]];
        if ([(BWSecureMetadataOutputConfiguration *)v15 motionToWakeEnabled])
        {
          [(BWSecureMetadataOutputConfiguration *)v3 setMotionToWakeEnabled:1];
          if (![(BWSecureMetadataOutputConfiguration *)self->_configurationForPrimaryClient motionToWakeEnabled])
          {
            [(BWSecureMetadataOutputConfiguration *)v15 motionToWakeTargetFrameRate];
            if (v33 <= 0.0)
            {
              v35 = v17;
            }

            else
            {
              [(BWSecureMetadataOutputConfiguration *)v15 motionToWakeTargetFrameRate];
              v35 = v34;
              if (v17 > 0.0)
              {
                v35 = v17;
                if (v17 >= v34)
                {
                  [(BWSecureMetadataOutputConfiguration *)v15 motionToWakeTargetFrameRate];
                  v35 = v36;
                }
              }
            }

            [(BWSecureMetadataOutputConfiguration *)v3 motionToWakeTargetFrameRate];
            if (*&v37 > v35)
            {
              [(BWSecureMetadataOutputConfiguration *)v3 motionToWakeTargetFrameRate];
              v35 = *&v37;
            }

            *&v37 = v35;
            [(BWSecureMetadataOutputConfiguration *)v3 setMotionToWakeTargetFrameRate:v37];
          }
        }

        if ([(BWSecureMetadataOutputConfiguration *)v15 faceIDReadinessEnabled])
        {
          [(BWSecureMetadataOutputConfiguration *)v3 setFaceIDReadinessEnabled:1];
          [(BWSecureMetadataOutputConfiguration *)v3 setFaceIDReadinessPeriocularEnabled:[(BWSecureMetadataOutputConfiguration *)v15 faceIDReadinessPeriocularEnabled]| [(BWSecureMetadataOutputConfiguration *)v3 faceIDReadinessPeriocularEnabled]];
          [(BWSecureMetadataOutputConfiguration *)v3 setFaceIDReadinessAttentionRequired:[(BWSecureMetadataOutputConfiguration *)v15 faceIDReadinessAttentionRequired]| [(BWSecureMetadataOutputConfiguration *)v3 faceIDReadinessAttentionRequired]];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v40 objects:v39 count:16];
    }

    while (v11);
  }

  [(BWSecureMetadataOutputConfiguration *)v3 setEnabledDetectedObjectTypes:v4];
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWSecureMetadataOutputConfigurator;
  [(BWSecureMetadataOutputConfigurator *)&v3 dealloc];
}

- (void)setConfigurationForPrimaryClient:(id)a3
{
  os_unfair_lock_lock(&self->_stateLock);

  self->_configurationForPrimaryClient = a3;
  [(BWSecureMetadataOutputConfigurator *)self _updateSecureMetadataOutputConfigurationForceDelegate:0];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)registerAttachedSessionID:(id)a3
{
  os_unfair_lock_lock(&self->_stateLock);
  registeredAttachedSessionIDs = self->_registeredAttachedSessionIDs;
  if (registeredAttachedSessionIDs)
  {
    [(NSMutableArray *)registeredAttachedSessionIDs containsObject:a3];
    v6 = self->_registeredAttachedSessionIDs;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_registeredAttachedSessionIDs = v6;
  }

  [(NSMutableArray *)v6 addObject:a3];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)unregisterAttachedSessionID:(id)a3
{
  os_unfair_lock_lock(&self->_stateLock);
  if ([(NSMutableArray *)self->_registeredAttachedSessionIDs containsObject:a3])
  {
    [(NSMutableArray *)self->_registeredAttachedSessionIDs removeObject:a3];
    if (![(NSMutableArray *)self->_registeredAttachedSessionIDs count])
    {

      self->_registeredAttachedSessionIDs = 0;
    }

    [(NSMutableDictionary *)self->_secondaryClientConfigurationsByClientID setObject:0 forKeyedSubscript:a3];
    if (![(NSMutableDictionary *)self->_secondaryClientConfigurationsByClientID count])
    {

      self->_secondaryClientConfigurationsByClientID = 0;
    }

    [(NSMutableDictionary *)self->_maximumFrameRateByClientID setObject:0 forKeyedSubscript:a3];
    if (![(NSMutableDictionary *)self->_maximumFrameRateByClientID count])
    {

      self->_maximumFrameRateByClientID = 0;
    }

    [(BWSecureMetadataOutputConfigurator *)self _updateSecureMetadataOutputConfigurationForceDelegate:0];
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)setConfiguration:(id)a3 forAttachedSessionID:(id)a4
{
  os_unfair_lock_lock(&self->_stateLock);
  if ([(NSMutableArray *)self->_registeredAttachedSessionIDs containsObject:a4])
  {
    if (!self->_secondaryClientConfigurationsByClientID)
    {
      self->_secondaryClientConfigurationsByClientID = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_secondaryClientConfigurationsByClientID, "setObject:forKeyedSubscript:", [a3 copy], a4);
    [(BWSecureMetadataOutputConfigurator *)self _updateSecureMetadataOutputConfigurationForceDelegate:0];
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)resetAllConfigurations
{
  os_unfair_lock_lock(&self->_stateLock);

  self->_secondaryClientConfigurationsByClientID = 0;
  self->_configurationForPrimaryClient = 0;
  [(BWSecureMetadataOutputConfigurator *)self _updateSecureMetadataOutputConfigurationForceDelegate:0];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)setMaximumFrameRate:(float)a3 forAttachedSessionID:(id)a4
{
  os_unfair_lock_lock(&self->_stateLock);
  if ([(NSMutableArray *)self->_registeredAttachedSessionIDs containsObject:a4])
  {
    maximumFrameRateByClientID = self->_maximumFrameRateByClientID;
    if (a3 <= 0.0)
    {
      [(NSMutableDictionary *)maximumFrameRateByClientID setObject:0 forKeyedSubscript:a4];
      if (![(NSMutableDictionary *)self->_maximumFrameRateByClientID count])
      {

        self->_maximumFrameRateByClientID = 0;
      }
    }

    else
    {
      if (!maximumFrameRateByClientID)
      {
        self->_maximumFrameRateByClientID = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      *&v7 = a3;
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_maximumFrameRateByClientID, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithFloat:v7], a4);
    }

    [(BWSecureMetadataOutputConfigurator *)self _updateSecureMetadataOutputConfigurationForceDelegate:0];
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (BWSecureMetadataOutputConfiguration)coalescedSecureMetadataOutputConfiguration
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = [(BWSecureMetadataOutputConfiguration *)self->_coalescedSecureMetadataOutputConfiguration copy];
  os_unfair_lock_unlock(&self->_stateLock);
  return v3;
}

- (void)setDelegate:(id)a3
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_delegate != a3)
  {
    self->_delegate = a3;
    if (a3)
    {
      [(BWSecureMetadataOutputConfigurator *)self _updateSecureMetadataOutputConfigurationForceDelegate:1];
    }
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)_updateSecureMetadataOutputConfigurationForceDelegate:(BOOL)a3
{
  v3 = a3;
  v5 = [(BWSecureMetadataOutputConfigurator *)self _coalescedClientConfiguration];
  if ([v5 isEqual:self->_coalescedSecureMetadataOutputConfiguration])
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {

    self->_coalescedSecureMetadataOutputConfiguration = v5;
  }

  delegate = self->_delegate;

  [(BWSecureMetadataOutputConfiguratorDelegate *)delegate secureMetadataOutputConfigurationDidChange:v5];
}

@end