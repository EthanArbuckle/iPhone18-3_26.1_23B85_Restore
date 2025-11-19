@interface BWStillImageSmartStyleUnstyledBufferEmitterNode
- (BWStillImageSmartStyleUnstyledBufferEmitterNode)init;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWStillImageSmartStyleUnstyledBufferEmitterNode

- (BWStillImageSmartStyleUnstyledBufferEmitterNode)init
{
  v6.receiver = self;
  v6.super_class = BWStillImageSmartStyleUnstyledBufferEmitterNode;
  v2 = [(BWNode *)&v6 init];
  if (v2)
  {
    v3 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v2];
    [(BWNodeInput *)v3 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInput *)v3 setPassthroughMode:1];
    [(BWNode *)v2 addInput:v3];

    v4 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v2];
    [(BWNodeOutput *)v4 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutput *)v4 setPassthroughMode:1];
    [(BWNode *)v2 addOutput:v4];

    [(BWNode *)v2 setSupportsLiveReconfiguration:1];
    [(BWNode *)v2 setSupportsPrepareWhileRunning:1];
  }

  return v2;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  destination = 0;
  if ((BWStillImageProcessingFlagsForSampleBuffer(a3) & 0x200000) != 0)
  {
    AttachedMedia = BWSampleBufferGetAttachedMedia(a3, 0x1F21AAF90);
    if (AttachedMedia)
    {
      CopyIncludingMetadata = BWCMSampleBufferCreateCopyIncludingMetadata(AttachedMedia, &destination);
      if (CopyIncludingMetadata)
      {
        v8 = [BWNodeError newError:CopyIncludingMetadata sourceNode:self stillImageSettings:CMGetAttachment(a3 metadata:@"StillSettings", 0), 0];
        [(BWNodeOutput *)self->super._output emitNodeError:v8];
      }

      else
      {
        CMPropagateAttachments(a3, destination);
        BWSampleBufferRemoveAttachedMedia(destination, 0x1F21AAF90);
        BWSampleBufferRemoveAttachedMedia(destination, 0x1F21AAF50);
        BWStillImageUnsetProcessingFlagsForSampleBuffer(destination, 0x200000);
        CMSetAttachment(destination, @"StillImageBufferFrameType", &unk_1F2243090, 1u);
        [(BWNodeOutput *)self->super._output emitSampleBuffer:destination];
      }

      if (destination)
      {
        CFRelease(destination);
      }
    }
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
}

@end