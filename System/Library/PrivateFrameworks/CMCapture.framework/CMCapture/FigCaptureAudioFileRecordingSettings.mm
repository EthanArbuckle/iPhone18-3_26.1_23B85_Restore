@interface FigCaptureAudioFileRecordingSettings
- (FigCaptureAudioFileRecordingSettings)init;
- (FigCaptureAudioFileRecordingSettings)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FigCaptureAudioFileRecordingSettings

- (FigCaptureAudioFileRecordingSettings)init
{
  v3.receiver = self;
  v3.super_class = FigCaptureAudioFileRecordingSettings;
  return [(FigCaptureRecordingSettings *)&v3 init];
}

- (FigCaptureAudioFileRecordingSettings)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = FigCaptureAudioFileRecordingSettings;
  v4 = [(FigCaptureRecordingSettings *)&v7 initWithCoder:?];
  if (v4)
  {
    -[FigCaptureAudioFileRecordingSettings setAudioSettings:](v4, "setAudioSettings:", [coder decodePropertyListForKey:@"audioSettings"]);
    -[FigCaptureAudioFileRecordingSettings setCinematicAudioSettings:](v4, "setCinematicAudioSettings:", [coder decodePropertyListForKey:@"cinematicAudioSettings"]);
    AllowedClassSetForMetadataItems = FigCaptureMetadataUtilitiesCreateAllowedClassSetForMetadataItems();
    -[FigCaptureAudioFileRecordingSettings setMetadata:](v4, "setMetadata:", [coder decodeObjectOfClasses:AllowedClassSetForMetadataItems forKey:@"metadata"]);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FigCaptureAudioFileRecordingSettings;
  [(FigCaptureRecordingSettings *)&v5 encodeWithCoder:?];
  [coder encodeObject:-[FigCaptureAudioFileRecordingSettings audioSettings](self forKey:{"audioSettings"), @"audioSettings"}];
  [coder encodeObject:-[FigCaptureAudioFileRecordingSettings cinematicAudioSettings](self forKey:{"cinematicAudioSettings"), @"cinematicAudioSettings"}];
  [coder encodeObject:-[FigCaptureAudioFileRecordingSettings metadata](self forKey:{"metadata"), @"metadata"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = FigCaptureAudioFileRecordingSettings;
  v4 = [(FigCaptureRecordingSettings *)&v6 copyWithZone:zone];
  [v4 setAudioSettings:self->_audioSettings];
  [v4 setCinematicAudioSettings:self->_cinematicAudioSettings];
  [v4 setMetadata:self->_metadata];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureAudioFileRecordingSettings;
  [(FigCaptureRecordingSettings *)&v3 dealloc];
}

- (id)description
{
  audioSettings = self->_audioSettings;
  if (audioSettings)
  {
    LODWORD(time.value) = bswap32([-[NSDictionary objectForKeyedSubscript:](audioSettings objectForKeyedSubscript:{0x1F2175490), "intValue"}]);
    v4 = MEMORY[0x1E696AEC0];
    [-[NSDictionary objectForKeyedSubscript:](self->_audioSettings objectForKeyedSubscript:{0x1F21754B0), "floatValue"}];
    v6 = [v4 stringWithFormat:@" A:{%.4s %f}", &time, v5];
  }

  else
  {
    v6 = 0;
  }

  cinematicAudioSettings = self->_cinematicAudioSettings;
  if (cinematicAudioSettings)
  {
    LODWORD(time.value) = bswap32([-[NSDictionary objectForKeyedSubscript:](cinematicAudioSettings objectForKeyedSubscript:{0x1F2175490), "intValue"}]);
    v8 = MEMORY[0x1E696AEC0];
    if (!v6)
    {
      v6 = &stru_1F216A3D0;
    }

    [-[NSDictionary objectForKeyedSubscript:](self->_cinematicAudioSettings objectForKeyedSubscript:{0x1F21754B0), "floatValue"}];
    v6 = [v8 stringWithFormat:@"%@ CA:{%.4s %f}", v6, &time, v9];
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  settingsID = [(FigCaptureRecordingSettings *)self settingsID];
  lastPathComponent = [(NSURL *)[(FigCaptureRecordingSettings *)self outputURL] lastPathComponent];
  [(FigCaptureRecordingSettings *)self maxDuration];
  return [v10 stringWithFormat:@"%@ %p: captureID:%lld URL:%@ maxDur:%f maxSize:%lld diskLim:%lld%@", v11, self, settingsID, lastPathComponent, CMTimeGetSeconds(&time), -[FigCaptureRecordingSettings maxFileSize](self, "maxFileSize"), -[FigCaptureRecordingSettings minFreeDiskSpaceLimit](self, "minFreeDiskSpaceLimit"), v6];
}

@end