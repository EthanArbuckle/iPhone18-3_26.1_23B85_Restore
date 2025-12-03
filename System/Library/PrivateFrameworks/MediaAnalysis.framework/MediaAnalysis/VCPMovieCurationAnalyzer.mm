@interface VCPMovieCurationAnalyzer
- (VCPMovieCurationAnalyzer)initWithAnalysisTypes:(unint64_t)types transform:(CGAffineTransform *)transform timeRange:(id *)range isLivePhoto:(BOOL)photo photoOffset:(float)offset hadFlash:(BOOL)flash hadZoom:(BOOL)zoom settlingHadZoom:(BOOL)self0 keyFrameResults:(id)self1 isTimelapse:(BOOL)self2 preferredTimeRange:(id *)self3 asset:(id)self4;
- (id)audioQualityScore:(id *)score;
- (id)results;
- (int)analyzeKeyFrame:(__CVBuffer *)frame timestamp:(id *)timestamp duration:(id *)duration frameStats:(id)stats flags:(unint64_t *)flags photoOffset:(float)offset;
- (int)generateMovieCurations;
- (int)postProcessKeyFrames;
- (void)addHighlight:(id)highlight to:(id)to;
- (void)addSettling:(id)settling to:(id)to;
- (void)addSticker:(id)sticker to:(id)to;
- (void)addSummary:(id)summary to:(id)to;
- (void)loadVideoAnalysisResults:(id)results audioAnalysisResults:(id)analysisResults resultTypes:(unint64_t)types videoCNNResults:(id)nResults andFaceRanges:(id)ranges frameSize:(CGSize)size;
- (void)reportMovieCurationAnalysisResults:(id)results withSummaryAnalytics:(id)analytics;
@end

@implementation VCPMovieCurationAnalyzer

- (VCPMovieCurationAnalyzer)initWithAnalysisTypes:(unint64_t)types transform:(CGAffineTransform *)transform timeRange:(id *)range isLivePhoto:(BOOL)photo photoOffset:(float)offset hadFlash:(BOOL)flash hadZoom:(BOOL)zoom settlingHadZoom:(BOOL)self0 keyFrameResults:(id)self1 isTimelapse:(BOOL)self2 preferredTimeRange:(id *)self3 asset:(id)self4
{
  zoomCopy = zoom;
  flashCopy = flash;
  photoCopy = photo;
  resultsCopy = results;
  assetCopy = asset;
  v44.receiver = self;
  v44.super_class = VCPMovieCurationAnalyzer;
  v24 = [(VCPMovieCurationAnalyzer *)&v44 init];
  v25 = v24;
  if (v24)
  {
    v24->_isLivePhoto = photoCopy;
    v24->_hadFlash = flashCopy;
    v24->_hadZoom = zoomCopy;
    v26 = [VCPVideoKeyFrameAnalyzer alloc];
    v27 = *&transform->c;
    v41 = *&transform->a;
    v42 = v27;
    v43 = *&transform->tx;
    v28 = *&range->var0.var3;
    v40[0] = *&range->var0.var0;
    v40[1] = v28;
    v40[2] = *&range->var1.var1;
    v29 = [(VCPVideoKeyFrameAnalyzer *)v26 initWithTransform:&v41 timeRange:v40 isLivePhoto:photoCopy keyFrameResults:resultsCopy];
    keyFrameAnalyzer = v25->_keyFrameAnalyzer;
    v25->_keyFrameAnalyzer = v29;

    v31 = [VCPMovieHighlightAnalyzer alloc];
    v32 = *&timeRange->var0.var3;
    v41 = *&timeRange->var0.var0;
    v42 = v32;
    v43 = *&timeRange->var1.var1;
    assetCopy = [(VCPMovieHighlightAnalyzer *)v31 initWithAnalysisType:types isLivePhoto:photoCopy photoOffset:flashCopy hadFlash:zoomCopy hadZoom:hadZoom settlingHadZoom:timelapse isTimelapse:COERCE_DOUBLE(__PAIR64__(DWORD1(v43) preferredTimeRange:LODWORD(offset))) asset:&v41, assetCopy];
    highlightAnalyzer = v25->_highlightAnalyzer;
    v25->_highlightAnalyzer = assetCopy;

    v35 = v25->_keyFrameAnalyzer;
    if (v35)
    {
      v35 = v25->_highlightAnalyzer;
      if (v35)
      {
        v36 = *&range->var0.var0;
        v37 = *&range->var0.var3;
        *&v25->_timeRange.duration.timescale = *&range->var1.var1;
        *&v25->_timeRange.start.epoch = v37;
        *&v25->_timeRange.start.value = v36;
        v35 = v25;
      }
    }

    v38 = v35;
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (int)analyzeKeyFrame:(__CVBuffer *)frame timestamp:(id *)timestamp duration:(id *)duration frameStats:(id)stats flags:(unint64_t *)flags photoOffset:(float)offset
{
  statsCopy = stats;
  if (!self->_isLivePhoto)
  {
    goto LABEL_9;
  }

  time = *timestamp;
  if (CMTimeGetSeconds(&time) >= offset)
  {
    goto LABEL_9;
  }

  time = *timestamp;
  if (CMTimeGetSeconds(&time) <= (offset + -0.5))
  {
    goto LABEL_9;
  }

  highlightAnalyzer = self->_highlightAnalyzer;
  if (statsCopy)
  {
    [statsCopy motionParam];
    [statsCopy motionParamDiff];
  }

  else
  {
    memset(&time, 0, sizeof(time));
    memset(v26, 0, sizeof(v26));
  }

  v14 = [(VCPMovieHighlightAnalyzer *)highlightAnalyzer analyzeMotionStability:&time motionParamDiff:v26];
  if (!v14)
  {
    v15 = self->_highlightAnalyzer;
    [statsCopy subjectActionScore];
    v17 = v16;
    [statsCopy subtleMotionScore];
    v19 = v18;
    [statsCopy humanActionScore];
    LODWORD(v21) = v20;
    LODWORD(v22) = v17;
    LODWORD(v23) = v19;
    v14 = [(VCPMovieHighlightAnalyzer *)v15 analyzeRankingScores:v22 subtleMotion:v23 humanAction:v21];
    if (!v14)
    {
LABEL_9:
      keyFrameAnalyzer = self->_keyFrameAnalyzer;
      time = *timestamp;
      v14 = [(VCPVideoKeyFrameAnalyzer *)keyFrameAnalyzer analyzeFrame:frame frameStats:statsCopy timestamp:&time];
    }
  }

  return v14;
}

- (void)loadVideoAnalysisResults:(id)results audioAnalysisResults:(id)analysisResults resultTypes:(unint64_t)types videoCNNResults:(id)nResults andFaceRanges:(id)ranges frameSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  resultsCopy = results;
  analysisResultsCopy = analysisResults;
  nResultsCopy = nResults;
  rangesCopy = ranges;
  self->_resultTypesOnLoad = types;
  v18 = [resultsCopy objectForKeyedSubscript:@"FeatureVectorResults"];
  descriptorResults = self->_descriptorResults;
  self->_descriptorResults = v18;

  v20 = [resultsCopy objectForKeyedSubscript:@"QualityResults"];
  qualityResuls = self->_qualityResuls;
  self->_qualityResuls = v20;

  v22 = [resultsCopy objectForKeyedSubscript:@"InterestingnessResults"];
  junkResults = self->_junkResults;
  self->_junkResults = v22;

  v24 = [resultsCopy objectForKeyedSubscript:@"FaceResults"];
  faceResults = self->_faceResults;
  self->_faceResults = v24;

  v26 = [resultsCopy objectForKeyedSubscript:@"PetsResults"];
  petsResults = self->_petsResults;
  self->_petsResults = v26;

  v28 = [resultsCopy objectForKeyedSubscript:@"FineSubjectMotionResults"];
  actionResults = self->_actionResults;
  self->_actionResults = v28;

  v30 = [resultsCopy objectForKeyedSubscript:@"SubtleMotionResults"];
  subtleMotionResults = self->_subtleMotionResults;
  self->_subtleMotionResults = v30;

  v32 = [resultsCopy objectForKeyedSubscript:@"HumanActionResults"];
  humanActionResults = self->_humanActionResults;
  self->_humanActionResults = v32;

  v34 = [resultsCopy objectForKeyedSubscript:@"HumanPoseResults"];
  humanPoseResults = self->_humanPoseResults;
  self->_humanPoseResults = v34;

  v36 = [resultsCopy objectForKeyedSubscript:@"CameraMotionResults"];
  cameraMotionResults = self->_cameraMotionResults;
  self->_cameraMotionResults = v36;

  v38 = [resultsCopy objectForKeyedSubscript:@"SaliencyResults"];
  saliencyResults = self->_saliencyResults;
  self->_saliencyResults = v38;

  v40 = [resultsCopy objectForKeyedSubscript:@"SceneResults"];
  sceneResults = self->_sceneResults;
  self->_sceneResults = v40;

  v42 = [resultsCopy objectForKeyedSubscript:@"OrientationResults"];
  orientationResults = self->_orientationResults;
  self->_orientationResults = v42;

  v44 = [analysisResultsCopy objectForKeyedSubscript:@"VoiceResults"];
  voiceResults = self->_voiceResults;
  self->_voiceResults = v44;

  v46 = [analysisResultsCopy objectForKeyedSubscript:@"AudioQualityResults"];
  audioQualityResults = self->_audioQualityResults;
  self->_audioQualityResults = v46;

  v48 = [nResultsCopy objectForKeyedSubscript:@"MLHighlightScoreResults"];
  mlHighlightScoreResults = self->_mlHighlightScoreResults;
  self->_mlHighlightScoreResults = v48;

  v50 = [nResultsCopy objectForKeyedSubscript:@"MLQualityResults"];
  mlQualityResults = self->_mlQualityResults;
  self->_mlQualityResults = v50;

  faceRanges = self->_faceRanges;
  self->_faceRanges = rangesCopy;

  self->_frameSize.width = width;
  self->_frameSize.height = height;
}

- (int)postProcessKeyFrames
{
  [(VCPVideoKeyFrameAnalyzer *)self->_keyFrameAnalyzer preparePostProcessingStatsFromFaceRange:self->_faceRanges junkResults:self->_junkResults];
  keyFrameAnalyzer = self->_keyFrameAnalyzer;

  return [(VCPVideoKeyFrameAnalyzer *)keyFrameAnalyzer postProcess];
}

- (int)generateMovieCurations
{
  postProcessKeyFrames = [(VCPMovieCurationAnalyzer *)self postProcessKeyFrames];
  if (postProcessKeyFrames)
  {
    return postProcessKeyFrames;
  }

  descriptorResults = self->_descriptorResults;
  qualityResuls = self->_qualityResuls;
  junkResults = self->_junkResults;
  faceResults = self->_faceResults;
  petsResults = self->_petsResults;
  saliencyResults = self->_saliencyResults;
  v15 = *&self->_actionResults;
  voiceResults = self->_voiceResults;
  highlightAnalyzer = self->_highlightAnalyzer;
  keyFrames = [(VCPVideoKeyFrameAnalyzer *)self->_keyFrameAnalyzer keyFrames];
  postProcessKeyFrames = [(VCPMovieHighlightAnalyzer *)highlightAnalyzer prepareRequiredQualityResult:qualityResuls junkDetectionResult:junkResults descriptorResult:descriptorResults faceResult:faceResults petsResult:petsResults saliencyResult:saliencyResults actionResult:self->_frameSize.width subtleMotionResult:self->_frameSize.height voiceResult:v15 keyFrameResult:voiceResults sceneResults:keyFrames humanActionResults:self->_sceneResults humanPoseResults:self->_humanActionResults cameraMotionResults:self->_humanPoseResults orientationResults:self->_cameraMotionResults mlHighlightScoreResults:self->_orientationResults mlQualityResults:self->_mlHighlightScoreResults frameSize:self->_mlQualityResults resultTypes:self->_resultTypesOnLoad];

  if (postProcessKeyFrames)
  {
    return postProcessKeyFrames;
  }

  v14 = self->_highlightAnalyzer;

  return [(VCPMovieHighlightAnalyzer *)v14 generateHighlights];
}

- (id)audioQualityScore:(id *)score
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [(NSArray *)self->_audioQualityResults count];
  if (!v5)
  {
    goto LABEL_21;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = self->_audioQualityResults;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v7)
  {

LABEL_20:
    v5 = 0;
    goto LABEL_21;
  }

  v8 = *v26;
  v9 = 0.0;
  v10 = MEMORY[0x1E6960CC0];
  v11 = 0.0;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v26 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v25 + 1) + 8 * i);
      memset(&v24, 0, sizeof(v24));
      CMTimeRangeMakeFromDictionary(&v24, v13);
      v14 = [(__CFDictionary *)v13 objectForKeyedSubscript:@"quality"];
      [v14 floatValue];
      v16 = v15;

      range = v24;
      memset(&v23, 0, sizeof(v23));
      v17 = *&score->var0.var3;
      *&v21.start.value = *&score->var0.var0;
      *&v21.start.epoch = v17;
      *&v21.duration.timescale = *&score->var1.var1;
      CMTimeRangeGetIntersection(&v23, &range, &v21);
      if ((v23.start.flags & 1) != 0 && (v23.duration.flags & 1) != 0 && !v23.duration.epoch && (v23.duration.value & 0x8000000000000000) == 0)
      {
        range.start = v23.duration;
        *&v21.start.value = *v10;
        v21.start.epoch = *(v10 + 16);
        if (!CMTimeCompare(&range.start, &v21.start))
        {
          continue;
        }
      }

      range.start = v23.duration;
      Seconds = CMTimeGetSeconds(&range.start);
      v9 = v9 + (v16 * Seconds);
      v11 = v11 + Seconds;
    }

    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v7);

  LODWORD(v19) = 1.0;
  if (v11 < 1.0)
  {
    goto LABEL_20;
  }

  if ((v9 / v11) < 0.8)
  {
    *&v19 = 0.0;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
LABEL_21:

  return v5;
}

- (void)addHighlight:(id)highlight to:(id)to
{
  v42[4] = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  toCopy = to;
  if (highlightCopy)
  {
    [highlightCopy timerange];
    v40 = time;
    [highlightCopy timerange];
    *&v36.value = v38;
    v36.epoch = v39;
    [highlightCopy score];
    v9 = v8;
    [highlightCopy bestPlaybackCrop];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v35 = 0uLL;
    keyFrame = [highlightCopy keyFrame];
    v19 = keyFrame;
    if (keyFrame)
    {
      [keyFrame timestamp];
    }

    else
    {
      v35 = 0uLL;
    }

    keyFrame2 = [highlightCopy keyFrame];
    [keyFrame2 score];
    v22 = v21;

    colorNormalization = [highlightCopy colorNormalization];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    *&time.value = v35;
    time.epoch = 0;
    v25 = CMTimeCopyAsDictionary(&time, 0);
    [dictionary setObject:v25 forKeyedSubscript:@"keyFrameTime"];

    LODWORD(v26) = v22;
    v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
    [dictionary setObject:v27 forKeyedSubscript:@"keyFrameScore"];

    v43.origin.x = v11;
    v43.origin.y = v13;
    v43.size.width = v15;
    v43.size.height = v17;
    v28 = NSStringFromRect(v43);
    [dictionary setObject:v28 forKeyedSubscript:@"bestPlaybackCrop"];

    if (!self->_isLivePhoto)
    {
      [dictionary setObject:colorNormalization forKeyedSubscript:@"colorNormalizationData"];
      [highlightCopy timerange];
      v29 = [(VCPMovieCurationAnalyzer *)self audioQualityScore:&time];
      if (v29)
      {
        [dictionary setObject:v29 forKeyedSubscript:@"audioQuality"];
      }
    }

    v41[0] = @"start";
    time = v40;
    v30 = CMTimeCopyAsDictionary(&time, 0);
    v42[0] = v30;
    v41[1] = @"duration";
    time = v36;
    v31 = CMTimeCopyAsDictionary(&time, 0);
    v42[1] = v31;
    v41[2] = @"quality";
    LODWORD(v32) = v9;
    v33 = [MEMORY[0x1E696AD98] numberWithFloat:v32];
    v41[3] = @"attributes";
    v42[2] = v33;
    v42[3] = dictionary;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:4];
    [toCopy addObject:v34];
  }
}

- (void)addSummary:(id)summary to:(id)to
{
  v50[3] = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  toCopy = to;
  if (summaryCopy)
  {
    [summaryCopy timerange];
    v44 = time;
    [summaryCopy timerange];
    *&v40.value = v42;
    v40.epoch = v43;
    [summaryCopy score];
    v8 = v7;
    v39 = 0uLL;
    keyFrame = [summaryCopy keyFrame];
    v10 = keyFrame;
    if (keyFrame)
    {
      [keyFrame timestamp];
    }

    else
    {
      v39 = 0uLL;
    }

    keyFrame2 = [summaryCopy keyFrame];
    [keyFrame2 score];
    v13 = v12;

    [summaryCopy bestPlaybackCrop];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    isTrimmed = [summaryCopy isTrimmed];
    if ([summaryCopy isAutoPlayable])
    {
      v23 = 0x80000;
    }

    else
    {
      v23 = 0;
    }

    v49[0] = @"keyFrameTime";
    *&time.value = v39;
    time.epoch = 0;
    v24 = CMTimeCopyAsDictionary(&time, 0);
    v50[0] = v24;
    v49[1] = @"keyFrameScore";
    LODWORD(v25) = v13;
    v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
    v50[1] = v26;
    v49[2] = @"bestPlaybackCrop";
    v51.origin.x = v15;
    v51.origin.y = v17;
    v51.size.width = v19;
    v51.size.height = v21;
    v27 = NSStringFromRect(v51);
    v50[2] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:3];

    v47 = @"summaryIsTrimmed";
    v29 = [MEMORY[0x1E696AD98] numberWithBool:isTrimmed];
    v48 = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];

    v45[0] = @"start";
    time = v44;
    v31 = CMTimeCopyAsDictionary(&time, 0);
    v46[0] = v31;
    v45[1] = @"duration";
    time = v40;
    v32 = CMTimeCopyAsDictionary(&time, 0);
    v46[1] = v32;
    v45[2] = @"quality";
    LODWORD(v33) = v8;
    v34 = [MEMORY[0x1E696AD98] numberWithFloat:v33];
    v46[2] = v34;
    v45[3] = @"flags";
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v23];
    v45[4] = @"attributes";
    v46[3] = v35;
    v46[4] = v28;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:5];
    [toCopy addObject:v36];

    v37 = [toCopy objectAtIndexedSubscript:0];
    [(VCPMovieCurationAnalyzer *)self reportMovieCurationAnalysisResults:v37 withSummaryAnalytics:v30];
  }

  else
  {
    [(VCPMovieCurationAnalyzer *)self reportMovieCurationAnalysisResults:0 withSummaryAnalytics:0];
  }
}

- (void)addSticker:(id)sticker to:(id)to
{
  v15[3] = *MEMORY[0x1E69E9840];
  stickerCopy = sticker;
  toCopy = to;
  if (stickerCopy)
  {
    v14[0] = @"start";
    [stickerCopy timerange];
    v12[0] = v12[2];
    v7 = CMTimeCopyAsDictionary(v12, 0);
    v15[0] = v7;
    v14[1] = @"duration";
    [stickerCopy timerange];
    time = v12[1];
    v8 = CMTimeCopyAsDictionary(&time, 0);
    v15[1] = v8;
    v14[2] = @"quality";
    v9 = MEMORY[0x1E696AD98];
    [stickerCopy score];
    v10 = [v9 numberWithFloat:?];
    v15[2] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
    [toCopy addObject:v11];
  }
}

- (void)addSettling:(id)settling to:(id)to
{
  v38[6] = *MEMORY[0x1E69E9840];
  settlingCopy = settling;
  toCopy = to;
  if (settlingCopy)
  {
    [settlingCopy timerange];
    v34 = time;
    [settlingCopy timerange];
    *&v30.value = v32;
    v30.epoch = v33;
    [settlingCopy score];
    v8 = v7;
    if ([settlingCopy isSettlingOK])
    {
      v9 = 0x10000000;
    }

    else
    {
      v9 = 0;
    }

    v37[0] = @"AutoplayScore";
    v10 = MEMORY[0x1E696AD98];
    [settlingCopy autoplayScore];
    v11 = [v10 numberWithFloat:?];
    v38[0] = v11;
    v37[1] = @"ExposureChangeScore";
    v12 = MEMORY[0x1E696AD98];
    [settlingCopy exposureChangeScore];
    v13 = [v12 numberWithFloat:?];
    v38[1] = v13;
    v37[2] = @"SharpnessScore";
    v14 = MEMORY[0x1E696AD98];
    [settlingCopy sharpnessScore];
    v15 = [v14 numberWithFloat:?];
    v38[2] = v15;
    v37[3] = @"ZoomChangeScore";
    v16 = MEMORY[0x1E696AD98];
    [settlingCopy zoomChangeScore];
    v17 = [v16 numberWithFloat:?];
    v38[3] = v17;
    v37[4] = @"FlashScore";
    v18 = MEMORY[0x1E696AD98];
    [settlingCopy flashScore];
    v19 = [v18 numberWithFloat:?];
    v38[4] = v19;
    v37[5] = @"RankingLevel";
    v20 = MEMORY[0x1E696AD98];
    [(VCPMovieHighlightAnalyzer *)self->_highlightAnalyzer rankingLevel];
    v21 = [v20 numberWithFloat:?];
    v38[5] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:6];

    v35[0] = @"start";
    time = v34;
    v23 = CMTimeCopyAsDictionary(&time, 0);
    v36[0] = v23;
    v35[1] = @"duration";
    time = v30;
    v24 = CMTimeCopyAsDictionary(&time, 0);
    v36[1] = v24;
    v35[2] = @"quality";
    LODWORD(v25) = v8;
    v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
    v36[2] = v26;
    v35[3] = @"flags";
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9];
    v35[4] = @"attributes";
    v36[3] = v27;
    v36[4] = v22;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:5];
    [toCopy addObject:v28];
  }
}

- (id)results
{
  v49 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  array5 = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  results = [(VCPMovieHighlightAnalyzer *)self->_highlightAnalyzer results];
  v3 = [results countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v3)
  {
    v4 = *v41;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v41 != v4)
        {
          objc_enumerationMutation(results);
        }

        [(VCPMovieCurationAnalyzer *)self addHighlight:*(*(&v40 + 1) + 8 * i) to:array2];
      }

      v3 = [results countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v3);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(VCPMovieHighlightAnalyzer *)self->_highlightAnalyzer highlightScoreResults];
  v6 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v6)
  {
    v28 = *v37;
    do
    {
      for (j = 0; j != v6; ++j)
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v36 + 1) + 8 * j);
        v45[0] = @"start";
        if (v8)
        {
          [v8 timerange];
        }

        else
        {
          v34 = 0u;
          v35 = 0u;
          v33 = 0u;
        }

        *&time[0].value = v33;
        time[0].epoch = v34;
        v9 = CMTimeCopyAsDictionary(time, 0);
        v46[0] = v9;
        v45[1] = @"duration";
        if (v8)
        {
          [v8 timerange];
        }

        else
        {
          memset(time, 0, sizeof(time));
        }

        v44 = time[1];
        v10 = CMTimeCopyAsDictionary(&v44, 0);
        v46[1] = v10;
        v45[2] = @"quality";
        v11 = MEMORY[0x1E696AD98];
        [v8 score];
        v12 = [v11 numberWithFloat:?];
        v46[2] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:3];
        [array3 addObject:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v6);
  }

  movieSummary = [(VCPMovieHighlightAnalyzer *)self->_highlightAnalyzer movieSummary];
  [(VCPMovieCurationAnalyzer *)self addSummary:movieSummary to:array];

  animatedStickerGating = [(VCPMovieHighlightAnalyzer *)self->_highlightAnalyzer animatedStickerGating];
  [(VCPMovieCurationAnalyzer *)self addSticker:animatedStickerGating to:array5];

  if (+[VCPMovieCurationAnalyzer isSettlingEffectPregatingEnabled])
  {
    settlingEffects = [(VCPMovieHighlightAnalyzer *)self->_highlightAnalyzer settlingEffects];
    [(VCPMovieCurationAnalyzer *)self addSettling:settlingEffects to:array4];
  }

  if ([array count])
  {
    [dictionary setObject:array forKey:@"MovieSummaryResults"];
  }

  if ([array2 count])
  {
    [dictionary setObject:array2 forKey:@"MovieHighlightResults"];
  }

  keyFrameScores = [(VCPVideoKeyFrameAnalyzer *)self->_keyFrameAnalyzer keyFrameScores];
  v18 = [keyFrameScores count] == 0;

  if (!v18)
  {
    keyFrameScores2 = [(VCPVideoKeyFrameAnalyzer *)self->_keyFrameAnalyzer keyFrameScores];
    [dictionary setObject:keyFrameScores2 forKey:@"KeyFrameResults"];
  }

  if ([array3 count])
  {
    [dictionary setObject:array3 forKey:@"MovieHighlightScoreResults"];
  }

  if ([array4 count])
  {
    [dictionary setObject:array4 forKey:@"SettlingEffectsGatingResults"];
  }

  if ([array5 count])
  {
    [dictionary setObject:array5 forKey:@"AnimatedStickerResults"];
  }

  if ([dictionary count])
  {
    v20 = dictionary;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  return v20;
}

- (void)reportMovieCurationAnalysisResults:(id)results withSummaryAnalytics:(id)analytics
{
  v32[3] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  analyticsCopy = analytics;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (resultsCopy)
  {
    if (!analyticsCopy)
    {
      goto LABEL_8;
    }

    v9 = [resultsCopy objectForKeyedSubscript:@"quality"];
    [v9 floatValue];
    v11 = v10;
    v12 = [resultsCopy objectForKeyedSubscript:@"flags"];
    unsignedIntegerValue = [v12 unsignedIntegerValue];

    v14 = [resultsCopy objectForKeyedSubscript:@"duration"];
    CMTimeMakeFromDictionary(&v26, v14);
    Seconds = CMTimeGetSeconds(&v26);

    v16 = [analyticsCopy objectForKeyedSubscript:@"summaryIsTrimmed"];
    bOOLValue = [v16 BOOLValue];

    *&v18 = v11 * ((unsignedIntegerValue >> 19) & 1);
    v31[0] = @"AutoPlayableScore";
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    *&v20 = Seconds;
    v32[0] = v19;
    v31[1] = @"SummaryDuration";
    v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
    v32[1] = v21;
    v31[2] = @"IsTrimmed";
    v22 = [MEMORY[0x1E696AD98] numberWithInt:bOOLValue];
    v32[2] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];
    [dictionary addEntriesFromDictionary:v23];
  }

  if (self->_isLivePhoto)
  {
    v29 = @"MediaType";
    v30 = @"livePhoto";
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  }

  else
  {
    v27 = @"MediaType";
    v28 = @"movie";
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  }
  v24 = ;
  [dictionary addEntriesFromDictionary:v24];

  v25 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v25 sendEvent:@"com.apple.mediaanalysisd.moviecurationresults" withAnalytics:dictionary];

LABEL_8:
}

@end