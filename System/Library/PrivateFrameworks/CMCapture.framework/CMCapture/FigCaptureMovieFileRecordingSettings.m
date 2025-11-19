@interface FigCaptureMovieFileRecordingSettings
- ($273FE01EDA4852E8FFB0AF95686D18CC)maxFrameRate;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)movieFragmentInterval;
- ($57AEF30BA5BDD2E68F6742A1266F0E8C)bravoCameraSelectionConfigurationForRecording;
- (FigCaptureMovieFileRecordingSettings)init;
- (FigCaptureMovieFileRecordingSettings)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setBravoCameraSelectionConfigurationForRecording:(id *)a3;
- (void)setMovieFragmentInterval:(id *)a3;
- (void)setVideoSettings:(id)a3;
@end

@implementation FigCaptureMovieFileRecordingSettings

- (FigCaptureMovieFileRecordingSettings)init
{
  v3.receiver = self;
  v3.super_class = FigCaptureMovieFileRecordingSettings;
  return [(FigCaptureRecordingSettings *)&v3 init];
}

- (FigCaptureMovieFileRecordingSettings)initWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = FigCaptureMovieFileRecordingSettings;
  v4 = [(FigCaptureRecordingSettings *)&v13 initWithCoder:?];
  if (v4)
  {
    AllowedClassSetForMetadataItems = FigCaptureMetadataUtilitiesCreateAllowedClassSetForMetadataItems();
    -[FigCaptureMovieFileRecordingSettings setVideoSettings:](v4, "setVideoSettings:", [a3 decodePropertyListForKey:@"videoSettings"]);
    -[FigCaptureMovieFileRecordingSettings setVideoMirrored:](v4, "setVideoMirrored:", [a3 decodeBoolForKey:@"videoMirrored"]);
    -[FigCaptureMovieFileRecordingSettings setVideoRotationDegrees:](v4, "setVideoRotationDegrees:", [a3 decodeInt32ForKey:@"videoRotationDegrees"]);
    -[FigCaptureMovieFileRecordingSettings setRecordVideoOrientationAndMirroringChanges:](v4, "setRecordVideoOrientationAndMirroringChanges:", [a3 decodeBoolForKey:@"recordVideoOrientationAndMirroringChanges"]);
    -[FigCaptureMovieFileRecordingSettings setAudioSettings:](v4, "setAudioSettings:", [a3 decodePropertyListForKey:@"audioSettings"]);
    -[FigCaptureMovieFileRecordingSettings setCinematicAudioSettings:](v4, "setCinematicAudioSettings:", [a3 decodePropertyListForKey:@"cinematicAudioSettings"]);
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [a3 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, v8, objc_opt_class(), 0), @"movieFragmentInterval"}];
    if (v9)
    {
      CMTimeMakeFromDictionary(&v12, v9);
      v11 = v12;
      [(FigCaptureMovieFileRecordingSettings *)v4 setMovieFragmentInterval:&v11];
    }

    -[FigCaptureMovieFileRecordingSettings setMovieLevelMetadata:](v4, "setMovieLevelMetadata:", [a3 decodeObjectOfClasses:AllowedClassSetForMetadataItems forKey:@"movieLevelMetadata"]);
    -[FigCaptureMovieFileRecordingSettings setSendPreviewIOSurface:](v4, "setSendPreviewIOSurface:", [a3 decodeBoolForKey:@"sendPreviewIOSurface"]);
    -[FigCaptureMovieFileRecordingSettings setIrisRecording:](v4, "setIrisRecording:", [a3 decodeBoolForKey:@"irisRecording"]);
    -[FigCaptureMovieFileRecordingSettings setDebugMetadataSidecarFileEnabled:](v4, "setDebugMetadataSidecarFileEnabled:", [a3 decodeBoolForKey:@"debugMetadataSidecarFilesAreSupported"]);
    -[FigCaptureMovieFileRecordingSettings setMetadataIdentifiersEnabled:](v4, "setMetadataIdentifiersEnabled:", [a3 decodeBoolForKey:@"metadataIdentifiersEnabled"]);
    [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"bravoCameraSelectionConfigurationForRecording", "getBytes:length:", &v4->_metadataIdentifiersEnabled + 1, 20}];
    -[FigCaptureMovieFileRecordingSettings setIrisMovieRecording:](v4, "setIrisMovieRecording:", [a3 decodeBoolForKey:@"irisMovieRecording"]);
    -[FigCaptureMovieFileRecordingSettings setSpatialOverCaptureMovieURL:](v4, "setSpatialOverCaptureMovieURL:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"spatialOverCaptureMovieURL"]);
    -[FigCaptureMovieFileRecordingSettings setSpatialOverCaptureMovieLevelMetadata:](v4, "setSpatialOverCaptureMovieLevelMetadata:", [a3 decodeObjectOfClasses:AllowedClassSetForMetadataItems forKey:@"spatialOverCaptureMovieLevelMetadata"]);
    -[FigCaptureMovieFileRecordingSettings setMovieStartTimeOverride:](v4, "setMovieStartTimeOverride:", [a3 decodeInt64ForKey:@"movieStartTimeOverride"]);
    -[FigCaptureMovieFileRecordingSettings setUsesVirtualCaptureCard:](v4, "setUsesVirtualCaptureCard:", [a3 decodeBoolForKey:@"usesVirtualCaptureCard"]);
    -[FigCaptureMovieFileRecordingSettings setSmartStyle:](v4, "setSmartStyle:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"smartStyle"]);
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = FigCaptureMovieFileRecordingSettings;
  [(FigCaptureRecordingSettings *)&v7 encodeWithCoder:?];
  [a3 encodeObject:-[FigCaptureMovieFileRecordingSettings videoSettings](self forKey:{"videoSettings"), @"videoSettings"}];
  [a3 encodeBool:-[FigCaptureMovieFileRecordingSettings videoMirrored](self forKey:{"videoMirrored"), @"videoMirrored"}];
  [a3 encodeInt32:-[FigCaptureMovieFileRecordingSettings videoRotationDegrees](self forKey:{"videoRotationDegrees"), @"videoRotationDegrees"}];
  [a3 encodeBool:-[FigCaptureMovieFileRecordingSettings recordVideoOrientationAndMirroringChanges](self forKey:{"recordVideoOrientationAndMirroringChanges"), @"recordVideoOrientationAndMirroringChanges"}];
  [a3 encodeObject:-[FigCaptureMovieFileRecordingSettings audioSettings](self forKey:{"audioSettings"), @"audioSettings"}];
  [a3 encodeObject:-[FigCaptureMovieFileRecordingSettings cinematicAudioSettings](self forKey:{"cinematicAudioSettings"), @"cinematicAudioSettings"}];
  if (self)
  {
    [(FigCaptureMovieFileRecordingSettings *)self movieFragmentInterval];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v5 = CMTimeCopyAsDictionary(&time, *MEMORY[0x1E695E480]);
  [a3 encodeObject:v5 forKey:@"movieFragmentInterval"];
  CFRelease(v5);
  [a3 encodeObject:-[FigCaptureMovieFileRecordingSettings movieLevelMetadata](self forKey:{"movieLevelMetadata"), @"movieLevelMetadata"}];
  [a3 encodeBool:-[FigCaptureMovieFileRecordingSettings sendPreviewIOSurface](self forKey:{"sendPreviewIOSurface"), @"sendPreviewIOSurface"}];
  [a3 encodeBool:-[FigCaptureMovieFileRecordingSettings isIrisRecording](self forKey:{"isIrisRecording"), @"irisRecording"}];
  [a3 encodeBool:-[FigCaptureMovieFileRecordingSettings debugMetadataSidecarFileEnabled](self forKey:{"debugMetadataSidecarFileEnabled"), @"debugMetadataSidecarFilesAreSupported"}];
  [a3 encodeBool:-[FigCaptureMovieFileRecordingSettings metadataIdentifiersEnabled](self forKey:{"metadataIdentifiersEnabled"), @"metadataIdentifiersEnabled"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &self->_metadataIdentifiersEnabled + 1, 20), @"bravoCameraSelectionConfigurationForRecording"}];
  [a3 encodeBool:-[FigCaptureMovieFileRecordingSettings isIrisMovieRecording](self forKey:{"isIrisMovieRecording"), @"irisMovieRecording"}];
  [a3 encodeObject:-[FigCaptureMovieFileRecordingSettings spatialOverCaptureMovieURL](self forKey:{"spatialOverCaptureMovieURL"), @"spatialOverCaptureMovieURL"}];
  [a3 encodeObject:-[FigCaptureMovieFileRecordingSettings spatialOverCaptureMovieLevelMetadata](self forKey:{"spatialOverCaptureMovieLevelMetadata"), @"spatialOverCaptureMovieLevelMetadata"}];
  [a3 encodeInt64:-[FigCaptureMovieFileRecordingSettings movieStartTimeOverride](self forKey:{"movieStartTimeOverride"), @"movieStartTimeOverride"}];
  [a3 encodeBool:-[FigCaptureMovieFileRecordingSettings usesVirtualCaptureCard](self forKey:{"usesVirtualCaptureCard"), @"usesVirtualCaptureCard"}];
  [a3 encodeObject:-[FigCaptureMovieFileRecordingSettings smartStyle](self forKey:{"smartStyle"), @"smartStyle"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = FigCaptureMovieFileRecordingSettings;
  v4 = [(FigCaptureRecordingSettings *)&v8 copyWithZone:a3];
  [v4 setVideoSettings:self->_videoSettings];
  [v4 setVideoMirrored:self->_videoMirrored];
  [v4 setVideoRotationDegrees:self->_videoRotationDegrees];
  [v4 setRecordVideoOrientationAndMirroringChanges:self->_recordVideoOrientationAndMirroringChanges];
  [v4 setAudioSettings:self->_audioSettings];
  [v4 setCinematicAudioSettings:self->_cinematicAudioSettings];
  v6 = *(&self->_recordVideoOrientationAndMirroringChanges + 4);
  v7 = *&self->_movieFragmentInterval.flags;
  [v4 setMovieFragmentInterval:&v6];
  [v4 setMovieLevelMetadata:self->_movieLevelMetadata];
  [v4 setSendPreviewIOSurface:self->_sendPreviewIOSurface];
  [v4 setIrisRecording:self->_irisRecording];
  [v4 setDebugMetadataSidecarFileEnabled:self->_debugMetadataSidecarFileEnabled];
  [v4 setMetadataIdentifiersEnabled:self->_metadataIdentifiersEnabled];
  v6 = *(&self->_metadataIdentifiersEnabled + 1);
  LODWORD(v7) = HIDWORD(self->_bravoCameraSelectionConfigurationForRecording.selectionBehavior);
  [v4 setBravoCameraSelectionConfigurationForRecording:&v6];
  [v4 setIrisMovieRecording:LOBYTE(self->_bravoCameraSelectionConfigurationForRecording.restrictedSelectionConditions)];
  [v4 setSpatialOverCaptureMovieURL:*&self->_irisMovieRecording];
  [v4 setSpatialOverCaptureMovieLevelMetadata:self->_spatialOverCaptureMovieURL];
  [v4 setMovieStartTimeOverride:self->_spatialOverCaptureMovieLevelMetadata];
  [v4 setPersonSegmentationRenderingEnabled:LOBYTE(self->_movieStartTimeOverride)];
  [v4 setPersonSegmentationForegroundColorCube:*&self->_personSegmentationRenderingEnabled];
  [v4 setPersonSegmentationBackgroundColorCube:self->_personSegmentationForegroundColorCube];
  [v4 setVideoSTFEnabled:LOBYTE(self->_personSegmentationBackgroundColorCube)];
  [v4 setUsesVirtualCaptureCard:BYTE1(self->_personSegmentationBackgroundColorCube)];
  [v4 setSmartStyle:*&self->_smartStyleReversibilitySupported];
  [v4 setSmartStyleReversibilitySupported:LOBYTE(self->smartStyle)];
  [v4 setSmartStyleRenderingBypassed:BYTE3(self->smartStyle)];
  [v4 setAudioWasPlayingDuringCapture:BYTE1(self->smartStyle)];
  [v4 setAudioMixWithOthersEnabled:BYTE2(self->smartStyle)];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMovieFileRecordingSettings;
  [(FigCaptureRecordingSettings *)&v3 dealloc];
}

- (id)description
{
  videoSettings = self->_videoSettings;
  if (videoSettings)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@" V:{%@ %dx%d R:%d M:%d trackOM:%d Prev:%d}", -[NSDictionary objectForKeyedSubscript:](videoSettings, "objectForKeyedSubscript:", @"AVVideoCodecKey", objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_videoSettings, "objectForKeyedSubscript:", @"AVVideoWidthKey", "intValue"), objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_videoSettings, "objectForKeyedSubscript:", @"AVVideoHeightKey", "intValue"), self->_videoRotationDegrees, self->_videoMirrored, self->_recordVideoOrientationAndMirroringChanges, self->_sendPreviewIOSurface];
  }

  else
  {
    v27 = &stru_1F216A3D0;
  }

  audioSettings = self->_audioSettings;
  if (audioSettings)
  {
    LODWORD(time.value) = bswap32([-[NSDictionary objectForKeyedSubscript:](audioSettings objectForKeyedSubscript:{0x1F2175490), "intValue"}]);
    v5 = MEMORY[0x1E696AEC0];
    [-[NSDictionary objectForKeyedSubscript:](self->_audioSettings objectForKeyedSubscript:{0x1F21754B0), "floatValue"}];
    v7 = [v5 stringWithFormat:@" A:{%.4s %f}", &time, v6];
  }

  else
  {
    v7 = 0;
  }

  cinematicAudioSettings = self->_cinematicAudioSettings;
  if (cinematicAudioSettings)
  {
    LODWORD(time.value) = bswap32([-[NSDictionary objectForKeyedSubscript:](cinematicAudioSettings objectForKeyedSubscript:{0x1F2175490), "intValue"}]);
    v9 = MEMORY[0x1E696AEC0];
    if (!v7)
    {
      v7 = &stru_1F216A3D0;
    }

    [-[NSDictionary objectForKeyedSubscript:](self->_cinematicAudioSettings objectForKeyedSubscript:{0x1F21754B0), "floatValue"}];
    v7 = [v9 stringWithFormat:@"%@ CA:{%.4s %f}", v7, &time, v10];
  }

  v11 = *&self->_irisMovieRecording;
  if (v11)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@" overCaptureURL: %@", objc_msgSend(v11, "lastPathComponent")];
  }

  else
  {
    v26 = &stru_1F216A3D0;
  }

  if (LOBYTE(self->_bravoCameraSelectionConfigurationForRecording.restrictedSelectionConditions))
  {
    v12 = @" isIrisMovie";
  }

  else
  {
    v12 = &stru_1F216A3D0;
  }

  if (LOBYTE(self->smartStyle))
  {
    v13 = @" supportsReversibility";
  }

  else
  {
    v13 = &stru_1F216A3D0;
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ smartStyle: %@%@", v12, *&self->_smartStyleReversibilitySupported, v13];
  v15 = MEMORY[0x1E696AEC0];
  v16 = objc_opt_class();
  v17 = [(FigCaptureRecordingSettings *)self settingsID];
  v18 = [(NSURL *)[(FigCaptureRecordingSettings *)self outputURL] lastPathComponent];
  [(FigCaptureRecordingSettings *)self maxDuration];
  Seconds = CMTimeGetSeconds(&time);
  v20 = [(FigCaptureRecordingSettings *)self maxFileSize];
  v21 = &stru_1F216A3D0;
  v22 = [(FigCaptureRecordingSettings *)self minFreeDiskSpaceLimit];
  time = *(&self->_recordVideoOrientationAndMirroringChanges + 4);
  v23 = CMTimeGetSeconds(&time);
  if (self->_irisRecording)
  {
    v21 = @" isIris";
  }

  if ([(FigCaptureMovieFileRecordingSettings *)self usesVirtualCaptureCard])
  {
    v24 = "YES";
  }

  else
  {
    v24 = "NO";
  }

  return [v15 stringWithFormat:@"%@ %p: captureID:%lld URL:%@ maxDur:%f maxSize:%lld diskLim:%lld frag:%f%@%@%@%@%@ usesVCC:%s", v16, self, v17, v18, *&Seconds, v20, v22, *&v23, v27, v7, v21, v14, v26, v24];
}

- (void)setVideoSettings:(id)a3
{
  if (([(NSDictionary *)self->_videoSettings isEqual:?]& 1) == 0)
  {

    self->_videoSettings = [a3 copy];
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)movieFragmentInterval
{
  *&retstr->var0 = *&self[4].var2;
  retstr->var3 = *(&self[5].var0 + 4);
  return self;
}

- (void)setMovieFragmentInterval:(id *)a3
{
  var3 = a3->var3;
  *(&self->_recordVideoOrientationAndMirroringChanges + 4) = *&a3->var0;
  *&self->_movieFragmentInterval.flags = var3;
}

- ($57AEF30BA5BDD2E68F6742A1266F0E8C)bravoCameraSelectionConfigurationForRecording
{
  *&retstr->var0 = *(&self[6].var0 + 4);
  LODWORD(retstr->var2) = HIDWORD(self[6].var2);
  return self;
}

- (void)setBravoCameraSelectionConfigurationForRecording:(id *)a3
{
  var2 = a3->var2;
  *(&self->_metadataIdentifiersEnabled + 1) = *&a3->var0;
  HIDWORD(self->_bravoCameraSelectionConfigurationForRecording.selectionBehavior) = var2;
}

- ($273FE01EDA4852E8FFB0AF95686D18CC)maxFrameRate
{
  p_smartStyle = &self->_smartStyle;
  smartStyle = self->_smartStyle;
  v4 = *(p_smartStyle + 2);
  result.var0 = smartStyle;
  result.var1 = v4;
  return result;
}

@end