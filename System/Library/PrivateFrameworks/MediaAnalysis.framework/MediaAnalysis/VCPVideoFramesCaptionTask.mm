@interface VCPVideoFramesCaptionTask
+ (id)taskWithFrames:(id)frames frameRate:(float)rate timeRange:(id *)range andCompletionHandler:(id)handler;
- (VCPVideoFramesCaptionTask)initWithFrames:(id)frames frameRate:(float)rate timeRange:(id *)range andCompletionHandler:(id)handler;
- (int)main;
- (int)run;
- (void)dealloc;
@end

@implementation VCPVideoFramesCaptionTask

- (VCPVideoFramesCaptionTask)initWithFrames:(id)frames frameRate:(float)rate timeRange:(id *)range andCompletionHandler:(id)handler
{
  framesCopy = frames;
  handlerCopy = handler;
  if ([framesCopy count])
  {
    v29.receiver = self;
    v29.super_class = VCPVideoFramesCaptionTask;
    v13 = [(VCPVideoFramesCaptionTask *)&v29 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_frames, frames);
      v15 = *&range->var0.var0;
      v16 = *&range->var0.var3;
      *(&v14->_timeRange.duration.value + 4) = *&range->var1.var1;
      *&v14->_timeRange.start.flags = v16;
      *(&v14->_frameRate + 1) = v15;
      v14->_frameRate = rate;
      v17 = [(NSArray *)v14->_frames count];
      v14->_frameNum = v17;
      var1 = range->var1;
      CMTimeMultiplyByRatio(&v28, &var1, 1, v17 - 1);
      *(&v14->_timeRange.duration.epoch + 4) = v28;
      v18 = [[NSMutableString alloc] initWithString:&stru_1002890F8];
      v19 = *&v14->_canceled.__a_.__a_value;
      *&v14->_canceled.__a_.__a_value = v18;

      v20 = +[NSMutableDictionary dictionary];
      errorMessage = v14->_errorMessage;
      v14->_errorMessage = v20;

      if (handlerCopy)
      {
        v22 = handlerCopy;
      }

      else
      {
        v22 = &stru_1002859C0;
      }

      v23 = objc_retainBlock(v22);
      completionHandler = v14->_completionHandler;
      v14->_completionHandler = v23;
    }

    self = v14;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)taskWithFrames:(id)frames frameRate:(float)rate timeRange:(id *)range andCompletionHandler:(id)handler
{
  framesCopy = frames;
  handlerCopy = handler;
  v11 = objc_alloc(objc_opt_class());
  v12 = *&range->var0.var3;
  v15[0] = *&range->var0.var0;
  v15[1] = v12;
  v16 = *&range->var1.var1;
  v13 = [v11 initWithFrames:framesCopy frameRate:v15 timeRange:handlerCopy andCompletionHandler:{COERCE_DOUBLE(__PAIR64__(DWORD1(v16), LODWORD(rate)))}];

  return v13;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_frameInterval.epoch + 5);
  if ((v3 & 1) == 0)
  {
    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      v9 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Video frames caption task cancelled"];
      v10 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v6];
      completionHandler[2](completionHandler, 0, v7);
    }
  }

  v8.receiver = self;
  v8.super_class = VCPVideoFramesCaptionTask;
  [(VCPVideoFramesCaptionTask *)&v8 dealloc];
}

- (int)main
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "VCPVideoFramesCaptionTask running...", buf, 2u);
    }
  }

  v5 = atomic_load(&self->_frameInterval.epoch + 4);
  if ((v5 & 1) == 0)
  {
    v30 = [[VCPImageCaptionAnalyzer alloc] initWithCaptionModelType:1 captionSafetyType:0 useSharedModel:1];
    if (v30)
    {
      v6 = +[AXMImageCaptionModelAssetManager sharedInstance];
      v27 = [v6 modelURLForType:1 timeout:0.5];

      if (v27)
      {
        v7 = [[VCPVideoCaptionAnalyzer alloc] initWithModelType:1 frameNumber:self->_frameNum];
        if (v7)
        {
          v42 = 0;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v8 = self->_frames;
          v28 = v7;
          obj = v8;
          v9 = 0;
          v10 = [(NSArray *)v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
          if (v10)
          {
            v11 = 0;
            v12 = *v39;
            do
            {
              v13 = 0;
              do
              {
                if (*v39 != v12)
                {
                  objc_enumerationMutation(obj);
                }

                v14 = *(*(&v38 + 1) + 8 * v13);
                v15 = objc_autoreleasePoolPush();
                memset(buf, 0, sizeof(buf));
                *&v32 = 0;
                lhs = *(&self->_frameRate + 1);
                time = *(&self->_timeRange.duration.epoch + 4);
                CMTimeMultiply(&rhs, &time, v11);
                CMTimeAdd(buf, &lhs, &rhs);
                time.value = 0;
                v16 = CVPixelBufferCreateWithIOSurface(0, v14, 0, &time);
                if (v16)
                {
                  [*&self->_canceled.__a_.__a_value setString:@"[VCPVideoFramesCaptionTask] Failed to create CVPixelBuffer from specified IOSurface"];
LABEL_20:
                  v18 = 0;
                  v2 = v16;
                  goto LABEL_21;
                }

                if (!v11)
                {
                  v34 = v9;
                  [v30 analyzePixelBuffer:time.value flags:&v42 results:&v34 cancel:&stru_1002859E0];
                  v17 = v34;

                  v9 = v17;
                  [(NSMutableString *)self->_errorMessage addEntriesFromDictionary:v17];
                }

                *&lhs.value = *buf;
                lhs.epoch = v32;
                rhs = *(&self->_timeRange.duration.epoch + 4);
                v16 = [v28 analyzeFrame:time.value withTimestamp:&lhs andDuration:&rhs flags:{&v42, v27}];
                if (v16)
                {
                  [*&self->_canceled.__a_.__a_value setString:@"[VCPVideoFramesCaptionTask] VideoCaptionAnalyzer failed to analyze frame"];
                  goto LABEL_20;
                }

                ++v11;
                v18 = 1;
LABEL_21:
                sub_100002CBC(&time);
                objc_autoreleasePoolPop(v15);
                if (!v18)
                {
                  results = obj;
                  goto LABEL_36;
                }

                v13 = v13 + 1;
              }

              while (v10 != v13);
              v8 = obj;
              v19 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v43 count:16];
              v10 = v19;
            }

            while (v19);
          }

          v20 = *&self->_timeRange.start.flags;
          *buf = *(&self->_frameRate + 1);
          v32 = v20;
          v33 = *(&self->_timeRange.duration.value + 4);
          [v28 finishAnalysisPass:buf];
          errorMessage = self->_errorMessage;
          results = [v28 results];
          [(NSMutableString *)errorMessage addEntriesFromDictionary:results];
          v2 = 0;
LABEL_36:

          v7 = v28;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v25 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v25))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "[VCPVideoFramesCaptionTask] VCPVideoCaptionAnalyzer init fail", buf, 2u);
            }
          }

          [*&self->_canceled.__a_.__a_value setString:{@"[VCPVideoFramesCaptionTask] VCPVideoCaptionAnalyzer init fail", v27}];
          v9 = 0;
          v2 = -108;
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v24 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v24))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[VCPVideoFramesCaptionTask] AX video captioning decoder model not found", buf, 2u);
          }
        }

        [*&self->_canceled.__a_.__a_value setString:{@"[VCPVideoFramesCaptionTask] AX video captioning decoder model not found", 0}];
        v9 = 0;
        v2 = -18;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v23 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v23))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[VCPVideoFramesCaptionTask] VCPImageCaptionAnalyzer init fail", buf, 2u);
        }
      }

      [*&self->_canceled.__a_.__a_value setString:@"[VCPVideoFramesCaptionTask] VCPImageCaptionAnalyzer init fail"];
      v9 = 0;
      v2 = -18;
    }

    return v2;
  }

  [*&self->_canceled.__a_.__a_value setString:@"Video frames caption task cancelled"];
  return -128;
}

- (int)run
{
  atomic_store(1u, &self->_frameInterval.epoch + 5);
  main = [(VCPVideoFramesCaptionTask *)self main];
  if (main)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v4 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "VCPVideoFramesCaptionTask processing failed", v10, 2u);
      }
    }

    v5 = *&self->_canceled.__a_.__a_value;
    v11 = NSLocalizedDescriptionKey;
    v12 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    completionHandler = self->_completionHandler;
    v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:main userInfo:v6];
    completionHandler[2](completionHandler, 0, v8);
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }

  return main;
}

@end