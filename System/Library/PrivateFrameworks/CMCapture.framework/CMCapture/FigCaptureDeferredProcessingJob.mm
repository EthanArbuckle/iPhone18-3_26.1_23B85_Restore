@interface FigCaptureDeferredProcessingJob
+ (BOOL)isPotentiallyRecoverableError:(int)a3;
- (FigCaptureDeferredProcessingJob)initWithProcessorRequest:(id)a3 delegate:(id)a4 error:(int *)a5;
- (void)completedWithSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)dealloc;
- (void)failedWithError:(int)a3;
@end

@implementation FigCaptureDeferredProcessingJob

- (void)dealloc
{
  [+[BWDeferredProcessingContainerManager sharedInstance](BWDeferredProcessingContainerManager releaseProcessingContainer:"releaseProcessingContainer:", self->_container];

  v3.receiver = self;
  v3.super_class = FigCaptureDeferredProcessingJob;
  [(FigCaptureDeferredProcessingJob *)&v3 dealloc];
}

- (void)completedWithSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  self->_durationNS = FigGetUpTimeNanoseconds() - self->_startNS;
  v5 = [(FigWeakReference *)self->_weakDelegateReference referencedObject];

  [v5 job:self completedWithSampleBuffer:a3];
}

+ (BOOL)isPotentiallyRecoverableError:(int)a3
{
  result = 0;
  v4 = (a3 + 16829) > 9 || ((1 << (a3 - 67)) & 0x2EF) == 0;
  if (v4 && ((a3 + 16140) > 0xA || ((1 << (a3 + 12)) & 0x751) == 0))
  {
    return 1;
  }

  return result;
}

- (void)failedWithError:(int)a3
{
  v3 = *&a3;
  if (+[BWDeferredProcessingContainer maxProcessingCount](BWDeferredProcessingContainer, "maxProcessingCount") && (v5 = [(BWDeferredProcessingContainer *)self->_container processingCount], v5 == +[BWDeferredProcessingContainer maxProcessingCount]))
  {
    if (dword_1ED843F70)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = 4294951156;
  }

  else if ([FigCaptureDeferredProcessingJob isPotentiallyRecoverableError:v3])
  {
    if (dword_1ED843F70)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = 4294950471;
  }

  self->_durationNS = FigGetUpTimeNanoseconds() - self->_startNS;
  [-[FigWeakReference referencedObject](self->_weakDelegateReference "referencedObject")];
}

- (FigCaptureDeferredProcessingJob)initWithProcessorRequest:(id)a3 delegate:(id)a4 error:(int *)a5
{
  v13 = 0;
  v12.receiver = self;
  v12.super_class = FigCaptureDeferredProcessingJob;
  v8 = [(FigCaptureDeferredProcessingJob *)&v12 init];
  if (v8)
  {
    v8->_weakDelegateReference = [FigWeakReference weakReferenceToObject:a4];
    v8->_processorRequest = a3;
    v9 = -[BWDeferredProcessingContainerManager createProcessingContainerWithApplicationID:captureRequestIdentifier:openForPeeking:err:](+[BWDeferredProcessingContainerManager sharedInstance](BWDeferredProcessingContainerManager, "sharedInstance"), "createProcessingContainerWithApplicationID:captureRequestIdentifier:openForPeeking:err:", [a3 applicationID], objc_msgSend(a3, "captureRequestIdentifier"), 0, &v13);
    v8->_container = v9;
    if (!v13)
    {
      if (-[BWPhotoManifest descriptorForIdentifier:](-[BWDeferredProcessingContainer photoManifest](v9, "photoManifest"), "descriptorForIdentifier:", [a3 photoIdentifier]))
      {
        v8->_masterPortType = [(BWStillImageCaptureSettings *)[(BWDeferredContainer *)v8->_container captureSettings] masterPortType];
      }

      else
      {
        v13 = -16136;
      }
    }
  }

  v10 = v13;
  if (a5)
  {
    *a5 = v13;
  }

  if (v10)
  {

    return 0;
  }

  return v8;
}

@end