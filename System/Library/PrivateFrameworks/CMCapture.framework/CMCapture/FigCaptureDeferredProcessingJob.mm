@interface FigCaptureDeferredProcessingJob
+ (BOOL)isPotentiallyRecoverableError:(int)error;
- (FigCaptureDeferredProcessingJob)initWithProcessorRequest:(id)request delegate:(id)delegate error:(int *)error;
- (void)completedWithSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)dealloc;
- (void)failedWithError:(int)error;
@end

@implementation FigCaptureDeferredProcessingJob

- (void)dealloc
{
  [+[BWDeferredProcessingContainerManager sharedInstance](BWDeferredProcessingContainerManager releaseProcessingContainer:"releaseProcessingContainer:", self->_container];

  v3.receiver = self;
  v3.super_class = FigCaptureDeferredProcessingJob;
  [(FigCaptureDeferredProcessingJob *)&v3 dealloc];
}

- (void)completedWithSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  self->_durationNS = FigGetUpTimeNanoseconds() - self->_startNS;
  referencedObject = [(FigWeakReference *)self->_weakDelegateReference referencedObject];

  [referencedObject job:self completedWithSampleBuffer:buffer];
}

+ (BOOL)isPotentiallyRecoverableError:(int)error
{
  result = 0;
  v4 = (error + 16829) > 9 || ((1 << (error - 67)) & 0x2EF) == 0;
  if (v4 && ((error + 16140) > 0xA || ((1 << (error + 12)) & 0x751) == 0))
  {
    return 1;
  }

  return result;
}

- (void)failedWithError:(int)error
{
  v3 = *&error;
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

- (FigCaptureDeferredProcessingJob)initWithProcessorRequest:(id)request delegate:(id)delegate error:(int *)error
{
  v13 = 0;
  v12.receiver = self;
  v12.super_class = FigCaptureDeferredProcessingJob;
  v8 = [(FigCaptureDeferredProcessingJob *)&v12 init];
  if (v8)
  {
    v8->_weakDelegateReference = [FigWeakReference weakReferenceToObject:delegate];
    v8->_processorRequest = request;
    v9 = -[BWDeferredProcessingContainerManager createProcessingContainerWithApplicationID:captureRequestIdentifier:openForPeeking:err:](+[BWDeferredProcessingContainerManager sharedInstance](BWDeferredProcessingContainerManager, "sharedInstance"), "createProcessingContainerWithApplicationID:captureRequestIdentifier:openForPeeking:err:", [request applicationID], objc_msgSend(request, "captureRequestIdentifier"), 0, &v13);
    v8->_container = v9;
    if (!v13)
    {
      if (-[BWPhotoManifest descriptorForIdentifier:](-[BWDeferredProcessingContainer photoManifest](v9, "photoManifest"), "descriptorForIdentifier:", [request photoIdentifier]))
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
  if (error)
  {
    *error = v13;
  }

  if (v10)
  {

    return 0;
  }

  return v8;
}

@end