@interface VCPCaptureAnalysisSession
+ (id)aggregateAnalysisForTypes:(unint64_t)a3 withFramesMeta:(id)a4 properties:(id)a5;
+ (id)analyzerForAnalysisTypes:(unint64_t)a3 withPreferredTransform:(CGAffineTransform *)a4 properties:(id)a5;
+ (id)analyzerForMediaAnalysis:(unint64_t)a3 withProperties:(id)a4 andResultsHandler:(id)a5;
- (BOOL)finalizeAnalysis;
- (BOOL)shouldCutAt:(id *)a3 stillPTS:(id *)a4 withCut:(BOOL)a5;
- (BOOL)updatePreferredTransform:(const CGAffineTransform *)a3 properties:(id)a4;
- (CGAffineTransform)flipTransform:(SEL)a3;
- (CGAffineTransform)transformForAngle:(SEL)a3 pixelBuffer:(int)a4;
- (NSDictionary)aggregatedResults;
- (VCPCaptureAnalysisSession)initWithAnalysisTypes:(unint64_t)a3 withPreferredTransform:(CGAffineTransform *)a4 withFocalLengthInPixels:(float)a5 withAnalysisQueue:(id)a6 withTurbo:(BOOL)a7;
- (VCPCaptureAnalysisSession)initWithAudioAnalysisTypes:(unint64_t)a3 properties:(id)a4 andResultsHandler:(id)a5;
- (double)rotateTransform:(uint64_t)a3 byAngle:(int)a4;
- (id)analyzePixelBuffer:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 properties:(id)a6 error:(id *)a7;
- (int)analyzeFrameWithTimeRange:(id *)a3 analysisData:(id)a4;
- (int)analyzePixelBuffer:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 properties:(id)a6 completion:(id)a7;
- (int)analyzeSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (int)prewarmWithProperties:(id)a3;
- (void)dealloc;
@end

@implementation VCPCaptureAnalysisSession

- (VCPCaptureAnalysisSession)initWithAnalysisTypes:(unint64_t)a3 withPreferredTransform:(CGAffineTransform *)a4 withFocalLengthInPixels:(float)a5 withAnalysisQueue:(id)a6 withTurbo:(BOOL)a7
{
  v7 = a7;
  v13 = a6;
  v63.receiver = self;
  v63.super_class = VCPCaptureAnalysisSession;
  v14 = [(VCPCaptureAnalysisSession *)&v63 init];
  v15 = v14;
  v16 = v14;
  if (!v14 || (v14->_analysisTypes = a3, v14->_focalLengthInPixels = a5, objc_storeStrong(&v14->_analysisQueue, a6), v16->_preWarmed = 0, a3 != 4) && v16->_analysisQueue)
  {
    v17 = 0;
    goto LABEL_5;
  }

  v20 = [MEMORY[0x1E695DF90] dictionary];
  aggregatedResults = v16->_aggregatedResults;
  v16->_aggregatedResults = v20;

  if ((a3 & 0x20) == 0 || (v22 = [VCPVideoFullFaceDetector alloc], v23 = *&a4->c, v60 = *&a4->a, v61 = v23, v62 = *&a4->tx, v24 = [(VCPVideoFullFaceDetector *)v22 initWithTransform:&v60], faceDetector = v16->_faceDetector, v16->_faceDetector = v24, faceDetector, (v17 = v16->_faceDetector) != 0) && (v26 = objc_alloc_init(VCPFrameAnalysisStats), frameStats = v16->_frameStats, v16->_frameStats = v26, frameStats, (v17 = v16->_frameStats) != 0))
  {
    if ((a3 & 0x200) == 0 || (v28 = [[VCPImageBlurAnalyzer alloc] initWithFaceResults:0 sdof:0], blurAnalyzer = v16->_blurAnalyzer, v16->_blurAnalyzer = v28, blurAnalyzer, (v17 = v16->_blurAnalyzer) != 0))
    {
      analysisTypes = v16->_analysisTypes;
      if ((analysisTypes & 0x802) != 0)
      {
        v31 = [VCPVideoFaceMeshAnalyzer alloc];
        *&v32 = v16->_focalLengthInPixels;
        v33 = [(VCPVideoFaceMeshAnalyzer *)v31 initWithFocalLengthInPixels:0 offline:1 isFastMode:v32];
        meshAnalyzer = v16->_meshAnalyzer;
        v16->_meshAnalyzer = v33;

        v17 = v16->_meshAnalyzer;
        if (!v17)
        {
          goto LABEL_5;
        }
      }

      else if (analysisTypes)
      {
        v35 = [VCPVideoFacePoseAnalyzer alloc];
        *&v36 = v16->_focalLengthInPixels;
        v37 = [(VCPVideoFacePoseAnalyzer *)v35 initWithFocalLengthInPixels:v36];
        poseAnalyzer = v16->_poseAnalyzer;
        v16->_poseAnalyzer = v37;

        v17 = v16->_poseAnalyzer;
        if (!v17)
        {
          goto LABEL_5;
        }
      }

      v39 = v16->_analysisTypes;
      if ((v39 & 0x2198) != 0)
      {
        v40 = [VCPFullVideoAnalyzer alloc];
        v41 = *(MEMORY[0x1E695EFD0] + 16);
        v60 = *MEMORY[0x1E695EFD0];
        v61 = v41;
        v62 = *(MEMORY[0x1E695EFD0] + 32);
        v42 = [(VCPFullVideoAnalyzer *)v40 initWithTransform:&v60];
        videoAnalysis = v16->_videoAnalysis;
        v16->_videoAnalysis = v42;

        v17 = v16->_videoAnalysis;
        if (!v17)
        {
          goto LABEL_5;
        }
      }

      else if ((v39 & 4) != 0)
      {
        v46 = [[VCPLightMotionAnalyzer alloc] initWithQueue:v15->_analysisQueue turbo:v7];
        lightMotionAnalyzer = v16->_lightMotionAnalyzer;
        v16->_lightMotionAnalyzer = v46;

        v17 = v16->_lightMotionAnalyzer;
        if (!v17)
        {
          goto LABEL_5;
        }
      }

      else if ((v39 & 0x4000) != 0)
      {
        v44 = objc_alloc_init(VCPHomeKitMotionAnalyzer);
        homeKitMotionAnalyzer = v16->_homeKitMotionAnalyzer;
        v16->_homeKitMotionAnalyzer = v44;

        v17 = v16->_homeKitMotionAnalyzer;
        if (!v17)
        {
          goto LABEL_5;
        }
      }

      if ((a3 & 0x400) != 0)
      {
        v48 = objc_alloc_init(VCPSceneChangeAnalyzer);
        sceneChangeAnalyzer = v16->_sceneChangeAnalyzer;
        v16->_sceneChangeAnalyzer = v48;
      }

      if ((a3 & 0x1000) != 0)
      {
        v50 = objc_alloc_init(VCPTrimAnalyzer);
        trimAnalyzer = v16->_trimAnalyzer;
        v16->_trimAnalyzer = v50;
      }

      if ((a3 & 0x10000) != 0)
      {
        v52 = [[VCPImagePetsAnalyzer alloc] initWithMaxNumRegions:5];
        petsDetAnalyzer = v16->_petsDetAnalyzer;
        v16->_petsDetAnalyzer = v52;
      }

      v54 = *&a4->a;
      v55 = *&a4->tx;
      *&v16->_preferredTransform.c = *&a4->c;
      *&v16->_preferredTransform.tx = v55;
      *&v16->_preferredTransform.a = v54;
      v16->_rotationAngleForFacePose = 0;
      v16->_rotator = 0;
      v16->_rotatorForFacePose = 0;
      v56 = *&a4->c;
      v60 = *&a4->a;
      v61 = v56;
      v62 = *&a4->tx;
      v57 = angleForTransform(&v60);
      v16->_preferredAngle = v57;
      v17 = v16;
      if (v57)
      {
        v58 = operator new(0x20uLL, MEMORY[0x1E69E5398]);
        v59 = v58;
        if (v58)
        {
          ma::Rotator::Rotator(v58, v57);
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v16->_rotator = v59;
      }
    }
  }

LABEL_5:
  v18 = v17;

  return v18;
}

- (int)prewarmWithProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_preWarmed)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 objectForKeyedSubscript:@"frameWidth"];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 intValue];
    }

    else
    {
      v9 = 0;
    }

    v10 = [v5 objectForKeyedSubscript:@"frameHeight"];
    v11 = v10;
    if (v10 && (v12 = [v10 intValue], v12) && v9)
    {
      lightMotionAnalyzer = self->_lightMotionAnalyzer;
      if (!lightMotionAnalyzer || (v6 = [(VCPLightMotionAnalyzer *)lightMotionAnalyzer prewarmWithWidth:v9 height:v12]) == 0)
      {
        v6 = 0;
        self->_preWarmed = 1;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPCaptureAnalysis - missing resolution properties for prewarming", v15, 2u);
      }

      v6 = 0;
    }
  }

  return v6;
}

+ (id)analyzerForAnalysisTypes:(unint64_t)a3 withPreferredTransform:(CGAffineTransform *)a4 properties:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKeyedSubscript:@"focalLengthInPixels"];
    v11 = v10;
    if (v10)
    {
      [v10 floatValue];
      v13 = fmaxf(v12, 1.0);
    }

    else
    {
      v13 = 1000.0;
    }

    v15 = [v9 objectForKeyedSubscript:@"dispatchQueue"];
    v16 = [v9 objectForKeyedSubscript:@"turboMode"];
    v17 = v16;
    if (v16)
    {
      v14 = [v16 BOOLValue];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v13 = 1000.0;
  }

  v18 = [a1 alloc];
  v19 = *&a4->c;
  v22[0] = *&a4->a;
  v22[1] = v19;
  v23 = *&a4->tx;
  v20 = [v18 initWithAnalysisTypes:a3 withPreferredTransform:v22 withFocalLengthInPixels:v15 withAnalysisQueue:v14 withTurbo:{COERCE_DOUBLE(__PAIR64__(DWORD1(v23), LODWORD(v13)))}];

  return v20;
}

+ (id)analyzerForMediaAnalysis:(unint64_t)a3 withProperties:(id)a4 andResultsHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [[a1 alloc] initWithAudioAnalysisTypes:a3 properties:v8 andResultsHandler:v9];

  return v10;
}

- (VCPCaptureAnalysisSession)initWithAudioAnalysisTypes:(unint64_t)a3 properties:(id)a4 andResultsHandler:(id)a5
{
  v5 = a3;
  v7 = a5;
  v16.receiver = self;
  v16.super_class = VCPCaptureAnalysisSession;
  v8 = [(VCPCaptureAnalysisSession *)&v16 init];
  v9 = v8;
  if (v5 < 0 && v8)
  {
    v10 = [VCPAudioAnalyzer alloc];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __85__VCPCaptureAnalysisSession_initWithAudioAnalysisTypes_properties_andResultsHandler___block_invoke;
    v14[3] = &unk_1E8350A48;
    v15 = v7;
    v11 = [(VCPAudioAnalyzer *)v10 initWithAnalysisTypes:0x20000000000 forStreaming:0 andResultHandler:v14];
    audioAnalyzer = v9->_audioAnalyzer;
    v9->_audioAnalyzer = v11;
  }

  return v9;
}

void __85__VCPCaptureAnalysisSession_initWithAudioAnalysisTypes_properties_andResultsHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = _Block_copy(*(a1 + 32));
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    [v4 addEntriesFromDictionary:v11];
    v5 = [v11 objectForKeyedSubscript:@"attributes"];

    if (v5)
    {
      v6 = [v11 objectForKeyedSubscript:@"attributes"];
      [v4 setObject:v6 forKeyedSubscript:@"SoundClassificationResult"];
    }

    v7 = [v11 objectForKeyedSubscript:@"start"];

    if (v7)
    {
      v8 = [v11 objectForKeyedSubscript:@"start"];
      [v4 setObject:v8 forKeyedSubscript:@"start"];
    }

    v9 = [v11 objectForKeyedSubscript:@"duration"];

    if (v9)
    {
      v10 = [v11 objectForKeyedSubscript:@"duration"];
      [v4 setObject:v10 forKeyedSubscript:@"duration"];
    }

    v3[2](v3, v4);
  }
}

- (BOOL)updatePreferredTransform:(const CGAffineTransform *)a3 properties:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = *&a3->c;
    v14[0] = *&a3->a;
    v14[1] = v7;
    v14[2] = *&a3->tx;
    self->_preferredAngle = angleForTransform(v14);
  }

  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"focalLengthInPixels"];
    v9 = v8;
    if (v8)
    {
      [v8 floatValue];
      *&v10 = fmaxf(*&v10, 1.0);
      if (vabds_f32(*&v10, self->_focalLengthInPixels) > 1.0)
      {
        self->_focalLengthInPixels = *&v10;
        poseAnalyzer = self->_poseAnalyzer;
        if (!poseAnalyzer || [(VCPVideoFacePoseAnalyzer *)poseAnalyzer updateFocalLengthInPixels:?])
        {
          meshAnalyzer = self->_meshAnalyzer;
          if (meshAnalyzer)
          {
            *&v10 = self->_focalLengthInPixels;
            [(VCPVideoFaceMeshAnalyzer *)meshAnalyzer updateFocalLengthInPixels:v10];
          }
        }
      }
    }
  }

  return 1;
}

+ (id)aggregateAnalysisForTypes:(unint64_t)a3 withFramesMeta:(id)a4 properties:(id)a5
{
  v5 = a3;
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v5)
  {
    [VCPLightMotionAnalyzer autoLiveMotionScore:v6];
    v10 = @"aggSubjectMotionScore";
    v8 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    v11[0] = v8;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  rotator = self->_rotator;
  if (rotator)
  {
    ma::Rotator::~Rotator(rotator);
    MEMORY[0x1CCA95C50]();
  }

  rotatorForFacePose = self->_rotatorForFacePose;
  if (rotatorForFacePose)
  {
    ma::Rotator::~Rotator(rotatorForFacePose);
    MEMORY[0x1CCA95C50]();
  }

  v5.receiver = self;
  v5.super_class = VCPCaptureAnalysisSession;
  [(VCPCaptureAnalysisSession *)&v5 dealloc];
}

- (CGAffineTransform)flipTransform:(SEL)a3
{
  if (a4->tx != 0.0)
  {
    a4->tx = 1.0;
  }

  if (a4->ty != 0.0)
  {
    a4->ty = 1.0;
  }

  v10 = v4;
  v11 = v5;
  v6 = *&a4->c;
  *&t1.a = *&a4->a;
  *&t1.c = v6;
  *&t1.tx = *&a4->tx;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.a = 1.0;
  *&v8.d = xmmword_1C9F60600;
  v8.ty = 1.0;
  return CGAffineTransformConcat(retstr, &t1, &v8);
}

- (CGAffineTransform)transformForAngle:(SEL)a3 pixelBuffer:(int)a4
{
  v6 = MEMORY[0x1E695EFD0];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v7;
  *&retstr->tx = *(v6 + 32);
  if (a5)
  {
    Width = CVPixelBufferGetWidth(a5);
    self = CVPixelBufferGetHeight(a5);
    switch(a4)
    {
      case 270:
        *&retstr->a = xmmword_1C9F60790;
        retstr->d = 0.0;
        retstr->tx = 0.0;
        retstr->c = 1.0;
        retstr->ty = Width;
        break;
      case 180:
        retstr->a = -1.0;
        retstr->b = 0.0;
        retstr->c = 0.0;
        retstr->d = -1.0;
        retstr->tx = Width;
        retstr->ty = self;
        break;
      case 90:
        *&retstr->a = xmmword_1C9F61010;
        *&retstr->c = xmmword_1C9F60600;
        retstr->tx = self;
        retstr->ty = 0.0;
        break;
    }
  }

  return self;
}

- (double)rotateTransform:(uint64_t)a3 byAngle:(int)a4
{
  switch(a4)
  {
    case 270:
      *&v4 = -a1.f32[1];
      HIDWORD(v4) = a1.i32[0];
      a1.i64[0] = v4;
      break;
    case 180:
      a1.i64[0] = vnegq_f32(a1).u64[0];
      break;
    case 90:
      a1.i64[0] = __PAIR64__(-a1.f32[0], a1.u32[1]);
      break;
  }

  return *a1.i64;
}

- (id)analyzePixelBuffer:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 properties:(id)a6 error:(id *)a7
{
  v124[1] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = [MEMORY[0x1E695DF90] dictionary];
  [v11 removeObjectForKey:@"quality"];
  [v11 removeObjectForKey:@"subjectMotionScore"];
  [v11 removeObjectForKey:@"interestingnessScore"];
  [v11 removeObjectForKey:@"obstructionScore"];
  [v11 removeObjectForKey:@"trackingScore"];
  [v11 removeObjectForKey:@"petsDetection"];
  v121 = 0;
  v122 = 0;
  v114 = [MEMORY[0x1E695DF90] dictionary];
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  v120 = 0;
  if (!a3)
  {
    v28 = 0;
    v17 = 0;
    v16 = 0;
    v29 = 0;
    v30 = -50;
    goto LABEL_57;
  }

  if (!v10)
  {
    v110 = 0;
    v17 = 0;
    v16 = 0;
    goto LABEL_20;
  }

  v16 = [v10 objectForKeyedSubscript:@"faceBounds"];
  v17 = [v10 objectForKeyedSubscript:@"faceRollAngles"];
  if ([v16 count])
  {
    v18 = [v16 objectAtIndexedSubscript:0];
    v126 = NSRectFromString(v18);
    x = v126.origin.x;
    y = v126.origin.y;
    width = v126.size.width;
    height = v126.size.height;
  }

  v127.origin.x = x;
  v127.origin.y = y;
  v127.size.width = width;
  v127.size.height = height;
  if (CGRectIsEmpty(v127) || ![v17 count])
  {
    v110 = 0;
  }

  else
  {
    v19 = [v17 objectAtIndexedSubscript:0];
    v20 = [v19 intValue];
    v21 = ((v20 + 45) % 90 - v20 + 315) % 360;

    rotationAngleForFacePose = self->_rotationAngleForFacePose;
    v23 = __OFSUB__(v21, rotationAngleForFacePose);
    v24 = v21 - rotationAngleForFacePose;
    if (v24 < 0 != v23)
    {
      v24 += 360;
    }

    v110 = v24;
    self->_rotationAngleForFacePose = v21;
    if (v21)
    {
      rotatorForFacePose = self->_rotatorForFacePose;
      if (rotatorForFacePose)
      {
        if (v21 == rotatorForFacePose->var3)
        {
          goto LABEL_17;
        }

        ma::Rotator::~Rotator(rotatorForFacePose);
        MEMORY[0x1CCA95C50]();
      }

      v26 = operator new(0x20uLL, MEMORY[0x1E69E5398]);
      if (!v26)
      {
        v28 = 0;
        v29 = 0;
        self->_rotatorForFacePose = 0;
        v30 = -108;
        goto LABEL_57;
      }

      v27 = v26;
      ma::Rotator::Rotator(v26, self->_rotationAngleForFacePose);
      self->_rotatorForFacePose = v27;
    }
  }

LABEL_17:
  v31 = [v10 objectForKeyedSubscript:@"objects"];
  if (v31)
  {
    v29 = v31;
    [v114 setObject:? forKeyedSubscript:?];
    goto LABEL_21;
  }

LABEL_20:
  v29 = 0;
LABEL_21:
  rotator = self->_rotator;
  if (rotator)
  {
    v30 = ma::Rotator::Rotate(rotator, a3, &v122);
    if (v30)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v122 = CFRetain(a3);
  }

  if (!self->_rotationAngleForFacePose)
  {
    v35 = CFRetain(a3);
    goto LABEL_31;
  }

  v33 = self->_rotatorForFacePose;
  if (!v33)
  {
    v28 = 0;
    goto LABEL_49;
  }

  v34 = self->_rotator;
  if (v34 && v33->var3 == v34->var3)
  {
    v35 = CFRetain(v122);
LABEL_31:
    v121 = v35;
    goto LABEL_32;
  }

  v30 = ma::Rotator::Rotate(v33, a3, &v121);
  if (v30)
  {
    goto LABEL_56;
  }

LABEL_32:
  videoAnalysis = self->_videoAnalysis;
  if (!videoAnalysis)
  {
    lightMotionAnalyzer = self->_lightMotionAnalyzer;
    if (!lightMotionAnalyzer)
    {
      goto LABEL_54;
    }

    *&v117.a = *&a4->var0;
    *&v117.c = a4->var3;
    v115 = *&a5->var0;
    var3 = a5->var3;
    v30 = [(VCPLightMotionAnalyzer *)lightMotionAnalyzer analyzeFrame:v122 withTimestamp:&v117 andDuration:&v115 flags:&v120];
    if (!v30)
    {
      v57 = MEMORY[0x1E696AD98];
      [(VCPLightMotionAnalyzer *)self->_lightMotionAnalyzer actionScore];
      v58 = [v57 numberWithFloat:?];
      [v11 setObject:v58 forKeyedSubscript:@"subjectMotionScore"];

      v59 = MEMORY[0x1E696AD98];
      [(VCPLightMotionAnalyzer *)self->_lightMotionAnalyzer motionDivScore];
      v55 = [v59 numberWithFloat:?];
      [v11 setObject:v55 forKeyedSubscript:@"motionDivScore"];
      goto LABEL_53;
    }

LABEL_56:
    v28 = 0;
    goto LABEL_57;
  }

  *&v117.a = *&a4->var0;
  *&v117.c = a4->var3;
  v115 = *&a5->var0;
  var3 = a5->var3;
  v30 = [(VCPFullVideoAnalyzer *)videoAnalysis analyzeFrame:v122 timestamp:&v117 duration:&v115 properties:v114 frameStats:0 flags:&v120 cancel:&__block_literal_global_66];
  if (v30)
  {
    goto LABEL_56;
  }

  analysisTypes = self->_analysisTypes;
  if ((analysisTypes & 8) != 0)
  {
    v38 = MEMORY[0x1E696AD98];
    [(VCPFullVideoAnalyzer *)self->_videoAnalysis qualityScore];
    v39 = [v38 numberWithFloat:?];
    [v11 setObject:v39 forKeyedSubscript:@"quality"];

    analysisTypes = self->_analysisTypes;
  }

  if ((analysisTypes & 0x2004) != 0)
  {
    v40 = MEMORY[0x1E696AD98];
    [(VCPFullVideoAnalyzer *)self->_videoAnalysis actionScore];
    v41 = [v40 numberWithFloat:?];
    [v11 setObject:v41 forKeyedSubscript:@"subjectMotionScore"];

    v42 = [(VCPFullVideoAnalyzer *)self->_videoAnalysis objectsMotion];
    if (v42)
    {
      v43 = [(VCPFullVideoAnalyzer *)self->_videoAnalysis globalMotion];
      v44 = v43 == 0;

      if (!v44)
      {
        v45 = [(VCPFullVideoAnalyzer *)self->_videoAnalysis objectsMotion];
        v46 = [v45 copy];
        [v11 setObject:v46 forKeyedSubscript:@"objectsMotion"];

        v47 = [(VCPFullVideoAnalyzer *)self->_videoAnalysis globalMotion];
        v48 = [v47 copy];
        [v11 setObject:v48 forKeyedSubscript:@"globalMotion"];
      }
    }
  }

  v49 = self->_analysisTypes;
  if ((v49 & 0x10) != 0)
  {
    v50 = MEMORY[0x1E696AD98];
    [(VCPFullVideoAnalyzer *)self->_videoAnalysis interestingnessScore];
    v51 = [v50 numberWithFloat:?];
    [v11 setObject:v51 forKeyedSubscript:@"interestingnessScore"];

    v49 = self->_analysisTypes;
  }

  if ((v49 & 0x80) != 0)
  {
    v52 = MEMORY[0x1E696AD98];
    [(VCPFullVideoAnalyzer *)self->_videoAnalysis obstructionScore];
    v53 = [v52 numberWithFloat:?];
    [v11 setObject:v53 forKeyedSubscript:@"obstructionScore"];

    v49 = self->_analysisTypes;
  }

  if ((v49 & 0x100) != 0)
  {
    v54 = MEMORY[0x1E696AD98];
    [(VCPFullVideoAnalyzer *)self->_videoAnalysis trackingScore];
    v55 = [v54 numberWithFloat:?];
    [v11 setObject:v55 forKeyedSubscript:@"trackingScore"];
LABEL_53:
  }

LABEL_54:
  faceDetector = self->_faceDetector;
  if (faceDetector)
  {
    *&v117.a = *&a4->var0;
    *&v117.c = a4->var3;
    v115 = *&a5->var0;
    var3 = a5->var3;
    v30 = [(VCPVideoFullFaceDetector *)faceDetector analyzeFrame:v122 timestamp:&v117 duration:&v115 frameStats:self->_frameStats flags:&v120];
    if (v30)
    {
      goto LABEL_56;
    }

    v64 = [(VCPVideoFullFaceDetector *)self->_faceDetector frameFaceResults];
    [v11 addEntriesFromDictionary:v64];
  }

  petsDetAnalyzer = self->_petsDetAnalyzer;
  if (petsDetAnalyzer)
  {
    v119 = 0;
    v30 = [(VCPImagePetsAnalyzer *)petsDetAnalyzer analyzePixelBuffer:v122 flags:&v120 results:&v119 cancel:&__block_literal_global_666];
    v66 = v119;
    v28 = v66;
    if (v30)
    {
      goto LABEL_57;
    }

    if ([v66 count])
    {
      [v11 setObject:v28 forKeyedSubscript:@"petsDetection"];
    }
  }

  else
  {
    v28 = 0;
  }

  blurAnalyzer = self->_blurAnalyzer;
  if (blurAnalyzer)
  {
    v118 = 0;
    v30 = [(VCPImageBlurAnalyzer *)blurAnalyzer analyzePixelBuffer:v122 flags:&v120 results:&v118 cancel:&__block_literal_global_668];
    v68 = v118;
    if (v30)
    {

      goto LABEL_57;
    }

    v107 = v68;
    v69 = [v68 objectForKeyedSubscript:?];
    v104 = [v69 count] == 0;

    if (!v104)
    {
      v105 = [v107 objectForKeyedSubscript:@"BlurResults"];
      v102 = [v105 objectAtIndexedSubscript:0];
      v70 = [v102 objectForKeyedSubscript:@"attributes"];
      v100 = [v70 objectForKeyedSubscript:@"sharpness"];

      [v11 setObject:v100 forKeyedSubscript:@"sharpnessScore"];
    }
  }

  if (self->_poseAnalyzer || self->_meshAnalyzer)
  {
    [(VCPCaptureAnalysisSession *)self transformForAngle:self->_rotationAngleForFacePose pixelBuffer:a3];
    [(VCPCaptureAnalysisSession *)self flipTransform:&v115];
    v128.origin.x = x;
    v128.origin.y = y;
    v128.size.width = width;
    v128.size.height = height;
    v129 = CGRectApplyAffineTransform(v128, &v117);
    x = v129.origin.x;
    y = v129.origin.y;
    width = v129.size.width;
    height = v129.size.height;
    v108 = (self->_preferredAngle - self->_rotationAngleForFacePose + 360) % 360;
    if (self->_poseAnalyzer && !CGRectIsEmpty(v129))
    {
      poseAnalyzer = self->_poseAnalyzer;
      *&v117.a = *&a4->var0;
      *&v117.c = a4->var3;
      v30 = [(VCPVideoFacePoseAnalyzer *)poseAnalyzer analyzeFrameForPose:v121 withFaceRect:&v117 withTimestamp:x, y, width, height];
      if (v30)
      {
        goto LABEL_57;
      }

      [(VCPVideoFacePoseAnalyzer *)self->_poseAnalyzer pose];
      [(VCPCaptureAnalysisSession *)self rotateTransform:v108 byAngle:?];
      v76 = [[VCPFaceAnchor alloc] initWithTransform:0 blendShapes:0 geometry:v72, v73, v74, v75];
      v77 = v76;
      if (!v76)
      {
        goto LABEL_49;
      }

      v124[0] = v76;
      v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:1];
      [v11 setObject:v78 forKeyedSubscript:@"faceAnchor"];
    }
  }

  else
  {
    v108 = 0;
  }

  meshAnalyzer = self->_meshAnalyzer;
  if (meshAnalyzer)
  {
    *&v117.a = *&a4->var0;
    *&v117.c = a4->var3;
    v30 = [(VCPVideoFaceMeshAnalyzer *)meshAnalyzer analyzeFrame:v121 withFaceRect:v110 withRotation:&v117 withTimestamp:x, y, width, height];
    if (v30)
    {
      goto LABEL_57;
    }

    if ([(VCPVideoFaceMeshAnalyzer *)self->_meshAnalyzer isTracked])
    {
      v80 = [[VCPFaceGeometry alloc] initWithVertices:[(VCPVideoFaceMeshAnalyzer *)self->_meshAnalyzer vertices] vertexCount:[(VCPVideoFaceMeshAnalyzer *)self->_meshAnalyzer vertexCount]];
      if (v80)
      {
        v111 = v80;
        [(VCPVideoFaceMeshAnalyzer *)self->_meshAnalyzer pose];
        [(VCPCaptureAnalysisSession *)self rotateTransform:v108 byAngle:?];
        v106 = v82;
        v109 = v81;
        v101 = v84;
        v103 = v83;
        v85 = [VCPFaceAnchor alloc];
        v86 = [(VCPVideoFaceMeshAnalyzer *)self->_meshAnalyzer blendShapes];
        v87 = [(VCPFaceAnchor *)v85 initWithTransform:v86 blendShapes:v111 geometry:v109, v106, v103, v101];

        if (v87)
        {
          v123 = v87;
          v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:1];
          [v11 setObject:v88 forKeyedSubscript:@"faceAnchor"];

          goto LABEL_97;
        }
      }

LABEL_49:
      v30 = -18;
      goto LABEL_57;
    }
  }

LABEL_97:
  sceneChangeAnalyzer = self->_sceneChangeAnalyzer;
  if (sceneChangeAnalyzer)
  {
    *&v117.a = *&a4->var0;
    *&v117.c = a4->var3;
    v115 = *&a5->var0;
    var3 = a5->var3;
    v30 = [(VCPSceneChangeAnalyzer *)sceneChangeAnalyzer analyzeFrame:v122 withTimestamp:&v117 andDuration:&v115 flags:&v120];
    if (v30)
    {
      goto LABEL_57;
    }

    v90 = [MEMORY[0x1E696AD98] numberWithBool:{-[VCPSceneChangeAnalyzer isSegmentPoint](self->_sceneChangeAnalyzer, "isSegmentPoint")}];
    [v11 setObject:v90 forKeyedSubscript:@"sceneChangeScore"];
  }

  homeKitMotionAnalyzer = self->_homeKitMotionAnalyzer;
  if (homeKitMotionAnalyzer)
  {
    *&v117.a = *&a4->var0;
    *&v117.c = a4->var3;
    v115 = *&a5->var0;
    var3 = a5->var3;
    v30 = [(VCPHomeKitMotionAnalyzer *)homeKitMotionAnalyzer analyzeFrame:v122 withTimestamp:&v117 andDuration:&v115 flags:&v120];
    if (v30)
    {
      goto LABEL_57;
    }

    v92 = MEMORY[0x1E696AD98];
    [(VCPHomeKitMotionAnalyzer *)self->_homeKitMotionAnalyzer actionScore];
    v93 = [v92 numberWithFloat:?];
    [v11 setObject:v93 forKeyedSubscript:@"subjectMotionScore"];

    v94 = [(VCPHomeKitMotionAnalyzer *)self->_homeKitMotionAnalyzer regionsOfInterest];
    v95 = [v94 count] == 0;

    if (!v95)
    {
      v96 = MEMORY[0x1E695DEC8];
      v97 = [(VCPHomeKitMotionAnalyzer *)self->_homeKitMotionAnalyzer regionsOfInterest];
      v98 = [v96 arrayWithArray:v97];
      [v11 setObject:v98 forKeyedSubscript:@"regionsOfInterest"];
    }
  }

  v99 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v120];
  [v11 setObject:v99 forKey:@"flags"];

  v30 = 0;
LABEL_57:
  if (v122)
  {
    CFRelease(v122);
  }

  if (v121)
  {
    CFRelease(v121);
  }

  if (a7 && v30)
  {
    *a7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCPCaptureAnalysis" code:v30 userInfo:0];
  }

  if (v30)
  {
    v61 = 0;
  }

  else
  {
    v61 = v11;
  }

  v62 = v61;

  return v62;
}

- (int)analyzePixelBuffer:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 properties:(id)a6 completion:(id)a7
{
  v11 = a7;
  v12 = v11;
  if (self->_analysisQueue && (lightMotionAnalyzer = self->_lightMotionAnalyzer) != 0)
  {
    v20 = *&a4->var0;
    var3 = a4->var3;
    v18 = *&a5->var0;
    v19 = a5->var3;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __96__VCPCaptureAnalysisSession_analyzePixelBuffer_withTimestamp_andDuration_properties_completion___block_invoke;
    v16[3] = &unk_1E8350A70;
    v17 = v11;
    [(VCPLightMotionAnalyzer *)lightMotionAnalyzer analyzeFrame:a3 withTimestamp:&v20 andDuration:&v18 completion:v16];

    v14 = 0;
  }

  else
  {
    v14 = -18;
  }

  return v14;
}

void __96__VCPCaptureAnalysisSession_analyzePixelBuffer_withTimestamp_andDuration_properties_completion___block_invoke(uint64_t a1, uint64_t a2, int a3, float a4, float a5)
{
  v16 = [MEMORY[0x1E695DF90] dictionary];
  *&v10 = a4;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  [v16 setObject:v11 forKeyedSubscript:@"subjectMotionScore"];

  *&v12 = a5;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  [v16 setObject:v13 forKeyedSubscript:@"motionDivScore"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
  [v16 setObject:v14 forKeyedSubscript:@"flags"];

  if (a3)
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:a3 userInfo:0];
  }

  else
  {
    v15 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (int)analyzeSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  result = -18;
  if (a3)
  {
    audioAnalyzer = self->_audioAnalyzer;
    if (audioAnalyzer)
    {
      if ([(VCPAudioAnalyzer *)audioAnalyzer analyzeSampleBuffer:?])
      {
        return -18;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (BOOL)finalizeAnalysis
{
  sceneChangeAnalyzer = self->_sceneChangeAnalyzer;
  if (sceneChangeAnalyzer)
  {
    v4 = *(MEMORY[0x1E6960C98] + 16);
    v8 = *MEMORY[0x1E6960C98];
    v9 = v4;
    v10 = *(MEMORY[0x1E6960C98] + 32);
    if ([(VCPVideoAnalyzer *)sceneChangeAnalyzer finishAnalysisPass:&v8])
    {
      return 0;
    }
  }

  faceDetector = self->_faceDetector;
  if (!faceDetector)
  {
    return 1;
  }

  v7 = *(MEMORY[0x1E6960CA8] + 16);
  v8 = *MEMORY[0x1E6960CA8];
  v9 = v7;
  v10 = *(MEMORY[0x1E6960CA8] + 32);
  return [(VCPVideoFullFaceDetector *)faceDetector finishAnalysisPass:&v8]== 0;
}

- (NSDictionary)aggregatedResults
{
  sceneChangeAnalyzer = self->_sceneChangeAnalyzer;
  if (sceneChangeAnalyzer)
  {
    aggregatedResults = self->_aggregatedResults;
    v5 = [(VCPSceneChangeAnalyzer *)sceneChangeAnalyzer results];
    [(NSMutableDictionary *)aggregatedResults addEntriesFromDictionary:v5];
  }

  faceDetector = self->_faceDetector;
  if (faceDetector)
  {
    v7 = self->_aggregatedResults;
    v8 = [(VCPVideoFaceDetector *)faceDetector results];
    [(NSMutableDictionary *)v7 addEntriesFromDictionary:v8];
  }

  v9 = self->_aggregatedResults;

  return v9;
}

- (int)analyzeFrameWithTimeRange:(id *)a3 analysisData:(id)a4
{
  v6 = a4;
  trimAnalyzer = self->_trimAnalyzer;
  if (trimAnalyzer)
  {
    v8 = *&a3->var0.var3;
    v11[0] = *&a3->var0.var0;
    v11[1] = v8;
    v11[2] = *&a3->var1.var1;
    v9 = [(VCPTrimAnalyzer *)trimAnalyzer analyzeFrameWithTimeRange:v11 analysisData:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldCutAt:(id *)a3 stillPTS:(id *)a4 withCut:(BOOL)a5
{
  trimAnalyzer = self->_trimAnalyzer;
  if (trimAnalyzer)
  {
    v7 = a5;
    LODWORD(trimAnalyzer) = [(VCPTrimAnalyzer *)trimAnalyzer isReady];
    if (trimAnalyzer)
    {
      v10 = self->_trimAnalyzer;
      v14 = *&a3->var0;
      var3 = a3->var3;
      v12 = *&a4->var0;
      v13 = a4->var3;
      LOBYTE(trimAnalyzer) = [(VCPTrimAnalyzer *)v10 shouldCutAt:&v14 stillPTS:&v12 withCut:v7];
    }
  }

  return trimAnalyzer;
}

@end