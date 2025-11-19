@interface VCPVideoKeyFrameAnalyzer
- (VCPVideoKeyFrameAnalyzer)initWithTransform:(CGAffineTransform *)a3 timeRange:(id *)a4 isLivePhoto:(BOOL)a5 keyFrameResults:(id)a6;
- (float)computeMinDistanceBetween:(id)a3 withSet:(id)a4;
- (int)analyzeFrame:(__CVBuffer *)a3 frameStats:(id)a4 timestamp:(id *)a5;
- (int)computeFaceQualityOfFrame:(__CVBuffer *)a3;
- (int)computeSharpnessOfFrame:(__CVBuffer *)a3;
- (int)finalizeKeyFrame;
- (int)loadKeyFrameResults:(id *)a3;
- (int)postProcess;
- (void)adjustScoreByFace;
- (void)modulateByExposure;
- (void)modulateByJunk;
- (void)modulateByTimeRange;
- (void)prepareFrameStats:(id)a3 timeStamp:(id *)a4;
- (void)preparePostProcessingStatsFromFaceRange:(id)a3 junkResults:(id)a4;
- (void)setBlurAnalyzerFaceResults:(id)a3;
- (void)setKeyFrameTime:(id *)a3 isHeadingFrame:(BOOL)a4;
@end

@implementation VCPVideoKeyFrameAnalyzer

- (VCPVideoKeyFrameAnalyzer)initWithTransform:(CGAffineTransform *)a3 timeRange:(id *)a4 isLivePhoto:(BOOL)a5 keyFrameResults:(id)a6
{
  v7 = a5;
  v10 = a6;
  v28.receiver = self;
  v28.super_class = VCPVideoKeyFrameAnalyzer;
  v11 = [(VCPVideoKeyFrameAnalyzer *)&v28 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E695DF70] array];
    keyFrames = v11->_keyFrames;
    v11->_keyFrames = v12;

    v14 = [[VCPImageBlurAnalyzer alloc] initWithFaceResults:0 sdof:0];
    blurAnalyzer = v11->_blurAnalyzer;
    v11->_blurAnalyzer = v14;

    v16 = objc_alloc_init(VCPImageFaceQualityAnalyzer);
    faceQualityAnalyzer = v11->_faceQualityAnalyzer;
    v11->_faceQualityAnalyzer = v16;

    v18 = *&a4->var0.var0;
    v19 = *&a4->var1.var1;
    *&v11->_timeRange.start.epoch = *&a4->var0.var3;
    *&v11->_timeRange.duration.timescale = v19;
    *&v11->_timeRange.start.value = v18;
    v20 = [[VCPVideoKeyFrame alloc] initWithLivePhoto:v7];
    activeKeyFrame = v11->_activeKeyFrame;
    v11->_activeKeyFrame = v20;

    faceRanges = v11->_faceRanges;
    v11->_faceRanges = 0;

    v11->_isLivePhoto = v7;
    v23 = [MEMORY[0x1E695DF70] array];
    keyFrameScores = v11->_keyFrameScores;
    v11->_keyFrameScores = v23;

    objc_storeStrong(&v11->_inputKeyFrameResults, a6);
    if (!v11->_blurAnalyzer || !v11->_faceQualityAnalyzer || (v25 = v11, !v11->_activeKeyFrame))
    {
      v25 = 0;
    }

    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (int)analyzeFrame:(__CVBuffer *)a3 frameStats:(id)a4 timestamp:(id *)a5
{
  v8 = a4;
  {
    CMTimeMake([VCPVideoKeyFrameAnalyzer analyzeFrame:frameStats:timestamp:]::kHeadingTime, 1, 1);
  }

  v24 = *&a5->var0;
  var3 = a5->var3;
  lhs = *a5;
  rhs = self->_timeRange.start;
  CMTimeSubtract(&v23, &lhs, &rhs);
  lhs = v23;
  rhs = *[VCPVideoKeyFrameAnalyzer analyzeFrame:frameStats:timestamp:]::kHeadingTime;
  [(VCPVideoKeyFrameAnalyzer *)self setKeyFrameTime:&v24 isHeadingFrame:CMTimeCompare(&lhs, &rhs) >> 31];
  lhs = *a5;
  [(VCPVideoKeyFrameAnalyzer *)self prepareFrameStats:v8 timeStamp:&lhs];
  if (([(VCPVideoKeyFrame *)self->_activeKeyFrame statsFlags]& 1) == 0 && ([(VCPVideoKeyFrame *)self->_activeKeyFrame statsFlags]& 0x10) == 0)
  {
    v9 = 0;
    goto LABEL_27;
  }

  if (([(VCPVideoKeyFrame *)self->_activeKeyFrame statsFlags]& 0x10) == 0 || ([(VCPVideoKeyFrame *)self->_activeKeyFrame statsFlags]& 1) != 0)
  {
    v10 = VCPSignPostLog();
    v11 = os_signpost_id_generate(v10);

    v12 = VCPSignPostLog();
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(lhs.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "VCPVideoKeyFrameBlurAnalyzer", "", &lhs, 2u);
    }

    v9 = [(VCPVideoKeyFrameAnalyzer *)self computeSharpnessOfFrame:a3];
    if (v9)
    {
      goto LABEL_27;
    }

    v14 = VCPSignPostLog();
    v15 = v14;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      LOWORD(lhs.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_END, v11, "VCPVideoKeyFrameBlurAnalyzer", "", &lhs, 2u);
    }
  }

  if (!+[VCPVideoKeyFrameAnalyzer isLivePhotoKeyFrameEnabled]|| ([(VCPVideoKeyFrame *)self->_activeKeyFrame statsFlags]& 1) == 0 || !self->_isLivePhoto)
  {
LABEL_26:
    v9 = [(VCPVideoKeyFrameAnalyzer *)self finalizeKeyFrame];
    goto LABEL_27;
  }

  v16 = VCPSignPostLog();
  v17 = os_signpost_id_generate(v16);

  v18 = VCPSignPostLog();
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(lhs.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "VCPVideoKeyFrameFaceQualityAnalyzer", "", &lhs, 2u);
  }

  v9 = [(VCPVideoKeyFrameAnalyzer *)self computeFaceQualityOfFrame:a3];
  if (!v9)
  {
    v20 = VCPSignPostLog();
    v21 = v20;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      LOWORD(lhs.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_INTERVAL_END, v17, "VCPVideoKeyFrameFaceQualityAnalyzer", "", &lhs, 2u);
    }

    goto LABEL_26;
  }

LABEL_27:

  return v9;
}

- (int)loadKeyFrameResults:(id *)a3
{
  if (self->_inputKeyFrameResults)
  {
    v5 = [(NSMutableArray *)self->_keyFrames count];
    if (v5 < [(NSArray *)self->_inputKeyFrameResults count])
    {
      v6 = [(NSArray *)self->_inputKeyFrameResults objectAtIndexedSubscript:[(NSMutableArray *)self->_keyFrames count]];
      activeKeyFrame = self->_activeKeyFrame;
      v9 = *&a3->var0;
      var3 = a3->var3;
      [(VCPVideoKeyFrame *)activeKeyFrame loadKeyFrameResult:v6 timestamp:&v9];
    }
  }

  return 0;
}

- (void)preparePostProcessingStatsFromFaceRange:(id)a3 junkResults:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v11];
  faceRanges = self->_faceRanges;
  self->_faceRanges = v7;

  v9 = [MEMORY[0x1E695DEC8] arrayWithArray:v6];
  junkResults = self->_junkResults;
  self->_junkResults = v9;
}

- (int)postProcess
{
  [(VCPVideoKeyFrameAnalyzer *)self adjustScoreByFace];
  [(VCPVideoKeyFrameAnalyzer *)self modulateByJunk];
  [(VCPVideoKeyFrameAnalyzer *)self modulateByTimeRange];
  return 0;
}

- (void)setBlurAnalyzerFaceResults:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v3 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = v10;
  v4 = [obj countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        [*(*(&v13 + 1) + 8 * v6) bounds];
        v19 = @"attributes";
        v17 = @"faceBounds";
        v7 = NSStringFromRect(v23);
        v18 = v7;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        v20 = v8;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        [v3 addObject:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v4);
  }

  [(VCPImageBlurAnalyzer *)self->_blurAnalyzer setFaceResults:v3];
}

- (int)computeFaceQualityOfFrame:(__CVBuffer *)a3
{
  v5 = [(VCPVideoKeyFrame *)self->_activeKeyFrame detectedFaces];
  if (![v5 count])
  {
    goto LABEL_5;
  }

  v6 = [(VCPVideoKeyFrame *)self->_activeKeyFrame detectedFaces];
  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v7 observation];

  if (!v8)
  {
    return 0;
  }

  faceQualityAnalyzer = self->_faceQualityAnalyzer;
  v10 = [(VCPVideoKeyFrame *)self->_activeKeyFrame detectedFaces];
  v11 = [(VCPImageFaceQualityAnalyzer *)faceQualityAnalyzer analyzeDetectedFaces:a3 faceResults:v10 cancel:&__block_literal_global_23];

  if (!v11)
  {
    v5 = [(VCPImageFaceQualityAnalyzer *)self->_faceQualityAnalyzer faceQualityScores];
    v12 = [v5 mutableCopy];
    [(VCPVideoKeyFrame *)self->_activeKeyFrame setFaceQualityScores:v12];

LABEL_5:
    return 0;
  }

  return v11;
}

- (int)computeSharpnessOfFrame:(__CVBuffer *)a3
{
  v24 = 0;
  v5 = [(VCPVideoKeyFrame *)self->_activeKeyFrame detectedFaces];
  [(VCPVideoKeyFrameAnalyzer *)self setBlurAnalyzerFaceResults:v5];

  blurAnalyzer = self->_blurAnalyzer;
  v23 = 0;
  v7 = [(VCPImageBlurAnalyzer *)blurAnalyzer analyzePixelBuffer:a3 flags:&v24 results:&v23 cancel:&__block_literal_global_347];
  v8 = v23;
  v9 = v8;
  if (!v7)
  {
    v10 = [v8 objectForKeyedSubscript:@"BlurResults"];
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = [v11 objectForKeyedSubscript:@"attributes"];

    v13 = [v12 objectForKeyedSubscript:@"sharpness"];
    [v13 floatValue];
    v15 = v14;

    v16 = [v12 objectForKeyedSubscript:@"sharpnessFaces"];

    if (v16)
    {
      v18 = [v12 objectForKeyedSubscript:@"sharpnessFaces"];
      [v18 floatValue];
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    LODWORD(v17) = v15;
    [(VCPVideoKeyFrame *)self->_activeKeyFrame setSharpness:v17];
    [(VCPImageBlurAnalyzer *)self->_blurAnalyzer textureScore];
    [(VCPVideoKeyFrame *)self->_activeKeyFrame setTextureScore:?];
    LODWORD(v21) = v20;
    [(VCPVideoKeyFrame *)self->_activeKeyFrame setFaceSharpness:v21];
    [(VCPVideoKeyFrame *)self->_activeKeyFrame setStatsFlags:[(VCPVideoKeyFrame *)self->_activeKeyFrame statsFlags]| 1];
  }

  return v7;
}

- (int)finalizeKeyFrame
{
  [(VCPVideoKeyFrame *)self->_activeKeyFrame computeCurationScore];
  [(NSMutableArray *)self->_keyFrames addObject:self->_activeKeyFrame];
  keyFrameScores = self->_keyFrameScores;
  v4 = [(VCPVideoKeyFrame *)self->_activeKeyFrame frameResults];
  [(NSMutableArray *)keyFrameScores addObject:v4];

  v5 = [[VCPVideoKeyFrame alloc] initWithLivePhoto:self->_isLivePhoto];
  activeKeyFrame = self->_activeKeyFrame;
  self->_activeKeyFrame = v5;

  if (self->_activeKeyFrame)
  {
    return 0;
  }

  else
  {
    return -108;
  }
}

- (void)adjustScoreByFace
{
  v44 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__18;
  v39 = __Block_byref_object_dispose__18;
  v40 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  faceRanges = self->_faceRanges;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __45__VCPVideoKeyFrameAnalyzer_adjustScoreByFace__block_invoke;
  v32[3] = &unk_1E834D730;
  v32[4] = v33;
  v32[5] = &v35;
  [(NSDictionary *)faceRanges enumerateKeysAndObjectsUsingBlock:v32];
  v4 = [(NSDictionary *)self->_faceRanges objectForKeyedSubscript:v36[5]];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_keyFrames;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v43 count:16];
  if (v5)
  {
    v6 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v9 = v4;
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v42 count:16];
        if (v10)
        {
          v11 = *v25;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v24 + 1) + 8 * j);
              if (v13)
              {
                [*(*(&v24 + 1) + 8 * j) start];
                [v13 last];
                [v13 start];
              }

              else
              {
                memset(&start, 0, sizeof(start));
                v19 = 0uLL;
                v20 = 0;
                memset(&v18, 0, sizeof(v18));
              }

              *&lhs.start.value = v19;
              lhs.start.epoch = v20;
              rhs = v18;
              CMTimeSubtract(&duration, &lhs.start, &rhs);
              CMTimeRangeMake(&lhs, &start, &duration);
              if (v8)
              {
                [v8 timestamp];
              }

              else
              {
                memset(&rhs, 0, sizeof(rhs));
              }

              if (CMTimeRangeContainsTime(&lhs, &rhs))
              {

                goto LABEL_25;
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v24 objects:v42 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v14 = [v8 hasGoodSubjectAction];
        [v8 score];
        if (v14)
        {
          v16 = 1.0;
        }

        else
        {
          v16 = 0.7;
        }

        *&v15 = v16 * *&v15;
        [v8 setScore:v15];
LABEL_25:
        ;
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v43 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v35, 8);
}

void __45__VCPVideoKeyFrameAnalyzer_adjustScoreByFace__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v8)
  {
    v9 = *v17;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (v12)
        {
          [*(*(&v16 + 1) + 8 * i) last];
          [v12 start];
        }

        else
        {
          memset(v14, 0, sizeof(v14));
        }

        lhs = v14[1];
        rhs = v14[0];
        CMTimeSubtract(&time, &lhs, &rhs);
        v10 = CMTimeGetSeconds(&time) + v10;
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v13 = *(*(a1 + 32) + 8);
  if (v10 > *(v13 + 24))
  {
    *(v13 + 24) = v10;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)modulateByTimeRange
{
  duration = self->_timeRange.duration;
  Seconds = CMTimeGetSeconds(&duration);
  if (Seconds >= 3.0)
  {
    v4 = [(NSMutableArray *)self->_keyFrames firstObject];
    v5 = [(NSMutableArray *)self->_keyFrames lastObject];
    [v4 score];
    *&v7 = v6 * 0.8;
    [v4 setScore:v7];
    [v5 score];
    *&v9 = v8 * 0.8;
    [v5 setScore:v9];
  }
}

- (void)modulateByExposure
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = self->_keyFrames;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v4)
  {
    v5 = *v29;
    v6 = INFINITY;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        [v8 exposureScore];
        if (v9 < v6)
        {
          [v8 exposureScore];
          v6 = v10;
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = INFINITY;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = self->_keyFrames;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v12)
  {
    v13 = fmaxf(v6 * 1.5, 15.0);
    v14 = v13 * 6.28318531 * v13;
    v15 = *v25;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v24 + 1) + 8 * j);
        [v17 exposureScore];
        *&v19 = expf(-((v18 - v6) * (v18 - v6)) / v14);
        [v17 setExposureScore:v19];
        [v17 exposureScore];
        v21 = v20;
        [v17 score];
        *&v23 = v21 * v22;
        [v17 setScore:v23];
      }

      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v12);
  }
}

- (void)modulateByJunk
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = self->_keyFrames;
  v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v19)
  {
    v17 = *v31;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v2 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v3 = self->_junkResults;
        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v26 objects:v34 count:16];
        v5 = 1.0;
        if (v4)
        {
          v6 = *v27;
          while (2)
          {
            for (j = 0; j != v4; ++j)
            {
              if (*v27 != v6)
              {
                objc_enumerationMutation(v3);
              }

              v8 = *(*(&v26 + 1) + 8 * j);
              v9 = [v8 objectForKeyedSubscript:@"quality"];
              [v9 floatValue];
              v11 = v10 < 0.35;

              if (v11)
              {
                memset(&v25, 0, sizeof(v25));
                v12 = [v8 objectForKeyedSubscript:@"start"];
                CMTimeMakeFromDictionary(&v25, v12);

                memset(&v24, 0, sizeof(v24));
                v13 = [v8 objectForKeyedSubscript:@"duration"];
                CMTimeMakeFromDictionary(&v24, v13);

                start = v25;
                duration = v24;
                CMTimeRangeMake(&range, &start, &duration);
                if (v2)
                {
                  [v2 timestamp];
                }

                else
                {
                  memset(&start, 0, sizeof(start));
                }

                if (CMTimeRangeContainsTime(&range, &start))
                {
                  v5 = 0.0;
                  goto LABEL_20;
                }
              }
            }

            v4 = [(NSArray *)v3 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v4)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:

        [v2 score];
        *&v15 = v5 * v14;
        [v2 setScore:v15];
      }

      v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v19);
  }
}

- (void)setKeyFrameTime:(id *)a3 isHeadingFrame:(BOOL)a4
{
  v4 = a4;
  v6 = *a3;
  [(VCPVideoKeyFrame *)self->_activeKeyFrame setTimestamp:&v6];
  [(VCPVideoKeyFrame *)self->_activeKeyFrame setIsHeadingFrame:v4];
}

- (void)prepareFrameStats:(id)a3 timeStamp:(id *)a4
{
  v6 = a3;
  [(VCPVideoKeyFrame *)self->_activeKeyFrame resetStatsFlag];
  v39 = *a4;
  [(VCPVideoKeyFrameAnalyzer *)self loadKeyFrameResults:&v39];
  activeKeyFrame = self->_activeKeyFrame;
  v8 = [v6 frameProcessedByFaceDetector];
  v9 = [v6 detectedFaces];
  [(VCPVideoKeyFrame *)activeKeyFrame setFaceStatsFlag:v8 detectedFaces:v9];

  v10 = self->_activeKeyFrame;
  [v6 frameExpressionScore];
  [(VCPVideoKeyFrame *)v10 setExpressionChangeScore:?];
  v11 = self->_activeKeyFrame;
  v12 = [v6 frameProcessedByVideoAnalyzer];
  [v6 cameraMotionScore];
  v14 = v13;
  [v6 subjectActionScore];
  v16 = v15;
  [v6 interestingnessScore];
  v18 = v17;
  [v6 obstructionScore];
  v20 = v19;
  [v6 colorfulnessScore];
  v22 = v21;
  [v6 exposureScore];
  v24 = v23;
  v25 = [v6 frameProcessedByHumanAnalyzer];
  [v6 humanPoseScore];
  v27 = v26;
  [v6 humanActionScore];
  v29 = v28;
  v30 = [v6 subMbMotionAvailable];
  LODWORD(v31) = v14;
  LODWORD(v32) = v16;
  LODWORD(v33) = v18;
  LODWORD(v34) = v20;
  LODWORD(v35) = v22;
  LODWORD(v36) = v24;
  LODWORD(v37) = v27;
  LODWORD(v38) = v29;
  [(VCPVideoKeyFrame *)v11 setMotionStatsFlag:v12 cameraMotion:v25 subjectAction:v30 interestingness:v31 obstruction:v32 colorfulness:v33 exposureScore:v34 humanActionStatsFlag:v35 humanPoseScore:v36 humanActionScore:v37 subMb:v38];
}

- (float)computeMinDistanceBetween:(id)a3 withSet:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    v9 = INFINITY;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v14 = 0.0;
        v12 = [v5 computeDistance:&v14 toDescriptor:v11];
        if (v12)
        {
          v9 = v12;
          goto LABEL_14;
        }

        if (v14 < v9)
        {
          v9 = v14;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = INFINITY;
  }

LABEL_14:

  return v9;
}

@end