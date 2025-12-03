@interface BWSensitiveContentAnalyzerSinkNode
- (BWSensitiveContentAnalyzerSinkNode)initWithAnalyzer:(id)analyzer sinkID:(id)d interruptionDelegate:(id)delegate;
- (void)dealloc;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWSensitiveContentAnalyzerSinkNode

- (BWSensitiveContentAnalyzerSinkNode)initWithAnalyzer:(id)analyzer sinkID:(id)d interruptionDelegate:(id)delegate
{
  if (SensitiveContentAnalysisLibraryCore())
  {
    if (getSCVideoStreamAnalyzerClass())
    {
      if (analyzer)
      {
        if (delegate)
        {
          v18.receiver = self;
          v18.super_class = BWSensitiveContentAnalyzerSinkNode;
          self = [(BWSinkNode *)&v18 initWithSinkID:d];
          if (self)
          {
            v9 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:self];
            [(BWNodeInput *)v9 setFormatRequirements:+[BWVideoFormatRequirements formatRequirements]];
            [(BWNode *)self addInput:v9];
            [(BWNode *)self setSupportsLiveReconfiguration:1];
            [(BWNode *)self setSupportsPrepareWhileRunning:1];
            [(BWSensitiveContentAnalyzerSinkNode *)self setSensitiveContentAnalyzerEnabled:1];
            self->_sensitiveContentAnalyzer = analyzer;
            objc_initWeak(&location, delegate);
            v15[0] = 0;
            v15[1] = v15;
            v15[2] = 0x3042000000;
            v15[3] = __Block_byref_object_copy__38;
            v15[4] = __Block_byref_object_dispose__38;
            v16 = 0;
            objc_initWeak(&from, self);
            v11[0] = MEMORY[0x1E69E9820];
            v11[1] = 3221225472;
            v11[2] = __83__BWSensitiveContentAnalyzerSinkNode_initWithAnalyzer_sinkID_interruptionDelegate___block_invoke;
            v11[3] = &unk_1E799BB10;
            v11[4] = v15;
            objc_copyWeak(&v12, &location);
            objc_copyWeak(&v13, &from);
            [(SCVideoStreamAnalyzer *)self->_sensitiveContentAnalyzer setAnalysisChangedHandler:v11];
            objc_destroyWeak(&v13);
            objc_destroyWeak(&v12);
            objc_destroyWeak(&from);
            _Block_object_dispose(v15, 8);
            objc_destroyWeak(&v16);
            objc_destroyWeak(&location);
          }
        }

        else
        {
          [BWSensitiveContentAnalyzerSinkNode initWithAnalyzer:sinkID:interruptionDelegate:];
        }
      }

      else
      {
        [BWSensitiveContentAnalyzerSinkNode initWithAnalyzer:sinkID:interruptionDelegate:];
      }
    }

    else
    {
      [BWSensitiveContentAnalyzerSinkNode initWithAnalyzer:sinkID:interruptionDelegate:];
    }
  }

  else
  {
    [BWSensitiveContentAnalyzerSinkNode initWithAnalyzer:sinkID:interruptionDelegate:];
  }

  return self;
}

void __83__BWSensitiveContentAnalyzerSinkNode_initWithAnalyzer_sinkID_interruptionDelegate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    if (![objc_msgSend(a3 "domain")] || objc_msgSend(a3, "code") != 20)
    {
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v13 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v13, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWSensitiveContentAnalyzerSinkNode.m", 104, @"LastShownDate:BWSensitiveContentAnalyzerSinkNode.m:104", @"LastShownBuild:BWSensitiveContentAnalyzerSinkNode.m:104", 0);
      free(v13);
    }
  }

  else
  {
    Weak = objc_loadWeak((*(*(a1 + 32) + 8) + 40));
    v9 = [a2 shouldInterruptVideo];
    os_variant_has_internal_diagnostics();
    if (((v9 ^ (Weak == 0)) & 1) == 0)
    {
      if (v9)
      {
        v10 = objc_loadWeak((a1 + 40));
        v11 = objc_loadWeak((a1 + 48));
        if (v10 && v11)
        {
          objc_storeWeak((*(*(a1 + 32) + 8) + 40), [[FigCaptureInterruptionStatus alloc] initWithReason:7 systemWide:0 delegate:v10 context:v11[26]]);
          [v10 interruptionTriggered:objc_loadWeak((*(*(a1 + 32) + 8) + 40))];
          v12 = objc_loadWeak((*(*(a1 + 32) + 8) + 40));
        }
      }

      else
      {
        [Weak resolve];
        v14 = (*(*(a1 + 32) + 8) + 40);

        objc_storeWeak(v14, 0);
      }
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWSensitiveContentAnalyzerSinkNode;
  [(BWSinkNode *)&v3 dealloc];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (self->_sensitiveContentAnalyzerEnabled && self->_sensitiveContentAnalyzer)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v8 = [CMGetAttachment(buffer @"UprightExifOrientation"];
    v9 = v8 <= 1 ? 1 : v8;
    [(SCVideoStreamAnalyzer *)self->_sensitiveContentAnalyzer analyzePixelBuffer:CMSampleBufferGetImageBuffer(buffer) orientation:v9];
    if (((FigGetUpTimeNanoseconds() - UpTimeNanoseconds) / 1000000.0) > 8.0)
    {

      [input numberOfBuffersReceived];
    }
  }
}

@end