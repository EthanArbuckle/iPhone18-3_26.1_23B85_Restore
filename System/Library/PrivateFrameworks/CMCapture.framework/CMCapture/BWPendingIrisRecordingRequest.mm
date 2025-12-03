@interface BWPendingIrisRecordingRequest
+ (id)irisRecordingRequestWithFigCaptureMovieFileRecordingSettings:(id)settings;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_initWithFigCaptureMovieFileRecordingSettings:(void *)settings;
- (void)dealloc;
- (void)setIrisMovieInfo:(id)info;
- (void)setMomentCaptureMovieRecordingMasterEndTime:(id *)time;
@end

@implementation BWPendingIrisRecordingRequest

+ (id)irisRecordingRequestWithFigCaptureMovieFileRecordingSettings:(id)settings
{
  v3 = [[BWPendingIrisRecordingRequest alloc] _initWithFigCaptureMovieFileRecordingSettings:settings];

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWPendingIrisRecordingRequest;
  [(BWPendingIrisRecordingRequest *)&v3 dealloc];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  mach_absolute_time();
  v4 = FigHostTimeToNanoseconds() / 1000000000.0;
  v5 = objc_opt_class();
  settingsID = [(FigCaptureRecordingSettings *)self->_settings settingsID];
  v7 = @"NO";
  if (self->_pairedRequestCreated)
  {
    v7 = @"YES";
  }

  [string appendFormat:@"%@ %p: captureID:%lld [enqueuedInterval: %.4f seconds, pairedRequestCreated: %@, irisMovieInfo: %@]", v5, self, settingsID, *&v4, v7, self->_irisMovieInfo];
  return string;
}

- (void)setMomentCaptureMovieRecordingMasterEndTime:(id *)time
{
  v3 = *&time->var0;
  self->_momentCaptureMovieRecordingMasterEndTime.epoch = time->var3;
  *&self->_momentCaptureMovieRecordingMasterEndTime.value = v3;
  v4 = *time;
  [(BWIrisMovieInfo *)self->_irisMovieInfo setMomentCaptureMovieRecordingMasterEndTime:&v4];
}

- (void)setIrisMovieInfo:(id)info
{
  self->_irisMovieInfo = info;
  enqueuedHostTime = [(BWPendingIrisRecordingRequest *)self enqueuedHostTime];
  irisMovieInfo = self->_irisMovieInfo;

  [(BWIrisMovieInfo *)irisMovieInfo setEnqueuedHostTime:enqueuedHostTime];
}

- (void)_initWithFigCaptureMovieFileRecordingSettings:(void *)settings
{
  if (!settings)
  {
    return 0;
  }

  v5.receiver = settings;
  v5.super_class = BWPendingIrisRecordingRequest;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  if (v3)
  {
    v3[1] = a2;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[BWPendingIrisRecordingRequest allocWithZone:?], self->_settings];
  [v4 setEnqueuedHostTime:self->_enqueuedHostTime];
  [v4 setPairedRequestCreated:self->_pairedRequestCreated];
  [v4 setIrisMovieInfo:self->_irisMovieInfo];
  return v4;
}

@end