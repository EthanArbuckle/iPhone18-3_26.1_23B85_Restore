@interface BWOverCaptureAttachedMediaSplitNode
- (BWOverCaptureAttachedMediaSplitNode)initWithBackPressureExtraRetainBufferCount:(int)count;
- (id)_handleIrisMovieRequestForInput:(uint64_t)input sbuf:;
- (id)_updateSynchronizedSlaveFrameEnabledWithSampleBuffer:(id)result;
- (void)dealloc;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWOverCaptureAttachedMediaSplitNode

- (BWOverCaptureAttachedMediaSplitNode)initWithBackPressureExtraRetainBufferCount:(int)count
{
  v11[0] = @"PrimaryFormat";
  v11[1] = @"SynchronizedSlaveFrame";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v10.receiver = self;
  v10.super_class = BWOverCaptureAttachedMediaSplitNode;
  v6 = [(BWAttachedMediaSplitNode *)&v10 initWithAttachedMediaKeys:v5 attachedMediaToPropagateToPrimaryOutput:MEMORY[0x1E695E0F0]];
  v7 = v6;
  if (v6)
  {
    v6->_primaryFrameOutput = [(NSArray *)[(BWNode *)v6 outputs] objectAtIndexedSubscript:0];
    v7->_synchronizedSlaveFrameOutput = [(NSArray *)[(BWNode *)v7 outputs] objectAtIndexedSubscript:1];
    [(BWNodeInput *)v7->super.super.super._input setRetainedBufferCount:[(BWNodeInput *)v7->super.super.super._input retainedBufferCount]+ count];
    v8 = [(BWNodeInput *)v7->super.super.super._input mediaConfigurationForAttachedMediaKey:@"SynchronizedSlaveFrame"];
    [v8 setRetainedBufferCount:{objc_msgSend(v8, "retainedBufferCount") + count}];
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWOverCaptureAttachedMediaSplitNode;
  [(BWAttachedMediaSplitNode *)&v2 dealloc];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  [(BWOverCaptureAttachedMediaSplitNode *)self _updateSynchronizedSlaveFrameEnabledWithSampleBuffer:buffer];
  if (BWSampleBufferIsMarkerBuffer(buffer) && CMGetAttachment(buffer, @"IrisMovieRequest", 0))
  {

    [(BWOverCaptureAttachedMediaSplitNode *)self _handleIrisMovieRequestForInput:input sbuf:buffer];
  }

  else
  {
    AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, @"SynchronizedSlaveFrame");
    if (AttachedMedia)
    {
      v8 = AttachedMedia;
      v9 = *(MEMORY[0x1E6960CF0] + 48);
      *&timingArrayOut.presentationTimeStamp.timescale = *(MEMORY[0x1E6960CF0] + 32);
      *&timingArrayOut.decodeTimeStamp.value = v9;
      timingArrayOut.decodeTimeStamp.epoch = *(MEMORY[0x1E6960CF0] + 64);
      v10 = *(MEMORY[0x1E6960CF0] + 16);
      *&timingArrayOut.duration.value = *MEMORY[0x1E6960CF0];
      *&timingArrayOut.duration.epoch = v10;
      if (CMSampleBufferGetSampleTimingInfoArray(buffer, 1, &timingArrayOut, 0))
      {
        [BWOverCaptureAttachedMediaSplitNode renderSampleBuffer:forInput:];
      }

      else
      {
        CMSampleBufferGetPresentationTimeStamp(&time2, v8);
        time1 = timingArrayOut.presentationTimeStamp;
        if (CMTimeCompare(&time1, &time2))
        {
          time2.value = 0;
          if (CMSampleBufferCreateCopyWithNewTiming(*MEMORY[0x1E695E480], v8, 1, &timingArrayOut, &time2))
          {
            [BWOverCaptureAttachedMediaSplitNode renderSampleBuffer:forInput:];
          }

          else
          {
            BWSampleBufferSetAttachedMedia(buffer, @"SynchronizedSlaveFrame", time2.value);
            CFRelease(time2.value);
          }
        }
      }
    }

    v11.receiver = self;
    v11.super_class = BWOverCaptureAttachedMediaSplitNode;
    [(BWAttachedMediaSplitNode *)&v11 renderSampleBuffer:buffer forInput:input];
  }
}

- (id)_handleIrisMovieRequestForInput:(uint64_t)input sbuf:
{
  if (result)
  {
    v5 = result;
    if ([objc_msgSend(result "outputs")] != 2)
    {
      [BWOverCaptureAttachedMediaSplitNode _handleIrisMovieRequestForInput:sbuf:];
    }

    return [(BWOverCaptureAttachedMediaSplitNode *)v5 _handleIrisMovieRequestForInput:input sbuf:&v6, a2];
  }

  return result;
}

- (id)_updateSynchronizedSlaveFrameEnabledWithSampleBuffer:(id)result
{
  if (result)
  {
    v3 = result;
    result = BWSampleBufferIsMarkerBuffer(a2);
    if (result)
    {
      result = CMGetAttachment(a2, @"RecordingSettings", 0);
      if (result)
      {
        v4.receiver = v3;
        v4.super_class = BWOverCaptureAttachedMediaSplitNode;
        return objc_msgSendSuper2(&v4, sel_setOutputRenderingEnabled_forAttachedMediaKey_, [result spatialOverCaptureMovieURL] != 0, @"SynchronizedSlaveFrame");
      }
    }
  }

  return result;
}

- (uint64_t)renderSampleBuffer:forInput:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (id)_handleIrisMovieRequestForInput:(objc_super *)a3 sbuf:(uint64_t)a4 .cold.2(void *a1, uint64_t a2, objc_super *a3, uint64_t a4)
{
  if ([a1 isOutputRenderingEnabledForAttachedMediaKey:@"SynchronizedSlaveFrame"])
  {
    a3->receiver = a1;
    a3->super_class = BWOverCaptureAttachedMediaSplitNode;
    return [(objc_super *)a3 renderSampleBuffer:a2 forInput:a4];
  }

  else
  {
    v9 = [objc_msgSend(a1 "outputs")];

    return [v9 emitSampleBuffer:a2];
  }
}

@end