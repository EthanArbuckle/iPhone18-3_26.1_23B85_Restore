@interface BWPendingIrisRecordingRequest
+ (id)irisRecordingRequestWithFigCaptureMovieFileRecordingSettings:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_initWithFigCaptureMovieFileRecordingSettings:(void *)a1;
- (void)dealloc;
- (void)setIrisMovieInfo:(id)a3;
- (void)setMomentCaptureMovieRecordingMasterEndTime:(id *)a3;
@end

@implementation BWPendingIrisRecordingRequest

+ (id)irisRecordingRequestWithFigCaptureMovieFileRecordingSettings:(id)a3
{
  v3 = [[BWPendingIrisRecordingRequest alloc] _initWithFigCaptureMovieFileRecordingSettings:a3];

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
  v3 = [MEMORY[0x1E696AD60] string];
  mach_absolute_time();
  v4 = FigHostTimeToNanoseconds() / 1000000000.0;
  v5 = objc_opt_class();
  v6 = [(FigCaptureRecordingSettings *)self->_settings settingsID];
  v7 = @"NO";
  if (self->_pairedRequestCreated)
  {
    v7 = @"YES";
  }

  [v3 appendFormat:@"%@ %p: captureID:%lld [enqueuedInterval: %.4f seconds, pairedRequestCreated: %@, irisMovieInfo: %@]", v5, self, v6, *&v4, v7, self->_irisMovieInfo];
  return v3;
}

- (void)setMomentCaptureMovieRecordingMasterEndTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_momentCaptureMovieRecordingMasterEndTime.epoch = a3->var3;
  *&self->_momentCaptureMovieRecordingMasterEndTime.value = v3;
  v4 = *a3;
  [(BWIrisMovieInfo *)self->_irisMovieInfo setMomentCaptureMovieRecordingMasterEndTime:&v4];
}

- (void)setIrisMovieInfo:(id)a3
{
  self->_irisMovieInfo = a3;
  v5 = [(BWPendingIrisRecordingRequest *)self enqueuedHostTime];
  irisMovieInfo = self->_irisMovieInfo;

  [(BWIrisMovieInfo *)irisMovieInfo setEnqueuedHostTime:v5];
}

- (void)_initWithFigCaptureMovieFileRecordingSettings:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v5.receiver = a1;
  v5.super_class = BWPendingIrisRecordingRequest;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  if (v3)
  {
    v3[1] = a2;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[BWPendingIrisRecordingRequest allocWithZone:?], self->_settings];
  [v4 setEnqueuedHostTime:self->_enqueuedHostTime];
  [v4 setPairedRequestCreated:self->_pairedRequestCreated];
  [v4 setIrisMovieInfo:self->_irisMovieInfo];
  return v4;
}

@end