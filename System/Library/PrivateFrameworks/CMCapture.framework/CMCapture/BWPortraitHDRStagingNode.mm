@interface BWPortraitHDRStagingNode
- (BWPortraitHDRStagingNode)init;
- (void)bufferReceivedWithFlags:(unsigned int)flags error:(int)error;
- (void)dealloc;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWPortraitHDRStagingNode

- (BWPortraitHDRStagingNode)init
{
  v8.receiver = self;
  v8.super_class = BWPortraitHDRStagingNode;
  v2 = [(BWNode *)&v8 init];
  if (v2)
  {
    v3 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v2];
    v4 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeInput *)v3 setFormatRequirements:v4];

    [(BWNodeInput *)v3 setPassthroughMode:1];
    [(BWNode *)v2 addInput:v3];

    v5 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v2];
    v6 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeOutput *)v5 setFormatRequirements:v6];
    [(BWNodeOutput *)v5 setPassthroughMode:1];

    [(BWNode *)v2 addOutput:v5];
    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  stagedBuffer = self->_stagedBuffer;
  if (stagedBuffer)
  {
    CFRelease(stagedBuffer);
  }

  os_unfair_lock_unlock(&self->_lock);
  v4.receiver = self;
  v4.super_class = BWPortraitHDRStagingNode;
  [(BWNode *)&v4 dealloc];
}

- (void)bufferReceivedWithFlags:(unsigned int)flags error:(int)error
{
  flagsCopy = flags;
  os_unfair_lock_lock(&self->_lock);
  if (flagsCopy & 0x40 | error && (self->_passthroughBuffer = 1, (v7 = self->_stagedBuffer) != 0))
  {
    v8 = CFRetain(v7);
    stagedBuffer = self->_stagedBuffer;
    if (stagedBuffer)
    {
      CFRelease(stagedBuffer);
      self->_stagedBuffer = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
    if (v8)
    {
      [(BWNodeOutput *)self->super._output emitSampleBuffer:v8];

      CFRelease(v8);
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v6 = [CMGetAttachment(buffer @"StillImageProcessingFlags"];
  v7 = CMGetAttachment(buffer, @"BWStillImageCaptureSettings", 0);
  os_unfair_lock_lock(&self->_lock);
  settingsID = self->_settingsID;
  if (settingsID != [v7 settingsID])
  {
    self->_passthroughBuffer = 0;
    self->_settingsID = [v7 settingsID];
  }

  v9 = CMGetAttachment(buffer, @"PhotoManifest", 0);
  if (v6 && (v10 = v9, [v7 deliverOriginalImage]) && (objc_msgSend(v7, "captureFlags") & 0x800) != 0 && objc_msgSend(objc_msgSend(v10, "photoDescriptors"), "count") >= 3 && ((objc_msgSend(objc_msgSend(objc_msgSend(v10, "photoDescriptors"), "objectAtIndexedSubscript:", 2), "processingFlags") ^ v6) & 3) == 0 && !self->_passthroughBuffer)
  {
    stagedBuffer = self->_stagedBuffer;
    self->_stagedBuffer = buffer;
    if (buffer)
    {
      CFRetain(buffer);
    }

    if (stagedBuffer)
    {
      CFRelease(stagedBuffer);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    output = self->super._output;

    [(BWNodeOutput *)output emitSampleBuffer:buffer];
  }
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  -[BWPortraitHDRStagingNode bufferReceivedWithFlags:error:](self, "bufferReceivedWithFlags:error:", 0, [error errorCode]);
  output = self->super._output;

  [(BWNodeOutput *)output emitNodeError:error];
}

@end