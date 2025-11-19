@interface BWMetadataPropagatorNode
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWMetadataPropagatorNode

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v8 = 0;
  AttachedInferenceResult = BWInferenceGetAttachedInferenceResult(a3, 101);
  if ([AttachedInferenceResult isValid] && objc_msgSend(objc_msgSend(AttachedInferenceResult, "inferences"), "count") && (objc_msgSend(objc_msgSend(AttachedInferenceResult, "preventionReason"), "isEqualToString:", @"BlurryInputBuffer") & 1) == 0)
  {
    memset(&sampleTimingArray.presentationTimeStamp, 0, 48);
    *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
    sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
    CMSampleBufferGetPresentationTimeStamp(&sampleTimingArray.presentationTimeStamp, a3);
    sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
    CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &v8);
    if (v8)
    {
      CMSetAttachment(v8, *off_1E798A480, [AttachedInferenceResult inferences], 1u);
      [(BWNodeOutput *)self->super.super._output emitSampleBuffer:v8];
      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      fig_log_get_emitter();
      FigDebugAssert3();
    }
  }
}

@end