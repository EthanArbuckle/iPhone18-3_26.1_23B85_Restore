@interface VCPVideoCNNAnalyzer
+ (BOOL)isMUBackboneEnabled;
+ (BOOL)isVideoSegmentCaptionEnabled;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)isAnalysisResultNeeded:(SEL)needed;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeStart;
- (VCPVideoCNNAnalyzer)initWithTimeOfInteret:(id)interet frameRate:(float)rate isLivePhoto:(BOOL)photo phFaces:(id)faces timeRange:(id *)range withEmbeddings:(id)embeddings requestedAnalyses:(unint64_t)analyses photoOffset:(float)self0;
- (id)privateResults;
- (id)results;
- (int)analyzeFrame:(__CVBuffer *)frame withTimestamp:(id *)timestamp andDuration:(id *)duration flags:(unint64_t *)flags;
- (int)configForAspectRatio:(float)ratio;
- (int)copyImage:(__CVBuffer *)image withChannels:(int)channels settling:(BOOL)settling;
- (int)copyMUBBImage:(__CVBuffer *)image withChannels:(int)channels;
- (int)finishAnalysisPass:(id *)pass;
- (int)loadAnalysisResults:(id)results audioResults:(id)audioResults;
- (int)loadAnalysisResultsFrom:(id)from actionAnalyzer:(id)analyzer atTime:(id *)time;
- (int)loadFullAnalysisResults:(id)results actionAnalysisResults:(id)analysisResults predictedTimeRange:(id *)range timestamp:(id *)timestamp;
- (int)runTasks:(id *)tasks duration:(id *)duration persons:(id)persons regionCrop:(CGRect)crop;
- (void)copyFrames;
- (void)dealloc;
@end

@implementation VCPVideoCNNAnalyzer

+ (BOOL)isMUBackboneEnabled
{
  {
    +[VCPVideoCNNAnalyzer isMUBackboneEnabled]::enable = MGGetBoolAnswer();
  }

  return +[VCPVideoCNNAnalyzer isMUBackboneEnabled]::enable;
}

+ (BOOL)isVideoSegmentCaptionEnabled
{
  if (+[VCPVideoCNNAnalyzer isVideoSegmentCaptionEnabled]::once != -1)
  {
    +[VCPVideoCNNAnalyzer isVideoSegmentCaptionEnabled];
  }

  return +[VCPVideoCNNAnalyzer isVideoSegmentCaptionEnabled]::enable;
}

void __51__VCPVideoCNNAnalyzer_isVideoSegmentCaptionEnabled__block_invoke()
{
  if (+[VCPVideoCaptionAnalyzer mode]== 1)
  {
    +[VCPVideoCNNAnalyzer isVideoSegmentCaptionEnabled]::enable = 1;
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *v0 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] enable VideoSegmentCaption", v0, 2u);
    }
  }
}

- (VCPVideoCNNAnalyzer)initWithTimeOfInteret:(id)interet frameRate:(float)rate isLivePhoto:(BOOL)photo phFaces:(id)faces timeRange:(id *)range withEmbeddings:(id)embeddings requestedAnalyses:(unint64_t)analyses photoOffset:(float)self0
{
  photoCopy = photo;
  interetCopy = interet;
  facesCopy = faces;
  embeddingsCopy = embeddings;
  v105.receiver = self;
  v105.super_class = VCPVideoCNNAnalyzer;
  v16 = [(VCPVideoCNNAnalyzer *)&v105 init];
  v17 = v16;
  v18 = v16;
  if (!v16)
  {
    goto LABEL_63;
  }

  v19 = MEMORY[0x1E6960C80];
  v20 = *(MEMORY[0x1E6960C80] + 16);
  *(v16 + 156) = *MEMORY[0x1E6960C80];
  *(v16 + 172) = v20;
  v21 = *(MEMORY[0x1E6960C70] + 16);
  *(v16 + 180) = *MEMORY[0x1E6960C70];
  *(v16 + 196) = v21;
  v22 = *(v16 + 31);
  *(v16 + 31) = &stru_1F496CB30;

  v18[34] = 224;
  v18[35] = 224;
  v18[36] = 352;
  v18[37] = 352;
  v18[38] = 1;
  v23 = [[VCPTransforms alloc] initImageTransform:128 transformedImageWidth:v18[36] transformedImageHeight:v18[37]];
  v24 = *(v18 + 4);
  *(v18 + 4) = v23;

  *(v18 + 13) = 0;
  *(v18 + 14) = 0;
  v25 = *(v18 + 15);
  *(v18 + 15) = 0;

  v26 = *(v18 + 16);
  *(v18 + 16) = 0;

  v27 = v17 + 204;
  v28 = *v19;
  *(v17 + 220) = *(v19 + 2);
  *(v17 + 204) = v28;
  v29 = *v19;
  *(v17 + 42) = *(v19 + 2);
  *(v17 + 20) = v29;
  *(v18 + 236) = 0;
  *(v18 + 237) = 0;
  *(v18 + 238) = 0;
  v30 = *(MEMORY[0x1E695F058] + 16);
  *(v17 + 18) = *MEMORY[0x1E695F058];
  *(v17 + 19) = v30;
  *(v18 + 344) = interetCopy != 0;
  v31 = [[VCPTransforms alloc] initImageTransform:128 transformedImageWidth:v18[34] transformedImageHeight:v18[35]];
  v32 = *(v18 + 3);
  *(v18 + 3) = v31;

  objc_storeStrong(v17 + 8, embeddings);
  v33 = *(v18 + 9);
  *(v18 + 9) = 0;

  *(v18 + 88) = offset;
  array = [MEMORY[0x1E695DF70] array];
  v35 = *(v18 + 5);
  *(v18 + 5) = array;

  array2 = [MEMORY[0x1E695DF70] array];
  v37 = (v17 + 48);
  v38 = *(v17 + 6);
  *(v17 + 6) = array2;

  array3 = [MEMORY[0x1E695DF70] array];
  v40 = (v17 + 56);
  v41 = *(v17 + 7);
  *(v17 + 7) = array3;

  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    v42 = objc_alloc_init(VCPEmbeddingSummarizationAnalyzer);
    v43 = *(v18 + 11);
    *(v18 + 11) = v42;
  }

  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled](VCPVideoCNNAnalyzer, "isMUBackboneEnabled") && +[VCPVideoCNNAnalyzer adaptiveSegmentType]== 1)
  {
    v44 = [VCPVideoEmbeddings alloc];
    v45 = [MEMORY[0x1E696AD98] numberWithInt:0];
    v46 = [(VCPVideoEmbeddings *)v44 initWithEmbeddingType:1 version:v45];
    v47 = *(v18 + 9);
    *(v18 + 9) = v46;

LABEL_9:
    v48 = objc_alloc_init(VCPAdaptiveSegmentAnalyzer);
    v49 = *(v18 + 10);
    *(v18 + 10) = v48;

    goto LABEL_10;
  }

  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled](VCPVideoCNNAnalyzer, "isMUBackboneEnabled") && +[VCPVideoCNNAnalyzer adaptiveSegmentType]== 2)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    v50 = +[VCPVideoCNNAnalyzer isVideoSegmentCaptionEnabled];
    if ((analyses & 0x200000000000) != 0 && v50 && !photoCopy)
    {
      v51 = objc_alloc_init(VCPVideoCaptionAnalyzer);
      v52 = *(v18 + 12);
      *(v18 + 12) = v51;
    }
  }

  if (interetCopy)
  {
    if (![facesCopy count] && MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf.start.value) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Human action - no PHFaces found", &buf, 2u);
    }

    [interetCopy floatValue];
    CMTimeMake(&buf.start, (((v53 + -1.0) + (-3.0 / rate)) * 1000.0), 1000);
    v54 = *&buf.start.value;
    *(v27 + 2) = buf.start.epoch;
    *v27 = v54;
  }

  v55 = v40;
  v56 = *&range->var0.var3;
  *&buf.start.value = *&range->var0.var0;
  *&buf.start.epoch = v56;
  *&buf.duration.timescale = *&range->var1.var1;
  CMTimeRangeGetEnd(&v103, &buf);
  buf.start = v103;
  v57 = *v27;
  rhs.epoch = *(v27 + 2);
  *&rhs.value = v57;
  CMTimeSubtract(&time, &buf.start, &rhs);
  v58 = vcvtmd_s64_f64(CMTimeGetSeconds(&time) * 8.0);
  v59 = MEMORY[0x1E6960CC0];
  if (v58 <= 16)
  {
    memset(&time, 0, sizeof(time));
    CMTimeMakeWithSeconds(&time, (((16 - v58) + 3.0) * 0.125), 1000);
    v60 = *v27;
    buf.start.epoch = *(v27 + 2);
    *&buf.start.value = v60;
    rhs = time;
    if (CMTimeCompare(&buf.start, &rhs) < 1)
    {
      v103 = *v59;
    }

    else
    {
      v61 = *v27;
      buf.start.epoch = *(v27 + 2);
      *&buf.start.value = v61;
      rhs = time;
      CMTimeSubtract(&v103, &buf.start, &rhs);
    }

    v62 = *&v103.value;
    *(v27 + 2) = v103.epoch;
    *v27 = v62;
  }

  v63 = *v27;
  buf.start.epoch = *(v27 + 2);
  *&buf.start.value = v63;
  rhs = *v59;
  if (CMTimeCompare(&buf.start, &rhs) < 0)
  {
    v64 = *&v59->value;
    *(v27 + 2) = v59->epoch;
    *v27 = v64;
  }

  v18[87] = 1040187392;
  v65 = *&range->var0.var3;
  *&buf.start.value = *&range->var0.var0;
  *&buf.start.epoch = v65;
  *&buf.duration.timescale = *&range->var1.var1;
  CMTimeRangeGetEnd(&v103, &buf);
  buf.start = v103;
  v66 = *v27;
  rhs.epoch = *(v27 + 2);
  *&rhs.value = v66;
  CMTimeSubtract(&time, &buf.start, &rhs);
  if (vcvtmd_s64_f64(CMTimeGetSeconds(&time) * 8.0) > 15)
  {
    if ((analyses & 0x40000000) != 0)
    {
      v71 = [[VCPVideoCNNActionClassifier alloc] initWithPHFaces:facesCopy];
      if (!v71 || (([*(v18 + 5) addObject:v71], *(v18 + 344) != 1) || objc_msgSend(objc_opt_class(), "forcePersonDetection")) && (v72 = objc_alloc_init(VCPVideoPersonDetector), v73 = *(v18 + 30), *(v18 + 30) = v72, v73, !*(v18 + 30)))
      {

        goto LABEL_65;
      }
    }
  }

  else
  {
    *&buf.start.value = *&range->var1.var0;
    buf.start.epoch = range->var1.var3;
    v67 = CMTimeGetSeconds(&buf.start) * rate;
    v68 = floorf(v67 * 0.0625);
    *(v18 + 87) = (v68 + -1.0) / rate;
    v69 = ((floorf(v67 + (v68 * -16.0)) * 0.5) + -3.0) / rate;
    if (v69 < 0.0)
    {
      v69 = 0.0;
    }

    CMTimeMakeWithSeconds(&buf.start, v69, 600);
    v70 = *&buf.start.value;
    *(v27 + 2) = buf.start.epoch;
    *v27 = v70;
  }

  if ((analyses & 0x200000000) != 0 && !photoCopy)
  {
    v74 = objc_alloc_init(VCPVideoCNNQuality);
    v75 = *(v18 + 34);
    *(v18 + 34) = v74;

    if (!*(v18 + 34))
    {
      goto LABEL_65;
    }

    [*(v18 + 5) addObject:?];
    v76 = objc_alloc_init(VCPVideoCNNCameraMotion);
    v77 = *(v18 + 33);
    *(v18 + 33) = v76;

    if (!*(v18 + 33))
    {
      goto LABEL_65;
    }

    [*(v18 + 5) addObject:?];
  }

  if ((analyses & 0x40000) != 0)
  {
    if (photoCopy)
    {
      v78 = objc_alloc_init(VCPVideoCNNAutoplay);
      v79 = *(v18 + 32);
      *(v18 + 32) = v78;

      if (!*(v18 + 32))
      {
        goto LABEL_65;
      }

      v55 = v37;
      goto LABEL_47;
    }

    if (+[VCPVideoCNNAnalyzer isMLHighlightEnabled])
    {
      v80 = objc_alloc_init(VCPVideoCNNHighlight);
      v81 = *(v18 + 35);
      *(v18 + 35) = v80;

      if (!*(v18 + 35))
      {
        goto LABEL_65;
      }

      [*v40 addObject:?];
      if (!*(v18 + 34))
      {
        v95 = objc_alloc_init(VCPVideoCNNQuality);
        v96 = *(v18 + 34);
        *(v18 + 34) = v95;

        if (!*(v18 + 34))
        {
          goto LABEL_65;
        }

LABEL_47:
        [*v55 addObject:?];
      }
    }
  }

  v82 = !+[VCPVideoCNNAnalyzer isMUBackboneEnabled];
  if ((analyses & 0x80000000000) == 0)
  {
    LOBYTE(v82) = 1;
  }

  if (v82)
  {
LABEL_62:
    v18[57] = 0;
    LODWORD(v83) = 1.0;
    if (![v18 configForAspectRatio:v83])
    {
LABEL_63:
      v90 = v18;
      goto LABEL_66;
    }

LABEL_65:
    v90 = 0;
    goto LABEL_66;
  }

  v84 = VCPSignPostLog();
  v85 = os_signpost_id_generate(v84);

  v86 = VCPSignPostLog();
  v87 = v86;
  if (v85 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v86))
  {
    LOWORD(buf.start.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v87, OS_SIGNPOST_INTERVAL_BEGIN, v85, "VCPMovieAnalyzer_Video_VCPVideoBackboneInit", "", &buf, 2u);
  }

  v88 = [[VCPVideoTransformerBackbone alloc] initWithConfig:*(v18 + 31)];
  v89 = *(v18 + 2);
  *(v18 + 2) = v88;

  v90 = *(v18 + 2);
  if (v90)
  {
    v91 = VCPSignPostLog();
    v92 = v91;
    if (v85 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v91))
    {
      LOWORD(buf.start.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v92, OS_SIGNPOST_INTERVAL_END, v85, "VCPMovieAnalyzer_Video_VCPVideoBackboneInit", "", &buf, 2u);
    }

    goto LABEL_62;
  }

LABEL_66:
  v93 = v90;

  return v93;
}

- (void)dealloc
{
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
  }

  inputDataSettling = self->_inputDataSettling;
  if (inputDataSettling)
  {
    MEMORY[0x1CCA95C10](inputDataSettling, 0x1000C8052888210);
  }

  v5.receiver = self;
  v5.super_class = VCPVideoCNNAnalyzer;
  [(VCPVideoCNNAnalyzer *)&v5 dealloc];
}

- (int)configForAspectRatio:(float)ratio
{
  personDetector = self->_personDetector;
  self->_personDetector = &stru_1F496CB30;

  self->_inputWidth = 224;
  self->_inputHeight = 224;
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
    self->_inputData = 0;
  }

  inputDataSettling = self->_inputDataSettling;
  if (inputDataSettling)
  {
    MEMORY[0x1CCA95C10](inputDataSettling, 0x1000C8052888210);
    self->_inputDataSettling = 0;
  }

  v7 = self->_inputHeight * self->_inputWidth;
  v8 = 16 * v7;
  v9 = 192 * v7;
  if (v8 < 0)
  {
    v10 = -1;
  }

  else
  {
    v10 = v9;
  }

  v11 = operator new[](v10, MEMORY[0x1E69E5398]);
  self->_inputData = v11;
  if (v11 && (!+[VCPVideoCNNAnalyzer isMLSettlingEffectPregatingEnabled]|| ((v12 = self->_inputHeight * self->_inputWidth, v13 = 16 * v12, v14 = 192 * v12, v13 < 0) ? (v15 = -1) : (v15 = v14), v16 = operator new[](v15, MEMORY[0x1E69E5398]), (self->_inputDataSettling = v16) != 0)) && ((videoTransformerBackbone = self->_videoTransformerBackbone) == 0 || [(VCPVideoTransformerBackbone *)videoTransformerBackbone inputTensorSize]!= 48 * self->_inputHeightMUBB * self->_inputWidthMUBB / self->_mubbSampleScale || (v18 = [[VCPEspressoV2Data alloc] initWithTensorType:[(VCPVideoTransformerBackbone *)self->_videoTransformerBackbone inputTensorType] size:[(VCPVideoTransformerBackbone *)self->_videoTransformerBackbone inputTensorSize]], inputDataForTransformer = self->_inputDataForTransformer, self->_inputDataForTransformer = v18, inputDataForTransformer, self->_inputDataForTransformer) && (v20 = [[VCPEspressoV2Data alloc] initWithTensorType:[(VCPVideoTransformerBackbone *)self->_videoTransformerBackbone inputTensorType] size:[(VCPVideoTransformerBackbone *)self->_videoTransformerBackbone inputTensorSize]], inputDataBackup = self->_inputDataBackup, self->_inputDataBackup = v20, inputDataBackup, self->_inputDataBackup)))
  {
    return 0;
  }

  else
  {
    return -108;
  }
}

- (int)copyImage:(__CVBuffer *)image withChannels:(int)channels settling:(BOOL)settling
{
  if (channels != 3)
  {
    return -50;
  }

  settlingCopy = settling;
  if (CVPixelBufferGetPixelFormatType(image) != 1111970369)
  {
    return -50;
  }

  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  pixelBuffer = image;
  unlockFlags = 1;
  if (!image)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return -50;
  }

  v10 = Height;
  v11 = CVPixelBufferLockBaseAddress(image, 1uLL);
  v38 = v11;
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
    BaseAddress = CVPixelBufferGetBaseAddress(image);
    BytesPerRow = CVPixelBufferGetBytesPerRow(image);
    if (v10 > 0)
    {
      v19 = 0;
      v20 = &OBJC_IVAR___VCPVideoCNNAnalyzer__inputData;
      if (settlingCopy)
      {
        v20 = &OBJC_IVAR___VCPVideoCNNAnalyzer__inputDataSettling;
      }

      v21 = *v20;
      v22 = self->_inputHeight * self->_inputWidth;
      v23 = &OBJC_IVAR___VCPVideoCNNAnalyzer__validFrames;
      if (settlingCopy)
      {
        v23 = &OBJC_IVAR___VCPVideoCNNAnalyzer__validFramesSettling;
      }

      v24 = *(&self->super.super.isa + *v23);
      v25 = v24 & 0xF;
      v27 = -v24;
      v26 = v27 < 0;
      v28 = v27 & 0xF;
      if (v26)
      {
        v29 = v25;
      }

      else
      {
        v29 = -v28;
      }

      v30 = v22 * v29;
      v31 = *(&self->super.super.isa + v21);
      v32 = v31 + 4 * (v30 + 32 * v22);
      v33 = v31 + 4 * (v30 + 16 * v22);
      v34 = v31 + 4 * v30;
      v35 = 4 * Width;
      do
      {
        if (Width >= 1)
        {
          v36 = 0;
          v37 = Width & 0x7FFFFFFF;
          do
          {
            LOBYTE(v16) = BaseAddress[v36 + 2];
            LOBYTE(v17) = BaseAddress[v36 + 1];
            v17 = LODWORD(v17) / 255.0;
            LOBYTE(v18) = BaseAddress[v36];
            v18 = LODWORD(v18);
            *(v34 + v36) = ((LODWORD(v16) / 255.0) + -0.45) / 0.225;
            *(v33 + v36) = (v17 + -0.45) / 0.225;
            v16 = ((v18 / 255.0) + -0.45) / 0.225;
            *(v32 + v36) = v16;
            v36 += 4;
            --v37;
          }

          while (v37);
        }

        BaseAddress += BytesPerRow;
        ++v19;
        v32 += v35;
        v33 += v35;
        v34 += v35;
      }

      while (v19 != v10);
    }

    v12 = CVPixelBufferLock::Unlock(&v38);
    if (pixelBuffer && !v38 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }
  }

  return v12;
}

- (int)copyMUBBImage:(__CVBuffer *)image withChannels:(int)channels
{
  if (channels != 3 || CVPixelBufferGetPixelFormatType(image) != 1111970369)
  {
    return -50;
  }

  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  pixelBuffer = image;
  unlockFlags = 1;
  if (image)
  {
    v7 = CVPixelBufferLockBaseAddress(image, 1uLL);
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
      BaseAddress = CVPixelBufferGetBaseAddress(image);
      BytesPerRow = CVPixelBufferGetBytesPerRow(image);
      v8 = 0;
      v13 = HIDWORD(self->_timeStart.epoch) & 0xF;
      if (SHIDWORD(self->_timeStart.epoch) <= 0)
      {
        v13 = -(-BYTE4(self->_timeStart.epoch) & 0xF);
      }

      mubbSampleScale = self->_mubbSampleScale;
      if (!(v13 % mubbSampleScale))
      {
        if (Height >= 1)
        {
          v25 = 0;
          v15 = 3 * Height * Width * (v13 / mubbSampleScale);
          v27 = v15 + Height * Width;
          v28 = v15;
          v26 = v15 + 2 * Height * Width;
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
                [(VCPEspressoV2Data *)self->_inputDataForTransformer setValueFP:v19 + v28 atIndex:v12, v22];
                *&v20 = ((v18 / 255.0) + -0.45783) / 0.2613;
                [(VCPEspressoV2Data *)self->_inputDataForTransformer setValueFP:v27 + v19 atIndex:v20];
                *&v21 = ((v4 / 255.0) + -0.40821) / 0.27578;
                [(VCPEspressoV2Data *)self->_inputDataForTransformer setValueFP:v26 + v19 atIndex:v21];
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

- (int)analyzeFrame:(__CVBuffer *)frame withTimestamp:(id *)timestamp andDuration:(id *)duration flags:(unint64_t *)flags
{
  Width = CVPixelBufferGetWidth(frame);
  Height = CVPixelBufferGetHeight(frame);
  v12 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 8);
  v14 = *(MEMORY[0x1E695F058] + 16);
  v15 = *(MEMORY[0x1E695F058] + 24);
  lhs = *timestamp;
  *&rhs.value = *(&self->_mubbSampleScale + 1);
  rhs.epoch = *&self->_timeLastProcess.flags;
  CMTimeSubtract(&time, &lhs, &rhs);
  if (CMTimeGetSeconds(&time) >= *(&self->_timeEnd.epoch + 1))
  {
    lhs = *timestamp;
    rhs = *(&self->_timeLastDetection.epoch + 4);
    v16 = CMTimeCompare(&lhs, &rhs) >= 0;
  }

  else
  {
    v16 = 0;
  }

  lhs = *timestamp;
  Seconds = CMTimeGetSeconds(&lhs);
  if (v16)
  {
    if (LOBYTE(self->_validFramesSettling) == 1)
    {
      v18 = LOBYTE(self->_timeEnd.epoch) ^ 1;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = Seconds > (*&self->_postInference + -0.5) && (self->_validFramesSettling & 0x100) == 0 && LOBYTE(self->_timeEnd.epoch) == 1 && self->_inputDataSettling != 0;
  if (((v18 | v19) & 1) == 0)
  {
    return 0;
  }

  if ((self->_timeLastDetection.timescale & 1) == 0)
  {
    v20 = *&timestamp->var0;
    *&self->_timeLastDetection.flags = timestamp->var3;
    *(&self->_timeLastProcess.epoch + 4) = v20;
  }

  v21 = Width;
  v22 = Height;
  if ((Height * 1.2) >= Width)
  {
    if ((v21 * 1.2) < v22)
    {
      v13 = ((Height - Width) / (v22 + v22));
      v15 = (v21 / v22);
      v14 = 1.0;
      v12 = 0.0;
    }
  }

  else
  {
    v12 = ((Width - Height) / (v21 + v21));
    v14 = (v22 / v21);
    v15 = 1.0;
    v13 = 0.0;
  }

  v24 = VCPSignPostLog();
  v25 = os_signpost_id_generate(v24);

  v26 = VCPSignPostLog();
  v27 = v26;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    LOWORD(lhs.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "VCPMovieAnalyzer_Video_VCPVideoBackbonePreProcess", "", &lhs, 2u);
  }

  v28 = [(VCPTransforms *)self->_transformImage cropAndScale:frame regionCrop:v12, v13, v14, v15];
  if (!v28)
  {
    return -18;
  }

  v29 = v28;
  v54 = (&self->_timeLastProcess.epoch + 4);
  transformImageMUBB = self->_transformImageMUBB;
  if (transformImageMUBB)
  {
    v31 = [(VCPTransforms *)transformImageMUBB cropAndScale:frame regionCrop:v12, v13, v14, v15];
    if (!v31)
    {
      v23 = -18;
      v31 = v29;
LABEL_65:
      CFRelease(v31);
      return v23;
    }
  }

  else
  {
    v31 = 0;
  }

  v55 = v19;
  v32 = VCPSignPostLog();
  v33 = v32;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    LOWORD(lhs.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v33, OS_SIGNPOST_INTERVAL_END, v25, "VCPMovieAnalyzer_Video_VCPVideoBackbonePreProcess", "", &lhs, 2u);
  }

  if (v18)
  {
    v34 = [(VCPVideoCNNAnalyzer *)self copyImage:v29 withChannels:3 settling:0];
    if (v34)
    {
      goto LABEL_60;
    }

    v35 = VCPSignPostLog();
    v36 = os_signpost_id_generate(v35);

    v37 = VCPSignPostLog();
    v38 = v37;
    if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      LOWORD(lhs.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v36, "VCPMovieAnalyzer_Video_VCPVideoBackbonePreProcess", "", &lhs, 2u);
    }

    v39 = self->_transformImageMUBB ? v31 : v29;
    v34 = [(VCPVideoCNNAnalyzer *)self copyMUBBImage:v39 withChannels:3];
    if (v34)
    {
      goto LABEL_60;
    }

    v40 = VCPSignPostLog();
    v41 = v40;
    if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      LOWORD(lhs.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v41, OS_SIGNPOST_INTERVAL_END, v36, "VCPMovieAnalyzer_Video_VCPVideoBackbonePreProcess", "", &lhs, 2u);
    }

    v42 = *&self->_enoughFrames;
    if (v42)
    {
      if (HIDWORD(self->_timeStart.epoch) == 8)
      {
        lhs = *timestamp;
        rhs = *duration;
        v34 = [v42 analyzeFrame:v29 withTimestamp:&lhs andDuration:&rhs flags:flags];
        if (v34)
        {
          goto LABEL_60;
        }
      }
    }

    epoch_high = HIDWORD(self->_timeStart.epoch);
    HIDWORD(self->_timeStart.epoch) = epoch_high + 1;
    if (epoch_high >= 15)
    {
      LOBYTE(self->_validFramesSettling) = 1;
      BYTE2(self->_validFramesSettling) = 1;
      v44 = *&timestamp->var0;
      *&self->_timeEnd.timescale = timestamp->var3;
      *&self->_regionCrop.size.height = v44;
      *&self->_highlight = v12;
      self->_regionCrop.origin.x = v13;
      self->_regionCrop.origin.y = v14;
      self->_regionCrop.size.width = v15;
      if ((self->_timeEnd.epoch & 1) == 0)
      {
        v45 = *&self->_enoughFrames;
        if (v45)
        {
          persons = [v45 persons];
        }

        else
        {
          persons = 0;
        }

        *&time.value = *v54;
        time.epoch = *&self->_timeLastDetection.flags;
        lhs = *timestamp;
        *&rhs.value = *v54;
        rhs.epoch = *&self->_timeLastDetection.flags;
        CMTimeSubtract(&v58, &lhs, &rhs);
        v23 = [(VCPVideoCNNAnalyzer *)self runTasks:&time duration:&v58 persons:persons regionCrop:v12, v13, v14, v15];
        if (v23)
        {

          goto LABEL_64;
        }

        HIDWORD(self->_timeStart.epoch) = 0;
        v47 = *&timestamp->var0;
        *&self->_timeLastDetection.flags = timestamp->var3;
        *v54 = v47;
        v57 = persons;
        v48 = self->_inputDataBackup;
        objc_storeStrong(&self->_inputDataBackup, self->_inputDataForTransformer);
        inputDataForTransformer = self->_inputDataForTransformer;
        self->_inputDataForTransformer = v48;
        v50 = v48;

        LOBYTE(self->_validFramesSettling) = 0;
        BYTE2(self->_validFramesSettling) = 0;
      }
    }

    v51 = *&timestamp->var0;
    *&self->_timeLastProcess.flags = timestamp->var3;
    *(&self->_mubbSampleScale + 1) = v51;
  }

  if (!v55)
  {
    goto LABEL_63;
  }

  v34 = [(VCPVideoCNNAnalyzer *)self copyImage:v29 withChannels:3 settling:1];
  if (v34)
  {
LABEL_60:
    v23 = v34;
    goto LABEL_64;
  }

  validFrames = self->_validFrames;
  self->_validFrames = validFrames + 1;
  if (validFrames >= 15)
  {
    v23 = 0;
    BYTE1(self->_validFramesSettling) = 1;
  }

  else
  {
LABEL_63:
    v23 = 0;
  }

LABEL_64:
  CFRelease(v29);
  if (v31)
  {
    goto LABEL_65;
  }

  return v23;
}

- (int)loadAnalysisResultsFrom:(id)from actionAnalyzer:(id)analyzer atTime:(id *)time
{
  fromCopy = from;
  analyzerCopy = analyzer;
  if (self->_quality && SHIDWORD(self->_timeStart.epoch) >= 15 && (*&lhs.start.value = *&time->var0, lhs.start.epoch = time->var3, *&v15.start.value = *(&self->_mubbSampleScale + 1), v15.start.epoch = *&self->_timeLastProcess.flags, CMTimeSubtract(&time, &lhs.start, &v15.start), CMTimeGetSeconds(&time) >= 0.125) && (self->_timeLastDetection.timescale & 1) != 0)
  {
    memset(&lhs, 0, sizeof(lhs));
    *&v15.start.value = *(&self->_timeLastProcess.epoch + 4);
    v15.start.epoch = *&self->_timeLastDetection.flags;
    time = *time;
    CMTimeRangeFromTimeToTime(&lhs, &v15.start, &time);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v15 = lhs;
    v13 = [fromCopy clipResults:&v15];
    [dictionary addEntriesFromDictionary:v13];

    v15 = lhs;
    v14 = [analyzerCopy clipResults:&v15];
    [dictionary addEntriesFromDictionary:v14];

    v10 = [(VCPVideoCNNQuality *)self->_quality loadAnalysisResults:dictionary];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int)loadFullAnalysisResults:(id)results actionAnalysisResults:(id)analysisResults predictedTimeRange:(id *)range timestamp:(id *)timestamp
{
  v25 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  analysisResultsCopy = analysisResults;
  if (self->_quality)
  {
    if (SHIDWORD(self->_timeStart.epoch) >= 15)
    {
      *&lhs.start.value = *&timestamp->var0;
      lhs.start.epoch = timestamp->var3;
      *&rhs.start.value = *(&self->_mubbSampleScale + 1);
      rhs.start.epoch = *&self->_timeLastProcess.flags;
      CMTimeSubtract(&v22.start, &lhs.start, &rhs.start);
      if (CMTimeGetSeconds(&v22.start) >= 0.125 && (self->_timeLastDetection.timescale & 1) != 0)
      {
        memset(&lhs, 0, sizeof(lhs));
        *&rhs.start.value = *(&self->_timeLastProcess.epoch + 4);
        rhs.start.epoch = *&self->_timeLastDetection.flags;
        *&v22.start.value = *&timestamp->var0;
        v22.start.epoch = timestamp->var3;
        CMTimeRangeFromTimeToTime(&lhs, &rhs.start, &v22.start);
        rhs = lhs;
        v18 = *&range->var0.var3;
        *&v22.start.value = *&range->var0.var0;
        *&v22.start.epoch = v18;
        *&v22.duration.timescale = *&range->var1.var1;
        if (CMTimeRangeEqual(&rhs, &v22))
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          [dictionary addEntriesFromDictionary:resultsCopy];
          [dictionary addEntriesFromDictionary:analysisResultsCopy];
          v14 = [(VCPVideoCNNQuality *)self->_quality loadAnalysisResults:dictionary];

          goto LABEL_11;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v20 = objc_opt_class();
          LODWORD(rhs.start.value) = 138412290;
          *(&rhs.start.value + 4) = v20;
          v21 = v20;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Error: predictedTimeRange mismatches timeRange", &rhs, 0xCu);
        }

        goto LABEL_10;
      }
    }
  }

  v12 = *&range->var0.var3;
  *&lhs.start.value = *&range->var0.var0;
  *&lhs.start.epoch = v12;
  *&lhs.duration.timescale = *&range->var1.var1;
  v13 = *(MEMORY[0x1E6960C98] + 16);
  *&rhs.start.value = *MEMORY[0x1E6960C98];
  *&rhs.start.epoch = v13;
  *&rhs.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  if (!CMTimeRangeEqual(&lhs, &rhs))
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      LODWORD(lhs.start.value) = 138412290;
      *(&lhs.start.value + 4) = v15;
      v16 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Error: predictedTimeRange should be invalid...", &lhs, 0xCu);
    }

LABEL_10:
    v14 = -18;
    goto LABEL_11;
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (int)loadAnalysisResults:(id)results audioResults:(id)audioResults
{
  resultsCopy = results;
  audioResultsCopy = audioResults;
  resConfig = self->_resConfig;
  if (resConfig)
  {
    v9 = [(NSString *)resConfig loadAnalysisResults:resultsCopy audioResults:audioResultsCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)isAnalysisResultNeeded:(SEL)needed
{
  if (self[11].var3 && (v5 = self, self[9].var2 >= 15) && (lhs = *a4, *&rhs.value = *&self[6].var2, rhs.epoch = *(&self[7].var0 + 4), CMTimeSubtract(&time, &lhs, &rhs), CMTimeGetSeconds(&time) >= 0.125))
  {
    p_var2 = &v5[7].var2;
  }

  else
  {
    p_var2 = MEMORY[0x1E6960C70];
  }

  *&retstr->var0 = *p_var2;
  retstr->var3 = *(p_var2 + 2);
  return self;
}

- (int)runTasks:(id *)tasks duration:(id *)duration persons:(id)persons regionCrop:(CGRect)crop
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v55 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  if (!self->_backbone)
  {
    v14 = [[VCPVideoCNNBackbone alloc] initWithConfig:self->_personDetector];
    backbone = self->_backbone;
    self->_backbone = v14;

    if (!self->_backbone)
    {
      v20 = -108;
      goto LABEL_42;
    }
  }

  if (BYTE2(self->_validFramesSettling) == 1 && self->_videoTransformerBackbone)
  {
    v16 = VCPSignPostLog();
    v17 = os_signpost_id_generate(v16);

    v18 = VCPSignPostLog();
    v19 = v18;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "VCPMovieAnalyzer_Video_VCPVideoBackboneInference", "", buf, 2u);
    }

    v20 = [(VCPVideoTransformerBackbone *)self->_videoTransformerBackbone inference:self->_inputDataForTransformer];
    if (v20)
    {
      goto LABEL_42;
    }

    v21 = VCPSignPostLog();
    v22 = v21;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_END, v17, "VCPMovieAnalyzer_Video_VCPVideoBackboneInference", "", buf, 2u);
    }

    videoEmbeddings = self->_videoEmbeddings;
    if (videoEmbeddings)
    {
      embedding = [(VCPVideoTransformerBackbone *)self->_videoTransformerBackbone embedding];
      *buf = *&tasks->var0;
      var3 = tasks->var3;
      v49 = *&duration->var0;
      v50 = duration->var3;
      [(VCPVideoEmbeddings *)videoEmbeddings addEmbeddings:embedding startTime:buf duration:&v49];
    }

    videoCaptionAnalyzer = self->_videoCaptionAnalyzer;
    if (videoCaptionAnalyzer)
    {
      spatialEmbedding = [(VCPVideoTransformerBackbone *)self->_videoTransformerBackbone spatialEmbedding];
      *buf = *&tasks->var0;
      var3 = tasks->var3;
      v49 = *&duration->var0;
      v50 = duration->var3;
      [(VCPVideoCaptionAnalyzer *)videoCaptionAnalyzer generateCaptionWithEmbedding:spatialEmbedding startTime:buf duration:&v49];
    }
  }

  if (LOBYTE(self->_validFramesSettling) == 1)
  {
    v20 = [(VCPVideoCNNBackbone *)self->_backbone inference:self->_inputData settling:0];
    if (v20)
    {
      goto LABEL_42;
    }

    videoEmbeddingsX3D = self->_videoEmbeddingsX3D;
    if (videoEmbeddingsX3D)
    {
      tensorBeforeTemporalPooling = [(VCPVideoCNNBackbone *)self->_backbone tensorBeforeTemporalPooling];
      *buf = *&tasks->var0;
      var3 = tasks->var3;
      v49 = *&duration->var0;
      v50 = duration->var3;
      [(VCPVideoEmbeddings *)videoEmbeddingsX3D addEmbeddings:tensorBeforeTemporalPooling startTime:buf duration:&v49];
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v29 = self->_tasks;
    v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v30)
    {
      v31 = *v46;
LABEL_22:
      v32 = 0;
      while (1)
      {
        if (*v46 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v45 + 1) + 8 * v32);
        v34 = self->_backbone;
        *buf = *&tasks->var0;
        var3 = tasks->var3;
        v49 = *&duration->var0;
        v50 = duration->var3;
        v20 = [v33 run:v34 withPersons:personsCopy andRegionCrop:buf atTime:&v49 andDuration:{x, y, width, height}];
        if (v20)
        {
          goto LABEL_41;
        }

        if (v30 == ++v32)
        {
          v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v45 objects:v54 count:16];
          if (v30)
          {
            goto LABEL_22;
          }

          break;
        }
      }
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v29 = self->_privateTasks;
    v35 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v35)
    {
      v36 = *v42;
LABEL_30:
      v37 = 0;
      while (1)
      {
        if (*v42 != v36)
        {
          objc_enumerationMutation(v29);
        }

        v38 = *(*(&v41 + 1) + 8 * v37);
        v39 = self->_backbone;
        *buf = *&tasks->var0;
        var3 = tasks->var3;
        v49 = *&duration->var0;
        v50 = duration->var3;
        v20 = [v38 run:v39 withPersons:personsCopy andRegionCrop:buf atTime:&v49 andDuration:{x, y, width, height, v41}];
        if (v20)
        {
          break;
        }

        if (v35 == ++v37)
        {
          v35 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v41 objects:v53 count:16];
          if (v35)
          {
            goto LABEL_30;
          }

          goto LABEL_36;
        }
      }

LABEL_41:

      goto LABEL_42;
    }

LABEL_36:
  }

  if (BYTE1(self->_validFramesSettling) == 1)
  {
    v20 = [(VCPVideoCNNBackbone *)self->_backbone inference:self->_inputDataSettling settling:1];
  }

  else
  {
    v20 = 0;
  }

LABEL_42:

  return v20;
}

- (void)copyFrames
{
  mubbSampleScale = self->_mubbSampleScale;
  v4 = 228;
  epoch_high = HIDWORD(self->_timeStart.epoch);
  v6 = 0x1EC42C000uLL;
  if (epoch_high / mubbSampleScale >= 1)
  {
    v7 = epoch_high / mubbSampleScale + 1;
    v8 = 16 / mubbSampleScale - 1;
    do
    {
      inputDataForTransformer = self->_inputDataForTransformer;
      v10 = [(VCPEspressoV2Data *)inputDataForTransformer getData:[(VCPEspressoV2Data *)inputDataForTransformer tensorType]];
      v11 = 3 * self->_inputHeight * self->_inputWidth;
      [(VCPEspressoV2Data *)inputDataForTransformer copyDataFrom:v10 srcStart:(v11 * (v7 - 2)) dstStart:v11 * v8 length:v11];
      --v7;
      --v8;
    }

    while (v7 > 1);
    mubbSampleScale = self->_mubbSampleScale;
    v4 = 228;
    epoch_high = HIDWORD(self->_timeStart.epoch);
    v6 = 0x1EC42C000;
  }

  if (16 / mubbSampleScale > epoch_high)
  {
    v12 = 0x1EC42C000uLL;
    v13 = 0;
    v14 = 0;
    v24 = 128;
    v25 = *(v6 + 1608);
    v15 = 3 * (epoch_high / mubbSampleScale);
    do
    {
      v16 = *(&self->super.super.isa + v25);
      v17 = v12;
      v18 = *(&self->super.super.isa + v24);
      v19 = v4;
      tensorType = [v16 tensorType];
      v21 = v18;
      v12 = v17;
      v22 = [v21 getData:tensorType];
      v23 = *(&self->super.super.isa + *(v17 + 1580)) * self->_inputWidth;
      [v16 copyDataFrom:v22 srcStart:v23 * (v15 + v13) dstStart:v23 * v13 length:3 * v23];
      v4 = v19;
      ++v14;
      v13 += 3;
    }

    while (v14 < 16 / self->_mubbSampleScale - *(&self->super.super.isa + v19));
  }

  BYTE2(self->_validFramesSettling) = 1;
}

- (int)finishAnalysisPass:(id *)pass
{
  v26 = *MEMORY[0x1E69E9840];
  if ((HIDWORD(self->_timeStart.epoch) - 1) <= 0xE && (self->_timeEnd.epoch & 1) == 0)
  {
    [(VCPVideoCNNAnalyzer *)self copyFrames];
  }

  if ((self->_validFramesSettling & 1) != 0 || (self->_validFramesSettling & 0x100) != 0 || BYTE2(self->_validFramesSettling) == 1)
  {
    if (LOBYTE(self->_timeEnd.epoch) != 1)
    {
      v5 = *&pass->var0.var3;
      *&range.start.value = *&pass->var0.var0;
      *&range.start.epoch = v5;
      *&range.duration.timescale = *&pass->var1.var1;
      CMTimeRangeGetEnd(&rhs, &range);
      *&self->_regionCrop.size.height = rhs;
      CMTimeMake(&v21, 60, 30);
      *&range.start.value = *&self->_regionCrop.size.height;
      range.start.epoch = *&self->_timeEnd.timescale;
      rhs = v21;
      CMTimeSubtract(&v22, &range.start, &rhs);
      *(&self->_timeLastDetection.epoch + 4) = v22;
    }

    v22 = *(&self->_timeLastDetection.epoch + 4);
    *&range.start.value = *&self->_regionCrop.size.height;
    range.start.epoch = *&self->_timeEnd.timescale;
    rhs = *(&self->_timeLastDetection.epoch + 4);
    CMTimeSubtract(&v21, &range.start, &rhs);
    v6 = [(VCPVideoCNNAnalyzer *)self runTasks:&v22 duration:&v21 persons:0 regionCrop:*&self->_highlight, self->_regionCrop.origin.x, self->_regionCrop.origin.y, self->_regionCrop.size.width];
    if (v6)
    {
      return v6;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_postTasks;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v8)
    {
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v6 = [*(*(&v17 + 1) + 8 * i) run:{self->_backbone, v17}];
          if (v6)
          {

            return v6;
          }
        }

        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  videoEmbeddings = self->_videoEmbeddings;
  if (!videoEmbeddings)
  {
    return 0;
  }

  embeddingSummarizationAnalyzer = self->_embeddingSummarizationAnalyzer;
  embeddingsArray = [(VCPVideoEmbeddings *)videoEmbeddings embeddingsArray];
  v6 = [(VCPEmbeddingSummarizationAnalyzer *)embeddingSummarizationAnalyzer findSummarizedEmbeddings:embeddingsArray embeddingSize:[(VCPVideoEmbeddings *)self->_videoEmbeddings embeddingSize] isFP16:0];

  if (!v6)
  {
    if (self->_videoEmbeddings)
    {
      if (self->_videoEmbeddingsX3D && self->_adaptiveSegmentAnalyzer)
      {
        v14 = +[VCPVideoCNNAnalyzer adaptiveSegmentType];
        v15 = self->_videoEmbeddings;
        if (v14 == 1)
        {
          [(VCPAdaptiveSegmentAnalyzer *)self->_adaptiveSegmentAnalyzer calculateAdaptiveSegments:v15 videoEmbeddingsX3D:self->_videoEmbeddingsX3D];
          return 0;
        }

        if (!v15)
        {
          return 0;
        }
      }

      if (self->_adaptiveSegmentAnalyzer && +[VCPVideoCNNAnalyzer adaptiveSegmentType]== 2)
      {
        [(VCPAdaptiveSegmentAnalyzer *)self->_adaptiveSegmentAnalyzer calculateAdaptiveSegments:self->_videoEmbeddings];
      }
    }

    return 0;
  }

  return v6;
}

- (id)privateResults
{
  v31 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = self->_privateTasks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        results = [v8 results];
        v10 = [results count] == 0;

        if (!v10)
        {
          results2 = [v8 results];
          [dictionary addEntriesFromDictionary:results2];
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self->_tasks;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = *v22;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v21 + 1) + 8 * j);
        results3 = [v16 results];
        v18 = [results3 count] == 0;

        if (!v18)
        {
          results4 = [v16 results];
          [dictionary addEntriesFromDictionary:results4];
        }
      }

      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v13);
  }

  return dictionary;
}

- (id)results
{
  v40 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = self->_tasks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v5)
  {
    v6 = *v35;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        results = [v8 results];
        v10 = [results count] == 0;

        if (!v10)
        {
          results2 = [v8 results];
          [dictionary addEntriesFromDictionary:results2];
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v5);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = self->_postTasks;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v13)
  {
    v14 = *v31;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v30 + 1) + 8 * j);
        results3 = [v16 results];
        v18 = [results3 count] == 0;

        if (!v18)
        {
          results4 = [v16 results];
          [dictionary addEntriesFromDictionary:results4];
        }
      }

      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v13);
  }

  videoEmbeddings = self->_videoEmbeddings;
  if (videoEmbeddings)
  {
    videoEmbeddingsFp16 = [(VCPVideoEmbeddings *)videoEmbeddings videoEmbeddingsFp16];
    [dictionary setObject:videoEmbeddingsFp16 forKeyedSubscript:@"VideoEmbeddingResults"];

    summarizedEmbeddings = [(VCPEmbeddingSummarizationAnalyzer *)self->_embeddingSummarizationAnalyzer summarizedEmbeddings];
    [dictionary setObject:summarizedEmbeddings forKeyedSubscript:@"SummarizedEmbeddingResults"];
  }

  adaptiveSegmentAnalyzer = self->_adaptiveSegmentAnalyzer;
  if (adaptiveSegmentAnalyzer)
  {
    adaptiveSegments = [(VCPAdaptiveSegmentAnalyzer *)adaptiveSegmentAnalyzer adaptiveSegments];
    v25 = adaptiveSegments == 0;

    if (!v25)
    {
      adaptiveSegments2 = [(VCPAdaptiveSegmentAnalyzer *)self->_adaptiveSegmentAnalyzer adaptiveSegments];
      [dictionary setObject:adaptiveSegments2 forKeyedSubscript:@"AdaptiveSegmentResults"];
    }
  }

  videoCaptionAnalyzer = self->_videoCaptionAnalyzer;
  if (videoCaptionAnalyzer)
  {
    segmentCaptionResults = [(VCPVideoCaptionAnalyzer *)videoCaptionAnalyzer segmentCaptionResults];
    [dictionary addEntriesFromDictionary:segmentCaptionResults];
  }

  return dictionary;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeStart
{
  *&retstr->var0 = *&self[8].var2;
  retstr->var3 = *(&self[9].var0 + 4);
  return self;
}

- (void)copyImage:withChannels:settling:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)copyImage:withChannels:settling:.cold.2()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end