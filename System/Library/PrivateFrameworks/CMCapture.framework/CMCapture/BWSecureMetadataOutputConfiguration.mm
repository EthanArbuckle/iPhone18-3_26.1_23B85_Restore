@interface BWSecureMetadataOutputConfiguration
- (BOOL)isEqual:(id)a3;
- (BWSecureMetadataOutputConfiguration)init;
- (NSDictionary)metadataOutputConfigurationDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation BWSecureMetadataOutputConfiguration

- (BWSecureMetadataOutputConfiguration)init
{
  v3.receiver = self;
  v3.super_class = BWSecureMetadataOutputConfiguration;
  return [(BWSecureMetadataOutputConfiguration *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWSecureMetadataOutputConfiguration;
  [(BWSecureMetadataOutputConfiguration *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[BWSecureMetadataOutputConfiguration allocWithZone:?]];
  [(BWSecureMetadataOutputConfiguration *)v4 setObjectDetectionEnabled:self->_objectDetectionEnabled];
  [(BWSecureMetadataOutputConfiguration *)v4 setEnabledDetectedObjectTypes:self->_enabledDetectedObjectTypes];
  *&v5 = self->_objectDetectionTargetFrameRate;
  [(BWSecureMetadataOutputConfiguration *)v4 setObjectDetectionTargetFrameRate:v5];
  [(BWSecureMetadataOutputConfiguration *)v4 setAttentionDetectionEnabled:self->_attentionDetectionEnabled];
  [(BWSecureMetadataOutputConfiguration *)v4 setFaceOcclusionDetectionEnabled:self->_faceOcclusionDetectionEnabled];
  [(BWSecureMetadataOutputConfiguration *)v4 setFaceTrackingEnabled:self->_faceTrackingEnabled];
  [(BWSecureMetadataOutputConfiguration *)v4 setFaceTrackingMaxNumTrackedFaces:self->_faceTrackingMaxNumTrackedFaces];
  *&v6 = self->_faceTrackingNetworkFailureThresholdMultiplier;
  [(BWSecureMetadataOutputConfiguration *)v4 setFaceTrackingNetworkFailureThresholdMultiplier:v6];
  *&v7 = self->_faceTrackingFailureFieldOfViewModifier;
  [(BWSecureMetadataOutputConfiguration *)v4 setFaceTrackingFailureFieldOfViewModifier:v7];
  [(BWSecureMetadataOutputConfiguration *)v4 setEyeReliefStatusDetectionEnabled:self->_eyeReliefStatusDetectionEnabled];
  [(BWSecureMetadataOutputConfiguration *)v4 setMotionToWakeEnabled:self->_motionToWakeEnabled];
  *&v8 = self->_motionToWakeTargetFrameRate;
  [(BWSecureMetadataOutputConfiguration *)v4 setMotionToWakeTargetFrameRate:v8];
  [(BWSecureMetadataOutputConfiguration *)v4 setFaceIDReadinessEnabled:self->_faceIDReadinessEnabled];
  [(BWSecureMetadataOutputConfiguration *)v4 setFaceIDReadinessPeriocularEnabled:self->_faceIDReadinessPeriocularEnabled];
  [(BWSecureMetadataOutputConfiguration *)v4 setFaceIDReadinessAttentionRequired:self->_faceIDReadinessAttentionRequired];
  return v4;
}

- (NSDictionary)metadataOutputConfigurationDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  -[NSDictionary setObject:forKeyedSubscript:](v3, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithBool:self->_objectDetectionEnabled], *off_1E798AFA0);
  if (self->_objectDetectionEnabled)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    if ([(NSSet *)self->_enabledDetectedObjectTypes containsObject:*off_1E798ACB8])
    {
      [v4 setObject:&unk_1F2245448 forKeyedSubscript:*off_1E798B920];
    }

    if ([(NSSet *)self->_enabledDetectedObjectTypes containsObject:*off_1E798ACC8])
    {
      [v4 setObject:&unk_1F2245460 forKeyedSubscript:*off_1E798B930];
    }

    if ([(NSSet *)self->_enabledDetectedObjectTypes containsObject:*off_1E798ACD0])
    {
      [v4 setObject:&unk_1F2245448 forKeyedSubscript:*off_1E798B938];
    }

    if ([(NSSet *)self->_enabledDetectedObjectTypes containsObject:*off_1E798ACB0])
    {
      [v4 setObject:&unk_1F2245448 forKeyedSubscript:*off_1E798B918];
    }

    if ([(NSSet *)self->_enabledDetectedObjectTypes containsObject:*off_1E798ACC0])
    {
      [v4 setObject:&unk_1F2245448 forKeyedSubscript:*off_1E798B928];
    }

    if ([(NSSet *)self->_enabledDetectedObjectTypes containsObject:*off_1E798ACA0])
    {
      [v4 setObject:&unk_1F2245448 forKeyedSubscript:*off_1E798B908];
    }

    if ([(NSSet *)self->_enabledDetectedObjectTypes containsObject:*off_1E798ACA8])
    {
      [v4 setObject:&unk_1F2245448 forKeyedSubscript:*off_1E798B910];
    }

    if ([(NSSet *)self->_enabledDetectedObjectTypes containsObject:*off_1E798AC90])
    {
      [v4 setObject:&unk_1F2245448 forKeyedSubscript:*off_1E798B8F8];
    }

    if ([(NSSet *)self->_enabledDetectedObjectTypes containsObject:*off_1E798AC98])
    {
      [v4 setObject:&unk_1F2245448 forKeyedSubscript:*off_1E798B900];
    }

    if (self->_objectDetectionTargetFrameRate > 0.0)
    {
      [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), *off_1E798C718}];
    }

    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_attentionDetectionEnabled), *off_1E798C398}];
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_faceOcclusionDetectionEnabled), *off_1E798C3A0}];
    [(NSDictionary *)v3 setObject:v4 forKeyedSubscript:*off_1E798AF98];
  }

  -[NSDictionary setObject:forKeyedSubscript:](v3, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithBool:self->_faceTrackingEnabled], *off_1E798AF80);
  if (self->_faceTrackingEnabled)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    if (self->_faceTrackingMaxNumTrackedFaces >= 1)
    {
      [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), *off_1E798C380}];
    }

    if (self->_faceTrackingNetworkFailureThresholdMultiplier > 0.0)
    {
      [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), *off_1E798C378}];
    }

    if (self->_faceTrackingFailureFieldOfViewModifier >= 0.0)
    {
      [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), *off_1E798C388}];
    }

    [(NSDictionary *)v3 setObject:v5 forKeyedSubscript:*off_1E798AF78];
  }

  -[NSDictionary setObject:forKeyedSubscript:](v3, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithBool:self->_eyeReliefStatusDetectionEnabled], *off_1E798AF60);
  -[NSDictionary setObject:forKeyedSubscript:](v3, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithBool:self->_motionToWakeEnabled], *off_1E798AF90);
  if (self->_motionToWakeEnabled && self->_motionToWakeTargetFrameRate > 0.0)
  {
    v9 = *off_1E798C390;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    -[NSDictionary setObject:forKeyedSubscript:](v3, "setObject:forKeyedSubscript:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1], *off_1E798AF88);
  }

  -[NSDictionary setObject:forKeyedSubscript:](v3, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithBool:self->_faceIDReadinessEnabled], *off_1E798AF70);
  if (self->_faceIDReadinessEnabled)
  {
    v8[0] = [MEMORY[0x1E696AD98] numberWithBool:{self->_faceIDReadinessPeriocularEnabled, *off_1E798C370}];
    v7[1] = *off_1E798C368;
    v8[1] = [MEMORY[0x1E696AD98] numberWithBool:self->_faceIDReadinessAttentionRequired];
    -[NSDictionary setObject:forKeyedSubscript:](v3, "setObject:forKeyedSubscript:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2], *off_1E798AF68);
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  result = (objc_opt_isKindOfClass() & 1) != 0 && self->_objectDetectionEnabled == [a3 objectDetectionEnabled] && objc_msgSend(a3, "enabledDetectedObjectTypes") == self->_enabledDetectedObjectTypes && (objc_msgSend(a3, "objectDetectionTargetFrameRate"), v5 == self->_objectDetectionTargetFrameRate) && self->_attentionDetectionEnabled == objc_msgSend(a3, "attentionDetectionEnabled") && self->_faceOcclusionDetectionEnabled == objc_msgSend(a3, "faceOcclusionDetectionEnabled") && self->_faceTrackingEnabled == objc_msgSend(a3, "faceTrackingEnabled") && objc_msgSend(a3, "faceTrackingMaxNumTrackedFaces") == self->_faceTrackingMaxNumTrackedFaces && (objc_msgSend(a3, "faceTrackingNetworkFailureThresholdMultiplier"), v6 == self->_faceTrackingNetworkFailureThresholdMultiplier) && (objc_msgSend(a3, "faceTrackingFailureFieldOfViewModifier"), v7 == self->_faceTrackingFailureFieldOfViewModifier) && self->_eyeReliefStatusDetectionEnabled == objc_msgSend(a3, "eyeReliefStatusDetectionEnabled") && self->_motionToWakeEnabled == objc_msgSend(a3, "motionToWakeEnabled") && (objc_msgSend(a3, "motionToWakeTargetFrameRate"), v8 == self->_motionToWakeTargetFrameRate) && self->_faceIDReadinessEnabled == objc_msgSend(a3, "faceIDReadinessEnabled") && self->_faceIDReadinessPeriocularEnabled == objc_msgSend(a3, "faceIDReadinessPeriocularEnabled") && self->_faceIDReadinessAttentionRequired == objc_msgSend(a3, "faceIDReadinessAttentionRequired");
  return result;
}

@end