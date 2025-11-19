@interface VCPVideoCaptionAnalyzer
+ (id)sharedCVNLPCaptionDecoderWithOptions:(id)a3 identifier:(id)a4;
+ (id)sharedCaptionerWithConfig:(id)a3 identifier:(id)a4;
+ (int64_t)mode;
- (VCPVideoCaptionAnalyzer)initWithModelType:(int64_t)a3 frameNumber:(unint64_t)a4;
- (VCPVideoCaptionAnalyzer)initWithModelType:(int64_t)a3 frameRate:(float)a4 timeRange:(id *)a5;
- (id)results;
- (id)segmentCaptionResults;
- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6;
- (int)configInputBasedOnDevice;
- (int)configVideoCaptionModels;
- (int)copyImage:(__CVBuffer *)a3 withChannels:(int)a4;
- (int)copyMUBBImage:(__CVBuffer *)a3 withChannels:(int)a4;
- (int)finishAnalysisPass:(id *)a3;
- (int)generateCaptionWithEmbedding:(id)a3 startTime:(id *)a4 duration:(id *)a5;
- (int)inference:(id *)a3 duration:(id *)a4;
- (void)dealloc;
@end

@implementation VCPVideoCaptionAnalyzer

+ (int64_t)mode
{
  if (+[VCPVideoCaptionAnalyzer mode]::once != -1)
  {
    +[VCPVideoCaptionAnalyzer mode];
  }

  return +[VCPVideoCaptionAnalyzer mode]::mode;
}

void __31__VCPVideoCaptionAnalyzer_mode__block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  if (MGGetBoolAnswer())
  {
    +[VCPVideoCaptionAnalyzer mode]::mode = 1;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v0 = 134217984;
    v1 = +[VCPVideoCaptionAnalyzer mode]::mode;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VideoCaption] VideoCaptionMode set to %ld", &v0, 0xCu);
  }
}

- (VCPVideoCaptionAnalyzer)initWithModelType:(int64_t)a3 frameRate:(float)a4 timeRange:(id *)a5
{
  if (a4 <= 0.0)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v15.start.value) = 0;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "VideoCaptionAnalyzer: frameRate should be larger than 0";
    goto LABEL_10;
  }

  v9 = *&a5->var0.var3;
  *&v15.start.value = *&a5->var0.var0;
  *&v15.start.epoch = v9;
  *&v15.duration.timescale = *&a5->var1.var1;
  CMTimeRangeGetEnd(&time, &v15);
  if (CMTimeGetSeconds(&time) <= 0.0)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v15.start.value) = 0;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "VideoCaptionAnalyzer: timeRange should be larger than 0";
LABEL_10:
    _os_log_impl(&dword_1C9B70000, v12, OS_LOG_TYPE_ERROR, v13, &v15, 2u);
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v10 = *&a5->var0.var3;
  *&v15.start.value = *&a5->var0.var0;
  *&v15.start.epoch = v10;
  *&v15.duration.timescale = *&a5->var1.var1;
  CMTimeRangeGetEnd(&time, &v15);
  self = [(VCPVideoCaptionAnalyzer *)self initWithModelType:a3 frameNumber:vcvtmd_u64_f64(CMTimeGetSeconds(&time) * a4) + 1];
  v11 = self;
LABEL_12:

  return v11;
}

- (VCPVideoCaptionAnalyzer)initWithModelType:(int64_t)a3 frameNumber:(unint64_t)a4
{
  v43.receiver = self;
  v43.super_class = VCPVideoCaptionAnalyzer;
  v6 = [(VCPVideoCaptionAnalyzer *)&v43 init];
  v7 = v6;
  v8 = v6;
  if (!v6 || (v9 = MEMORY[0x1E6960C80], v10 = *(MEMORY[0x1E6960C80] + 16), *(v6 + 84) = *MEMORY[0x1E6960C80], *(v6 + 100) = v10, v11 = *(MEMORY[0x1E6960C70] + 16), *(v6 + 108) = *MEMORY[0x1E6960C70], *(v6 + 124) = v11, v12 = objc_alloc_init(MEMORY[0x1E695DF70]), v13 = *(v8 + 24), *(v8 + 24) = v12, v13, v14 = objc_alloc_init(MEMORY[0x1E695DF70]), v15 = *(v8 + 22), *(v8 + 22) = v14, v15, v16 = *(v8 + 21), *(v8 + 21) = &stru_1F496CB30, v16, *(v8 + 6) = 0, v17 = *(v8 + 7), *(v8 + 7) = 0, v17, v8[39] = 0, v18 = v7 + 132, v19 = *v9, *(v7 + 148) = *(v9 + 2), *(v7 + 132) = v19, v20 = *v9, *(v7 + 27) = *(v9 + 2), *(v7 + 200) = v20, *(v8 + 164) = 0, v21 = *(v8 + 29), *(v8 + 29) = 0, v21, v22 = *(v8 + 30), *(v8 + 30) = 0, v22, v23 = *(v8 + 2), *(v8 + 2) = 0, v23, *(v8 + 4) = a3, v24 = *(v8 + 5), *(v8 + 5) = 0, v24, [v8 configVideoCaptionModels]) || objc_msgSend(v8, "configInputBasedOnDevice"))
  {
    v25 = 0;
  }

  else
  {
    v28 = [[VCPTransforms alloc] initImageTransform:128 transformedImageWidth:v8[16] transformedImageHeight:v8[17]];
    v29 = *(v8 + 3);
    *(v8 + 3) = v28;

    v30 = v8[20];
    if (v30 >= a4)
    {
      if (a4)
      {
        v37 = 0;
        do
        {
          v38 = *(v8 + 24);
          v39 = [MEMORY[0x1E696AD98] numberWithInt:v37];
          [v38 addObject:v39];

          ++v37;
        }

        while (a4 != v37);
      }
    }

    else
    {
      v31 = v8[18];
      if (v31 >= 1)
      {
        v32 = 0;
        v33 = 0;
        v34 = (a4 - v30) / v31;
        do
        {
          v35 = *(v8 + 24);
          v36 = [MEMORY[0x1E696AD98] numberWithInt:v32 + v8[20]];
          [v35 addObject:v36];

          ++v33;
          v32 += v34;
        }

        while (v33 < v8[18]);
      }
    }

    v40 = *v18;
    time1.epoch = *(v18 + 2);
    *&time1.value = v40;
    v41 = MEMORY[0x1E6960CC0];
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v42 = *v41;
      *(v18 + 2) = *(v41 + 2);
      *v18 = v42;
    }

    v8[40] = 0;
    v25 = v8;
  }

  v26 = v25;

  return v26;
}

- (int)configVideoCaptionModels
{
  v2 = self;
  v29[2] = *MEMORY[0x1E69E9840];
  modelType = self->_modelType;
  if (modelType != 1)
  {
    if (modelType != 2)
    {
LABEL_45:
      LODWORD(v2) = 0;
      return v2;
    }

    v4 = [[VCPVideoTransformerBackbone alloc] initWithConfig:*&self->_enoughFrames];
    videoTransformerBackbone = v2->_videoTransformerBackbone;
    v2->_videoTransformerBackbone = v4;

    if (!v2->_videoTransformerBackbone)
    {
      goto LABEL_35;
    }

    if (+[VCPVideoTransformerBackbone revision]== 7)
    {
      v27 = 0;
      v6 = &v27;
      v7 = [MEMORY[0x1E6999188] CSUVideoCaptionerConfigurationForRevision:7 error:&v27];
    }

    else
    {
      if (+[VCPVideoTransformerBackbone revision](VCPVideoTransformerBackbone, "revision") != 6 && +[VCPVideoTransformerBackbone revision]!= 5)
      {
        v19 = 0;
        v20 = 0;
        goto LABEL_18;
      }

      v26 = 0;
      v6 = &v26;
      v7 = [MEMORY[0x1E6999188] CSUVideoCaptionerConfigurationForRevision:5 error:&v26];
    }

    v19 = v7;
    v20 = *v6;
LABEL_18:
    if ([objc_opt_class() greedySearchEnabled])
    {
      v21 = [v19 beamSearch];
      [v21 setBeamWidth:&unk_1F49BBDB8];
    }

    else
    {
      v21 = [v19 beamSearch];
      [v21 setBeamWidth:&unk_1F49BBDD0];
    }

    if (v19 && !v20)
    {
      v22 = [objc_opt_class() sharedCaptionerWithConfig:v19 identifier:@"CSUVideoCaptioner_MiCa"];
      captioner = v2->_captioner;
      v2->_captioner = v22;
    }

    if (v2->_captioner)
    {

      goto LABEL_45;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoCaption] init CSUVideoCaptioner fail", v25, 2u);
    }

LABEL_35:
    LODWORD(v2) = -108;
    return v2;
  }

  v8 = +[VCPMobileAssetManager sharedManager];
  v9 = [v8 retrieveAssetOnce:3 petWatchDog:0 cancelBlock:0];

  if (!v9)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoCaption] retrieve VCPMobileAsset_VideoCaptionDecoder_AX OTA model fail", v25, 2u);
    }

    goto LABEL_30;
  }

  v10 = *MEMORY[0x1E6991FB8];
  v28[0] = *MEMORY[0x1E6991FC0];
  v28[1] = v10;
  v29[0] = v9;
  v29[1] = @"CPU";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v12 = [objc_opt_class() sharedCVNLPCaptionDecoderWithOptions:v11 identifier:@"CVNLPVideoCaptionDecoder_AX"];
  epoch = v2->_timeEnd.epoch;
  v2->_timeEnd.epoch = v12;

  if (!v2->_timeEnd.epoch)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoCaption] init CVNLPVideoCaptioningModel fail", v25, 2u);
    }

LABEL_30:
    LODWORD(v2) = -18;
    return v2;
  }

  v14 = +[VCPMobileAssetManager sharedManager];
  v15 = [v14 retrieveAssetOnce:2 petWatchDog:0 cancelBlock:0];

  if (v15)
  {
    v16 = [[VCPVideoCaptionEncoder alloc] initWithModelPath:v15];
    backbone = v2->_backbone;
    v2->_backbone = v16;

    if (v2->_backbone)
    {
      v18 = 1;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v25 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoCaption] init VCPVideoCaptionEncoder fail", v25, 2u);
      }

      v18 = 0;
      LODWORD(v2) = -108;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoCaption] retrieve VCPMobileAsset_VideoCaptionEncoder_AX OTA model fail", v25, 2u);
    }

    v18 = 0;
    LODWORD(v2) = -18;
  }

  if (v18)
  {
    goto LABEL_45;
  }

  return v2;
}

- (int)configInputBasedOnDevice
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *&self->_enoughFrames;
  *&self->_enoughFrames = &stru_1F496CB30;

  if (DeviceGeqD5x() && self->_modelType == 2)
  {
    self->_inputNumFrames = 16;
    self->_inputWidth = 352;
    self->_inputHeight = 352;
    v4 = 80;
    v5 = &OBJC_IVAR___VCPVideoCaptionAnalyzer__mubbSampleScale;
    v6 = 1;
    v7 = 1;
  }

  else
  {
    if (DeviceGeqD5x())
    {
      self->_inputNumFrames = 16;
      v6 = 224;
      self->_inputWidth = 224;
      v4 = 68;
      v7 = 1;
    }

    else
    {
      self->_inputNumFrames = 10;
      v6 = 196;
      self->_inputWidth = 196;
      v4 = 68;
      v7 = 15;
    }

    v5 = &OBJC_IVAR___VCPVideoCaptionAnalyzer__skipNumFramesBothEnds;
  }

  *(&self->super.super.isa + v4) = v6;
  *(&self->super.super.isa + *v5) = v7;
  modelType = self->_modelType;
  if (modelType == 1)
  {
    inputData = self->_inputData;
    if (inputData)
    {
      MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
    }

    v13 = self->_inputHeight * self->_inputNumFrames * self->_inputWidth;
    if (v13 < 0)
    {
      v14 = -1;
    }

    else
    {
      v14 = 12 * v13;
    }

    v15 = operator new[](v14, MEMORY[0x1E69E5398]);
    if (!v15)
    {
      self->_inputData = 0;
      return -108;
    }

    v16 = v15;
    bzero(v15, v14);
    self->_inputData = v16;
    return 0;
  }

  if (modelType == 2)
  {
    videoTransformerBackbone = self->_videoTransformerBackbone;
    if (videoTransformerBackbone)
    {
      if ([(VCPVideoTransformerBackbone *)videoTransformerBackbone inputTensorSize]== 3 * self->_inputNumFrames * self->_inputHeight * self->_inputWidth / self->_mubbSampleScale)
      {
        v10 = [[VCPEspressoV2Data alloc] initWithTensorType:[(VCPVideoTransformerBackbone *)self->_videoTransformerBackbone inputTensorType] size:[(VCPVideoTransformerBackbone *)self->_videoTransformerBackbone inputTensorSize]];
        inputDataMUB = self->_inputDataMUB;
        self->_inputDataMUB = v10;
      }
    }

    if (!self->_inputDataMUB)
    {
      return -108;
    }

    return 0;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = self->_modelType;
    v19 = 134217984;
    v20 = v18;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoCaption] Unsupported MADVideoCaptionModelType: %lu", &v19, 0xCu);
  }

  return -18;
}

- (void)dealloc
{
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
  }

  v4.receiver = self;
  v4.super_class = VCPVideoCaptionAnalyzer;
  [(VCPVideoCaptionAnalyzer *)&v4 dealloc];
}

+ (id)sharedCaptionerWithConfig:(id)a3 identifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = +[VCPSharedInstanceManager sharedManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__VCPVideoCaptionAnalyzer_sharedCaptionerWithConfig_identifier___block_invoke;
    v11[3] = &unk_1E834D6E0;
    v12 = v7;
    v13 = v5;
    v9 = [v8 sharedInstanceWithIdentifier:v12 andCreationBlock:v11];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoCaption] Initiating captioner with nil config or identifier", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

id __64__VCPVideoCaptionAnalyzer_sharedCaptionerWithConfig_identifier___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    *buf = 138412546;
    v12 = v2;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VideoCaption] Initiating captioner:%@ with config:%@", buf, 0x16u);
  }

  v4 = objc_alloc(MEMORY[0x1E6999180]);
  v5 = *(a1 + 40);
  v10 = 0;
  v6 = [v4 initWithConfiguration:v5 error:&v10];
  v7 = v10;
  if ((v7 || !v6) && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [v7 description];
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoCaption] CSUVideoCaptioner init fail: %@", buf, 0xCu);
  }

  return v6;
}

+ (id)sharedCVNLPCaptionDecoderWithOptions:(id)a3 identifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = +[VCPSharedInstanceManager sharedManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__VCPVideoCaptionAnalyzer_sharedCVNLPCaptionDecoderWithOptions_identifier___block_invoke;
    v11[3] = &unk_1E834D708;
    v12 = v5;
    v9 = [v8 sharedInstanceWithIdentifier:v7 andCreationBlock:v11];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoCaption] Initiating CVNLPVideoCaptioningModel with nil options or identifier", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

id __75__VCPVideoCaptionAnalyzer_sharedCVNLPCaptionDecoderWithOptions_identifier___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VideoCaption] Initiating CVNLPVideoCaptioningModel", buf, 2u);
  }

  v2 = objc_alloc(MEMORY[0x1E6992030]);
  v3 = *(a1 + 32);
  v8 = 0;
  v4 = [v2 initWithOptions:v3 error:&v8];
  v5 = v8;
  if ((v5 || !v4) && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [v5 description];
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoCaption] CVNLPVideoCaptioningModel init fail: %@", buf, 0xCu);
  }

  return v4;
}

- (int)copyImage:(__CVBuffer *)a3 withChannels:(int)a4
{
  if (a4 != 3)
  {
    return -50;
  }

  frameIndex = self->_frameIndex;
  inputNumFrames = self->_inputNumFrames;
  if (CVPixelBufferGetPixelFormatType(a3) != 1111970369)
  {
    return -50;
  }

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  pixelBuffer = a3;
  unlockFlags = 1;
  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return -50;
  }

  v10 = Height;
  v11 = CVPixelBufferLockBaseAddress(a3, 1uLL);
  v31 = v11;
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    if (v10 >= 1)
    {
      v17 = 0;
      inputWidth = self->_inputWidth;
      inputHeight = self->_inputHeight;
      v20 = inputWidth * inputHeight;
      v21 = 3 * frameIndex % inputNumFrames * inputHeight * inputWidth;
      inputData = self->_inputData;
      v23 = &inputData[2 * v20 + v21];
      v24 = &inputData[v21 + v20];
      v25 = &inputData[v21];
      v26 = 4 * Width;
      do
      {
        if (Width >= 1)
        {
          v27 = 0;
          v28 = Width & 0x7FFFFFFF;
          do
          {
            LOBYTE(v16) = BaseAddress[(v27 * 4) + 2];
            *&v29 = ((LODWORD(v16) / 255.0) + -0.5) + ((LODWORD(v16) / 255.0) + -0.5);
            v25[v27] = *&v29;
            LOBYTE(v29) = BaseAddress[(v27 * 4) + 1];
            *&v30 = ((v29 / 255.0) + -0.5) + ((v29 / 255.0) + -0.5);
            v24[v27] = *&v30;
            LOBYTE(v30) = BaseAddress[(v27 * 4)];
            v16 = ((v30 / 255.0) + -0.5) + ((v30 / 255.0) + -0.5);
            v23[v27++] = v16;
            --v28;
          }

          while (v28);
        }

        BaseAddress += BytesPerRow;
        ++v17;
        v23 = (v23 + v26);
        v24 = (v24 + v26);
        v25 = (v25 + v26);
      }

      while (v17 != v10);
    }

    v12 = CVPixelBufferLock::Unlock(&v31);
    if (pixelBuffer && !v31 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }
  }

  return v12;
}

- (int)copyMUBBImage:(__CVBuffer *)a3 withChannels:(int)a4
{
  if (a4 != 3 || CVPixelBufferGetPixelFormatType(a3) != 1111970369)
  {
    return -50;
  }

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  pixelBuffer = a3;
  unlockFlags = 1;
  if (a3)
  {
    v7 = CVPixelBufferLockBaseAddress(a3, 1uLL);
    v29 = v7;
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
      }
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(a3);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
      v13 = self->_frameIndex % self->_inputNumFrames;
      mubbSampleScale = self->_mubbSampleScale;
      if (v13 % mubbSampleScale)
      {
        v8 = 0;
      }

      else
      {
        if (Height >= 1)
        {
          v25 = 0;
          v15 = 3 * Height * Width * (v13 / mubbSampleScale);
          v28 = v15;
          v26 = v15 + 2 * Height * Width;
          v27 = v15 + Height * Width;
          v22 = BytesPerRow;
          do
          {
            if (Width >= 1)
            {
              v16 = 0;
              v17 = 1;
              do
              {
                LOBYTE(v12) = BaseAddress[v17 + 1];
                v18 = BaseAddress[v17];
                LOBYTE(v4) = BaseAddress[v17 - 1];
                v19 = 11 * (v25 >> 5) + (v16 >> 5) + 121 * (v16 & 0x1F | (32 * (v25 & 0x1F)));
                *&v12 = ((LODWORD(v12) / 255.0) + -0.48145) / 0.26863;
                [(VCPEspressoV2Data *)self->_inputDataMUB setValueFP:v19 + v28 atIndex:v12, v22];
                *&v20 = ((v18 / 255.0) + -0.45783) / 0.2613;
                [(VCPEspressoV2Data *)self->_inputDataMUB setValueFP:v19 + v27 atIndex:v20];
                *&v21 = ((v4 / 255.0) + -0.40821) / 0.27578;
                [(VCPEspressoV2Data *)self->_inputDataMUB setValueFP:v19 + v26 atIndex:v21];
                ++v16;
                v17 += 4;
              }

              while ((Width & 0x7FFFFFFF) != v16);
            }

            BaseAddress += v22;
            ++v25;
          }

          while (v25 != Height);
        }

        v8 = CVPixelBufferLock::Unlock(&v29);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    v8 = -50;
    v29 = -50;
  }

  if (pixelBuffer && !v29 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
  }

  return v8;
}

- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  videoSegmentCaptionResult = self->_videoSegmentCaptionResult;
  v16 = MEMORY[0x1E696AD98];
  ++HIDWORD(self->_timeStart.epoch);
  v17 = [v16 numberWithInt:?];
  LOBYTE(videoSegmentCaptionResult) = [(NSMutableArray *)videoSegmentCaptionResult containsObject:v17];

  if ((videoSegmentCaptionResult & 1) != 0 && (self->_validFrames & 1) == 0)
  {
    if ((self->_timeLastDetection.timescale & 1) == 0)
    {
      v20 = *&a4->var0;
      *&self->_timeLastDetection.flags = a4->var3;
      *(&self->_timeLastProcess.epoch + 4) = v20;
    }

    if (self->_modelType != 2 && DeviceGeqD5x())
    {
      v13 = 0.875;
      v11 = 0.0625;
      v12 = 0.0625;
      v14 = 0.875;
    }

    v21 = Width;
    v22 = Height;
    if ((Height * 1.2) >= Width)
    {
      if ((v21 * 1.2) < v22)
      {
        v12 = ((Height - Width) / (v22 + v22));
        v14 = (v21 / v22);
        v13 = 1.0;
        v11 = 0.0;
      }
    }

    else
    {
      v11 = ((Width - Height) / (v21 + v21));
      v13 = (v22 / v21);
      v14 = 1.0;
      v12 = 0.0;
    }

    v23 = [(VCPTransforms *)self->_transformImage cropAndScale:a3 regionCrop:v11, v12, v13, v14];
    if (!v23)
    {
      return -18;
    }

    v24 = v23;
    modelType = self->_modelType;
    if (modelType == 2)
    {
      v26 = [(VCPVideoCaptionAnalyzer *)self copyMUBBImage:v23 withChannels:3];
      if (v26)
      {
LABEL_18:
        v18 = v26;
LABEL_24:
        CFRelease(v24);
        return v18;
      }
    }

    else if (modelType == 1)
    {
      v26 = [(VCPVideoCaptionAnalyzer *)self copyImage:v23 withChannels:3];
      if (v26)
      {
        goto LABEL_18;
      }
    }

    v27 = self->_frameIndex + 1;
    self->_frameIndex = v27;
    if (v27 >= self->_inputNumFrames)
    {
      LOBYTE(self->_validFrames) = 1;
      var3 = a4->var3;
      *&self->_activeFrameIndices = *&a4->var0;
      *&self->_timeEnd.timescale = var3;
    }

    v18 = 0;
    v29 = a4->var3;
    *(&self->_skipNumFramesBothEnds + 1) = *&a4->var0;
    *&self->_timeLastProcess.flags = v29;
    goto LABEL_24;
  }

  return 0;
}

- (int)inference:(id *)a3 duration:(id *)a4
{
  v91 = *MEMORY[0x1E69E9840];
  modelType = self->_modelType;
  if (modelType != 1)
  {
    if (modelType == 2)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = VCPSignPostLog();
      v8 = os_signpost_id_generate(v7);

      v9 = VCPSignPostLog();
      v10 = v9;
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPVideoCaptionAnalyzer_backBoneInference_MiCa", "", buf, 2u);
      }

      v11 = [(VCPVideoTransformerBackbone *)self->_videoTransformerBackbone inference:self->_inputDataMUB];
      if (v11)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 4;
        goto LABEL_79;
      }

      v20 = VCPSignPostLog();
      v21 = v20;
      if (v8 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_INTERVAL_END, v8, "VCPVideoCaptionAnalyzer_backBoneInference_MiCa", "", buf, 2u);
      }

      v14 = [(VCPVideoTransformerBackbone *)self->_videoTransformerBackbone spatialEmbedding];
      if (!v14)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoCaption] Video embedding for caption generation is nil", buf, 2u);
        }

        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 1;
LABEL_79:
        objc_autoreleasePoolPop(v6);
        if ((v15 | 4) != 4)
        {
LABEL_80:
          v11 = -18;
          goto LABEL_81;
        }

        goto LABEL_81;
      }

      if ([objc_opt_class() writeSpatialEmbeddingToFile])
      {
        v22 = [MEMORY[0x1E696AC08] defaultManager];
        v23 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/tmp/com.apple.mediaanalysisd/" isDirectory:1];
        v24 = [v23 path];
        v25 = [v22 fileExistsAtPath:v24];

        if (v25)
        {
          v26 = 0;
        }

        else
        {
          v43 = [v23 path];
          v78 = 0;
          v44 = [v22 createDirectoryAtPath:v43 withIntermediateDirectories:1 attributes:0 error:&v78];
          v26 = v78;

          if ((v44 & 1) == 0)
          {
            v45 = [v26 localizedDescription];
            NSLog(&cfstr_VideocaptionFa.isa, v23, v45);
          }
        }

        v46 = [v23 URLByAppendingPathComponent:@"videoSpatialEmbedding.dat" isDirectory:0];

        v77 = v26;
        v47 = [v14 writeToURL:v46 options:1 error:&v77];
        v48 = v77;

        if (v47)
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v88 = v46;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VideoCaption] Video spatial embedding successfully saved to %@", buf, 0xCu);
          }
        }

        else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [v48 localizedDescription];
          v49 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412546;
          v88 = v46;
          v89 = 2112;
          v90 = v49;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoCaption] Failed to save video spatial embedding to %@ with error: %@", buf, 0x16u);
        }
      }

      v50 = VCPSignPostLog();
      v51 = os_signpost_id_generate(v50);

      v52 = VCPSignPostLog();
      v53 = v52;
      if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v53, OS_SIGNPOST_INTERVAL_BEGIN, v51, "VCPVideoCaptionAnalyzer_languageDecoderInference_MiCa", "", buf, 2u);
      }

      captioner = self->_captioner;
      v76 = 0;
      v55 = [(CSUVideoCaptioner *)captioner computeCaptionForVideoEmbedding:v14 error:&v76];
      v13 = v76;
      v56 = VCPSignPostLog();
      v57 = v56;
      if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v57, OS_SIGNPOST_INTERVAL_END, v51, "VCPVideoCaptionAnalyzer_languageDecoderInference_MiCa", "", buf, 2u);
      }

      if (v13 || !v55)
      {
        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_76;
        }

        *buf = 138412290;
        v88 = v13;
        v71 = MEMORY[0x1E69E9C10];
        v72 = "[VideoCaption] Error to compute caption with CSUVideoCaptioner: (%@)";
        v73 = 12;
      }

      else
      {
        v58 = [v55 results];
        v59 = [v58 count] == 0;

        if (!v59)
        {
          v60 = [v55 results];
          v61 = [v60 objectAtIndexedSubscript:0];
          v12 = [v61 caption];

          v62 = [v55 results];
          v63 = [v62 objectAtIndexedSubscript:0];
          [v63 score];
          v65 = v64;

          if (v12)
          {
            if (v65 != 0.0)
            {
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v88 = v12;
                v89 = 2048;
                v90 = v65;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VideoCaption] Computed CSU video caption: (%@), with score: %f", buf, 0x16u);
              }

              resConfig = self->_resConfig;
              v85 = @"attributes";
              v83[0] = @"videoCaptionText";
              v83[1] = @"videoCaptionConfidence";
              v84[0] = v12;
              *&v66 = v65;
              v68 = [MEMORY[0x1E696AD98] numberWithFloat:v66];
              v84[1] = v68;
              v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:2];
              v86 = v69;
              v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
              [(NSString *)resConfig addObject:v70];

              v15 = 0;
              goto LABEL_78;
            }

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoCaption] No caption confident score generated", buf, 2u);
            }

LABEL_77:
            v15 = 1;
LABEL_78:

            goto LABEL_79;
          }
        }

        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
LABEL_76:
          v12 = 0;
          goto LABEL_77;
        }

        *buf = 0;
        v71 = MEMORY[0x1E69E9C10];
        v72 = "[VideoCaption] No caption text generated";
        v73 = 2;
      }

      _os_log_impl(&dword_1C9B70000, v71, OS_LOG_TYPE_ERROR, v72, buf, v73);
      goto LABEL_76;
    }

    v12 = 0;
    v13 = 0;
    v11 = 0;
LABEL_14:
    v14 = 0;
    goto LABEL_81;
  }

  v16 = VCPSignPostLog();
  v17 = os_signpost_id_generate(v16);

  v18 = VCPSignPostLog();
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "VCPVideoCaptionAnalyzer_backBoneInference", "", buf, 2u);
  }

  v11 = [(VCPVideoCaptionEncoder *)self->_backbone inference:self->_inputData];
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v27 = VCPSignPostLog();
  v28 = v27;
  if (v17 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_END, v17, "VCPVideoCaptionAnalyzer_backBoneInference", "", buf, 2u);
  }

  v29 = [(VCPVideoCaptionEncoder *)self->_backbone embeddingHeight];
  v30 = [(VCPVideoCaptionEncoder *)self->_backbone embeddingWidth];
  v31 = [(VCPVideoCaptionEncoder *)self->_backbone embeddingChannels];
  v32 = [(VCPVideoCaptionEncoder *)self->_backbone embeddingSequenceLength];
  v14 = [MEMORY[0x1E695DEF0] dataWithBytes:-[VCPVideoCaptionEncoder videoEmbedding](self->_backbone length:{"videoEmbedding"), 4 * v30 * v29 * v31 * v32}];
  v33 = VCPSignPostLog();
  v34 = os_signpost_id_generate(v33);

  v35 = VCPSignPostLog();
  v36 = v35;
  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "VCPVideoCaptionAnalyzer_languageDecoderInference", "", buf, 2u);
  }

  epoch = self->_timeEnd.epoch;
  v75 = 0;
  v12 = [epoch generateCaption:v14 error:&v75];
  v13 = v75;
  v38 = VCPSignPostLog();
  v39 = v38;
  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v39, OS_SIGNPOST_INTERVAL_END, v34, "VCPVideoCaptionAnalyzer_languageDecoderInference", "", buf, 2u);
  }

  if (v13)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v88 = v13;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoCaption] Error to generate video caption with CVNLPVideoCaptioningModel (%@)", buf, 0xCu);
    }

    goto LABEL_80;
  }

  if (!v12)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoCaption] No AX caption text generated", buf, 2u);
    }

    v12 = 0;
    v13 = 0;
    goto LABEL_80;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v88 = v12;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VideoCaption] Computed AX video caption: (%@)", buf, 0xCu);
  }

  v40 = self->_resConfig;
  v80 = v12;
  v81 = @"attributes";
  v79 = @"videoCaptionText";
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
  v82 = v41;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
  [(NSString *)v40 addObject:v42];

  v13 = 0;
  v11 = 0;
LABEL_81:

  return v11;
}

- (int)generateCaptionWithEmbedding:(id)a3 startTime:(id *)a4 duration:(id *)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (v8)
  {
    if (!self->_videoCaptionResult)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      videoCaptionResult = self->_videoCaptionResult;
      self->_videoCaptionResult = v9;
    }

    if (self->_captioner || (self->_modelType = 2, (v16 = [(VCPVideoCaptionAnalyzer *)self configVideoCaptionModels]) == 0))
    {
      context = objc_autoreleasePoolPush();
      v34 = 0;
      v11 = [(CSUVideoCaptioner *)self->_captioner computeCaptionForVideoEmbedding:v8 error:&v34];
      v12 = v34;
      v13 = v12;
      if (v11)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        v17 = [v11 results];
        v18 = [v17 count] == 0;

        if (v18)
        {
          v16 = 0;
          v15 = 0;
        }

        else
        {
          v19 = [v11 results];
          v20 = [v19 objectAtIndexedSubscript:0];
          v15 = [v20 caption];

          v21 = [v11 results];
          v22 = [v21 objectAtIndexedSubscript:0];
          [v22 score];
          v24 = v23;

          v25 = self->_videoCaptionResult;
          v37[0] = @"start";
          buf = *a4;
          v32 = CMTimeCopyAsDictionary(&buf, 0);
          v38[0] = v32;
          v37[1] = @"duration";
          buf = *a5;
          v26 = CMTimeCopyAsDictionary(&buf, 0);
          v38[1] = v26;
          v37[2] = @"attributes";
          v35[0] = @"videoCaptionText";
          v35[1] = @"videoCaptionConfidence";
          v36[0] = v15;
          LODWORD(v27) = v24;
          v28 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
          v36[1] = v28;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
          v38[2] = v29;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];
          [(NSMutableArray *)v25 addObject:v30];

          v16 = 0;
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.var0) = 138412290;
          *(&buf.var0 + 4) = v13;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoCaption] Error to compute caption with CSUVideoCaptioner: (%@)", &buf, 0xCu);
        }

        v15 = 0;
        v16 = -18;
      }

      objc_autoreleasePoolPop(context);
    }

    else
    {
      v15 = 0;
      v13 = 0;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.var0) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoCaption] Video embedding for caption generation is nil", &buf, 2u);
    }

    v16 = -18;
  }

  return v16;
}

- (int)finishAnalysisPass:(id *)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ((self->_validFrames & 1) == 0 && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    frameIndex = self->_frameIndex;
    LODWORD(buf.value) = 67109120;
    HIDWORD(buf.value) = frameIndex;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VideoCaption] Valid number of input frame: %d, zero padding remnant frames", &buf, 8u);
  }

  v7 = *(&self->_timeLastDetection.epoch + 4);
  v8 = *&self->_timeStart.flags;
  buf = *&self->_activeFrameIndices;
  rhs = *(&self->_timeLastDetection.epoch + 4);
  CMTimeSubtract(&v6, &buf, &rhs);
  return [(VCPVideoCaptionAnalyzer *)self inference:&v7 duration:&v6];
}

- (id)results
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  resConfig = self->_resConfig;
  if (resConfig)
  {
    modelType = self->_modelType;
    if (modelType == 1)
    {
      v8 = @"VideoCaptionResults";
      v9 = resConfig;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      [v3 addEntriesFromDictionary:v6];
    }

    else
    {
      if (modelType != 2)
      {
        goto LABEL_7;
      }

      v10 = @"MiCaVideoCaptionResults";
      v11[0] = resConfig;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      [v3 addEntriesFromDictionary:v6];
    }
  }

LABEL_7:

  return v3;
}

- (id)segmentCaptionResults
{
  v7[1] = *MEMORY[0x1E69E9840];
  videoCaptionResult = self->_videoCaptionResult;
  if (videoCaptionResult)
  {
    videoCaptionResult = [videoCaptionResult count];
    if (videoCaptionResult)
    {
      v4 = self->_videoCaptionResult;
      v6 = @"VideoSegmentCaptionResults";
      v7[0] = v4;
      videoCaptionResult = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    }
  }

  return videoCaptionResult;
}

@end