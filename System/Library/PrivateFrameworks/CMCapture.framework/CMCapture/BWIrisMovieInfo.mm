@interface BWIrisMovieInfo
+ (BWIrisMovieInfo)irisMovieInfoWithFigCaptureMovieFileRecordingSettings:(id)settings stillImageCaptureTime:(id *)time stillImageCaptureHostTime:(id *)hostTime stillImageCaptureAbsoluteStartTime:(double)startTime stillImageRequestSettings:(id)requestSettings stillImageCaptureSettings:(id)captureSettings originalPhotoRecording:(BOOL)recording semanticStyle:(id)self0;
+ (id)emptyIrisMovieInfoWithFigCaptureMovieFileRecordingSettings:(id)settings;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)audioOffset;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)beginTrimMasterPTS;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)masterMovieStartTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)momentCaptureMovieRecordingMasterEndTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)movieEndTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)movieEndingVideoPTS;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)movieStartTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)movieTrimEndTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)movieTrimStartTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stillImageCaptureHostTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stillImageCaptureTime;
- (BOOL)containsTrims;
- (BOOL)requiresGlobalSubjectRelightingCalculation;
- (CGSize)nonDestructiveCropSize;
- (NSString)livePhotoMetadataStillImageKeyFrameSettingsID;
- (char)_initWithFigCaptureMovieFileRecordingSettings:(uint64_t)settings stillImageCaptureTime:(__int128 *)time stillImageCaptureHostTime:(void *)hostTime stillImageCaptureAbsoluteStartTime:(void *)startTime stillImageRequestSettings:(char)requestSettings stillImageCaptureSettings:(void *)captureSettings originalPhotoRecording:(double)recording semanticStyle:;
- (id)copyMovieInfosForRequestedSDOFVariants;
- (id)copySpatialOverCaptureVariant;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int)numberOfRequestedVariants;
- (int)stillImageCaptureType;
- (void)_initWithFigCaptureMovieFileRecordingSettings:(void *)settings;
- (void)dealloc;
- (void)setAudioOffset:(id *)offset;
- (void)setBeginTrimMasterPTS:(id *)s;
- (void)setMasterMovieStartTime:(id *)time;
- (void)setMomentCaptureMovieRecordingMasterEndTime:(id *)time;
- (void)setMomentCaptureRecordingStillImageCaptureHostTimeOverride:(id *)override stillImageCaptureTimeOverride:(id *)timeOverride;
- (void)setMovieEndTime:(id *)time;
- (void)setMovieEndingVideoPTS:(id *)s;
- (void)setMovieStartTime:(id *)time;
- (void)setMovieTrimEndTime:(id *)time;
- (void)setMovieTrimStartTime:(id *)time;
- (void)setStillImageCaptureTime:(id *)time;
- (void)setStillTimeOffsetToAudioPrerollStartTime:(id *)time;
- (void)setStillTimeOffsetToAudioPrerollStopTime:(id *)time;
- (void)setStillTimeOffsetToVideoPrerollStartTime:(id *)time;
- (void)setStillTimeOffsetToVideoPrerollStopTime:(id *)time;
@end

@implementation BWIrisMovieInfo

+ (id)emptyIrisMovieInfoWithFigCaptureMovieFileRecordingSettings:(id)settings
{
  v3 = [[BWIrisMovieInfo alloc] _initWithFigCaptureMovieFileRecordingSettings:settings];

  return v3;
}

+ (BWIrisMovieInfo)irisMovieInfoWithFigCaptureMovieFileRecordingSettings:(id)settings stillImageCaptureTime:(id *)time stillImageCaptureHostTime:(id *)hostTime stillImageCaptureAbsoluteStartTime:(double)startTime stillImageRequestSettings:(id)requestSettings stillImageCaptureSettings:(id)captureSettings originalPhotoRecording:(BOOL)recording semanticStyle:(id)self0
{
  v17 = [BWIrisMovieInfo alloc];
  v21 = *time;
  v20 = *hostTime;
  v18 = [(BWIrisMovieInfo *)v17 _initWithFigCaptureMovieFileRecordingSettings:settings stillImageCaptureTime:&v21 stillImageCaptureHostTime:&v20.var0 stillImageCaptureAbsoluteStartTime:requestSettings stillImageRequestSettings:captureSettings stillImageCaptureSettings:recording originalPhotoRecording:style semanticStyle:startTime];

  return v18;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWIrisMovieInfo;
  [(BWIrisMovieInfo *)&v3 dealloc];
}

- (int)stillImageCaptureType
{
  stillImageCaptureSettings = [(BWIrisMovieInfo *)self stillImageCaptureSettings];

  return [(BWStillImageCaptureSettings *)stillImageCaptureSettings captureType];
}

- (void)setMomentCaptureRecordingStillImageCaptureHostTimeOverride:(id *)override stillImageCaptureTimeOverride:(id *)timeOverride
{
  v4 = *&override->var0;
  *&self->_stillImageCaptureHostTime.flags = override->var3;
  *(&self->_stillImageCaptureTime.epoch + 4) = v4;
  v5 = *&timeOverride->var0;
  *&self->_stillImageCaptureTime.flags = timeOverride->var3;
  *(&self->_spatialOverCaptureExpected + 4) = v5;
  self->_stillImageCaptureAbsoluteStartTime = CFAbsoluteTimeGetCurrent();
}

- (BOOL)containsTrims
{
  *&time1.value = *(&self->_movieStartTimeRequiresCutting + 4);
  time1.epoch = *&self->_movieStartTime.flags;
  *&v4.value = *(&self->_movieEndingVideoPTS.epoch + 4);
  v4.epoch = *&self->_movieTrimStartTime.flags;
  if (CMTimeCompare(&time1, &v4))
  {
    return 1;
  }

  time1 = *(&self->_movieStartTime.epoch + 4);
  v4 = *(&self->_movieTrimStartTime.epoch + 4);
  return CMTimeCompare(&time1, &v4) != 0;
}

- (int)numberOfRequestedVariants
{
  v2 = vcnt_s8(self->_requestedSDOFVariants);
  v2.i16[0] = vaddlv_u8(v2);
  if (self->_requestedSDOFVariants)
  {
    return v2.i32[0];
  }

  else
  {
    return 1;
  }
}

- (id)copyMovieInfosForRequestedSDOFVariants
{
  if (!self->_requestedSDOFVariants)
  {
    return 0;
  }

  if ([(BWIrisMovieInfo *)self numberOfRequestedVariants]!= 1)
  {
    if ([(BWIrisMovieInfo *)self numberOfRequestedVariants]== 2)
    {
      v5 = [(BWIrisMovieInfo *)self copy];
      [v5 setRequestedSDOFVariants:2];
      [v5 setOriginalPhotoRecording:1];
      [v5 setFinalEnqueuedIrisRequest:0];
      [v5 setFinalReferenceMovie:0];
      [v5 setOutputMovieURL:{objc_msgSend(v5, "outputURLForSDOFOriginalMovie")}];
      [v5 setTemporaryMovieURL:{objc_msgSend(v5, "temporaryURLForSDOFOriginalMovie")}];
      if ([v5 movieLevelMetadataForSDOFOriginalMovie])
      {
        [objc_msgSend(v5 "settings")];
        [v5 setMovieLevelMetadataForSDOFOriginalMovie:0];
      }

      [v5 setOutputURLForSDOFOriginalMovie:0];
      [v5 setTemporaryURLForSDOFOriginalMovie:0];
      v3 = [(BWIrisMovieInfo *)self copy];
      [v3 setRequestedSDOFVariants:1];
      [v3 setOutputURLForSDOFOriginalMovie:0];
      [v3 setTemporaryURLForSDOFOriginalMovie:0];
      [v3 setMovieLevelMetadataForSDOFOriginalMovie:0];
      v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v5, v3, 0}];

      goto LABEL_8;
    }

    return 0;
  }

  v3 = [(BWIrisMovieInfo *)self copy];
  v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v3, 0}];
LABEL_8:

  return v4;
}

- (id)copySpatialOverCaptureVariant
{
  v3 = [(BWIrisMovieInfo *)self copy];
  [v3 setOutputMovieURL:{-[BWIrisMovieInfo spatialOverCaptureOutputMovieURL](self, "spatialOverCaptureOutputMovieURL")}];
  [v3 setTemporaryMovieURL:{-[BWIrisMovieInfo spatialOverCaptureTemporaryMovieURL](self, "spatialOverCaptureTemporaryMovieURL")}];
  [v3 setMasterMovieURL:{-[BWIrisMovieInfo spatialOverCaptureMasterMovieURL](self, "spatialOverCaptureMasterMovieURL")}];
  [objc_msgSend(v3 "settings")];
  return v3;
}

- (id)description
{
  if (FigIsItOKToLogURLs())
  {
    lastPathComponent = [(NSURL *)self->_outputMovieURL lastPathComponent];
  }

  else
  {
    lastPathComponent = @"<redacted>";
  }

  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  settingsID = [(FigCaptureRecordingSettings *)self->_settings settingsID];
  time = *(&self->_stillTimeOffsetToAudioPrerollStopInMilliseconds.epoch + 4);
  Seconds = CMTimeGetSeconds(&time);
  time = *(&self->_movieStartTimeRequiresCutting + 4);
  v25 = CMTimeGetSeconds(&time);
  time = *(&self->_movieStartTime.epoch + 4);
  v24 = CMTimeGetSeconds(&time);
  time = *(&self->_movieEndingVideoPTS.epoch + 4);
  v23 = CMTimeGetSeconds(&time);
  time = *(&self->_movieTrimStartTime.epoch + 4);
  v22 = CMTimeGetSeconds(&time);
  time = *(&self->_spatialOverCaptureExpected + 4);
  v6 = CMTimeGetSeconds(&time);
  time = *(&self->_movieEndTime.epoch + 4);
  v7 = CMTimeGetSeconds(&time);
  lhs = *(&self->_movieStartTimeRequiresCutting + 4);
  rhs = *(&self->_stillTimeOffsetToAudioPrerollStopInMilliseconds.epoch + 4);
  CMTimeSubtract(&time, &lhs, &rhs);
  v8 = CMTimeGetSeconds(&time);
  lhs = *(&self->_movieStartTime.epoch + 4);
  rhs = *(&self->_movieStartTimeRequiresCutting + 4);
  CMTimeSubtract(&time, &lhs, &rhs);
  v9 = CMTimeGetSeconds(&time);
  lhs = *(&self->_movieEndingVideoPTS.epoch + 4);
  rhs = *(&self->_movieStartTimeRequiresCutting + 4);
  CMTimeSubtract(&time, &lhs, &rhs);
  v10 = CMTimeGetSeconds(&time);
  lhs = *(&self->_movieTrimStartTime.epoch + 4);
  rhs = *(&self->_movieStartTimeRequiresCutting + 4);
  CMTimeSubtract(&time, &lhs, &rhs);
  v11 = CMTimeGetSeconds(&time);
  lhs = *(&self->_spatialOverCaptureExpected + 4);
  rhs = *(&self->_movieStartTimeRequiresCutting + 4);
  CMTimeSubtract(&time, &lhs, &rhs);
  v12 = CMTimeGetSeconds(&time);
  lhs = *(&self->_spatialOverCaptureExpected + 4);
  rhs = *(&self->_movieEndingVideoPTS.epoch + 4);
  CMTimeSubtract(&time, &lhs, &rhs);
  v13 = CMTimeGetSeconds(&time);
  lastPathComponent2 = [(NSURL *)self->_masterMovieURL lastPathComponent];
  lastPathComponent3 = [(NSURL *)self->_temporaryMovieURL lastPathComponent];
  finalReferenceMovie = self->_finalReferenceMovie;
  finalEnqueuedIrisRequest = self->_finalEnqueuedIrisRequest;
  stillImageEncoderKeyFrameEmitted = self->_stillImageEncoderKeyFrameEmitted;
  stillImageVISKeyFrameTagged = self->_stillImageVISKeyFrameTagged;
  time = *(&self->_beginTrimMasterPTS.epoch + 4);
  [string appendFormat:@"%@ %p: captureID:%lld, [Capture - master:%.4f movie:%.4f-%.4f trim:%.4f-%.4f still:%.4f endingVideoPTS:%.4f] [Movie - master:%.4f movie:0.-%.4f trim:%.4f-%.4f still:%.4f/%.4f] url:%@, master:%@, temporary:%@, isFinalReference:%d isFinalInSequence:%d keyFrameEmitted:%d stillImageVISKeyFrameTagged:%d audio offset: %.4f originalPhotoRecording:%d", v4, self, settingsID, *&Seconds, *&v25, *&v24, *&v23, *&v22, *&v6, *&v7, *&v8, *&v9, *&v10, *&v11, *&v12, *&v13, lastPathComponent, lastPathComponent2, lastPathComponent3, finalReferenceMovie, finalEnqueuedIrisRequest, stillImageEncoderKeyFrameEmitted, stillImageVISKeyFrameTagged, CMTimeGetSeconds(&time), self->_originalPhotoRecording];
  [string appendFormat:@" isMomentCaptureMovieRecording:%d", self->_isMomentCaptureMovieRecording];
  if (self->_requestedSDOFVariants)
  {
    if (FigIsItOKToLogURLs())
    {
      lastPathComponent4 = [(NSURL *)self->_outputURLForSDOFOriginalMovie lastPathComponent];
    }

    else
    {
      lastPathComponent4 = @"<redacted>";
    }

    [string appendFormat:@" requestedSDOFVariants:0x%x originalSDOFURL:%@", self->_requestedSDOFVariants, lastPathComponent4];
  }

  return string;
}

- (BOOL)requiresGlobalSubjectRelightingCalculation
{
  isMomentCaptureMovieRecording = [(BWIrisMovieInfo *)self isMomentCaptureMovieRecording];
  v4 = (isMomentCaptureMovieRecording | [(BWIrisMovieInfo *)self stillImageRequiresSmartStyleRenderingForSRL]) ^ 1;
  smartStyle = [(FigCaptureStillImageSettings *)[(BWIrisMovieInfo *)self stillImageRequestSettings] smartStyle];
  if (smartStyle)
  {
    return [(FigCaptureSmartStyle *)smartStyle isIdentity]& v4;
  }

  return v4;
}

- (NSString)livePhotoMetadataStillImageKeyFrameSettingsID
{
  v3 = objc_opt_class();
  settingsID = [(FigCaptureRecordingSettings *)self->_settings settingsID];
  originalPhotoRecording = self->_originalPhotoRecording;

  return [v3 livePhotoMetadataStillImageKeyFrameSettingsIDForSettingsID:settingsID isOriginalPhotoRecording:originalPhotoRecording];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stillImageCaptureTime
{
  *&retstr->var0 = *&self[2].var2;
  retstr->var3 = *(&self[3].var0 + 4);
  return self;
}

- (void)setStillImageCaptureTime:(id *)time
{
  v3 = *&time->var0;
  *&self->_stillImageCaptureTime.flags = time->var3;
  *(&self->_spatialOverCaptureExpected + 4) = v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stillImageCaptureHostTime
{
  *&retstr->var0 = *&self[3].var2;
  retstr->var3 = *(&self[4].var0 + 4);
  return self;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)momentCaptureMovieRecordingMasterEndTime
{
  *&retstr->var0 = *(&self[5].var3 + 4);
  retstr->var3 = *&self[6].var2;
  return self;
}

- (void)setMomentCaptureMovieRecordingMasterEndTime:(id *)time
{
  v3 = *&time->var0;
  *&self->_momentCaptureMovieRecordingMasterEndTime.flags = time->var3;
  *(&self->_isMomentCaptureMovieRecording + 4) = v3;
}

- (CGSize)nonDestructiveCropSize
{
  width = self->_nonDestructiveCropSize.width;
  height = self->_nonDestructiveCropSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)movieStartTime
{
  *&retstr->var0 = *(&self[7].var3 + 4);
  retstr->var3 = *&self[8].var2;
  return self;
}

- (void)setMovieStartTime:(id *)time
{
  v3 = *&time->var0;
  *&self->_movieStartTime.flags = time->var3;
  *(&self->_movieStartTimeRequiresCutting + 4) = v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)movieEndTime
{
  *&retstr->var0 = *(&self[8].var3 + 4);
  retstr->var3 = *&self[9].var2;
  return self;
}

- (void)setMovieEndTime:(id *)time
{
  v3 = *&time->var0;
  *&self->_movieEndTime.flags = time->var3;
  *(&self->_movieStartTime.epoch + 4) = v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)movieEndingVideoPTS
{
  *&retstr->var0 = *(&self[9].var3 + 4);
  retstr->var3 = *&self[10].var2;
  return self;
}

- (void)setMovieEndingVideoPTS:(id *)s
{
  v3 = *&s->var0;
  *&self->_movieEndingVideoPTS.flags = s->var3;
  *(&self->_movieEndTime.epoch + 4) = v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)movieTrimStartTime
{
  *&retstr->var0 = *(&self[10].var3 + 4);
  retstr->var3 = *&self[11].var2;
  return self;
}

- (void)setMovieTrimStartTime:(id *)time
{
  v3 = *&time->var0;
  *&self->_movieTrimStartTime.flags = time->var3;
  *(&self->_movieEndingVideoPTS.epoch + 4) = v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)movieTrimEndTime
{
  *&retstr->var0 = *(&self[11].var3 + 4);
  retstr->var3 = *&self[12].var2;
  return self;
}

- (void)setMovieTrimEndTime:(id *)time
{
  v3 = *&time->var0;
  *&self->_movieTrimEndTime.flags = time->var3;
  *(&self->_movieTrimStartTime.epoch + 4) = v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)beginTrimMasterPTS
{
  *&retstr->var0 = *(&self[12].var3 + 4);
  retstr->var3 = *&self[13].var2;
  return self;
}

- (void)setBeginTrimMasterPTS:(id *)s
{
  v3 = *&s->var0;
  *&self->_beginTrimMasterPTS.flags = s->var3;
  *(&self->_movieTrimEndTime.epoch + 4) = v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)masterMovieStartTime
{
  *&retstr->var0 = *(&self[18].var3 + 4);
  retstr->var3 = *&self[19].var2;
  return self;
}

- (void)setMasterMovieStartTime:(id *)time
{
  v3 = *&time->var0;
  *&self->_masterMovieStartTime.flags = time->var3;
  *(&self->_stillTimeOffsetToAudioPrerollStopInMilliseconds.epoch + 4) = v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)audioOffset
{
  *&retstr->var0 = *(&self[13].var3 + 4);
  retstr->var3 = *&self[14].var2;
  return self;
}

- (void)setAudioOffset:(id *)offset
{
  v3 = *&offset->var0;
  *&self->_audioOffset.flags = offset->var3;
  *(&self->_beginTrimMasterPTS.epoch + 4) = v3;
}

- (void)setStillTimeOffsetToVideoPrerollStartTime:(id *)time
{
  v3 = *&time->var0;
  self->_stillTimeOffsetToVideoPrerollStartTime.epoch = time->var3;
  *&self->_stillTimeOffsetToVideoPrerollStartTime.value = v3;
}

- (void)setStillTimeOffsetToVideoPrerollStopTime:(id *)time
{
  v3 = *&time->var0;
  self->_stillTimeOffsetToVideoPrerollStopTime.epoch = time->var3;
  *&self->_stillTimeOffsetToVideoPrerollStopTime.value = v3;
}

- (void)setStillTimeOffsetToAudioPrerollStartTime:(id *)time
{
  v3 = *&time->var0;
  self->_stillTimeOffsetToAudioPrerollStartTime.epoch = time->var3;
  *&self->_stillTimeOffsetToAudioPrerollStartTime.value = v3;
}

- (void)setStillTimeOffsetToAudioPrerollStopTime:(id *)time
{
  v3 = *&time->var0;
  self->_stillTimeOffsetToAudioPrerollStopTime.epoch = time->var3;
  *&self->_stillTimeOffsetToAudioPrerollStopTime.value = v3;
}

- (void)_initWithFigCaptureMovieFileRecordingSettings:(void *)settings
{
  if (!settings)
  {
    return 0;
  }

  v5.receiver = settings;
  v5.super_class = BWIrisMovieInfo;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  if (v3)
  {
    v3[1] = a2;
  }

  return v3;
}

- (char)_initWithFigCaptureMovieFileRecordingSettings:(uint64_t)settings stillImageCaptureTime:(__int128 *)time stillImageCaptureHostTime:(void *)hostTime stillImageCaptureAbsoluteStartTime:(void *)startTime stillImageRequestSettings:(char)requestSettings stillImageCaptureSettings:(void *)captureSettings originalPhotoRecording:(double)recording semanticStyle:
{
  if (!self)
  {
    return 0;
  }

  v26.receiver = self;
  v26.super_class = BWIrisMovieInfo;
  v17 = objc_msgSendSuper2(&v26, sel_init);
  if (v17)
  {
    *(v17 + 1) = a2;
    v18 = *(settings + 16);
    *(v17 + 60) = *settings;
    *(v17 + 76) = v18;
    v19 = *time;
    *(v17 + 100) = *(time + 2);
    *(v17 + 84) = v19;
    *(v17 + 14) = recording;
    *(v17 + 15) = hostTime;
    *(v17 + 16) = startTime;
    *(v17 + 2) = [*(v17 + 1) outputURL];
    spatialOverCaptureMovieURL = [*(v17 + 1) spatialOverCaptureMovieURL];
    *(v17 + 6) = spatialOverCaptureMovieURL;
    v17[56] = spatialOverCaptureMovieURL != 0;
    v21 = MEMORY[0x1E6960C88];
    *(v17 + 140) = *MEMORY[0x1E6960C88];
    *(v17 + 156) = *(v21 + 16);
    v17[493] = requestSettings;
    v22 = MEMORY[0x1E6960C70];
    v23 = *MEMORY[0x1E6960C70];
    *(v17 + 308) = *MEMORY[0x1E6960C70];
    v24 = *(v22 + 16);
    *(v17 + 324) = v24;
    *(v17 + 356) = v23;
    *(v17 + 372) = v24;
    *(v17 + 380) = v23;
    *(v17 + 396) = v24;
    *(v17 + 404) = v23;
    *(v17 + 420) = v24;
    *(v17 + 444) = v24;
    *(v17 + 428) = v23;
    *(v17 + 73) = captureSettings;
    *(v17 + 79) = 0;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(FigCaptureMovieFileRecordingSettings *)self->_settings copy];
  v6 = [BWIrisMovieInfo allocWithZone:zone];
  stillImageCaptureAbsoluteStartTime = self->_stillImageCaptureAbsoluteStartTime;
  stillImageRequestSettings = self->_stillImageRequestSettings;
  stillImageCaptureSettings = self->_stillImageCaptureSettings;
  originalPhotoRecording = self->_originalPhotoRecording;
  semanticStyle = self->_semanticStyle;
  v42 = *(&self->_spatialOverCaptureExpected + 4);
  v43 = *&self->_stillImageCaptureTime.flags;
  v40 = *(&self->_stillImageCaptureTime.epoch + 4);
  v41 = *&self->_stillImageCaptureHostTime.flags;
  v12 = [(BWIrisMovieInfo *)v6 _initWithFigCaptureMovieFileRecordingSettings:v5 stillImageCaptureTime:&v42 stillImageCaptureHostTime:&v40 stillImageCaptureAbsoluteStartTime:stillImageRequestSettings stillImageRequestSettings:stillImageCaptureSettings stillImageCaptureSettings:originalPhotoRecording originalPhotoRecording:semanticStyle semanticStyle:stillImageCaptureAbsoluteStartTime];

  [(BWIrisMovieInfo *)self outputMovieURL];
  [OUTLINED_FUNCTION_4() setOutputMovieURL:?];
  [(BWIrisMovieInfo *)self temporaryMovieURL];
  [OUTLINED_FUNCTION_4() setTemporaryMovieURL:?];
  [(BWIrisMovieInfo *)self spatialOverCaptureOutputMovieURL];
  [OUTLINED_FUNCTION_4() setSpatialOverCaptureOutputMovieURL:?];
  [(BWIrisMovieInfo *)self spatialOverCaptureTemporaryMovieURL];
  [OUTLINED_FUNCTION_4() setSpatialOverCaptureTemporaryMovieURL:?];
  [(BWIrisMovieInfo *)self spatialOverCaptureMasterMovieURL];
  [OUTLINED_FUNCTION_4() setSpatialOverCaptureMasterMovieURL:?];
  [(BWIrisMovieInfo *)self spatialOverCaptureExpected];
  [OUTLINED_FUNCTION_4() setSpatialOverCaptureExpected:?];
  [(BWIrisMovieInfo *)self isMomentCaptureMovieRecording];
  [OUTLINED_FUNCTION_4() setMomentCaptureMovieRecording:?];
  [(BWIrisMovieInfo *)self momentCaptureMovieRecordingMasterEndTime];
  v42 = v38;
  [OUTLINED_FUNCTION_0_40(v39) setMomentCaptureMovieRecordingMasterEndTime:?];
  [(BWIrisMovieInfo *)self nonDestructiveCropSize];
  [v12 setNonDestructiveCropSize:?];
  [(BWIrisMovieInfo *)self movieStartTimeRequiresCutting];
  [OUTLINED_FUNCTION_4() setMovieStartTimeRequiresCutting:?];
  [(BWIrisMovieInfo *)self movieStartTime];
  v42 = v36;
  [OUTLINED_FUNCTION_0_40(v37) setMovieStartTime:?];
  [(BWIrisMovieInfo *)self movieEndTime];
  v42 = v34;
  [OUTLINED_FUNCTION_0_40(v35) setMovieEndTime:?];
  [(BWIrisMovieInfo *)self movieEndingVideoPTS];
  v42 = v32;
  [OUTLINED_FUNCTION_0_40(v33) setMovieEndingVideoPTS:?];
  [(BWIrisMovieInfo *)self movieTrimStartTime];
  v42 = v30;
  [OUTLINED_FUNCTION_0_40(v31) setMovieTrimStartTime:?];
  [(BWIrisMovieInfo *)self movieTrimEndTime];
  v42 = v28;
  [OUTLINED_FUNCTION_0_40(v29) setMovieTrimEndTime:?];
  [(BWIrisMovieInfo *)self beginTrimMasterPTS];
  v42 = v26;
  [OUTLINED_FUNCTION_0_40(v27) setBeginTrimMasterPTS:?];
  [(BWIrisMovieInfo *)self audioOffset];
  v42 = v24;
  [OUTLINED_FUNCTION_0_40(v25) setAudioOffset:?];
  [(BWIrisMovieInfo *)self stillTimeOffsetToVideoPrerollStartTime];
  v42 = v22;
  [OUTLINED_FUNCTION_0_40(v23) setStillTimeOffsetToVideoPrerollStartTime:?];
  [(BWIrisMovieInfo *)self stillTimeOffsetToVideoPrerollStopTime];
  v42 = v20;
  [OUTLINED_FUNCTION_0_40(v21) setStillTimeOffsetToVideoPrerollStopTime:?];
  [(BWIrisMovieInfo *)self stillTimeOffsetToAudioPrerollStartTime];
  v42 = v18;
  [OUTLINED_FUNCTION_0_40(v19) setStillTimeOffsetToAudioPrerollStartTime:?];
  [(BWIrisMovieInfo *)self stillTimeOffsetToAudioPrerollStopTime];
  v42 = v16;
  [OUTLINED_FUNCTION_0_40(v17) setStillTimeOffsetToAudioPrerollStopTime:?];
  [(BWIrisMovieInfo *)self masterMovieStartTime];
  v42 = v14;
  [OUTLINED_FUNCTION_0_40(v15) setMasterMovieStartTime:?];
  [(BWIrisMovieInfo *)self masterMovieURL];
  [OUTLINED_FUNCTION_4() setMasterMovieURL:?];
  [(BWIrisMovieInfo *)self isFinalReferenceMovie];
  [OUTLINED_FUNCTION_4() setFinalReferenceMovie:?];
  [(BWIrisMovieInfo *)self stillImageEncoderKeyFrameEmitted];
  [OUTLINED_FUNCTION_4() setStillImageEncoderKeyFrameEmitted:?];
  [(BWIrisMovieInfo *)self stillImageVISKeyFrameTagged];
  [OUTLINED_FUNCTION_4() setStillImageVISKeyFrameTagged:?];
  [(BWIrisMovieInfo *)self isFinalEnqueuedIrisRequest];
  [OUTLINED_FUNCTION_4() setFinalEnqueuedIrisRequest:?];
  [(BWIrisMovieInfo *)self isOverlappingRequest];
  [OUTLINED_FUNCTION_4() setIsOverlappingRequest:?];
  [(BWIrisMovieInfo *)self requestedSDOFVariants];
  [OUTLINED_FUNCTION_4() setRequestedSDOFVariants:?];
  [(BWIrisMovieInfo *)self temporaryURLForSDOFOriginalMovie];
  [OUTLINED_FUNCTION_4() setTemporaryURLForSDOFOriginalMovie:?];
  [(BWIrisMovieInfo *)self outputURLForSDOFOriginalMovie];
  [OUTLINED_FUNCTION_4() setOutputURLForSDOFOriginalMovie:?];
  [(BWIrisMovieInfo *)self movieLevelMetadataForSDOFOriginalMovie];
  [OUTLINED_FUNCTION_4() setMovieLevelMetadataForSDOFOriginalMovie:?];
  [(BWIrisMovieInfo *)self isVitalityScoreValid];
  [OUTLINED_FUNCTION_4() setVitalityScoreValid:?];
  [(BWIrisMovieInfo *)self vitalityScore];
  [v12 setVitalityScore:?];
  [(BWIrisMovieInfo *)self vitalityScoringVersion];
  [OUTLINED_FUNCTION_4() setVitalityScoringVersion:?];
  [(BWIrisMovieInfo *)self isTransitionVitalityScoreValid];
  [OUTLINED_FUNCTION_4() setTransitionVitalityScoreValid:?];
  [(BWIrisMovieInfo *)self transitionVitalityScoreV1];
  [v12 setTransitionVitalityScoreV1:?];
  [(BWIrisMovieInfo *)self limitStillImageTransformDuringVitalityPlayback];
  [OUTLINED_FUNCTION_4() setLimitStillImageTransformDuringVitalityPlayback:?];
  [(BWIrisMovieInfo *)self stillImageRequiresSmartStyleRenderingForSRL];
  [OUTLINED_FUNCTION_4() setStillImageRequiresSmartStyleRenderingForSRL:?];
  [(BWIrisMovieInfo *)self subjectRelightingResult];
  [OUTLINED_FUNCTION_4() setSubjectRelightingResult:?];
  [(BWIrisMovieInfo *)self stagingNodeOverallVideoFrameReceptionStats];
  [OUTLINED_FUNCTION_4() setStagingNodeOverallVideoFrameReceptionStats:?];
  [(BWIrisMovieInfo *)self stagingNodeValveActiveVideoFrameReceptionStats];
  [OUTLINED_FUNCTION_4() setStagingNodeValveActiveVideoFrameReceptionStats:?];
  [(BWIrisMovieInfo *)self fileCoordinatorToWriterMovingWindowLatencyStats];
  [OUTLINED_FUNCTION_4() setFileCoordinatorToWriterMovingWindowLatencyStats:?];
  return v12;
}

@end