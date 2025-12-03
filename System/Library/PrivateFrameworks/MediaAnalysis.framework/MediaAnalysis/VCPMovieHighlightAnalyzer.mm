@interface VCPMovieHighlightAnalyzer
- ($AFC8CF76A46F37F9FB23C20884F4FD99)computeActionFaceTrimFor:(SEL)for;
- ($AFC8CF76A46F37F9FB23C20884F4FD99)computeQualityTrimFor:(SEL)for withKeyFrame:(id *)frame;
- ($AFC8CF76A46F37F9FB23C20884F4FD99)computeSteadyTranslationTrimFor:(SEL)for;
- ($AFC8CF76A46F37F9FB23C20884F4FD99)computeTrimWithHighlightScoreFor:(SEL)for;
- ($AFC8CF76A46F37F9FB23C20884F4FD99)findBestTrim:(SEL)trim;
- (BOOL)addSegment:(id)segment;
- (BOOL)checkCameraZoom:(id *)zoom;
- (BOOL)isGoodQuality:(id *)quality;
- (BOOL)updateCropHeatMap:(float *)map withResults:(id)results timeRange:(id *)range resultsKey:(id)key;
- (CGRect)computeBestPlaybackCrop:(id *)crop;
- (VCPMovieHighlightAnalyzer)initWithAnalysisType:(unint64_t)type isLivePhoto:(BOOL)photo photoOffset:(float)offset hadFlash:(BOOL)flash hadZoom:(BOOL)zoom settlingHadZoom:(BOOL)hadZoom isTimelapse:(BOOL)timelapse preferredTimeRange:(id *)self0 asset:(id)self1;
- (VCPMovieHighlightAnalyzer)initWithPostProcessOptions:(id)options asset:(id)asset;
- (float)actionScoreForTimerange:(id *)timerange;
- (float)analyzeOverallQuality:(id *)quality isSettlingEffect:(BOOL)effect isAnimatedSticker:(BOOL)sticker;
- (float)cameraMotionScoreForTimerange:(id *)timerange;
- (float)computeActionScoreInTimerange:(id *)timerange;
- (float)computeExpressionScoreInTimerange:(id *)timerange;
- (float)computeHighlightScoreOfRange:(id *)range;
- (float)computeHumanActionScoreInTimerange:(id *)timerange;
- (float)computeHumanPoseScoreInTimerange:(id *)timerange;
- (float)computeMLHighlightScoreForTimerange:(id *)timerange;
- (float)computeMLQualityScoreForTimerange:(id *)timerange;
- (float)computeSubtleMotionScoreInTimerange:(id *)timerange;
- (float)computeVoiceScoreInTimeRange:(id *)range;
- (float)expressionScoreForTimerange:(id *)timerange;
- (float)highlightScoreForTimeRange:(id *)range average:(BOOL)average;
- (float)junkScoreForTimerange:(id *)timerange lengthScale:(BOOL)scale;
- (float)qualityScoreForTimerange:(id *)timerange;
- (float)rankingLevel;
- (float)settlingExposureChangeScore:(id *)score;
- (float)settlingMotionScore:(id *)score;
- (float)settlingSharpnessScore:(id *)score;
- (float)settlingSubjectScore:(id *)score;
- (float)stickerScaledScore:(float)score highPrecisionThreshold:(float)threshold highRecallThreshold:(float)recallThreshold;
- (float)subtleMotionScoreForTimerange:(id *)timerange;
- (float)visualPleasingScoreForTimerange:(id *)timerange;
- (float)voiceScoreForTimerange:(id *)timerange;
- (id)adjustHighlightWithContext:(id)context;
- (id)audioQualityScore:(id *)score;
- (id)findBestHighlightSegment:(id *)segment targetTrim:(BOOL)trim;
- (id)getHighlightAttributes:(id)attributes withHighlightResults:(id)results;
- (id)maxTrimMovieHighlight:(id)highlight;
- (id)movieSummary;
- (id)pickKeyFramesInRange:(id *)range;
- (id)postProcessMovieHighlight:(id)highlight frameSize:(CGSize)size;
- (id)settlingEffects;
- (id)targetExtendRange:(id *)range maxRange:(id *)maxRange;
- (id)targetMovieHighlight:(id)highlight mergedRange:(id *)range maxRange:(id *)maxRange;
- (id)targetProcessRange:(id *)range maxRange:(id *)maxRange;
- (id)targetTrimRange:(id *)range searchRange:(id *)searchRange;
- (int)analyzeMotionStability:()array<float motionParamDiff:(6UL> *)diff;
- (int)analyzeRankingScores:(float)scores subtleMotion:(float)motion humanAction:(float)action;
- (int)combineMLHighlightScore;
- (int)computeColorNormalization;
- (int)computeHighlightScoreResults;
- (int)evaluateSegment:(id)segment;
- (int)generateHighlights;
- (int)pickHighlightsFrom:(id)from;
- (int)postProcessMLHighlightScore;
- (int)prepareRequiredQualityResult:(id)result junkDetectionResult:(id)detectionResult descriptorResult:(id)descriptorResult faceResult:(id)faceResult petsResult:(id)petsResult saliencyResult:(id)saliencyResult actionResult:(id)actionResult subtleMotionResult:(id)self0 voiceResult:(id)self1 keyFrameResult:(id)self2 sceneResults:(id)self3 humanActionResults:(id)self4 humanPoseResults:(id)self5 cameraMotionResults:(id)self6 orientationResults:(id)self7 mlHighlightScoreResults:(id)self8 mlQualityResults:(id)self9 frameSize:(CGSize)size resultTypes:(unint64_t)types;
- (int)selectHighlights;
- (int)selectHighlightsForTimelapse;
- (void)SetKeyFramesForSegments:(id)segments;
- (void)adjustHighlightScoreWithContext;
- (void)computeHighlightScoreOfSegment:(id)segment;
- (void)generateExpressionSegments:(id *)segments;
- (void)loadHighlightScoreResults:(id)results;
- (void)searchFeatureVectorOfSegment:(id)segment;
@end

@implementation VCPMovieHighlightAnalyzer

- (VCPMovieHighlightAnalyzer)initWithAnalysisType:(unint64_t)type isLivePhoto:(BOOL)photo photoOffset:(float)offset hadFlash:(BOOL)flash hadZoom:(BOOL)zoom settlingHadZoom:(BOOL)hadZoom isTimelapse:(BOOL)timelapse preferredTimeRange:(id *)self0 asset:(id)self1
{
  assetCopy = asset;
  v63.receiver = self;
  v63.super_class = VCPMovieHighlightAnalyzer;
  v20 = [(VCPMovieHighlightAnalyzer *)&v63 init];
  v21 = v20;
  if (!v20)
  {
LABEL_12:
    v59 = 0;
    goto LABEL_15;
  }

  v20->_maxDurationInSeconds = 10.0;
  +[VCPMovieHighlightAnalyzer getMinimumHighlightInSec];
  v21->_minDurationInSeconds = v22;
  v21->_analysisTypes = type;
  if ((~type & 0x880) != 0 || (type & 0xC) == 0)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v61) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Not all needed analysis are available for video highlights.", &v61, 2u);
    }

    goto LABEL_12;
  }

  junkResults = v21->_junkResults;
  v21->_junkResults = 0;

  qualityResults = v21->_qualityResults;
  v21->_qualityResults = 0;

  faceResults = v21->_faceResults;
  v21->_faceResults = 0;

  petsResults = v21->_petsResults;
  v21->_petsResults = 0;

  saliencyResults = v21->_saliencyResults;
  v21->_saliencyResults = 0;

  actionResults = v21->_actionResults;
  v21->_actionResults = 0;

  subtleMotionResults = v21->_subtleMotionResults;
  v21->_subtleMotionResults = 0;

  voiceResults = v21->_voiceResults;
  v21->_voiceResults = 0;

  featureResults = v21->_featureResults;
  v21->_featureResults = 0;

  keyFrameResults = v21->_keyFrameResults;
  v21->_keyFrameResults = 0;

  sceneResults = v21->_sceneResults;
  v21->_sceneResults = 0;

  humanActionResults = v21->_humanActionResults;
  v21->_humanActionResults = 0;

  humanPoseResults = v21->_humanPoseResults;
  v21->_humanPoseResults = 0;

  cameraMotionResults = v21->_cameraMotionResults;
  v21->_cameraMotionResults = 0;

  orientationResults = v21->_orientationResults;
  v21->_orientationResults = 0;

  mlHighlightScoreResults = v21->_mlHighlightScoreResults;
  v21->_mlHighlightScoreResults = 0;

  mlQualityResults = v21->_mlQualityResults;
  v21->_mlQualityResults = 0;

  audioQualityResults = v21->_audioQualityResults;
  v21->_audioQualityResults = 0;

  v21->_frameSize.width = 0.0;
  v21->_frameSize.height = 0.0;
  *&v21->_maxHighlightScore = 0x3F80000000000000;
  animatedStickerGating = v21->_animatedStickerGating;
  v21->_animatedStickerGating = 0;

  *v21->_sumScores = 0;
  *&v21->_sumScores[2] = 0;
  array = [MEMORY[0x1E695DF70] array];
  expressionSegments = v21->_expressionSegments;
  v21->_expressionSegments = array;

  array2 = [MEMORY[0x1E695DF70] array];
  internalResults = v21->_internalResults;
  v21->_internalResults = array2;

  array3 = [MEMORY[0x1E695DF70] array];
  highlightResults = v21->_highlightResults;
  v21->_highlightResults = array3;

  array4 = [MEMORY[0x1E695DF70] array];
  internalConstraintResults = v21->_internalConstraintResults;
  v21->_internalConstraintResults = array4;

  v50 = v21->_expressionSegments;
  if (v50)
  {
    v50 = v21->_internalResults;
    if (v50)
    {
      v50 = v21->_internalConstraintResults;
      if (v50)
      {
        v21->_isLivePhoto = photo;
        v21->_photoOffset = offset;
        v21->_verbose = 0;
        v21->_hadFlash = flash;
        v21->_hadZoom = zoom;
        v21->_settlingHadZoom = hadZoom;
        v21->_isTimelapse = timelapse;
        v51 = *&range->var0.var0;
        v52 = *&range->var1.var1;
        *&v21->_preferredTimeRange.start.epoch = *&range->var0.var3;
        *&v21->_preferredTimeRange.duration.timescale = v52;
        *&v21->_preferredTimeRange.start.value = v51;
        *&v21->_isMaxTrim = 0;
        v53 = objc_alloc_init(VCPColorNormalizationAnalyzer);
        colorNormalizationAnalyzer = v21->_colorNormalizationAnalyzer;
        v21->_colorNormalizationAnalyzer = v53;

        v55 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:assetCopy];
        imageGenerator = v21->_imageGenerator;
        v21->_imageGenerator = v55;

        v57 = v21->_imageGenerator;
        if (v57)
        {
          [(AVAssetImageGenerator *)v57 setAppliesPreferredTrackTransform:1];
          [(AVAssetImageGenerator *)v21->_imageGenerator setMaximumSize:0x12BuLL, 0x12BuLL];
          v58 = MEMORY[0x1E6960CC0];
          v61 = *MEMORY[0x1E6960CC0];
          v62 = *(MEMORY[0x1E6960CC0] + 16);
          [(AVAssetImageGenerator *)v21->_imageGenerator setRequestedTimeToleranceAfter:&v61];
          v61 = *v58;
          v62 = *(v58 + 2);
          [(AVAssetImageGenerator *)v21->_imageGenerator setRequestedTimeToleranceBefore:&v61];
          v21->_numberOfFrames = 0;
          *&v21->_diffFlipCount.__elems_[4] = 0;
          *v21->_prevMotionParamDiff.__elems_ = 0u;
          *&v21->_prevMotionParamDiff.__elems_[4] = 0u;
          *&v21->_sumMotionParam.__elems_[2] = 0u;
          *v21->_diffFlipCount.__elems_ = 0u;
          v50 = v21;
        }

        else
        {
          v50 = 0;
        }
      }
    }
  }

  v59 = v50;
LABEL_15:

  return v59;
}

- (VCPMovieHighlightAnalyzer)initWithPostProcessOptions:(id)options asset:(id)asset
{
  optionsCopy = options;
  assetCopy = asset;
  v51.receiver = self;
  v51.super_class = VCPMovieHighlightAnalyzer;
  v8 = [(VCPMovieHighlightAnalyzer *)&v51 init];
  if (v8)
  {
    v9 = [optionsCopy objectForKeyedSubscript:@"HighlightFullResult"];
    if (v9)
    {
      v10 = [optionsCopy objectForKeyedSubscript:@"HighlightFullResult"];
      v8[278] = [v10 BOOLValue];
    }

    else
    {
      v8[278] = 1;
    }

    v12 = [optionsCopy objectForKeyedSubscript:@"HighlightContexts"];
    v13 = *(v8 + 36);
    *(v8 + 36) = v12;

    *(v8 + 70) = 0;
    v14 = [optionsCopy objectForKeyedSubscript:@"HighlightSpeedGuide"];

    if (v14)
    {
      v15 = [optionsCopy objectForKeyedSubscript:@"HighlightSpeedGuide"];
      [v15 floatValue];
      *(v8 + 70) = v16;
    }

    v17 = [*(v8 + 36) count];
    if (assetCopy && v17)
    {
      v18 = [VCPPhotosAsset assetWithPHAsset:assetCopy];
      v8[316] = [v18 isTimelapse];
      isLivePhoto = [v18 isLivePhoto];
      v8[304] = isLivePhoto;
      if ((isLivePhoto & 1) == 0)
      {
        v20 = objc_alloc_init(VCPColorNormalizationAnalyzer);
        v21 = *(v8 + 60);
        *(v8 + 60) = v20;

        v22 = MEMORY[0x1E6987E68];
        movie = [v18 movie];
        v24 = [v22 assetImageGeneratorWithAsset:movie];
        v25 = *(v8 + 46);
        *(v8 + 46) = v24;

        v26 = *(v8 + 46);
        if (!v26)
        {

          v48 = 0;
LABEL_29:
          v11 = v48;
          goto LABEL_30;
        }

        [v26 setAppliesPreferredTrackTransform:1];
        [*(v8 + 46) setMaximumSize:{0x12BuLL, 0x12BuLL}];
        v27 = MEMORY[0x1E6960CC0];
        *&v50.start.value = *MEMORY[0x1E6960CC0];
        v50.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
        [*(v8 + 46) setRequestedTimeToleranceAfter:&v50];
        *&v50.start.value = *v27;
        v50.start.epoch = *(v27 + 16);
        [*(v8 + 46) setRequestedTimeToleranceBefore:&v50];
      }
    }

    v28 = [optionsCopy objectForKeyedSubscript:@"HighlightMaxDuration"];

    if (v28)
    {
      v8[276] = 1;
      v29 = [optionsCopy objectForKeyedSubscript:@"HighlightMaxDuration"];
      [v29 floatValue];
      *(v8 + 52) = v30;

      v31 = [optionsCopy objectForKeyedSubscript:@"HighlightBestTrim"];
      if (v31)
      {
        v32 = [optionsCopy objectForKeyedSubscript:@"HighlightBestTrim"];
        v8[277] = [v32 BOOLValue];
      }

      else
      {
        v8[277] = 0;
      }

      v38 = [optionsCopy objectForKeyedSubscript:@"HighlightIndex"];
      if (!v38)
      {
        *(v8 + 56) = -1;
        goto LABEL_25;
      }

      v39 = [optionsCopy objectForKeyedSubscript:@"HighlightIndex"];
      *(v8 + 56) = [v39 intValue];
    }

    else
    {
      v8[276] = 0;
      v33 = [optionsCopy objectForKeyedSubscript:@"HighlightTargetDuration"];
      [v33 floatValue];
      *(v8 + 54) = v34;

      v35 = [optionsCopy objectForKeyedSubscript:@"HighlightTolerance"];
      [v35 floatValue];
      *(v8 + 55) = v36;

      v37 = [optionsCopy objectForKeyedSubscript:@"HighlightIndex"];
      *(v8 + 56) = [v37 intValue];

      v38 = [optionsCopy objectForKeyedSubscript:@"HighlightStartRange"];
      if (!v38)
      {
        v41 = *(MEMORY[0x1E6960C98] + 16);
        *&v50.start.value = *MEMORY[0x1E6960C98];
        *&v50.start.epoch = v41;
        *&v50.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
        v42 = *&v50.duration.timescale;
        *(v8 + 228) = *&v50.start.value;
        *(v8 + 244) = v41;
        *(v8 + 260) = v42;
        goto LABEL_25;
      }

      v39 = [optionsCopy objectForKeyedSubscript:@"HighlightStartRange"];
      CMTimeRangeMakeFromDictionary(&v50, v39);
      v40 = *&v50.start.epoch;
      *(v8 + 228) = *&v50.start.value;
      *(v8 + 244) = v40;
      *(v8 + 260) = *&v50.duration.timescale;
    }

LABEL_25:
    array = [MEMORY[0x1E695DF70] array];
    v44 = *(v8 + 21);
    *(v8 + 21) = array;

    array2 = [MEMORY[0x1E695DF70] array];
    v46 = *(v8 + 23);
    *(v8 + 23) = array2;

    +[VCPMovieHighlightAnalyzer getMinimumHighlightInSec];
    *(v8 + 53) = v47;
    v48 = *(v8 + 21);
    if (v48)
    {
      v48 = *(v8 + 23);
      if (v48)
      {
        v8[312] = 0;
        v48 = v8;
      }
    }

    goto LABEL_29;
  }

  v11 = 0;
LABEL_30:

  return v11;
}

- (int)prepareRequiredQualityResult:(id)result junkDetectionResult:(id)detectionResult descriptorResult:(id)descriptorResult faceResult:(id)faceResult petsResult:(id)petsResult saliencyResult:(id)saliencyResult actionResult:(id)actionResult subtleMotionResult:(id)self0 voiceResult:(id)self1 keyFrameResult:(id)self2 sceneResults:(id)self3 humanActionResults:(id)self4 humanPoseResults:(id)self5 cameraMotionResults:(id)self6 orientationResults:(id)self7 mlHighlightScoreResults:(id)self8 mlQualityResults:(id)self9 frameSize:(CGSize)size resultTypes:(unint64_t)types
{
  height = size.height;
  width = size.width;
  resultCopy = result;
  detectionResultCopy = detectionResult;
  detectionResultCopy2 = detectionResult;
  descriptorResultCopy = descriptorResult;
  faceResultCopy = faceResult;
  petsResultCopy = petsResult;
  saliencyResultCopy = saliencyResult;
  actionResultCopy = actionResult;
  motionResultCopy = motionResult;
  voiceResultCopy = voiceResult;
  frameResultCopy = frameResult;
  resultsCopy = results;
  actionResultsCopy = actionResults;
  poseResultsCopy = poseResults;
  motionResultsCopy = motionResults;
  orientationResultsCopy = orientationResults;
  scoreResultsCopy = scoreResults;
  qualityResultsCopy = qualityResults;
  if ((types & 0x10) != 0)
  {
    objc_storeStrong(&self->_qualityResults, result);
    objc_storeStrong(&self->_junkResults, detectionResultCopy);
    objc_storeStrong(&self->_featureResults, descriptorResult);
    objc_storeStrong(&self->_faceResults, faceResult);
    objc_storeStrong(&self->_petsResults, petsResult);
    objc_storeStrong(&self->_saliencyResults, saliencyResult);
    objc_storeStrong(&self->_actionResults, actionResult);
    objc_storeStrong(&self->_subtleMotionResults, motionResult);
    objc_storeStrong(&self->_voiceResults, voiceResult);
    objc_storeStrong(&self->_keyFrameResults, frameResult);
    objc_storeStrong(&self->_sceneResults, results);
    objc_storeStrong(&self->_humanActionResults, actionResults);
    objc_storeStrong(&self->_humanPoseResults, poseResults);
    objc_storeStrong(&self->_cameraMotionResults, motionResults);
    objc_storeStrong(&self->_orientationResults, orientationResults);
    objc_storeStrong(&self->_mlHighlightScoreResults, scoreResults);
    objc_storeStrong(&self->_mlQualityResults, qualityResults);
    v31 = 0;
    self->_frameSize.width = width;
    self->_frameSize.height = height;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPMovieHighlightAnalyzer] Missing voice analysis for video highlights.", buf, 2u);
    }

    v31 = -18;
  }

  return v31;
}

- (int)generateHighlights
{
  v18 = *MEMORY[0x1E69E9840];
  computeHighlightScoreResults = [(VCPMovieHighlightAnalyzer *)self computeHighlightScoreResults];
  if (computeHighlightScoreResults)
  {
    return computeHighlightScoreResults;
  }

  computeHighlightScoreResults = [(VCPMovieHighlightAnalyzer *)self postProcessMLHighlightScore];
  if (computeHighlightScoreResults)
  {
    return computeHighlightScoreResults;
  }

  computeHighlightScoreResults = [(VCPMovieHighlightAnalyzer *)self combineMLHighlightScore];
  if (computeHighlightScoreResults)
  {
    return computeHighlightScoreResults;
  }

  *&self->_maxHighlightScore = 0x3E19999A3E4CCCCDLL;
  if (self->_isTimelapse)
  {
    computeHighlightScoreResults = [(VCPMovieHighlightAnalyzer *)self selectHighlightsForTimelapse];
    if (!computeHighlightScoreResults)
    {
      goto LABEL_10;
    }

    return computeHighlightScoreResults;
  }

  computeHighlightScoreResults = [(VCPMovieHighlightAnalyzer *)self selectHighlights];
  if (computeHighlightScoreResults)
  {
    return computeHighlightScoreResults;
  }

LABEL_10:
  minHighlightScore = self->_maxHighlightScore * 0.5;
  if (minHighlightScore >= self->_minHighlightScore)
  {
    minHighlightScore = self->_minHighlightScore;
  }

  self->_minHighlightScore = fmaxf(minHighlightScore, 0.15);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_highlightResults;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        computeColorNormalization = [(VCPMovieHighlightAnalyzer *)self evaluateSegment:v11, v13];
        objc_autoreleasePoolPop(v12);
        if (computeColorNormalization)
        {

          return computeColorNormalization;
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if (self->_isLivePhoto)
  {
    return 0;
  }

  computeColorNormalization = [(VCPMovieHighlightAnalyzer *)self computeColorNormalization];
  if (!computeColorNormalization)
  {
    return 0;
  }

  return computeColorNormalization;
}

- (BOOL)isGoodQuality:(id *)quality
{
  v25 = *MEMORY[0x1E69E9840];
  time1.start = quality->var1;
  v5 = MEMORY[0x1E6960CC0];
  *&time2.start.value = *MEMORY[0x1E6960CC0];
  time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  if (!CMTimeCompare(&time1.start, &time2.start))
  {
    return 1;
  }

  memset(&v23, 0, sizeof(v23));
  v6 = *&quality->var0.var3;
  *&time1.start.value = *&quality->var0.var0;
  *&time1.start.epoch = v6;
  *&time1.duration.timescale = *&quality->var1.var1;
  CMTimeRangeGetEnd(&v23, &time1);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_internalResults;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v8)
  {
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        [v11 score];
        if (v12 < 0.0)
        {
          if (v11)
          {
            [v11 timerange];
          }

          else
          {
            memset(&time1, 0, sizeof(time1));
          }

          *&time2.start.value = *&time1.start.value;
          time2.start.epoch = time1.start.epoch;
          v16.start = v23;
          if (CMTimeCompare(&time2.start, &v16.start) > 0)
          {
            goto LABEL_24;
          }

          memset(&time1, 0, sizeof(time1));
          if (v11)
          {
            [v11 timerange];
          }

          else
          {
            memset(&time2, 0, sizeof(time2));
          }

          v13 = *&quality->var0.var3;
          *&v16.start.value = *&quality->var0.var0;
          *&v16.start.epoch = v13;
          *&v16.duration.timescale = *&quality->var1.var1;
          CMTimeRangeGetIntersection(&time1, &time2, &v16);
          if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&v16.start.value = *v5, v16.start.epoch = *(v5 + 16), CMTimeCompare(&time2.start, &v16.start)))
          {
            v14 = 0;
            goto LABEL_26;
          }
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
      v14 = 1;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_24:
    v14 = 1;
  }

LABEL_26:

  return v14;
}

- (id)postProcessMovieHighlight:(id)highlight frameSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v176 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  v6 = [highlightCopy objectForKeyedSubscript:?];
  v7 = [highlightCopy objectForKeyedSubscript:?];
  [(VCPMovieHighlightAnalyzer *)self loadHighlightScoreResults:v7];

  if ([(NSArray *)self->_contextResults count])
  {
    v8 = [highlightCopy objectForKeyedSubscript:@"SceneResults"];
    sceneResults = self->_sceneResults;
    self->_sceneResults = v8;

    v10 = [highlightCopy objectForKeyedSubscript:@"QualityResults"];
    qualityResults = self->_qualityResults;
    self->_qualityResults = v10;

    v125 = v6;
    array = [MEMORY[0x1E695DF70] array];
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    obj = [highlightCopy objectForKeyedSubscript:@"KeyFrameResults"];
    v12 = [obj countByEnumeratingWithState:&v160 objects:v175 count:16];
    if (v12)
    {
      v13 = *v161;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v161 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v160 + 1) + 8 * i);
          v16 = objc_alloc_init(VCPVideoKeyFrame);
          v17 = [v15 objectForKeyedSubscript:@"attributes"];
          v18 = [v17 objectForKeyedSubscript:@"timestamp"];

          if (v18)
          {
            memset(&start, 0, 24);
            [v18 floatValue];
            CMTimeMakeWithSeconds(&start.start, v19, 600);
            *&range.start.value = *&start.start.value;
            range.start.epoch = start.start.epoch;
            [(VCPVideoKeyFrame *)v16 loadKeyFrameResult:v15 timestamp:&range];
            [(VCPVideoKeyFrame *)v16 computeCurationScore];
            [array addObject:v16];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v160 objects:v175 count:16];
      }

      while (v12);
    }

    objc_storeStrong(&self->_keyFrameResults, array);
    v20 = [highlightCopy objectForKeyedSubscript:@"OrientationResults"];
    orientationResults = self->_orientationResults;
    self->_orientationResults = v20;

    v22 = [highlightCopy objectForKeyedSubscript:@"FeatureVectorResults"];
    featureResults = self->_featureResults;
    self->_featureResults = v22;

    v24 = [highlightCopy objectForKeyedSubscript:@"FaceResults"];
    faceResults = self->_faceResults;
    self->_faceResults = v24;

    v26 = [highlightCopy objectForKeyedSubscript:@"PetsResults"];
    petsResults = self->_petsResults;
    self->_petsResults = v26;

    v28 = [highlightCopy objectForKeyedSubscript:@"SaliencyResults"];
    saliencyResults = self->_saliencyResults;
    self->_saliencyResults = v28;

    v30 = [highlightCopy objectForKeyedSubscript:@"HumanPoseResults"];
    humanPoseResults = self->_humanPoseResults;
    self->_humanPoseResults = v30;

    v32 = [highlightCopy objectForKeyedSubscript:@"AudioQualityResults"];
    audioQualityResults = self->_audioQualityResults;
    self->_audioQualityResults = v32;

    array2 = [MEMORY[0x1E695DF70] array];
    highlightResults = self->_highlightResults;
    self->_highlightResults = array2;

    self->_frameSize.width = width;
    self->_frameSize.height = height;
    [(VCPMovieHighlightAnalyzer *)self adjustHighlightScoreWithContext];
    v6 = [(VCPMovieHighlightAnalyzer *)self adjustHighlightWithContext:v125];

    if (!v6)
    {
      v6 = 0;
      goto LABEL_40;
    }
  }

  [(NSMutableArray *)self->_internalConstraintResults removeAllObjects];
  if (![(NSMutableArray *)self->_internalResults count])
  {
LABEL_40:
    v60 = 0;
    goto LABEL_103;
  }

  v126 = v6;
  if (BYTE4(self->_startRange.duration.epoch) == 1)
  {
    targetHighlightIndex = self->_targetHighlightIndex;
    if ((targetHighlightIndex & 0x80000000) != 0)
    {
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v61 = v6;
      v62 = [v61 countByEnumeratingWithState:&v156 objects:v174 count:16];
      if (v62)
      {
        v63 = 0;
        v64 = *v157;
        v65 = -1.0;
        do
        {
          for (j = 0; j != v62; ++j)
          {
            if (*v157 != v64)
            {
              objc_enumerationMutation(v61);
            }

            v67 = *(*(&v156 + 1) + 8 * j);
            v68 = objc_autoreleasePoolPush();
            v69 = [(VCPMovieHighlightAnalyzer *)self maxTrimMovieHighlight:v67];
            if (v69)
            {
              if ((self->_startRange.duration.epoch & 0x1000000000000) != 0)
              {
                [(NSMutableArray *)self->_internalConstraintResults addObject:v69];
              }

              else
              {
                v70 = [v67 objectForKeyedSubscript:@"quality"];
                [v70 floatValue];
                v72 = v71;

                if (v65 < v72)
                {
                  v73 = v69;

                  v65 = v72;
                  v63 = v73;
                }
              }
            }

            objc_autoreleasePoolPop(v68);
          }

          v62 = [v61 countByEnumeratingWithState:&v156 objects:v174 count:16];
        }

        while (v62);

        if (v63)
        {
          [(NSMutableArray *)self->_internalConstraintResults addObject:v63];
        }
      }

      else
      {

        v63 = 0;
      }
    }

    else
    {
      if ([v6 count] <= targetHighlightIndex)
      {
        goto LABEL_82;
      }

      v37 = [v6 objectAtIndexedSubscript:self->_targetHighlightIndex];
      v38 = [(VCPMovieHighlightAnalyzer *)self maxTrimMovieHighlight:v37];

      if (v38)
      {
        [(NSMutableArray *)self->_internalConstraintResults addObject:v38];
      }
    }

    goto LABEL_81;
  }

  if ((self->_startRange.start.timescale & 1) != 0 && (self->_startRange.duration.timescale & 1) != 0 && !*&self->_startRange.duration.flags && (*(&self->_startRange.start.epoch + 4) & 0x8000000000000000) == 0)
  {
    v92 = self->_targetHighlightIndex;
    if ((v92 & 0x80000000) != 0 || [v6 count] <= v92)
    {
      v117 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:0];
      v118 = v117;
      if (v117)
      {
        [v117 timerange];
      }

      else
      {
        memset(&range, 0, sizeof(range));
      }

      *&v154.start.value = *&range.start.value;
      v154.start.epoch = range.start.epoch;
      lastObject = [(NSMutableArray *)self->_internalResults lastObject];

      memset(&v146, 0, 24);
      if (lastObject)
      {
        [lastObject timerange];
      }

      else
      {
        memset(&range, 0, sizeof(range));
      }

      CMTimeRangeGetEnd(&v146.start, &range);
      *&end.start.value = *&v154.start.value;
      end.start.epoch = v154.start.epoch;
      *&rhs.start.value = *&v146.start.value;
      rhs.start.epoch = v146.start.epoch;
      CMTimeRangeFromTimeToTime(&range, &end.start, &rhs.start);
      start = range;
    }

    else
    {
      v93 = [v6 objectAtIndexedSubscript:self->_targetHighlightIndex];
      CMTimeRangeMakeFromDictionary(&range, v93);
      start = range;
    }

    v120 = *&self->_startRange.start.flags;
    *&range.start.value = *(&self->_targetHighlightIndex + 1);
    *&range.start.epoch = v120;
    *&range.duration.timescale = *(&self->_startRange.duration.value + 4);
    v154 = start;
    v121 = [(VCPMovieHighlightAnalyzer *)self targetProcessRange:&range maxRange:&v154];
    v122 = v121;
    internalConstraintResults = self->_internalConstraintResults;
    if (v121)
    {
      [v121 timerange];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    v124 = CMTimeRangeToNSDictionary(&range);
    [(NSMutableArray *)internalConstraintResults addObject:v124];

    goto LABEL_81;
  }

  v39 = self->_targetHighlightIndex;
  if ((v39 & 0x80000000) != 0)
  {
    v74 = *(MEMORY[0x1E6960C98] + 16);
    *&range.start.value = *MEMORY[0x1E6960C98];
    *&range.start.epoch = v74;
    *&range.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
    v75 = *(MEMORY[0x1E6960CA8] + 16);
    *&v154.start.value = *MEMORY[0x1E6960CA8];
    *&v154.start.epoch = v75;
    *&v154.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
    v76 = [v6 objectAtIndexedSubscript:0];
    CMTimeRangeMakeFromDictionary(&start, v76);
    v148 = *&start.start.value;
    epoch = start.start.epoch;

    memset(&v147, 0, sizeof(v147));
    lastObject2 = [v6 lastObject];
    CMTimeRangeMakeFromDictionary(&start, lastObject2);
    CMTimeRangeGetEnd(&v147, &start);

    memset(&v146, 0, sizeof(v146));
    *&start.start.value = v148;
    start.start.epoch = epoch;
    end.start = v147;
    CMTimeRangeFromTimeToTime(&v146, &start.start, &end.start);
    selfCopy2 = self;
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v79 = v6;
    v80 = [v79 countByEnumeratingWithState:&v142 objects:v172 count:16];
    if (v80)
    {
      v81 = *v143;
      v82 = 0.0;
      do
      {
        for (k = 0; k != v80; ++k)
        {
          if (*v143 != v81)
          {
            objc_enumerationMutation(v79);
          }

          v84 = *(*(&v142 + 1) + 8 * k);
          memset(&start, 0, sizeof(start));
          CMTimeRangeMakeFromDictionary(&start, v84);
          end = v154;
          CMTimeRangeGetEnd(&v141, &end);
          *&end.start.value = *&start.start.value;
          end.start.epoch = start.start.epoch;
          rhs.start = v141;
          CMTimeSubtract(&time.start, &end.start, &rhs.start);
          if (CMTimeGetSeconds(&time.start) < 0.200000003 && (end = v154, CMTimeRangeGetEnd(&rhs.start, &end), *&time.start.value = *&start.start.value, time.start.epoch = start.start.epoch, CMTimeRangeFromTimeToTime(&end, &rhs.start, &time.start), [(VCPMovieHighlightAnalyzer *)selfCopy2 isGoodQuality:&end]))
          {
            rhs = v154;
            time = start;
            CMTimeRangeGetUnion(&end, &rhs, &time);
            *&v154.start.value = *&end.start.value;
            *&v154.start.epoch = *&end.start.epoch;
            v85 = *&end.duration.timescale;
          }

          else
          {
            *&v154.start.value = *&start.start.value;
            *&v154.start.epoch = *&start.start.epoch;
            v85 = *&start.duration.timescale;
          }

          *&v154.duration.timescale = v85;
          *&end.start.value = *&v154.start.value;
          *&end.start.epoch = *&v154.start.epoch;
          *&end.duration.timescale = v85;
          rhs = v146;
          v86 = [(VCPMovieHighlightAnalyzer *)selfCopy2 targetMovieHighlight:v84 mergedRange:&end maxRange:&rhs];
          v87 = v86;
          if (v86)
          {
            [v86 score];
            if (v88 > v82)
            {
              [v87 timerange];
              range = end;
              [v87 score];
              v82 = v89;
            }
          }

          selfCopy2 = self;
        }

        v80 = [v79 countByEnumeratingWithState:&v142 objects:v172 count:16];
      }

      while (v80);
    }

    v90 = self->_internalConstraintResults;
    start = range;
    v91 = CMTimeRangeCopyAsDictionary(&start, 0);
    [(NSMutableArray *)v90 addObject:v91];

    goto LABEL_81;
  }

  if ([v6 count] <= v39)
  {
    goto LABEL_82;
  }

  selfCopy5 = self;
  if (*&self->_isMaxTrim != 0.0)
  {
    v41 = [v6 objectAtIndexedSubscript:self->_targetHighlightIndex];
    v42 = [v41 objectForKeyedSubscript:@"attributes"];
    v43 = [v42 objectForKeyedSubscript:@"VideoSpeedControlRate"];

    memset(&start, 0, sizeof(start));
    v44 = [v6 objectAtIndexedSubscript:self->_targetHighlightIndex];
    CMTimeRangeMakeFromDictionary(&start, v44);

    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v45 = v43;
    v46 = [v45 countByEnumeratingWithState:&v150 objects:v173 count:16];
    if (v46)
    {
      v47 = 0;
      v48 = *v151;
      v49 = MEMORY[0x1E6960CA8];
      do
      {
        for (m = 0; m != v46; ++m)
        {
          if (*v151 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v51 = *(*(&v150 + 1) + 8 * m);
          [v51 vcp_quality];
          if (v52 == *&self->_isMaxTrim)
          {
            v53 = v49[1];
            *&range.start.value = *v49;
            *&range.start.epoch = v53;
            *&range.duration.timescale = v49[2];
            v154 = start;
            v54 = [(VCPMovieHighlightAnalyzer *)self targetMovieHighlight:v51 mergedRange:&range maxRange:&v154];
            if (!v47 || ([v47 score], v56 = v55, objc_msgSend(v54, "score"), v56 < v57))
            {
              v58 = v54;

              v47 = v58;
            }
          }
        }

        v46 = [v45 countByEnumeratingWithState:&v150 objects:v173 count:16];
      }

      while (v46);

      v6 = v126;
      selfCopy5 = self;
      if (v47)
      {
        v59 = self->_internalConstraintResults;
        goto LABEL_78;
      }
    }

    else
    {

      selfCopy5 = self;
    }
  }

  v94 = [v6 objectAtIndexedSubscript:selfCopy5->_targetHighlightIndex];
  v95 = *(MEMORY[0x1E6960CA8] + 16);
  *&start.start.value = *MEMORY[0x1E6960CA8];
  *&start.start.epoch = v95;
  *&start.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
  v96 = *(MEMORY[0x1E6960C98] + 16);
  *&range.start.value = *MEMORY[0x1E6960C98];
  *&range.start.epoch = v96;
  *&range.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  v47 = [(VCPMovieHighlightAnalyzer *)selfCopy5 targetMovieHighlight:v94 mergedRange:&start maxRange:&range];

  v59 = self->_internalConstraintResults;
  if (!v47)
  {
    memset(&range, 0, sizeof(range));
    goto LABEL_80;
  }

LABEL_78:
  [v47 timerange];
LABEL_80:
  start = range;
  v97 = CMTimeRangeCopyAsDictionary(&start, 0);
  [(NSMutableArray *)v59 addObject:v97];

LABEL_81:
  v6 = v126;
LABEL_82:
  if ((self->_startRange.duration.epoch & 0x1000000000000) != 0)
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v128 = self->_internalResults;
    v98 = [(NSMutableArray *)v128 countByEnumeratingWithState:&v134 objects:v169 count:16];
    if (v98)
    {
      obja = *v135;
      do
      {
        for (n = 0; n != v98; ++n)
        {
          if (*v135 != obja)
          {
            objc_enumerationMutation(v128);
          }

          v100 = *(*(&v134 + 1) + 8 * n);
          v167[0] = @"start";
          if (v100)
          {
            [v100 timerange];
          }

          else
          {
            memset(&start, 0, sizeof(start));
          }

          *&range.start.value = *&start.start.value;
          range.start.epoch = start.start.epoch;
          v101 = CMTimeCopyAsDictionary(&range.start, 0);
          v168[0] = v101;
          v167[1] = @"duration";
          if (v100)
          {
            [v100 timerange];
          }

          else
          {
            memset(&range, 0, sizeof(range));
          }

          v154.start = range.duration;
          v102 = CMTimeCopyAsDictionary(&v154.start, 0);
          v168[1] = v102;
          v167[2] = @"quality";
          v103 = MEMORY[0x1E696AD98];
          [v100 score];
          v104 = [v103 numberWithFloat:?];
          v168[2] = v104;
          v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v168 forKeys:v167 count:3];
          [array3 addObject:v105];
        }

        v98 = [(NSMutableArray *)v128 countByEnumeratingWithState:&v134 objects:v169 count:16];
      }

      while (v98);
    }

    v106 = 0;
    selfCopy7 = self;
    while (v106 < [(NSMutableArray *)selfCopy7->_internalConstraintResults count])
    {
      v108 = objc_autoreleasePoolPush();
      v109 = [(NSMutableArray *)self->_internalConstraintResults objectAtIndexedSubscript:v106];
      v110 = [v109 objectForKeyedSubscript:@"quality"];
      v111 = v110 == 0;

      if (v111)
      {
        v112 = [v109 mutableCopy];
        v113 = MEMORY[0x1E696AD98];
        CMTimeRangeMakeFromDictionary(&start, v109);
        [(VCPMovieHighlightAnalyzer *)self highlightScoreForTimeRange:&start average:0];
        v114 = [v113 numberWithFloat:?];
        [v112 setObject:v114 forKeyedSubscript:@"quality"];

        [(NSMutableArray *)self->_internalConstraintResults replaceObjectAtIndex:v106 withObject:v112];
      }

      objc_autoreleasePoolPop(v108);
      selfCopy7 = self;
      ++v106;
    }

    v115 = selfCopy7->_internalConstraintResults;
    v165[0] = @"MovieHighlightResults";
    v165[1] = @"MovieHighlightScoreResults";
    v166[0] = v115;
    v166[1] = array3;
    v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v166 forKeys:v165 count:2];

    v6 = v126;
  }

  else
  {
    v170 = @"MovieHighlightResults";
    v171 = self->_internalConstraintResults;
    v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
  }

LABEL_103:

  return v60;
}

- (id)targetMovieHighlight:(id)highlight mergedRange:(id *)range maxRange:(id *)maxRange
{
  highlightCopy = highlight;
  memset(&v24, 0, sizeof(v24));
  CMTimeRangeMakeFromDictionary(&v24, highlightCopy);
  time.start = v24.duration;
  Seconds = CMTimeGetSeconds(&time.start);
  targetDurationInSeconds = self->_targetDurationInSeconds;
  if ((targetDurationInSeconds - self->_toleranceInSeconds) > Seconds)
  {
    if ((range->var0.var2 & 1) == 0 || (range->var1.var2 & 1) == 0 || range->var1.var3 || range->var1.var0 < 0 || (*&time.start.value = *&range->var1.var0, time.start.epoch = range->var1.var3, CMTimeGetSeconds(&time.start) < (self->_targetDurationInSeconds - self->_toleranceInSeconds)))
    {
      if ((maxRange->var0.var2 & 1) == 0 || (maxRange->var1.var2 & 1) == 0 || maxRange->var1.var3 || maxRange->var1.var0 < 0)
      {
        v11 = 0;
        goto LABEL_13;
      }

      time.start = v24.duration;
      *&v22.start.value = *&range->var1.var0;
      v22.start.epoch = range->var1.var3;
      v18 = CMTimeCompare(&time.start, &v22.start);
      p_var0 = &v24;
      if (v18 <= 0)
      {
        p_var0 = &range->var0.var0;
      }

      v20 = p_var0[1];
      *&time.start.value = *p_var0;
      *&time.start.epoch = v20;
      *&time.duration.timescale = p_var0[2];
      v21 = *&maxRange->var0.var3;
      *&v22.start.value = *&maxRange->var0.var0;
      *&v22.start.epoch = v21;
      *&v22.duration.timescale = *&maxRange->var1.var1;
      v12 = [(VCPMovieHighlightAnalyzer *)self targetExtendRange:&time maxRange:&v22];
    }

    else
    {
      v15 = *&range->var0.var3;
      *&time.start.value = *&range->var0.var0;
      *&time.start.epoch = v15;
      v17 = *&range->var0.var0;
      v16 = *&range->var0.var3;
      *&time.duration.timescale = *&range->var1.var1;
      *&v22.start.value = v17;
      *&v22.start.epoch = v16;
      *&v22.duration.timescale = *&range->var1.var1;
      v12 = [(VCPMovieHighlightAnalyzer *)self targetTrimRange:&time searchRange:&v22];
    }

    goto LABEL_11;
  }

  if (targetDurationInSeconds < Seconds)
  {
    time = v24;
    v22 = v24;
    v12 = [(VCPMovieHighlightAnalyzer *)self targetTrimRange:&time searchRange:&v22];
LABEL_11:
    v11 = v12;
    goto LABEL_13;
  }

  v11 = objc_alloc_init(VCPMovieHighlight);
  time = v24;
  [(VCPMovieHighlight *)v11 setTimerange:&time];
  v13 = [(__CFDictionary *)highlightCopy objectForKeyedSubscript:@"quality"];
  [v13 floatValue];
  [(VCPMovieHighlight *)v11 setScore:?];

LABEL_13:

  return v11;
}

- (id)targetProcessRange:(id *)range maxRange:(id *)maxRange
{
  *time = range->var1;
  if (CMTimeGetSeconds(time) > (self->_targetDurationInSeconds + self->_toleranceInSeconds))
  {
    v7 = *&range->var0.var3;
    *time = *&range->var0.var0;
    *&time[16] = v7;
    v9 = *&range->var0.var0;
    v8 = *&range->var0.var3;
    v20 = *&range->var1.var1;
    v16 = v9;
    v17 = v8;
    v18 = *&range->var1.var1;
    v10 = [(VCPMovieHighlightAnalyzer *)self targetTrimRange:time searchRange:&v16];
LABEL_5:
    v13 = v10;
    goto LABEL_7;
  }

  *time = *&range->var1.var0;
  *&time[16] = range->var1.var3;
  if (CMTimeGetSeconds(time) < (self->_targetDurationInSeconds - self->_toleranceInSeconds))
  {
    v11 = *&range->var0.var3;
    *time = *&range->var0.var0;
    *&time[16] = v11;
    v20 = *&range->var1.var1;
    v12 = *&maxRange->var0.var3;
    v16 = *&maxRange->var0.var0;
    v17 = v12;
    v18 = *&maxRange->var1.var1;
    v10 = [(VCPMovieHighlightAnalyzer *)self targetExtendRange:time maxRange:&v16];
    goto LABEL_5;
  }

  v13 = objc_alloc_init(VCPMovieHighlight);
  v14 = *&range->var0.var3;
  *time = *&range->var0.var0;
  *&time[16] = v14;
  v20 = *&range->var1.var1;
  [(VCPMovieHighlight *)v13 setTimerange:time];
LABEL_7:

  return v13;
}

- (id)targetExtendRange:(id *)range maxRange:(id *)maxRange
{
  memset(&v20, 0, sizeof(v20));
  CMTimeMake(&v15.start, ((self->_targetDurationInSeconds - self->_toleranceInSeconds) * 600.0), 600);
  *&lhs.start.value = *&v15.start.value;
  lhs.start.epoch = v15.start.epoch;
  rhs.start = range->var1;
  CMTimeSubtract(&v20, &lhs.start, &rhs.start);
  memset(&v19, 0, sizeof(v19));
  *&lhs.start.value = *&range->var0.var0;
  lhs.start.epoch = range->var0.var3;
  rhs.start = v20;
  if (CMTimeCompare(&lhs.start, &rhs.start) < 1)
  {
    v19 = **&MEMORY[0x1E6960CC0];
  }

  else
  {
    *&lhs.start.value = *&range->var0.var0;
    lhs.start.epoch = range->var0.var3;
    rhs.start = v20;
    CMTimeSubtract(&v19, &lhs.start, &rhs.start);
  }

  memset(&lhs, 0, sizeof(lhs));
  start.start = v19;
  v7 = *&range->var0.var3;
  *&rhs.start.value = *&range->var0.var0;
  *&rhs.start.epoch = v7;
  *&rhs.duration.timescale = *&range->var1.var1;
  CMTimeRangeGetEnd(&v17, &rhs);
  rhs.start = v17;
  v15.start = v20;
  CMTimeAdd(&v13.start, &rhs.start, &v15.start);
  CMTimeRangeFromTimeToTime(&lhs, &start.start, &v13.start);
  v8 = *&maxRange->var0.var3;
  *&rhs.start.value = *&maxRange->var0.var0;
  *&rhs.start.epoch = v8;
  v10 = *&maxRange->var0.var0;
  v9 = *&maxRange->var0.var3;
  *&rhs.duration.timescale = *&maxRange->var1.var1;
  start = lhs;
  *&v13.start.value = v10;
  *&v13.start.epoch = v9;
  *&v13.duration.timescale = *&maxRange->var1.var1;
  CMTimeRangeGetIntersection(&v15, &start, &v13);
  v11 = [(VCPMovieHighlightAnalyzer *)self targetTrimRange:&rhs searchRange:&v15];

  return v11;
}

- (id)targetTrimRange:(id *)range searchRange:(id *)searchRange
{
  v6 = *&searchRange->var0.var3;
  *&range.start.value = *&searchRange->var0.var0;
  *&range.start.epoch = v6;
  *&range.duration.timescale = *&searchRange->var1.var1;
  v7 = [(VCPMovieHighlightAnalyzer *)self findBestHighlightSegment:&range targetTrim:1];
  v8 = v7;
  if (v7)
  {
    [v7 timerange];
    start = range.start;
    memset(&v37, 0, sizeof(v37));
    [v8 timerange];
  }

  else
  {
    memset(&start, 0, sizeof(start));
    memset(&v37, 0, sizeof(v37));
    memset(&range, 0, sizeof(range));
  }

  CMTimeRangeGetEnd(&v37, &range);
  v9 = 0;
  v10 = 0;
  v11 = -1;
  while (1)
  {
    if ([(NSMutableArray *)self->_internalResults count]<= v9)
    {
      v15 = 0;
      goto LABEL_23;
    }

    v12 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:v9];
    v13 = v12;
    if ((v11 & 0x80000000) == 0)
    {
      if (v12)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    if (v12)
    {
      [v12 timerange];
      if (v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      memset(&range, 0, sizeof(range));
      if (v8)
      {
LABEL_12:
        [v8 timerange];
        goto LABEL_15;
      }
    }

    memset(&rangeCopy, 0, sizeof(rangeCopy));
LABEL_15:
    *&time.start.value = *&rangeCopy.start.value;
    time.start.epoch = rangeCopy.start.epoch;
    if (!CMTimeRangeContainsTime(&range, &time.start))
    {
      goto LABEL_20;
    }

    v14 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:v9];

    v11 = v9;
    v10 = v14;
    if (v13)
    {
LABEL_8:
      [v13 timerange];
      if (v8)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    memset(&range, 0, sizeof(range));
    if (v8)
    {
LABEL_9:
      [v8 timerange];
      goto LABEL_19;
    }

LABEL_18:
    memset(&rangeCopy, 0, sizeof(rangeCopy));
LABEL_19:
    CMTimeRangeGetEnd(&time.start, &rangeCopy);
    if (CMTimeRangeContainsTime(&range, &time.start))
    {
      break;
    }

LABEL_20:

    ++v9;
  }

  v15 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:v9];

LABEL_23:
  targetDurationInSeconds = self->_targetDurationInSeconds;
  toleranceInSeconds = self->_toleranceInSeconds;
  if (v8)
  {
    [v8 timerange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  rangeCopy.start = range.duration;
  v18 = (targetDurationInSeconds + toleranceInSeconds) - CMTimeGetSeconds(&rangeCopy.start);
  if (v10)
  {
    [v10 score];
    v20 = v19;
    [v8 averageScore];
    if (v20 >= v21 && v18 > 0.0)
    {
      memset(&range, 0, sizeof(range));
      v22 = *&range->var0.var3;
      *&rangeCopy.start.value = *&range->var0.var0;
      *&rangeCopy.start.epoch = v22;
      *&rangeCopy.duration.timescale = *&range->var1.var1;
      [v10 timerange];
      CMTimeRangeGetIntersection(&range, &rangeCopy, &time);
      rangeCopy.start = start;
      *&time.start.value = *&range.start.value;
      time.start.epoch = range.start.epoch;
      CMTimeSubtract(&v34, &rangeCopy.start, &time.start);
      Seconds = CMTimeGetSeconds(&v34);
      if (v18 >= Seconds)
      {
        v24 = Seconds;
      }

      else
      {
        v24 = v18;
      }

      CMTimeMake(&v33, (v24 * 600.0), 600);
      rangeCopy.start = start;
      time.start = v33;
      CMTimeSubtract(&v34, &rangeCopy.start, &time.start);
      start = v34;
      v18 = v18 - v24;
    }
  }

  if (v15)
  {
    [v15 score];
    v26 = v25;
    [v8 averageScore];
    if (v26 >= v27 && v18 > 0.0)
    {
      memset(&range, 0, sizeof(range));
      v28 = *&range->var0.var3;
      *&rangeCopy.start.value = *&range->var0.var0;
      *&rangeCopy.start.epoch = v28;
      *&rangeCopy.duration.timescale = *&range->var1.var1;
      [v15 timerange];
      CMTimeRangeGetIntersection(&range, &rangeCopy, &time);
      rangeCopy = range;
      CMTimeRangeGetEnd(&v33, &rangeCopy);
      rangeCopy.start = v33;
      time.start = v37;
      CMTimeSubtract(&v34, &rangeCopy.start, &time.start);
      v29 = CMTimeGetSeconds(&v34);
      if (v18 < v29)
      {
        v29 = v18;
      }

      CMTimeMake(&v33, (v29 * 600.0), 600);
      rangeCopy.start = v37;
      time.start = v33;
      CMTimeAdd(&v34, &rangeCopy.start, &time.start);
      v37 = v34;
    }
  }

  range.start = start;
  rangeCopy.start = v37;
  CMTimeRangeFromTimeToTime(&v32, &range.start, &rangeCopy.start);
  range = v32;
  [v8 setTimerange:&range];
  v30 = v8;

  return v30;
}

- (id)maxTrimMovieHighlight:(id)highlight
{
  v34 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  v5 = [highlightCopy mutableCopy];
  memset(&v31, 0, sizeof(v31));
  CMTimeRangeMakeFromDictionary(&v31, highlightCopy);
  time.start = v31.duration;
  if (CMTimeGetSeconds(&time.start) < self->_minDurationInSeconds)
  {
    v6 = 0;
    goto LABEL_23;
  }

  value = *MEMORY[0x1E6960C98];
  timescale = *(MEMORY[0x1E6960C98] + 8);
  if (BYTE5(self->_startRange.duration.epoch) == 1)
  {
    v29 = v31;
    [(VCPMovieHighlightAnalyzer *)self findBestTrim:&v29];
    value = time.start.value;
    flags = time.start.flags;
    timescale = time.start.timescale;
    *(&v9 + 1) = time.duration.value;
    v28 = *&time.start.epoch;
    epoch = time.duration.epoch;
    *&v9 = *&time.duration.timescale;
    if ((time.start.flags & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    flags = *(MEMORY[0x1E6960C98] + 12);
    v9 = *(MEMORY[0x1E6960C98] + 16);
    v28 = v9;
    *&v9 = *(MEMORY[0x1E6960C98] + 32);
    epoch = *(MEMORY[0x1E6960C98] + 40);
    if ((flags & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if ((BYTE4(v9) & 1) != 0 && !epoch)
  {
    v27 = v9;
    if ((*(&v28 + 1) & 0x8000000000000000) == 0)
    {
      time.start.value = *(&v28 + 1);
      *&time.start.timescale = v9;
      time.start.epoch = 0;
      if (CMTimeGetSeconds(&time.start) <= self->_maxDurationInSeconds)
      {
        time.start.value = value;
        *&time.start.timescale = __PAIR64__(flags, timescale);
        time.start.epoch = v28;
        v24 = CMTimeCopyAsDictionary(&time.start, 0);
        [v5 setObject:v24 forKeyedSubscript:@"start"];

        time.start.value = *(&v28 + 1);
        *&time.start.timescale = v27;
        time.start.epoch = 0;
        v25 = CMTimeCopyAsDictionary(&time.start, 0);
        [v5 setObject:v25 forKeyedSubscript:@"duration"];

        v26 = MEMORY[0x1E696AD98];
        time.start.value = value;
        *&time.start.timescale = __PAIR64__(flags, timescale);
        *&time.start.epoch = v28;
        *&time.duration.timescale = v27;
        [(VCPMovieHighlightAnalyzer *)self highlightScoreForTimeRange:&time average:0];
        v11 = [v26 numberWithFloat:?];
        [v5 setObject:v11 forKeyedSubscript:@"quality"];
        goto LABEL_17;
      }
    }
  }

LABEL_11:
  time.start = v31.duration;
  if (CMTimeGetSeconds(&time.start) <= self->_maxDurationInSeconds && BYTE5(self->_startRange.duration.epoch) != 1)
  {
    goto LABEL_18;
  }

  time = v31;
  v10 = [(VCPMovieHighlightAnalyzer *)self findBestHighlightSegment:&time targetTrim:0, v27];
  v11 = v10;
  if (v10)
  {
    [v10 timerange];
    *&v29.start.value = *&time.start.value;
    v29.start.epoch = time.start.epoch;
    v12 = CMTimeCopyAsDictionary(&v29.start, 0);
    [v5 setObject:v12 forKeyedSubscript:@"start"];

    [v11 timerange];
    v29.start = time.duration;
    v13 = CMTimeCopyAsDictionary(&v29.start, 0);
    [v5 setObject:v13 forKeyedSubscript:@"duration"];

    v14 = MEMORY[0x1E696AD98];
    [v11 score];
    v15 = [v14 numberWithFloat:?];
    [v5 setObject:v15 forKeyedSubscript:@"quality"];
  }

  else
  {
    CMTimeMake(&v29.start, (self->_maxDurationInSeconds * 600.0), 600);
    *&time.start.value = *&v29.start.value;
    time.start.epoch = v29.start.epoch;
    v15 = CMTimeCopyAsDictionary(&time.start, 0);
    [v5 setObject:v15 forKeyedSubscript:@"duration"];
  }

LABEL_17:
LABEL_18:
  if (BYTE5(self->_startRange.duration.epoch) == 1)
  {
    v16 = [highlightCopy objectForKeyedSubscript:@"start"];
    if (v16)
    {
      v17 = [highlightCopy objectForKeyedSubscript:@"duration"];
      v18 = v17 == 0;

      if (!v18)
      {
        v19 = [highlightCopy objectForKeyedSubscript:@"attributes"];
        v20 = [v19 mutableCopy];

        v21 = [highlightCopy objectForKeyedSubscript:@"start"];
        [v20 setObject:v21 forKeyedSubscript:@"maxHighlightStart"];

        v22 = [highlightCopy objectForKeyedSubscript:@"duration"];
        [v20 setObject:v22 forKeyedSubscript:@"maxHighlightDuration"];

        [v5 setObject:v20 forKeyedSubscript:@"attributes"];
      }
    }
  }

  v6 = v5;
LABEL_23:

  return v6;
}

- (void)loadHighlightScoreResults:(id)results
{
  v19 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  [(NSMutableArray *)self->_internalResults removeAllObjects];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = resultsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [VCPMovieHighlight alloc];
        CMTimeRangeMakeFromDictionary(&v13, v9);
        v11 = [(VCPMovieHighlight *)v10 initWithTimeRange:&v13];
        [(__CFDictionary *)v9 vcp_quality];
        *&v12 = v12;
        [(VCPMovieHighlight *)v11 setScore:v12];
        [(NSMutableArray *)self->_internalResults addObject:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (id)getHighlightAttributes:(id)attributes withHighlightResults:(id)results
{
  v52 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  resultsCopy = results;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  isLivePhoto = self->_isLivePhoto;
  [attributesCopy bestPlaybackCrop];
  v8 = NSStringFromRect(v54);
  [dictionary setObject:v8 forKeyedSubscript:@"bestPlaybackCrop"];

  keyFrame = [attributesCopy keyFrame];

  if (keyFrame)
  {
    memset(&v44, 0, 24);
    keyFrame2 = [attributesCopy keyFrame];
    v11 = keyFrame2;
    if (keyFrame2)
    {
      [keyFrame2 timestamp];
    }

    else
    {
      memset(&v44, 0, 24);
    }

    keyFrame3 = [attributesCopy keyFrame];
    [keyFrame3 score];
    v14 = v13;

    *&time.start.value = *&v44.start.value;
    time.start.epoch = v44.start.epoch;
    v15 = CMTimeCopyAsDictionary(&time.start, 0);
    [dictionary setObject:v15 forKeyedSubscript:@"keyFrameTime"];

    LODWORD(v16) = v14;
    v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    [dictionary setObject:v17 forKeyedSubscript:@"keyFrameScore"];
  }

  v18 = !isLivePhoto;
  if (self->_isLivePhoto)
  {
    v19 = !isLivePhoto;
    goto LABEL_16;
  }

  colorNormalization = [attributesCopy colorNormalization];
  v21 = !isLivePhoto;
  if (!colorNormalization)
  {
    [dictionary setObject:0 forKeyedSubscript:@"colorNormalizationData"];
    v21 = 0;
    if (attributesCopy)
    {
      goto LABEL_10;
    }

LABEL_12:
    v19 = v21;
    memset(&time, 0, sizeof(time));
    goto LABEL_13;
  }

  if (!attributesCopy)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = v21;
  [attributesCopy timerange];
LABEL_13:
  v22 = [(VCPMovieHighlightAnalyzer *)self audioQualityScore:&time];
  if (v22)
  {
    [dictionary setObject:v22 forKeyedSubscript:@"audioQuality"];
    v18 = 0;
  }

LABEL_16:
  if (!keyFrame || v19 || v18)
  {
    v23 = *MEMORY[0x1E6960CC0];
    duration.epoch = *(MEMORY[0x1E6960CC0] + 16);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    *&duration.value = v23;
    v24 = resultsCopy;
    v25 = [v24 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v25)
    {
      v39 = v19;
      v26 = 0;
      v27 = *v46;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v46 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v45 + 1) + 8 * i);
          memset(&time, 0, sizeof(time));
          CMTimeRangeMakeFromDictionary(&time, v29);
          memset(&v44, 0, sizeof(v44));
          if (attributesCopy)
          {
            [attributesCopy timerange];
          }

          else
          {
            memset(&range, 0, sizeof(range));
          }

          otherRange = time;
          CMTimeRangeGetIntersection(&v44, &range, &otherRange);
          range.start = v44.duration;
          otherRange.start = duration;
          if (CMTimeCompare(&range.start, &otherRange.start) >= 1)
          {
            duration = v44.duration;
            v30 = v29;

            v26 = v30;
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v25);

      if (!v26)
      {
        goto LABEL_40;
      }

      if (!keyFrame)
      {
        v31 = [(__CFDictionary *)v26 objectForKeyedSubscript:@"attributes"];
        v32 = [v31 objectForKeyedSubscript:@"keyFrameTime"];
        [dictionary setObject:v32 forKeyedSubscript:@"keyFrameTime"];

        v33 = [(__CFDictionary *)v26 objectForKeyedSubscript:@"attributes"];
        v34 = [v33 objectForKeyedSubscript:@"keyFrameScore"];
        [dictionary setObject:v34 forKeyedSubscript:@"keyFrameScore"];
      }

      if (v39)
      {
        v35 = [(__CFDictionary *)v26 objectForKeyedSubscript:@"attributes"];
        v36 = [v35 objectForKeyedSubscript:@"colorNormalizationData"];
        [dictionary setObject:v36 forKeyedSubscript:@"colorNormalizationData"];
      }

      if (!v18)
      {
        goto LABEL_40;
      }

      v24 = [(__CFDictionary *)v26 objectForKeyedSubscript:@"attributes"];
      v37 = [v24 objectForKeyedSubscript:@"audioQuality"];
      [dictionary setObject:v37 forKeyedSubscript:@"audioQuality"];
    }

    else
    {
      v26 = 0;
    }

LABEL_40:
  }

  return dictionary;
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

- (id)adjustHighlightWithContext:(id)context
{
  v63 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  array = [MEMORY[0x1E695DF70] array];
  *&self->_maxHighlightScore = 0x3E19999A3E4CCCCDLL;
  if ([(NSArray *)self->_sceneResults count]&& [(NSArray *)self->_qualityResults count])
  {
    if (self->_isTimelapse)
    {
      selectHighlightsForTimelapse = [(VCPMovieHighlightAnalyzer *)self selectHighlightsForTimelapse];
    }

    else
    {
      selectHighlightsForTimelapse = [(VCPMovieHighlightAnalyzer *)self selectHighlights];
    }

    if (selectHighlightsForTimelapse)
    {
      goto LABEL_11;
    }

    minHighlightScore = self->_maxHighlightScore * 0.5;
    if (minHighlightScore >= self->_minHighlightScore)
    {
      minHighlightScore = self->_minHighlightScore;
    }

    self->_minHighlightScore = fmaxf(minHighlightScore, 0.0);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = self->_highlightResults;
    v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v8)
    {
      v9 = *v55;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v55 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v54 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          LODWORD(v11) = [(VCPMovieHighlightAnalyzer *)self evaluateSegment:v11];
          objc_autoreleasePoolPop(v12);
          if (v11)
          {
            v6 = 0;
            goto LABEL_54;
          }
        }

        v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v62 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    if (!self->_isLivePhoto && self->_colorNormalizationAnalyzer && [(VCPMovieHighlightAnalyzer *)self computeColorNormalization])
    {
LABEL_11:
      v6 = 0;
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = self->_internalConstraintResults;
      v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v50 objects:v61 count:16];
      if (v13)
      {
        v39 = *v51;
        selfCopy = self;
        do
        {
          v14 = 0;
          v40 = v13;
          do
          {
            if (*v51 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v41 = v14;
            v15 = *(*(&v50 + 1) + 8 * v14);
            v16 = *(MEMORY[0x1E6960CA8] + 12);
            value = *(MEMORY[0x1E6960CA8] + 24);
            timescale = *(MEMORY[0x1E6960CA8] + 32);
            flags = *(MEMORY[0x1E6960CA8] + 36);
            epoch = *(MEMORY[0x1E6960CA8] + 40);
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v21 = self->_contextResults;
            v22 = [(NSArray *)v21 countByEnumeratingWithState:&v46 objects:v60 count:16];
            if (v22)
            {
              v23 = *v47;
LABEL_32:
              v24 = 0;
              while (1)
              {
                if (*v47 != v23)
                {
                  objc_enumerationMutation(v21);
                }

                v25 = *(*(&v46 + 1) + 8 * v24);
                memset(&buf, 0, sizeof(buf));
                CMTimeRangeMakeFromDictionary(&buf, v25);
                if (v15)
                {
                  [v15 timerange];
                }

                else
                {
                  memset(&range, 0, sizeof(range));
                }

                otherRange = buf;
                CMTimeRangeGetIntersection(&v44, &range, &otherRange);
                LOBYTE(v16) = v44.start.flags;
                value = v44.duration.value;
                timescale = v44.duration.timescale;
                flags = v44.duration.flags;
                epoch = v44.duration.epoch;
                v44.start = v44.duration;
                *&range.start.value = *MEMORY[0x1E6960CC0];
                range.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
                if (CMTimeCompare(&v44.start, &range.start) > 0)
                {
                  break;
                }

                if (v22 == ++v24)
                {
                  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v46 objects:v60 count:16];
                  if (v22)
                  {
                    goto LABEL_32;
                  }

                  break;
                }
              }
            }

            self = selfCopy;
            if ((v16 & 1) == 0 || (flags & 1) == 0 || epoch || value < 0 || (buf.start.value = value, buf.start.timescale = timescale, buf.start.flags = flags, buf.start.epoch = 0, *&v44.start.value = *MEMORY[0x1E6960CC0], v44.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&buf.start, &v44.start)))
            {
              if (v15)
              {
                [v15 timerange];
                *&v44.start.value = *&buf.start.value;
                v44.start.epoch = buf.start.epoch;
                [v15 timerange];
              }

              else
              {
                memset(&v44, 0, 24);
                memset(&buf, 0, sizeof(buf));
              }

              range.start = buf.duration;
              [v15 score];
              v27 = v26;
              v28 = [(VCPMovieHighlightAnalyzer *)selfCopy getHighlightAttributes:v15 withHighlightResults:contextCopy];
              v58[0] = @"start";
              *&buf.start.value = *&v44.start.value;
              buf.start.epoch = v44.start.epoch;
              v29 = CMTimeCopyAsDictionary(&buf.start, 0);
              v59[0] = v29;
              v58[1] = @"duration";
              *&buf.start.value = *&range.start.value;
              buf.start.epoch = range.start.epoch;
              v30 = CMTimeCopyAsDictionary(&buf.start, 0);
              v59[1] = v30;
              v58[2] = @"quality";
              LODWORD(v31) = v27;
              v32 = [MEMORY[0x1E696AD98] numberWithFloat:v31];
              v58[3] = @"attributes";
              v59[2] = v32;
              v59[3] = v28;
              v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:4];
              [array addObject:v33];
            }

            v14 = v41 + 1;
          }

          while (v41 + 1 != v40);
          v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v50 objects:v61 count:16];
        }

        while (v13);
      }

      v6 = array;
LABEL_54:
    }

    v5 = v6;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.start.value) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "No scene or quality results exist for highlight generation!", &buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)adjustHighlightScoreWithContext
{
  v41 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = self->_contextResults;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v4)
  {
    v5 = *v36;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v35 + 1) + 8 * i) vcp_quality];
        v9 = v8;
        if (v6 <= v9)
        {
          v6 = v9;
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = self->_contextResults;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v11)
  {
    v12 = *v32;
    v13 = MEMORY[0x1E6960CC0];
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v31 + 1) + 8 * j);
        memset(&v30, 0, sizeof(v30));
        CMTimeRangeMakeFromDictionary(&v30, v15);
        [(__CFDictionary *)v15 vcp_quality];
        v16 = 0;
        *&v17 = v17;
        v18 = (*&v17 / v6);
        while (v16 < [(NSMutableArray *)self->_internalResults count])
        {
          v19 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:v16];
          v20 = v19;
          memset(&v29, 0, sizeof(v29));
          if (v19)
          {
            [v19 timerange];
          }

          range = v30;
          CMTimeRangeGetEnd(&v26.start, &range);
          *&range.start.value = *&v29.start.value;
          range.start.epoch = v29.start.epoch;
          *&time2.start.value = *&v26.start.value;
          time2.start.epoch = v26.start.epoch;
          if (CMTimeCompare(&range.start, &time2.start) >= 1)
          {

            break;
          }

          [v20 score];
          if (v21 >= 0.0)
          {
            time2 = v30;
            memset(&range, 0, sizeof(range));
            v26 = v29;
            CMTimeRangeGetIntersection(&range, &time2, &v26);
            if ((range.start.flags & 1) == 0 || (range.duration.flags & 1) == 0 || range.duration.epoch || range.duration.value < 0 || (time2.start = range.duration, *&v26.start.value = *v13, v26.start.epoch = *(v13 + 16), CMTimeCompare(&time2.start, &v26.start)))
            {
              time2.start = range.duration;
              Seconds = CMTimeGetSeconds(&time2.start);
              time2.start = v29.duration;
              v23 = CMTimeGetSeconds(&time2.start);
              [v20 score];
              v25 = Seconds * v18 / v23 + v24;
              *&v25 = v25;
              [v20 setScore:v25];
              [(NSMutableArray *)self->_internalResults replaceObjectAtIndex:v16 withObject:v20];
            }
          }

          ++v16;
        }
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v11);
  }
}

- (int)selectHighlightsForTimelapse
{
  if ([(NSArray *)self->_sceneResults count])
  {
    v3 = [(NSArray *)self->_sceneResults objectAtIndexedSubscript:0];
    CMTimeRangeMakeFromDictionary(&range, v3);
    v15 = *&range.start.value;
    epoch = range.start.epoch;

    memset(&v13, 0, sizeof(v13));
    v4 = [(NSArray *)self->_sceneResults objectAtIndexedSubscript:[(NSArray *)self->_sceneResults count]- 1];
    CMTimeRangeMakeFromDictionary(&range, v4);
    CMTimeRangeGetEnd(&v13, &range);

    memset(&range, 0, sizeof(range));
    *&v11.start.value = v15;
    v11.start.epoch = epoch;
    end = v13;
    CMTimeRangeFromTimeToTime(&v12, &v11.start, &end);
    [(VCPMovieHighlightAnalyzer *)self computeQualityTrimFor:&v12 withKeyFrame:0];
    v11 = range;
    [(VCPMovieHighlightAnalyzer *)self computeTrimWithHighlightScoreFor:&v11];
    range = v12;
    v12.start = v12.duration;
    v5 = MEMORY[0x1E6960CC0];
    *&v11.start.value = *MEMORY[0x1E6960CC0];
    v11.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    if (CMTimeCompare(&v12.start, &v11.start) >= 1)
    {
      v12 = range;
      v6 = [(VCPMovieHighlightAnalyzer *)self findBestHighlightSegment:&v12 targetTrim:0];
      v7 = v6;
      if (v6)
      {
        [v6 timerange];
      }

      else
      {
        memset(&v12, 0, sizeof(v12));
      }

      v8 = [(VCPMovieHighlightAnalyzer *)self pickKeyFramesInRange:&v12];
      [v7 setKeyFrame:v8];

      [(VCPMovieHighlightAnalyzer *)self searchFeatureVectorOfSegment:v7];
      if (v7)
      {
        [v7 timerange];
      }

      else
      {
        memset(&v12, 0, sizeof(v12));
      }

      [(VCPMovieHighlightAnalyzer *)self computeBestPlaybackCrop:&v12];
      [v7 setBestPlaybackCrop:?];
      [v7 score];
      if (self->_maxHighlightScore >= maxHighlightScore)
      {
        maxHighlightScore = self->_maxHighlightScore;
      }

      self->_maxHighlightScore = maxHighlightScore;
      if (v7)
      {
        [v7 timerange];
        v11.start = v12.duration;
        end = *v5;
        if (CMTimeCompare(&v11.start, &end) >= 1)
        {
          [(NSMutableArray *)self->_highlightResults addObject:v7];
        }
      }
    }
  }

  return 0;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)computeTrimWithHighlightScoreFor:(SEL)for
{
  v7 = *&a4->var0.var3;
  v31 = *&a4->var0.var0;
  v8 = *&a4->var1.var1;
  *&range.start.value = *&a4->var0.var0;
  *&range.start.epoch = v7;
  var3 = a4->var0.var3;
  memset(&v30, 0, sizeof(v30));
  *&range.duration.timescale = v8;
  CMTimeRangeGetEnd(&v30, &range);
  v9 = MEMORY[0x1E6960CC0];
  v27 = *MEMORY[0x1E6960CC0];
  epoch = *(MEMORY[0x1E6960CC0] + 16);
  v25 = v27;
  v26 = epoch;
  if ([(NSMutableArray *)self->_internalResults count])
  {
    v10 = 0;
    while (1)
    {
      v11 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:v10];
      v12 = v11;
      memset(&range, 0, sizeof(range));
      if (v11)
      {
        [v11 timerange];
      }

      *&time1.start.value = *&range.start.value;
      time1.start.epoch = range.start.epoch;
      time2.start = v30;
      if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
      {
        break;
      }

      time2 = range;
      memset(&time1, 0, sizeof(time1));
      v13 = *&a4->var0.var3;
      *&v22.start.value = *&a4->var0.var0;
      *&v22.start.epoch = v13;
      *&v22.duration.timescale = *&a4->var1.var1;
      CMTimeRangeGetIntersection(&time1, &time2, &v22);
      if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&v22.start.value = *v9, v22.start.epoch = *(v9 + 16), CMTimeCompare(&time2.start, &v22.start)))
      {
        [v12 score];
        if (v14 >= 0.0)
        {
          v27 = *&time1.start.value;
          epoch = time1.start.epoch;
          break;
        }
      }

      if (++v10 >= [(NSMutableArray *)self->_internalResults count])
      {
        goto LABEL_16;
      }
    }
  }

LABEL_16:
  v15 = [(NSMutableArray *)self->_internalResults count];
  if (v15 - 1 >= 0)
  {
    v16 = v15;
    while (1)
    {
      v17 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:--v16];
      v18 = v17;
      memset(&range, 0, sizeof(range));
      if (v17)
      {
        [v17 timerange];
      }

      time1 = range;
      CMTimeRangeGetEnd(&v22.start, &time1);
      *&time1.start.value = *&v22.start.value;
      time1.start.epoch = v22.start.epoch;
      *&time2.start.value = v31;
      time2.start.epoch = var3;
      if (CMTimeCompare(&time1.start, &time2.start) < 0)
      {
        break;
      }

      time2 = range;
      memset(&time1, 0, sizeof(time1));
      v19 = *&a4->var0.var3;
      *&v22.start.value = *&a4->var0.var0;
      *&v22.start.epoch = v19;
      *&v22.duration.timescale = *&a4->var1.var1;
      CMTimeRangeGetIntersection(&time1, &time2, &v22);
      if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&v22.start.value = *v9, v22.start.epoch = *(v9 + 16), CMTimeCompare(&time2.start, &v22.start)))
      {
        [v18 score];
        if (v20 >= 0.0)
        {
          time2 = time1;
          CMTimeRangeGetEnd(&v22.start, &time2);
          v25 = *&v22.start.value;
          v26 = v22.start.epoch;
          break;
        }
      }

      if (v16 <= 0)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_31:
  *&range.start.value = v27;
  range.start.epoch = epoch;
  *&time1.start.value = v25;
  time1.start.epoch = v26;
  return CMTimeRangeFromTimeToTime(retstr, &range.start, &time1.start);
}

- (int)selectHighlights
{
  v3 = 0;
  v28 = 0;
  v26 = 0;
  v37 = *MEMORY[0x1E69E9840];
  value = *MEMORY[0x1E6960CA8];
  flags = *(MEMORY[0x1E6960CA8] + 12);
  timescale = *(MEMORY[0x1E6960CA8] + 8);
  epoch = *(MEMORY[0x1E6960CA8] + 16);
  v5 = *(MEMORY[0x1E6960CA8] + 24);
  v25 = *(MEMORY[0x1E6960CA8] + 32);
  v7 = *(MEMORY[0x1E6960CA8] + 40);
  while ([(NSArray *)self->_sceneResults count]> v3)
  {
    v8 = [(NSArray *)self->_sceneResults objectAtIndexedSubscript:v3];
    memset(&v34, 0, sizeof(v34));
    CMTimeRangeMakeFromDictionary(&v34, v8);
    time1[0] = v34;
    memset(&time1[1], 0, sizeof(CMTimeRange));
    [(VCPMovieHighlightAnalyzer *)self computeQualityTrimFor:time1 withKeyFrame:0];
    time2 = time1[1];
    [(VCPMovieHighlightAnalyzer *)self computeTrimWithHighlightScoreFor:&time2];
    time1[1] = time1[0];
    time1[0].start = time1[0].duration;
    time2.start = v34.duration;
    if (CMTimeCompare(&time1[0].start, &time2.start) || (CMTimeMake(&v31.start, 1200, 600), time1[0].start = v34.duration, *&time2.start.value = *&v31.start.value, time2.start.epoch = v31.start.epoch, (CMTimeCompare(&time1[0].start, &time2.start) & 0x80000000) == 0) || (-[__CFDictionary objectForKeyedSubscript:](v8, "objectForKeyedSubscript:", @"quality"), v9 = objc_claimAutoreleasedReturnValue(), [v9 floatValue], v11 = v10 < 0.5, v9, v11))
    {
      if ((v26 & 1) != 0 && (-[__CFDictionary objectForKeyedSubscript:](v8, "objectForKeyedSubscript:", @"quality"), v12 = objc_claimAutoreleasedReturnValue(), [v12 floatValue], v14 = v13 < 0.5, v12, !v14))
      {
        time2.start.value = value;
        time2.start.timescale = timescale;
        time2.start.flags = flags;
        time2.start.epoch = epoch;
        time2.duration.value = v5;
        *&time2.duration.timescale = v25;
        time2.duration.epoch = v7;
        v31 = time1[1];
        CMTimeRangeGetUnion(time1, &time2, &v31);
        v26 = 0;
        *&v34.start.value = *&time1[0].start.value;
        *&v34.start.epoch = *&time1[0].start.epoch;
        v15 = *&time1[0].duration.timescale;
      }

      else
      {
        v26 = 0;
        *&v34.start.value = *&time1[1].start.value;
        *&v34.start.epoch = *&time1[1].start.epoch;
        v15 = *&time1[1].duration.timescale;
      }

      *&v34.duration.timescale = v15;
    }

    else
    {
      if ((flags & 1) == 0 || (v25 & 0x100000000) == 0 || v7 || v5 < 0 || (time1[0].start.value = v5, *&time1[0].start.timescale = v25, time1[0].start.epoch = 0, *&time2.start.value = *MEMORY[0x1E6960CC0], time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time1[0].start, &time2.start)))
      {
        if (v3 == -[NSArray count](self->_sceneResults, "count") - 1 || (-[NSArray objectAtIndexedSubscript:](self->_sceneResults, "objectAtIndexedSubscript:", v3 + 1), v27 = objc_claimAutoreleasedReturnValue(), [v27 objectForKeyedSubscript:@"quality"], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "floatValue"), v20 = v19 > 0.3, v18, v27, !v20))
        {
          time2.start.value = value;
          time2.start.timescale = timescale;
          time2.start.flags = flags;
          time2.start.epoch = epoch;
          time2.duration.value = v5;
          *&time2.duration.timescale = v25;
          time2.duration.epoch = v7;
          v31 = time1[1];
          CMTimeRangeGetUnion(time1, &time2, &v31);
          v34 = time1[0];
        }
      }

      v26 = 1;
    }

    time1[0].start = v34.duration;
    *&time2.start.value = *MEMORY[0x1E6960CC0];
    time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    if (CMTimeCompare(&time1[0].start, &time2.start) < 1)
    {
      v16 = v28;
      goto LABEL_44;
    }

    time1[0] = v34;
    v16 = [(VCPMovieHighlightAnalyzer *)self findBestHighlightSegment:time1 targetTrim:0];
    if (!v28)
    {
      goto LABEL_19;
    }

    [v28 qualityScore];
    if (v17 < 0.5)
    {
      goto LABEL_19;
    }

    if (v16)
    {
      [v16 timerange];
    }

    else
    {
      memset(time1, 0, 48);
    }

    [v28 timerange];
    CMTimeRangeGetEnd(&start, &time2);
    *&time2.start.value = *&time1[0].start.value;
    time2.start.epoch = time1[0].start.epoch;
    v31.start = start;
    if (!CMTimeCompare(&time2.start, &v31.start))
    {
      memset(time1, 0, 48);
      [v28 timerange];
      start = time2.start;
      if (v16)
      {
        [v16 timerange];
      }

      else
      {
        memset(&v31, 0, sizeof(v31));
      }

      CMTimeRangeGetEnd(&end, &v31);
      CMTimeRangeFromTimeToTime(time1, &start, &end);
      time2 = time1[0];
      v21 = [(VCPMovieHighlightAnalyzer *)self findBestHighlightSegment:&time2 targetTrim:0];

      [(NSMutableArray *)self->_highlightResults removeLastObject];
      v16 = v21;
      if (!v21)
      {
LABEL_34:
        memset(time1, 0, 48);
        goto LABEL_35;
      }
    }

    else
    {
LABEL_19:
      if (!v16)
      {
        goto LABEL_34;
      }
    }

    [v16 timerange];
LABEL_35:
    v22 = [(VCPMovieHighlightAnalyzer *)self pickKeyFramesInRange:time1];
    [v16 setKeyFrame:v22];

    [(VCPMovieHighlightAnalyzer *)self searchFeatureVectorOfSegment:v16];
    if (v16)
    {
      [v16 timerange];
    }

    else
    {
      memset(time1, 0, 48);
    }

    [(VCPMovieHighlightAnalyzer *)self computeBestPlaybackCrop:time1];
    [v16 setBestPlaybackCrop:?];
    [v16 score];
    if (self->_maxHighlightScore >= maxHighlightScore)
    {
      maxHighlightScore = self->_maxHighlightScore;
    }

    self->_maxHighlightScore = maxHighlightScore;
    if (v16)
    {
      [v16 timerange];
      time2.start = time1[0].duration;
      *&v31.start.value = *MEMORY[0x1E6960CC0];
      v31.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
      if (CMTimeCompare(&time2.start, &v31.start) >= 1)
      {
        [(NSMutableArray *)self->_highlightResults addObject:v16];
      }
    }

LABEL_44:
    value = time1[1].start.value;
    flags = time1[1].start.flags;
    timescale = time1[1].start.timescale;
    epoch = time1[1].start.epoch;
    v5 = time1[1].duration.value;
    v25 = *&time1[1].duration.timescale;
    v7 = time1[1].duration.epoch;

    ++v3;
    v28 = v16;
  }

  return 0;
}

- (int)computeColorNormalization
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_internalConstraintResults;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v3)
  {
    v4 = *v25;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v25 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        if (v6)
        {
          [*(*(&v24 + 1) + 8 * i) timerange];
        }

        else
        {
          v20 = 0u;
          v21 = 0u;
          v19 = 0u;
        }

        v22 = v19;
        v23 = v20;
        v7 = [(AVAssetImageGenerator *)self->_imageGenerator copyCGImageAtTime:&v19 actualTime:0 error:0];
        v18 = v7;
        if (!v7)
        {
          v11 = 0;
          v9 = -18;
LABEL_18:
          CF<__CVBuffer *>::~CF(&v18);
          goto LABEL_22;
        }

        colorNormalizationAnalyzer = self->_colorNormalizationAnalyzer;
        v17 = 0;
        v9 = [(VCPColorNormalizationAnalyzer *)colorNormalizationAnalyzer analyzeCGImage:v7 results:&v17];
        v10 = v17;
        v11 = v10;
        if (v9)
        {
          goto LABEL_18;
        }

        v12 = [v10 objectForKeyedSubscript:@"ColorNormalizationResults"];
        if (![v12 count])
        {

          goto LABEL_21;
        }

        v13 = [v12 objectAtIndexedSubscript:0];
        v14 = [v13 objectForKeyedSubscript:@"colorNormalizationData"];

        if (!v14)
        {

LABEL_21:
          CF<__CVBuffer *>::~CF(&v18);
          v9 = -18;
LABEL_22:

          goto LABEL_23;
        }

        [v6 setColorNormalization:v14];

        CF<__CVBuffer *>::~CF(&v18);
      }

      v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      v9 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_23:

  return v9;
}

- (float)highlightScoreForTimeRange:(id *)range average:(BOOL)average
{
  averageCopy = average;
  v33 = *MEMORY[0x1E69E9840];
  {
    CMTimeMake(&[VCPMovieHighlightAnalyzer highlightScoreForTimeRange:average:]::kMeaningfulLength, 600, 600);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = self->_internalResults;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = *v29;
    v10 = 0.0;
    v11 = MEMORY[0x1E6960CC0];
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        memset(&v27, 0, sizeof(v27));
        if (v15)
        {
          [v15 timerange];
        }

        else
        {
          memset(&range, 0, sizeof(range));
        }

        v16 = *&range->var0.var3;
        *&v25.start.value = *&range->var0.var0;
        *&v25.start.epoch = v16;
        *&v25.duration.timescale = *&range->var1.var1;
        CMTimeRangeGetIntersection(&v27, &range, &v25);
        if ((v27.start.flags & 1) != 0 && (v27.duration.flags & 1) != 0 && !v27.duration.epoch && (v27.duration.value & 0x8000000000000000) == 0)
        {
          range.start = v27.duration;
          *&v25.start.value = *v11;
          v25.start.epoch = *(v11 + 16);
          if (!CMTimeCompare(&range.start, &v25.start))
          {
            continue;
          }
        }

        [v15 score];
        v18 = v17;
        range.start = v27.duration;
        Seconds = CMTimeGetSeconds(&range.start);
        range.start = v27.duration;
        v20 = CMTimeGetSeconds(&range.start);
        range.start = v27.duration;
        *&v25.start.value = [VCPMovieHighlightAnalyzer highlightScoreForTimeRange:average:]::kMeaningfulLength;
        v25.start.epoch = qword_1ED942A90;
        v10 = v10 + v18 * Seconds;
        v13 = v20 + v13;
        if (CMTimeCompare(&range.start, &v25.start) >= 1)
        {
          [v15 score];
          if (v12 < v21)
          {
            [v15 score];
            v12 = v22;
          }
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
  }

  result = v10 / v13;
  if (v13 <= 0.0)
  {
    result = 0.0;
  }

  if (v12 > result && !averageCopy)
  {
    return (v12 + result) * 0.5;
  }

  return result;
}

- (id)findBestHighlightSegment:(id *)segment targetTrim:(BOOL)trim
{
  trimCopy = trim;
  {
    CMTimeMake([VCPMovieHighlightAnalyzer findBestHighlightSegment:targetTrim:]::kHalfSecond, 300, 600);
  }

  if (trimCopy)
  {
    minDurationInSeconds = self->_targetDurationInSeconds - self->_toleranceInSeconds;
  }

  else
  {
    minDurationInSeconds = self->_minDurationInSeconds;
  }

  memset(&v27, 0, sizeof(v27));
  CMTimeMake(&v27, (minDurationInSeconds * 600.0), 600);
  if (trimCopy)
  {
    maxDurationInSeconds = self->_targetDurationInSeconds - self->_toleranceInSeconds;
  }

  else
  {
    maxDurationInSeconds = self->_maxDurationInSeconds;
  }

  memset(&v26, 0, sizeof(v26));
  CMTimeMake(&v26, (maxDurationInSeconds * 600.0), 600);
  v22 = *&segment->var0.var0;
  var3 = segment->var0.var3;
  memset(&v25, 0, sizeof(v25));
  *&lhs.start.value = *&segment->var0.var0;
  lhs.start.epoch = segment->var0.var3;
  *&rhs.start.value = *&segment->var1.var0;
  rhs.start.epoch = segment->var1.var3;
  CMTimeAdd(&v25, &lhs.start, &rhs.start);
  v9 = [VCPMovieHighlight alloc];
  v10 = *(MEMORY[0x1E6960CA8] + 16);
  *&lhs.start.value = *MEMORY[0x1E6960CA8];
  *&lhs.start.epoch = v10;
  *&lhs.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
  v11 = [(VCPMovieHighlight *)v9 initWithTimeRange:&lhs];
  do
  {
    memset(&v21, 0, sizeof(v21));
    *&lhs.start.value = v22;
    lhs.start.epoch = var3;
    rhs.start = v26;
    CMTimeAdd(&v19.start, &lhs.start, &rhs.start);
    *&lhs.start.value = *&v19.start.value;
    lhs.start.epoch = v19.start.epoch;
    rhs.start = v25;
    if (CMTimeCompare(&lhs.start, &rhs.start) < 1)
    {
      v21 = v26;
    }

    else
    {
      lhs.start = v25;
      *&rhs.start.value = v22;
      rhs.start.epoch = var3;
      CMTimeSubtract(&v21, &lhs.start, &rhs.start);
    }

    lhs.start = v21;
    rhs.start = v27;
    if (CMTimeCompare(&lhs.start, &rhs.start) < 0)
    {
      break;
    }

    memset(&lhs, 0, sizeof(lhs));
    *&rhs.start.value = v22;
    rhs.start.epoch = var3;
    v19.start = v21;
    CMTimeRangeMake(&lhs, &rhs.start, &v19.start);
    if (BYTE5(self->_startRange.duration.epoch) == 1 && !trimCopy)
    {
      v19 = lhs;
      [(VCPMovieHighlightAnalyzer *)self findBestTrim:&v19];
      lhs = rhs;
    }

    v12 = [VCPMovieHighlight alloc];
    rhs = lhs;
    v13 = [(VCPMovieHighlight *)v12 initWithTimeRange:&rhs];
    rhs = lhs;
    [(VCPMovieHighlightAnalyzer *)self highlightScoreForTimeRange:&rhs average:0];
    [(VCPMovieHighlight *)v13 setScore:?];
    if (v11)
    {
      [(VCPMovieHighlight *)v13 score];
      v15 = v14;
      [(VCPMovieHighlight *)v11 score];
      if (v15 <= v16)
      {
        continue;
      }
    }

    v17 = v13;

    v11 = v17;
    *&v19.start.value = v22;
    v19.start.epoch = var3;
    v28 = *[VCPMovieHighlightAnalyzer findBestHighlightSegment:targetTrim:]::kHalfSecond;
    CMTimeAdd(&rhs.start, &v19.start, &v28);
    v22 = *&rhs.start.value;
    var3 = rhs.start.epoch;

    lhs.start = v25;
    rhs.start = v26;
    CMTimeSubtract(&v19.start, &lhs.start, &rhs.start);
    *&lhs.start.value = v22;
    lhs.start.epoch = var3;
    *&rhs.start.value = *&v19.start.value;
    rhs.start.epoch = v19.start.epoch;
  }

  while (CMTimeCompare(&lhs.start, &rhs.start) < 0);
  if (v11)
  {
    [(VCPMovieHighlight *)v11 timerange];
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  [(VCPMovieHighlightAnalyzer *)self highlightScoreForTimeRange:&lhs average:1];
  [(VCPMovieHighlight *)v11 setAverageScore:?];

  return v11;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)findBestTrim:(SEL)trim
{
  v59 = *MEMORY[0x1E69E9840];
  time.start = a4->var1;
  if (CMTimeGetSeconds(&time.start) <= self->_minDurationInSeconds)
  {
    v20 = *&a4->var0.var3;
    *&retstr->var0.var0 = *&a4->var0.var0;
    *&retstr->var0.var3 = v20;
    *&retstr->var1.var1 = *&a4->var1.var1;
    return result;
  }

  {
    CMTimeMake(&[VCPMovieHighlightAnalyzer findBestTrim:]::kMeaningfulLength, 600, 600);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v8 = self->_internalResults;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v54 objects:v58 count:16];
  selfCopy = self;
  v10 = MEMORY[0x1E6960CC0];
  if (v9)
  {
    v11 = *v55;
    v12 = 0.0;
    v13 = 1.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v54 + 1) + 8 * i);
        memset(&time, 0, sizeof(time));
        if (v15)
        {
          [v15 timerange];
        }

        else
        {
          memset(&range, 0, sizeof(range));
        }

        v16 = *&a4->var0.var3;
        *&otherRange.start.value = *&a4->var0.var0;
        *&otherRange.start.epoch = v16;
        *&otherRange.duration.timescale = *&a4->var1.var1;
        CMTimeRangeGetIntersection(&time, &range, &otherRange);
        if ((time.start.flags & 1) != 0 && (time.duration.flags & 1) != 0 && !time.duration.epoch && (time.duration.value & 0x8000000000000000) == 0)
        {
          range.start = time.duration;
          *&otherRange.start.value = *v10;
          otherRange.start.epoch = *(v10 + 16);
          if (!CMTimeCompare(&range.start, &otherRange.start))
          {
            continue;
          }
        }

        range.start = time.duration;
        *&otherRange.start.value = [VCPMovieHighlightAnalyzer findBestTrim:]::kMeaningfulLength;
        otherRange.start.epoch = qword_1ED942AD0;
        if (CMTimeCompare(&range.start, &otherRange.start) >= 1)
        {
          [v15 score];
          v18 = v17;
          [v15 score];
          if (v12 < v18)
          {
            v12 = v18;
          }

          if (v19 < v13)
          {
            v13 = v19;
          }
        }
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v9);
  }

  else
  {
    v12 = 0.0;
    v13 = 1.0;
  }

  v21 = *&a4->var0.var3;
  var0 = a4->var0;
  memset(&v49, 0, sizeof(v49));
  v22 = *&a4->var1.var1;
  *&time.start.value = *&a4->var0.var0;
  *&time.start.epoch = v21;
  *&time.duration.timescale = v22;
  CMTimeRangeGetEnd(&v49, &time);
  start = var0;
  v47 = v49;
  v23 = fminf((v13 + v12) * 0.5, 0.4);
  if ([(NSMutableArray *)selfCopy->_internalResults count])
  {
    v24 = 0;
    while (1)
    {
      v25 = [(NSMutableArray *)selfCopy->_internalResults objectAtIndexedSubscript:v24];
      v26 = v25;
      if (v25)
      {
        [v25 timerange];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      *&range.start.value = *&time.start.value;
      range.start.epoch = time.start.epoch;
      otherRange.start = v49;
      if ((CMTimeCompare(&range.start, &otherRange.start) & 0x80000000) == 0)
      {
        v24 = -1;
        goto LABEL_45;
      }

      memset(&time, 0, sizeof(time));
      if (v26)
      {
        [v26 timerange];
      }

      else
      {
        memset(&range, 0, sizeof(range));
      }

      v27 = *&a4->var0.var3;
      *&otherRange.start.value = *&a4->var0.var0;
      *&otherRange.start.epoch = v27;
      *&otherRange.duration.timescale = *&a4->var1.var1;
      CMTimeRangeGetIntersection(&time, &range, &otherRange);
      if ((time.start.flags & 1) == 0 || (time.duration.flags & 1) == 0 || time.duration.epoch || time.duration.value < 0 || (range.start = time.duration, *&otherRange.start.value = *v10, otherRange.start.epoch = *(v10 + 16), CMTimeCompare(&range.start, &otherRange.start)))
      {
        [v26 score];
        if (v28 >= v23)
        {
          break;
        }
      }

      if (++v24 >= [(NSMutableArray *)selfCopy->_internalResults count])
      {
        goto LABEL_42;
      }
    }

    start = time.start;
LABEL_45:
  }

  else
  {
LABEL_42:
    v24 = -1;
  }

  v29 = [(NSMutableArray *)selfCopy->_internalResults count];
  if (v29 - 1 < 0)
  {
LABEL_61:
    v29 = -1;
  }

  else
  {
    while (1)
    {
      v30 = [(NSMutableArray *)selfCopy->_internalResults objectAtIndexedSubscript:--v29];
      v31 = v30;
      if (v30)
      {
        [v30 timerange];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      CMTimeRangeGetEnd(&otherRange.start, &time);
      *&time.start.value = *&otherRange.start.value;
      time.start.epoch = otherRange.start.epoch;
      range.start = var0;
      if (CMTimeCompare(&time.start, &range.start) < 0)
      {
        v29 = -1;
        goto LABEL_64;
      }

      memset(&time, 0, sizeof(time));
      if (v31)
      {
        [v31 timerange];
      }

      else
      {
        memset(&range, 0, sizeof(range));
      }

      v32 = *&a4->var0.var3;
      *&otherRange.start.value = *&a4->var0.var0;
      *&otherRange.start.epoch = v32;
      *&otherRange.duration.timescale = *&a4->var1.var1;
      CMTimeRangeGetIntersection(&time, &range, &otherRange);
      if ((time.start.flags & 1) == 0 || (time.duration.flags & 1) == 0 || time.duration.epoch || time.duration.value < 0 || (range.start = time.duration, *&otherRange.start.value = *v10, otherRange.start.epoch = *(v10 + 16), CMTimeCompare(&range.start, &otherRange.start)))
      {
        [v31 score];
        if (v33 >= v23)
        {
          break;
        }
      }

      if (v29 <= 0)
      {
        goto LABEL_61;
      }
    }

    range = time;
    CMTimeRangeGetEnd(&otherRange.start, &range);
    v47 = otherRange.start;
LABEL_64:
  }

  if (v24 < 0)
  {
    v34 = 0;
    if ((v29 & 0x8000000000000000) == 0)
    {
      goto LABEL_67;
    }

LABEL_69:
    v35 = 0;
    goto LABEL_70;
  }

  v34 = [(NSMutableArray *)selfCopy->_internalResults objectAtIndexedSubscript:v24];
  if (v29 < 0)
  {
    goto LABEL_69;
  }

LABEL_67:
  v35 = [(NSMutableArray *)selfCopy->_internalResults objectAtIndexedSubscript:v29];
LABEL_70:
  memset(&otherRange, 0, 24);
  CMTimeMake(&otherRange.start, (selfCopy->_minDurationInSeconds * 600.0), 600);
  while (1)
  {
    time.start = v47;
    range.start = start;
    CMTimeSubtract(&v46, &time.start, &range.start);
    time.start = v46;
    *&range.start.value = *&otherRange.start.value;
    range.start.epoch = otherRange.start.epoch;
    if ((CMTimeCompare(&time.start, &range.start) & 0x80000000) == 0)
    {
      break;
    }

    if (v35)
    {
      if (v34)
      {
        [v35 score];
        v37 = v36;
        [v34 score];
        if (v37 <= v38)
        {
          goto LABEL_85;
        }
      }

      memset(&v46, 0, sizeof(v46));
      [v35 timerange];
      CMTimeRangeGetEnd(&v46, &time);
      time.start = v46;
      range.start = start;
      CMTimeSubtract(&v44, &time.start, &range.start);
      time.start = v44;
      *&range.start.value = *&otherRange.start.value;
      range.start.epoch = otherRange.start.epoch;
      if (CMTimeCompare(&time.start, &range.start) < 0)
      {
        v45 = v46;
      }

      else
      {
        time.start = start;
        *&range.start.value = *&otherRange.start.value;
        range.start.epoch = otherRange.start.epoch;
        CMTimeAdd(&v45, &time.start, &range.start);
      }

      v47 = v45;
      time.start = v45;
      range.start = v49;
      if (CMTimeCompare(&time.start, &range.start) < 0)
      {
        if (v29 + 1 >= [(NSMutableArray *)selfCopy->_internalResults count])
        {
          v39 = 0;
        }

        else
        {
          v39 = [(NSMutableArray *)selfCopy->_internalResults objectAtIndexedSubscript:v29 + 1];
          ++v29;
        }
      }

      else
      {
        v39 = 0;
        v47 = v49;
      }

      v35 = v39;
    }

    else
    {
      if (!v34)
      {
        v35 = 0;
        break;
      }

LABEL_85:
      memset(&v46, 0, sizeof(v46));
      [v34 timerange];
      v46 = time.start;
      v40 = *&time.start.value;
      epoch = time.start.epoch;
      time.start = v47;
      *&range.start.value = v40;
      range.start.epoch = epoch;
      CMTimeSubtract(&v44, &time.start, &range.start);
      time.start = v44;
      *&range.start.value = *&otherRange.start.value;
      range.start.epoch = otherRange.start.epoch;
      if (CMTimeCompare(&time.start, &range.start) < 0)
      {
        v45 = v46;
      }

      else
      {
        time.start = v47;
        *&range.start.value = *&otherRange.start.value;
        range.start.epoch = otherRange.start.epoch;
        CMTimeSubtract(&v45, &time.start, &range.start);
      }

      start = v45;
      time.start = v45;
      range.start = var0;
      if (CMTimeCompare(&time.start, &range.start) <= 0)
      {
        v42 = 0;
        start = var0;
      }

      else if (v24 < 1)
      {
        v42 = 0;
      }

      else
      {
        v42 = [(NSMutableArray *)selfCopy->_internalResults objectAtIndexedSubscript:v24 - 1];
        --v24;
      }

      v34 = v42;
    }
  }

  time.start = start;
  range.start = v47;
  CMTimeRangeFromTimeToTime(retstr, &time.start, &range.start);

  return result;
}

- (id)movieSummary
{
  v33 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_qualityResults count])
  {
    v3 = [MEMORY[0x1E695DF00] now];
    [v3 timeIntervalSince1970];

    v4 = objc_alloc_init(VCPMovieHighlight);
    memset(&v31, 0, sizeof(v31));
    CMTimeRangeMakeFromDictionary(&v31, [(NSArray *)self->_qualityResults firstObject]);
    memset(&v30, 0, sizeof(v30));
    CMTimeRangeMakeFromDictionary(&v30, [(NSArray *)self->_qualityResults lastObject]);
    *&start.start.value = *&v31.start.value;
    start.start.epoch = v31.start.epoch;
    range = v30;
    memset(&v29, 0, sizeof(v29));
    CMTimeRangeGetEnd(&end.start, &range);
    CMTimeRangeFromTimeToTime(&v29, &start.start, &end.start);
    start = v29;
    memset(&range, 0, sizeof(range));
    [(VCPMovieHighlightAnalyzer *)self computeQualityTrimFor:&start withKeyFrame:1];
    end = range;
    memset(&start, 0, sizeof(start));
    [(VCPMovieHighlightAnalyzer *)self computeActionFaceTrimFor:&end];
    time1 = range;
    memset(&end, 0, sizeof(end));
    [(VCPMovieHighlightAnalyzer *)self computeSteadyTranslationTrimFor:&time1];
    if ((end.start.flags & 1) == 0 || (end.duration.flags & 1) == 0 || end.duration.epoch || end.duration.value < 0 || (time1.start = end.duration, *&time2.start.value = *MEMORY[0x1E6960CC0], time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time1.start, &time2.start)))
    {
      if ((start.start.flags & 1) == 0 || (start.duration.flags & 1) == 0 || start.duration.epoch || start.duration.value < 0 || (time1.start = start.duration, *&time2.start.value = *MEMORY[0x1E6960CC0], time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time1.start, &time2.start)))
      {
        time2 = start;
        otherRange = end;
        CMTimeRangeGetUnion(&time1, &time2, &otherRange);
        start = time1;
      }

      else
      {
        start = end;
        range = end;
      }
    }

    p_start = &start;
    if (self->_isLivePhoto)
    {
      p_start = &range;
    }

    otherRange.start.value = p_start->start.value;
    flags = p_start->start.flags;
    otherRange.start.timescale = p_start->start.timescale;
    epoch = p_start->start.epoch;
    value = p_start->duration.value;
    timescale = p_start->duration.timescale;
    v10 = p_start->duration.flags;
    v11 = p_start->duration.epoch;
    if ((flags & 1) != 0 && (v10 & 1) != 0 && !v11 && (value & 0x8000000000000000) == 0)
    {
      time1.start.value = p_start->duration.value;
      time1.start.timescale = timescale;
      time1.start.flags = v10;
      time1.start.epoch = 0;
      *&time2.start.value = *MEMORY[0x1E6960CC0];
      time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
      if (!CMTimeCompare(&time1.start, &time2.start))
      {
        goto LABEL_28;
      }
    }

    hadZoom = self->_hadZoom;
    time1.start.value = otherRange.start.value;
    time1.start.timescale = otherRange.start.timescale;
    time1.start.flags = flags;
    time1.start.epoch = epoch;
    time1.duration.value = value;
    time1.duration.timescale = timescale;
    time1.duration.flags = v10;
    time1.duration.epoch = v11;
    v12 = [(VCPMovieHighlightAnalyzer *)self checkCameraZoom:&time1];
    time1 = v29;
    [(VCPMovieHighlightAnalyzer *)self generateExpressionSegments:&time1];
    time1.start.value = value;
    time1.start.timescale = timescale;
    time1.start.flags = v10;
    time1.start.epoch = v11;
    Seconds = CMTimeGetSeconds(&time1.start);
    time1.start = v29.duration;
    [(VCPMovieHighlight *)v4 setIsTrimmed:Seconds < CMTimeGetSeconds(&time1.start)];
    time1.start.value = otherRange.start.value;
    time1.start.timescale = otherRange.start.timescale;
    time1.start.flags = flags;
    time1.start.epoch = epoch;
    time1.duration.value = value;
    time1.duration.timescale = timescale;
    time1.duration.flags = v10;
    time1.duration.epoch = v11;
    [(VCPMovieHighlightAnalyzer *)self analyzeOverallQuality:&time1 isSettlingEffect:0 isAnimatedSticker:0];
    [(VCPMovieHighlight *)v4 setScore:?];
    time1.start.value = otherRange.start.value;
    time1.start.timescale = otherRange.start.timescale;
    time1.start.flags = flags;
    time1.start.epoch = epoch;
    time1.duration.value = value;
    time1.duration.timescale = timescale;
    time1.duration.flags = v10;
    time1.duration.epoch = v11;
    [(VCPMovieHighlight *)v4 setTimerange:&time1];
    if (v4)
    {
      [(VCPMovieHighlight *)v4 timerange];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v15 = [(VCPMovieHighlightAnalyzer *)self pickKeyFramesInRange:&time1];
    [(VCPMovieHighlight *)v4 setKeyFrame:v15];

    keyFrame = [(VCPMovieHighlight *)v4 keyFrame];
    LOBYTE(v15) = keyFrame == 0;

    if (v15)
    {
LABEL_28:
      v14 = 0;
    }

    else
    {
      if (!self->_isLivePhoto)
      {
        goto LABEL_32;
      }

      if (v4)
      {
        [(VCPMovieHighlight *)v4 timerange];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      time2.start = time1.duration;
      if (CMTimeGetSeconds(&time2.start) > 2.0)
      {
        v17 = (!hadZoom && !v12) & ~self->_hadFlash;
      }

      else
      {
LABEL_32:
        v17 = 0;
      }

      if (self->_isLivePhoto)
      {
        v18 = 0;
      }

      else
      {
        if (v4)
        {
          [(VCPMovieHighlight *)v4 timerange];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        time2.start = time1.duration;
        v18 = CMTimeGetSeconds(&time2.start) > 2.0;
      }

      [(VCPMovieHighlight *)v4 setIsAutoPlayable:(v17 | v18) & 1];
      time1.start.value = otherRange.start.value;
      time1.start.timescale = otherRange.start.timescale;
      time1.start.flags = flags;
      time1.start.epoch = epoch;
      time1.duration.value = value;
      time1.duration.timescale = timescale;
      time1.duration.flags = v10;
      time1.duration.epoch = v11;
      [(VCPMovieHighlightAnalyzer *)self computeBestPlaybackCrop:&time1];
      [(VCPMovieHighlight *)v4 setBestPlaybackCrop:?];
      if (self->_isLivePhoto)
      {
        v19 = objc_alloc_init(VCPMovieHighlight);
        animatedStickerGating = self->_animatedStickerGating;
        self->_animatedStickerGating = v19;

        if (+[VCPMovieHighlightAnalyzer isHeuristicStickerScoreEnabled])
        {
          time1.start.value = otherRange.start.value;
          time1.start.timescale = otherRange.start.timescale;
          time1.start.flags = flags;
          time1.start.epoch = epoch;
          time1.duration.value = value;
          time1.duration.timescale = timescale;
          time1.duration.flags = v10;
          time1.duration.epoch = v11;
          [(VCPMovieHighlightAnalyzer *)self analyzeOverallQuality:&time1 isSettlingEffect:0 isAnimatedSticker:1];
        }

        else
        {
          [(VCPMovieHighlight *)v4 score];
        }

        [(VCPMovieHighlight *)self->_animatedStickerGating setScore:?];
        time1.start.value = otherRange.start.value;
        v21 = self->_animatedStickerGating;
        time1.start.timescale = otherRange.start.timescale;
        time1.start.flags = flags;
        time1.start.epoch = epoch;
        time1.duration.value = value;
        time1.duration.timescale = timescale;
        time1.duration.flags = v10;
        time1.duration.epoch = v11;
        [(VCPMovieHighlight *)v21 setTimerange:&time1];
      }

      v14 = v4;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (float)settlingMotionScore:(id *)score
{
  v4 = 0;
  v16 = *MEMORY[0x1E69E9840];
  numberOfFrames = self->_numberOfFrames;
  if (numberOfFrames <= 1)
  {
    numberOfFrames = 1;
  }

  v6 = numberOfFrames;
  do
  {
    v7 = expf(-((fminf(*&[VCPMovieHighlightAnalyzer settlingMotionScore:]::paramsWeights[v4] * (self->_sumMotionParam.__elems_[v4] / v6), 20.0) * 0.1) + (((self->_diffFlipCount.__elems_[v4] * 30.0) / v6) * 0.1)));
    *(&v14 + v4 * 4) = (v7 + v7) / (v7 + 1.0);
    ++v4;
  }

  while (v4 != 6);
  v8 = *&v14;
  v12 = v14;
  v13 = v15;
  v9 = 4;
  v10 = &v12;
  do
  {
    if (*(&v12 + v9) < v8)
    {
      v8 = *(&v12 + v9);
      v10 = (&v12 + v9);
    }

    v9 += 4;
  }

  while (v9 != 24);
  result = 1.0;
  if (*v10 < 0.5)
  {
    return 0.0;
  }

  return result;
}

- (float)settlingSubjectScore:(id *)score
{
  v101 = *MEMORY[0x1E69E9840];
  memset(&v98, 0, sizeof(v98));
  CMTimeMake(&v98, 0, 600);
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = self->_humanPoseResults;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v94 objects:v100 count:16];
  if (v4)
  {
    v71 = 0;
    v77 = *v95;
    do
    {
      v5 = 0;
      do
      {
        if (*v95 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v94 + 1) + 8 * v5);
        v7 = [v6 objectForKey:{@"attributes", v71}];
        v8 = [v7 objectForKey:@"humanBounds"];
        v9 = [v6 objectForKey:@"start"];
        v10 = [v6 objectForKey:@"duration"];
        memset(&v93, 0, sizeof(v93));
        CMTimeMakeFromDictionary(&v93, v9);
        memset(&v92, 0, sizeof(v92));
        CMTimeMakeFromDictionary(&v92, v10);
        memset(&v91, 0, sizeof(v91));
        start.start = v93;
        duration.start = v92;
        CMTimeRangeMake(&v91, &start.start, &duration.start);
        v102 = NSRectFromString(v8);
        width = v102.size.width;
        height = v102.size.height;
        *&v102.origin.y = *&score->var0.var3;
        *&start.start.value = *&score->var0.var0;
        *&start.start.epoch = *&v102.origin.y;
        *&start.duration.timescale = *&score->var1.var1;
        duration.start = v93;
        if (!CMTimeRangeContainsTime(&start, &duration.start))
        {

          goto LABEL_25;
        }

        v13 = *&score->var0.var0;
        v14 = *&score->var1.var1;
        *&duration.start.epoch = *&score->var0.var3;
        *&duration.duration.timescale = v14;
        otherRange = v91;
        *&duration.start.value = v13;
        CMTimeRangeGetIntersection(&start, &duration, &otherRange);
        if ((start.start.flags & 1) == 0 || (v15 = *&score->var0.var0, v16 = *&score->var1.var1, *&duration.start.epoch = *&score->var0.var3, *&duration.duration.timescale = v16, otherRange = v91, *&duration.start.value = v15, CMTimeRangeGetIntersection(&v87, &duration, &otherRange), (v87.duration.flags & 1) == 0) || (v17 = *&score->var0.var0, v18 = *&score->var1.var1, *&duration.start.epoch = *&score->var0.var3, *&duration.duration.timescale = v18, otherRange = v91, *&duration.start.value = v17, CMTimeRangeGetIntersection(&v86, &duration, &otherRange), v86.duration.epoch) || (v20 = *&score->var0.var0, v21 = *&score->var1.var1, *&duration.start.epoch = *&score->var0.var3, *&duration.duration.timescale = v21, otherRange = v91, *&duration.start.value = v20, CMTimeRangeGetIntersection(&v85, &duration, &otherRange), v85.duration.value < 0) || (v22 = *&score->var0.var0, v23 = *&score->var1.var1, *&duration.start.epoch = *&score->var0.var3, *&duration.duration.timescale = v23, otherRange = v91, *&duration.start.value = v22, CMTimeRangeGetIntersection(&v84, &duration, &otherRange), duration.start = v84.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&duration.start, &otherRange.start)))
        {
          v98 = v93;
          start.start = v93;
          duration.start = v93;
          if (CMTimeCompare(&start.start, &duration.start) >= 1)
          {
            v98 = v93;
            v19 = v71;
            if (v71 <= SHIDWORD(v71))
            {
              v19 = HIDWORD(v71);
            }

            v71 = v19;
          }

          if (width * height > 0.0500000007)
          {
            ++HIDWORD(v71);
          }
        }

        ++v5;
      }

      while (v4 != v5);
      v24 = [(NSArray *)obj countByEnumeratingWithState:&v94 objects:v100 count:16];
      v4 = v24;
    }

    while (v24);
  }

  else
  {
    v71 = 0;
  }

LABEL_25:

  CMTimeMake(&v91.start, 0, 600);
  v98 = v91.start;
  memset(&v93, 0, sizeof(v93));
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v73 = self->_faceResults;
  v25 = [(NSArray *)v73 countByEnumeratingWithState:&v80 objects:v99 count:16];
  if (v25)
  {
    v76 = *v81;
    scoreCopy = score;
    do
    {
      v78 = v25;
      for (i = 0; i != v78; ++i)
      {
        if (*v81 != v76)
        {
          objc_enumerationMutation(v73);
        }

        v27 = *(*(&v80 + 1) + 8 * i);
        v28 = [v27 objectForKey:{@"attributes", v71}];
        v29 = [v28 objectForKey:@"faceBounds"];
        v30 = [v27 objectForKey:@"start"];
        v31 = [v27 objectForKey:@"duration"];
        memset(&v92, 0, sizeof(v92));
        CMTimeMakeFromDictionary(&v92, v30);
        memset(&v79, 0, sizeof(v79));
        CMTimeMakeFromDictionary(&v79, v31);
        memset(&v91, 0, sizeof(v91));
        start.start = v92;
        duration.start = v79;
        CMTimeRangeMake(&v91, &start.start, &duration.start);
        v103 = NSRectFromString(v29);
        v32 = v103.size.width;
        v33 = v103.size.height;
        v103.origin = *&score->var0.var0;
        v103.size = *&score->var1.var1;
        *&duration.start.epoch = *&score->var0.var3;
        *&duration.duration.timescale = v103.size;
        otherRange = v91;
        *&duration.start.value = v103.origin;
        CMTimeRangeGetIntersection(&start, &duration, &otherRange);
        if ((start.start.flags & 1) == 0 || (v34 = *&score->var0.var0, v35 = *&score->var1.var1, *&duration.start.epoch = *&score->var0.var3, *&duration.duration.timescale = v35, otherRange = v91, *&duration.start.value = v34, CMTimeRangeGetIntersection(&v87, &duration, &otherRange), (v87.duration.flags & 1) == 0) || (v36 = *&score->var0.var0, v37 = *&score->var1.var1, *&duration.start.epoch = *&score->var0.var3, *&duration.duration.timescale = v37, otherRange = v91, *&duration.start.value = v36, CMTimeRangeGetIntersection(&v86, &duration, &otherRange), v86.duration.epoch) || (v38 = *&score->var0.var0, v39 = *&score->var1.var1, *&duration.start.epoch = *&score->var0.var3, *&duration.duration.timescale = v39, otherRange = v91, *&duration.start.value = v38, CMTimeRangeGetIntersection(&v85, &duration, &otherRange), v85.duration.value < 0) || (v40 = *&score->var0.var0, v41 = *&score->var1.var1, *&duration.start.epoch = *&score->var0.var3, *&duration.duration.timescale = v41, otherRange = v91, *&duration.start.value = v40, CMTimeRangeGetIntersection(&v84, &duration, &otherRange), duration.start = v84.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&duration.start, &otherRange.start)))
        {
          if (v32 * v33 > 0.00749999983)
          {
            start.start = v92;
            Seconds = CMTimeGetSeconds(&start.start);
            start.start = v79;
            v43 = CMTimeGetSeconds(&start.start);
            start.start = v92;
            v44 = (Seconds + v43);
            v45 = CMTimeGetSeconds(&start.start);
            v46 = *&v93.timescale;
            if (*&v93.timescale >= v93.epoch)
            {
              v48 = (*&v93.timescale - v93.value) >> 3;
              if ((v48 + 1) >> 61)
              {
                std::vector<std::unique_ptr<VCPProtoKeypoint>>::__throw_length_error[abi:ne200100]();
              }

              v49 = (v93.epoch - v93.value) >> 2;
              if (v49 <= v48 + 1)
              {
                v49 = v48 + 1;
              }

              if (v93.epoch - v93.value >= 0x7FFFFFFFFFFFFFF8uLL)
              {
                v50 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v50 = v49;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v93, v50);
              }

              v51 = (8 * v48);
              *v51 = v44 | (v45 << 32);
              v47 = 8 * v48 + 8;
              v52 = v51 - (*&v93.timescale - v93.value);
              memcpy(v52, v93.value, *&v93.timescale - v93.value);
              value = v93.value;
              v93.value = v52;
              *&v93.timescale = v47;
              v93.epoch = 0;
              if (value)
              {
                operator delete(value);
              }

              score = scoreCopy;
            }

            else
            {
              **&v93.timescale = v44 | (v45 << 32);
              v47 = v46 + 8;
            }

            *&v93.timescale = v47;
          }
        }
      }

      v25 = [(NSArray *)v73 countByEnumeratingWithState:&v80 objects:v99 count:16];
    }

    while (v25);
  }

  v54 = 126 - 2 * __clz((*&v93.timescale - v93.value) >> 3);
  if (*&v93.timescale == v93.value)
  {
    v55 = 0;
  }

  else
  {
    v55 = v54;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,int> *,false>(v93.value, *&v93.timescale, &v91, v55, 1);
  if (*&v93.timescale == v93.value)
  {
    v68 = 0;
    if (v93.value)
    {
LABEL_71:
      *&v93.timescale = v93.value;
      operator delete(v93.value);
    }
  }

  else
  {
    v56 = 0;
    v57 = 0;
    v58 = (*&v93.timescale - v93.value) >> 3;
    v59 = v58 - 1;
    if (v58 <= 1)
    {
      v60 = 1;
    }

    else
    {
      v60 = (*&v93.timescale - v93.value) >> 3;
    }

    v61 = v93.value + 12;
    do
    {
      v62 = v56 + 1;
      if (v58 <= v56 + 1)
      {
        v63 = 0;
      }

      else
      {
        v63 = 0;
        v64 = *(v93.value + 8 * v56);
        v65 = v59;
        v66 = v61;
        do
        {
          v67 = *v66;
          v66 += 2;
          if (v67 < v64)
          {
            ++v63;
          }

          --v65;
        }

        while (v65);
      }

      if (v63 > v57)
      {
        v57 = v63;
      }

      v61 += 8;
      --v59;
      v56 = v62;
    }

    while (v62 != v60);
    v68 = v57 > 2;
    if (v93.value)
    {
      goto LABEL_71;
    }
  }

  v69 = v71;
  if (v71 <= SHIDWORD(v71))
  {
    v69 = HIDWORD(v71);
  }

  result = 1.0;
  if (v69 > 2 || v68)
  {
    return 0.0;
  }

  return result;
}

- (float)settlingExposureChangeScore:(id *)score
{
  v28 = *MEMORY[0x1E69E9840];
  memset(&v26, 0, sizeof(v26));
  v5 = *&score->var0.var3;
  *&range.start.value = *&score->var0.var0;
  *&range.start.epoch = v5;
  *&range.duration.timescale = *&score->var1.var1;
  CMTimeRangeGetEnd(&v26, &range);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_cameraMotionResults;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
  v8 = 1.0;
  if (v7)
  {
    v9 = *v22;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v21 + 1) + 8 * v10);
      memset(&range, 0, sizeof(range));
      CMTimeRangeMakeFromDictionary(&range, v11);
      *&time1.start.value = *&range.start.value;
      time1.start.epoch = range.start.epoch;
      time2.start = v26;
      if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
      {
        break;
      }

      time2 = range;
      memset(&time1, 0, sizeof(time1));
      v12 = *&score->var0.var3;
      *&v18.start.value = *&score->var0.var0;
      *&v18.start.epoch = v12;
      *&v18.duration.timescale = *&score->var1.var1;
      CMTimeRangeGetIntersection(&time1, &time2, &v18);
      if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&v18.start.value = *MEMORY[0x1E6960CC0], v18.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time2.start, &v18.start)))
      {
        v13 = [(__CFDictionary *)v11 objectForKey:@"flags"];
        integerValue = [v13 integerValue];
        v15 = (integerValue & 0x2FFC0) != 0 && (integerValue & 0x1FFC0) == 98304;
        v16 = !v15;

        if (!v16)
        {
          v8 = 0.0;
          break;
        }
      }

      if (v7 == ++v10)
      {
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v8;
}

- (float)settlingSharpnessScore:(id *)score
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_keyFrameResults;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = *v18;
    v7 = 1.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = *&score->var0.var3;
        *&range.start.value = *&score->var0.var0;
        *&range.start.epoch = v10;
        *&range.duration.timescale = *&score->var1.var1;
        if (v9)
        {
          [v9 timestamp];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        if (CMTimeRangeContainsTime(&range, &time))
        {
          [v9 sharpness];
          if (v11 < v7)
          {
            [v9 sharpness];
            v7 = v12;
          }
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
    if (v7 >= 0.2)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }
  }

  else
  {
    v13 = 1.0;
  }

  return v13;
}

- (int)analyzeRankingScores:(float)scores subtleMotion:(float)motion humanAction:(float)action
{
  __asm { FMOV            V1.2S, #10.0 }

  v11 = vdiv_f32(*&scores, _D1);
  __asm { FMOV            V3.2S, #1.0 }

  *self->_sumScores = vadd_f32(vbic_s8(vbsl_s8(vcge_f32(v11, _D3), _D3, v11), vclez_f32(v11)), *self->_sumScores);
  frameCount = self->_frameCount;
  if (frameCount >= 7)
  {
    actionCopy = 1.0;
    if (action < 1.0)
    {
      actionCopy = action;
    }

    if (action <= 0.0)
    {
      actionCopy = 0.0;
    }

    self->_sumScores[2] = actionCopy + self->_sumScores[2];
  }

  self->_frameCount = frameCount + 1;
  return 0;
}

- (int)analyzeMotionStability:()array<float motionParamDiff:(6UL> *)diff
{
  v4 = 0;
  p_diffFlipCount = &self->_diffFlipCount;
  do
  {
    v6 = a4->__elems_[v4];
    if ((v6 * p_diffFlipCount[-2].__elems_[0]) < 0.0)
    {
      p_diffFlipCount->__elems_[0] = p_diffFlipCount->__elems_[0] + 1.0;
      v6 = a4->__elems_[v4];
    }

    p_diffFlipCount[-2].__elems_[0] = v6;
    p_diffFlipCount[-1].__elems_[0] = p_diffFlipCount[-1].__elems_[0] + fabsf(diff->__elems_[v4++]);
    p_diffFlipCount = (p_diffFlipCount + 4);
  }

  while (v4 != 6);
  ++self->_numberOfFrames;
  return 0;
}

- (float)rankingLevel
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = 0.0;
  if (self->_frameCount >= 8)
  {
    array = [MEMORY[0x1E695DF70] array];
    v6 = 0;
    v7 = MEMORY[0x1E696AD98];
    do
    {
      *&v5 = self->_sumScores[v6] / self->_frameCount;
      v8 = [v7 numberWithFloat:v5];
      [array addObject:v8];

      v7 = MEMORY[0x1E696AD98];
      ++v6;
    }

    while (v6 != 2);
    *&v5 = self->_sumScores[2] / (self->_frameCount - 7);
    v9 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
    [array addObject:v9];

    v10 = 0;
    v21 = 0.0;
    v20 = 0;
    do
    {
      v11 = [array objectAtIndexedSubscript:v10];
      [v11 floatValue];
      v13 = v12;

      v14 = flt_1C9F625D0[v10];
      if (v13 < v14)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      *(&v20 + v10) = flt_1C9F625DC[v10] * ((v13 - v14) * v15);
      ++v10;
    }

    while (v10 != 3);
    v16 = 0;
    v17 = *&v20;
    if (*&v20 < *(&v20 + 1))
    {
      v17 = *(&v20 + 1);
    }

    if (v17 < v21)
    {
      v17 = v21;
    }

    v2 = 0.0;
    do
    {
      if (v17 <= *&dword_1C9F625E8[v16])
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v2 = v2 + (v18 / 5.0);
      ++v16;
    }

    while (v16 != 5);
  }

  return v2;
}

- (id)settlingEffects
{
  if (self->_isLivePhoto && [(NSArray *)self->_qualityResults count])
  {
    v3 = objc_alloc_init(VCPMovieHighlight);
    memset(&v21, 0, sizeof(v21));
    CMTimeRangeMakeFromDictionary(&v21, [(NSArray *)self->_qualityResults firstObject]);
    memset(&v20, 0, sizeof(v20));
    CMTimeMakeWithSeconds(&v18.start, (self->_photoOffset + -0.5), 600);
    CMTimeMakeWithSeconds(&end, self->_photoOffset, 600);
    CMTimeRangeFromTimeToTime(&v20, &v18.start, &end);
    v18.start = v20.duration;
    Seconds = CMTimeGetSeconds(&v18.start);
    v18.start = v20.duration;
    [(VCPMovieHighlight *)v3 setIsTrimmed:Seconds < CMTimeGetSeconds(&v18.start)];
    v18 = v20;
    [(VCPMovieHighlightAnalyzer *)self analyzeOverallQuality:&v18 isSettlingEffect:1 isAnimatedSticker:0];
    [(VCPMovieHighlight *)v3 setAutoplayScore:?];
    v18 = v20;
    [(VCPMovieHighlightAnalyzer *)self settlingMotionScore:&v18];
    [(VCPMovieHighlight *)v3 setMotionScore:?];
    v18 = v20;
    [(VCPMovieHighlightAnalyzer *)self settlingSubjectScore:&v18];
    [(VCPMovieHighlight *)v3 setSubjectScore:?];
    v18 = v20;
    [(VCPMovieHighlightAnalyzer *)self settlingExposureChangeScore:&v18];
    [(VCPMovieHighlight *)v3 setExposureChangeScore:?];
    v18 = v20;
    [(VCPMovieHighlightAnalyzer *)self settlingSharpnessScore:&v18];
    [(VCPMovieHighlight *)v3 setSharpnessScore:?];
    *&v5 = !self->_settlingHadZoom;
    [(VCPMovieHighlight *)v3 setZoomChangeScore:v5];
    *&v6 = !self->_hadFlash;
    [(VCPMovieHighlight *)v3 setFlashScore:v6];
    v18 = v20;
    [(VCPMovieHighlight *)v3 setTimerange:&v18];
    [(VCPMovieHighlight *)v3 autoplayScore];
    LODWORD(Seconds) = v7;
    [(VCPMovieHighlight *)v3 exposureChangeScore];
    v9 = v8;
    [(VCPMovieHighlight *)v3 sharpnessScore];
    v11 = v10;
    [(VCPMovieHighlight *)v3 zoomChangeScore];
    v13 = v12;
    [(VCPMovieHighlight *)v3 flashScore];
    *&v15 = (((*&Seconds * v9) * v11) * v13) * v14;
    [(VCPMovieHighlight *)v3 setScore:v15];
    [(VCPMovieHighlight *)v3 score];
    [(VCPMovieHighlight *)v3 setIsSettlingOK:v16 > 0.8];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)updateCropHeatMap:(float *)map withResults:(id)results timeRange:(id *)range resultsKey:(id)key
{
  v53 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  keyCopy = key;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = resultsCopy;
  v10 = 0;
  v11 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v11)
  {
    v12 = *v49;
    v13 = 10.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v48 + 1) + 8 * i);
        memset(&v47, 0, sizeof(v47));
        CMTimeRangeMakeFromDictionary(&v47, v15);
        range = v47;
        memset(&v46, 0, sizeof(v46));
        v16 = *&range->var0.var3;
        *&r2[1] = *&range->var0.var0;
        *&r2[3] = v16;
        *&r2[5] = *&range->var1.var1;
        CMTimeRangeGetIntersection(&v46, &range, &r2[1]);
        if ((v46.start.flags & 1) != 0 && (v46.duration.flags & 1) != 0 && !v46.duration.epoch && (v46.duration.value & 0x8000000000000000) == 0)
        {
          range.start = v46.duration;
          *&r2[1] = *MEMORY[0x1E6960CC0];
          r2[3] = *(MEMORY[0x1E6960CC0] + 16);
          if (!CMTimeCompare(&range.start, &r2[1]))
          {
            continue;
          }
        }

        range.start = v46.duration;
        if (CMTimeGetSeconds(&range.start) < 10.0)
        {
          v17 = [(__CFDictionary *)v15 objectForKeyedSubscript:@"attributes"];
          v18 = v17;
          if (@"FaceResults" == keyCopy)
          {
            v25 = [v17 objectForKeyedSubscript:@"faceBounds"];
            v55 = NSRectFromString(v25);
            r2[0] = *&v55.origin.x;
            y = v55.origin.y;
            width = v55.size.width;
            height = v55.size.height;

            v26 = 1.0;
            if (width * height > 0.0149999997)
            {
              v26 = 4.0;
            }

            v43 = v26;
          }

          else if (@"PetsResults" == keyCopy)
          {
            v27 = [v17 objectForKeyedSubscript:@"petsBounds"];
            v56 = NSRectFromString(v27);
            r2[0] = *&v56.origin.x;
            y = v56.origin.y;
            width = v56.size.width;
            height = v56.size.height;

            v28 = [v18 objectForKeyedSubscript:@"petsConfidence"];
            [v28 floatValue];
            v43 = v29;
          }

          else
          {
            if (@"SaliencyResults" == keyCopy)
            {
              v30 = [v17 objectForKeyedSubscript:@"saliencyBounds"];
              v57 = NSRectFromString(v30);
              r2[0] = *&v57.origin.x;
              y = v57.origin.y;
              width = v57.size.width;
              height = v57.size.height;

              [v18 objectForKeyedSubscript:@"saliencyConfidence"];
            }

            else
            {
              v19 = [v17 objectForKeyedSubscript:@"humanBounds"];
              v54 = NSRectFromString(v19);
              r2[0] = *&v54.origin.x;
              y = v54.origin.y;
              width = v54.size.width;
              height = v54.size.height;

              [v18 objectForKeyedSubscript:@"humanConfidence"];
            }
            v23 = ;
            [v23 floatValue];
            v43 = v24;
          }

          v31 = 0;
          mapCopy = map;
          do
          {
            v33 = 0;
            v34 = (v31 / v13);
            do
            {
              v58.origin.x = (v33 / v13);
              v58.origin.y = v34;
              v58.size.width = 0.1;
              v58.size.height = 0.1;
              *&v60.origin.x = r2[0];
              v60.origin.y = y;
              v60.size.width = width;
              v60.size.height = height;
              v59 = CGRectIntersection(v58, v60);
              v35 = v59.size.width;
              v36 = v59.size.height;
              if (!CGRectIsNull(v59))
              {
                range.start = v46.duration;
                Seconds = CMTimeGetSeconds(&range.start);
                *&range.start.value = *&range->var1.var0;
                range.start.epoch = range->var1.var3;
                v38 = CMTimeGetSeconds(&range.start);
                v39 = v35 * v36 * 10.0 * 10.0;
                *&v38 = Seconds / v38;
                mapCopy[v33] = mapCopy[v33] + ((v39 * *&v38) * v43);
                v13 = 10.0;
              }

              ++v33;
            }

            while (v33 != 10);
            ++v31;
            mapCopy += 10;
          }

          while (v31 != 10);

          v10 = 1;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v11);
  }

  return v10 & 1;
}

- (CGRect)computeBestPlaybackCrop:(id *)crop
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = self->_frameSize.width == *MEMORY[0x1E695F060];
  memset(v64, 0, sizeof(v64));
  memset(v63, 0, sizeof(v63));
  memset(v62, 0, sizeof(v62));
  memset(v61, 0, sizeof(v61));
  if (v5 && self->_frameSize.height == *(MEMORY[0x1E695F060] + 8))
  {
    v6 = 1.0;
    v7 = 0.0;
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v58) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Invalid Frame Size for Playback crop", &v58, 2u);
    }

    v8 = 0.0;
    v9 = 1.0;
  }

  else
  {
    faceResults = self->_faceResults;
    v11 = *&crop->var0.var3;
    v58 = *&crop->var0.var0;
    v59 = v11;
    v60 = *&crop->var1.var1;
    v12 = [(VCPMovieHighlightAnalyzer *)self updateCropHeatMap:v64 withResults:faceResults timeRange:&v58 resultsKey:@"FaceResults"];
    petsResults = self->_petsResults;
    v14 = *&crop->var0.var3;
    v58 = *&crop->var0.var0;
    v59 = v14;
    v60 = *&crop->var1.var1;
    v15 = [(VCPMovieHighlightAnalyzer *)self updateCropHeatMap:v63 withResults:petsResults timeRange:&v58 resultsKey:@"PetsResults"];
    saliencyResults = self->_saliencyResults;
    v17 = *&crop->var0.var3;
    v58 = *&crop->var0.var0;
    v59 = v17;
    v60 = *&crop->var1.var1;
    v18 = [(VCPMovieHighlightAnalyzer *)self updateCropHeatMap:v62 withResults:saliencyResults timeRange:&v58 resultsKey:@"SaliencyResults"];
    humanPoseResults = self->_humanPoseResults;
    v20 = *&crop->var0.var3;
    v58 = *&crop->var0.var0;
    v59 = v20;
    v60 = *&crop->var1.var1;
    v21 = (((v18 * 0.2) + (v12 * 0.5)) + ([(VCPMovieHighlightAnalyzer *)self updateCropHeatMap:v61 withResults:humanPoseResults timeRange:&v58 resultsKey:@"HumanPoseResults"]* 0.3)) + (v15 * 0.25);
    v22 = 5.5;
    if (v21 == 0.0)
    {
      v34 = 5.5;
    }

    else
    {
      v23 = 0;
      v24 = 0.0;
      v25 = 0.0;
      v26 = v61;
      v27 = v62;
      v28 = v63;
      v29 = v64;
      v30 = 0.0;
      do
      {
        for (i = 0; i != 10; ++i)
        {
          v32 = ((((*(v28 + i) * 0.25) + (*(v29 + i) * 0.5)) + (*(v27 + i) * 0.2)) + (*(v26 + i) * 0.3)) / v21;
          v25 = v25 + v32;
          v33 = v32;
          v30 = v30 + v33 * (i + 0.5);
          v24 = v24 + v33 * (v23 + 0.5);
        }

        ++v23;
        v26 = (v26 + 40);
        v27 = (v27 + 40);
        v28 = (v28 + 40);
        v29 = (v29 + 40);
      }

      while (v23 != 10);
      v34 = 5.5;
      if (v25 != 0.0)
      {
        v22 = v30 / v25;
        v34 = v24 / v25;
      }
    }

    width = self->_frameSize.width;
    height = self->_frameSize.height;
    v37 = height / width;
    v38 = v37 * 0.5;
    v39 = 1.0 - (v37 * 0.5);
    v40 = v22 / 10.0;
    if (v40 < v39)
    {
      v39 = v40;
    }

    if (v40 <= v38)
    {
      v41 = v37 * 0.5;
    }

    else
    {
      v41 = v39;
    }

    v42 = (v41 * 10.0) / 10.0 - v38;
    v43 = v37;
    v44 = width / height;
    v45 = v44 * 0.5;
    v46 = 1.0 - (v44 * 0.5);
    v47 = v34 / 10.0;
    if (v47 < v46)
    {
      v46 = v47;
    }

    if (v47 <= v45)
    {
      v48 = v44 * 0.5;
    }

    else
    {
      v48 = v46;
    }

    v49 = (v48 * 10.0) / 10.0 - v45;
    v50 = v44;
    v51 = width < height;
    if (width >= height)
    {
      v49 = 0.0;
    }

    else
    {
      v42 = 0.0;
    }

    if (width < height)
    {
      v52 = 1.0;
    }

    else
    {
      v52 = v43;
    }

    if (!v51)
    {
      v50 = 1.0;
    }

    if (v42 < 1.0)
    {
      v53 = v42;
    }

    else
    {
      v53 = 1.0;
    }

    if (v42 <= 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v53;
    }

    if (v49 < 1.0)
    {
      v8 = v49;
    }

    else
    {
      v8 = 1.0;
    }

    if (v49 <= 0.0)
    {
      v8 = 0.0;
    }

    v54 = 1.0 - v7;
    if (v52 < 1.0 - v7)
    {
      v54 = v52;
    }

    if (v52 <= 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v54;
    }

    v55 = 1.0 - v8;
    if (v50 < 1.0 - v8)
    {
      v55 = v50;
    }

    if (v50 <= 0.0)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v55;
    }
  }

  v56 = v7;
  v57 = v6;
  result.size.height = v9;
  result.size.width = v57;
  result.origin.y = v8;
  result.origin.x = v56;
  return result;
}

- (void)generateExpressionSegments:(id *)segments
{
  v49 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v6 = objc_alloc_init(VCPExpressionSegment);
  v7 = *&segments->var0.var3;
  *&v47.start.value = *&segments->var0.var0;
  *&v47.start.epoch = v7;
  *&v47.duration.timescale = *&segments->var1.var1;
  v25 = v6;
  [(VCPExpressionSegment *)v6 setTimeRange:&v47];
  [(VCPExpressionSegment *)v6 setScore:0.0];
  [(NSMutableArray *)self->_expressionSegments addObject:v6];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = self->_faceResults;
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v8)
  {
    v27 = *v44;
    v9 = MEMORY[0x1E6960CC0];
    do
    {
      v28 = v8;
      for (i = 0; i != v28; ++i)
      {
        if (*v44 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        memset(&v47, 0, sizeof(v47));
        CMTimeRangeMakeFromDictionary(&v47, v11);
        v29 = [(__CFDictionary *)v11 objectForKey:@"attributes"];
        aString = [v29 objectForKey:@"faceBounds"];
        v30 = [(__CFDictionary *)v11 objectForKey:@"flags"];
        LOBYTE(v11) = [v30 intValue];
        v50 = NSRectFromString(aString);
        *&v50.origin.x = v50.size.width * v50.size.height + -0.170000002;
        v12 = expf(-(*&v50.origin.x * *&v50.origin.x) / [VCPMovieHighlightAnalyzer computeExpressionScoreInTimerange:]::kAreaSigma[*&v50.origin.x > 0.0]);
        v13 = 0;
        if ((v11 & 2) != 0)
        {
          v14 = 0.3;
        }

        else
        {
          v14 = 0.0;
        }

        v15 = v14 + v12;
        if (v15 < 1.0)
        {
          v16 = v15;
        }

        else
        {
          v16 = 1.0;
        }

        if (v15 <= 0.0)
        {
          v17 = 0.0;
        }

        else
        {
          v17 = v16;
        }

        while (v13 < [(NSMutableArray *)self->_expressionSegments count])
        {
          v18 = [(NSMutableArray *)self->_expressionSegments objectAtIndexedSubscript:v13];
          v19 = v18;
          range = v47;
          memset(&v42, 0, sizeof(v42));
          if (v18)
          {
            [v18 timeRange];
          }

          else
          {
            memset(&otherRange, 0, sizeof(otherRange));
          }

          CMTimeRangeGetIntersection(&v42, &range, &otherRange);
          if ((v42.start.flags & 1) == 0 || (v42.duration.flags & 1) == 0 || v42.duration.epoch || v42.duration.value < 0 || (range.start = v42.duration, *&otherRange.start.value = *&v9->value, otherRange.start.epoch = v9->epoch, CMTimeCompare(&range.start, &otherRange.start)))
          {
            v20 = objc_alloc_init(VCPExpressionSegment);
            if (v19)
            {
              [v19 timeRange];
            }

            else
            {
              memset(&range, 0, sizeof(range));
            }

            *&otherRange.start.value = *&range.start.value;
            otherRange.start.epoch = range.start.epoch;
            end = v42.start;
            CMTimeRangeFromTimeToTime(&v39, &otherRange.start, &end);
            otherRange = v39;
            [(VCPExpressionSegment *)v20 setTimeRange:&otherRange];
            [v19 score];
            [(VCPExpressionSegment *)v20 setScore:?];
            v21 = objc_alloc_init(VCPExpressionSegment);
            range = v42;
            CMTimeRangeGetEnd(&otherRange.start, &range);
            if (v19)
            {
              [v19 timeRange];
            }

            else
            {
              memset(&range, 0, sizeof(range));
            }

            CMTimeRangeGetEnd(&end, &range);
            CMTimeRangeFromTimeToTime(&v38, &otherRange.start, &end);
            range = v38;
            [(VCPExpressionSegment *)v21 setTimeRange:&range];
            [v19 score];
            [(VCPExpressionSegment *)v21 setScore:?];
            range = v42;
            [v19 setTimeRange:&range];
            [v19 score];
            if (v17 >= *&v22)
            {
              *&v22 = v17;
            }

            [v19 setScore:v22];
            if (!v20 || ([(VCPExpressionSegment *)v20 timeRange], (range.start.flags & 1) == 0) || ([(VCPExpressionSegment *)v20 timeRange], (otherRange.duration.flags & 1) == 0) || ([(VCPExpressionSegment *)v20 timeRange], v37) || ([(VCPExpressionSegment *)v20 timeRange], v35 < 0) || ([(VCPExpressionSegment *)v20 timeRange], time1 = v33, time2 = *v9, CMTimeCompare(&time1, &time2)))
            {
              [array addObject:v20];
            }

            [array addObject:v19];
            if (!v21 || ([(VCPExpressionSegment *)v21 timeRange], (range.start.flags & 1) == 0) || ([(VCPExpressionSegment *)v21 timeRange], (otherRange.duration.flags & 1) == 0) || ([(VCPExpressionSegment *)v21 timeRange], v37) || ([(VCPExpressionSegment *)v21 timeRange], v35 < 0) || ([(VCPExpressionSegment *)v21 timeRange], time1 = v33, time2 = *v9, CMTimeCompare(&time1, &time2)))
            {
              [array addObject:v21];
            }
          }

          else
          {
            [array addObject:v19];
          }

          ++v13;
        }

        v23 = [array mutableCopy];
        expressionSegments = self->_expressionSegments;
        self->_expressionSegments = v23;

        [array removeAllObjects];
      }

      v8 = [(NSArray *)obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v8);
  }
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)computeQualityTrimFor:(SEL)for withKeyFrame:(id *)frame
{
  v45 = a5;
  v63 = *MEMORY[0x1E69E9840];
  v8 = *&frame->var0.var3;
  v60 = *&frame->var0.var0;
  v9 = *&frame->var1.var1;
  *&range.start.value = *&frame->var0.var0;
  *&range.start.epoch = v8;
  var3 = frame->var0.var3;
  memset(&v59, 0, sizeof(v59));
  *&range.duration.timescale = v9;
  CMTimeRangeGetEnd(&v59, &range);
  v10 = MEMORY[0x1E6960CC0];
  v56 = *MEMORY[0x1E6960CC0];
  epoch = *(MEMORY[0x1E6960CC0] + 16);
  v54 = v56;
  v55 = epoch;
  if ([(NSArray *)self->_qualityResults count])
  {
    v11 = 0;
    while (1)
    {
      v12 = [(NSArray *)self->_qualityResults objectAtIndexedSubscript:v11];
      memset(&range, 0, sizeof(range));
      CMTimeRangeMakeFromDictionary(&range, v12);
      *&time1.start.value = *&range.start.value;
      time1.start.epoch = range.start.epoch;
      time2.start = v59;
      if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
      {
        break;
      }

      time2 = range;
      memset(&time1, 0, sizeof(time1));
      v13 = *&frame->var0.var3;
      *&otherRange.start.value = *&frame->var0.var0;
      *&otherRange.start.epoch = v13;
      *&otherRange.duration.timescale = *&frame->var1.var1;
      CMTimeRangeGetIntersection(&time1, &time2, &otherRange);
      if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&otherRange.start.value = *v10, otherRange.start.epoch = *(v10 + 16), CMTimeCompare(&time2.start, &otherRange.start)))
      {
        v14 = [(__CFDictionary *)v12 objectForKeyedSubscript:@"quality"];
        [v14 floatValue];
        v16 = v15 < 0.3;

        if (!v16)
        {
          v56 = *&time1.start.value;
          epoch = time1.start.epoch;
          break;
        }
      }

      if (++v11 >= [(NSArray *)self->_qualityResults count])
      {
        goto LABEL_14;
      }
    }
  }

LABEL_14:
  v17 = [(NSArray *)self->_qualityResults count];
  if (v17 - 1 >= 0)
  {
    while (1)
    {
      v18 = [(NSArray *)self->_qualityResults objectAtIndexedSubscript:--v17];
      memset(&range, 0, sizeof(range));
      CMTimeRangeMakeFromDictionary(&range, v18);
      time1 = range;
      CMTimeRangeGetEnd(&otherRange.start, &time1);
      *&time1.start.value = *&otherRange.start.value;
      time1.start.epoch = otherRange.start.epoch;
      *&time2.start.value = v60;
      time2.start.epoch = var3;
      if (CMTimeCompare(&time1.start, &time2.start) < 0)
      {
        break;
      }

      time2 = range;
      memset(&time1, 0, sizeof(time1));
      v19 = *&frame->var0.var3;
      *&otherRange.start.value = *&frame->var0.var0;
      *&otherRange.start.epoch = v19;
      *&otherRange.duration.timescale = *&frame->var1.var1;
      CMTimeRangeGetIntersection(&time1, &time2, &otherRange);
      if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&otherRange.start.value = *v10, otherRange.start.epoch = *(v10 + 16), CMTimeCompare(&time2.start, &otherRange.start)))
      {
        v20 = [(__CFDictionary *)v18 objectForKeyedSubscript:@"quality"];
        [v20 floatValue];
        v22 = v21 < 0.3;

        if (!v22)
        {
          time2 = time1;
          CMTimeRangeGetEnd(&otherRange.start, &time2);
          v54 = *&otherRange.start.value;
          v55 = otherRange.start.epoch;
          break;
        }
      }

      if (v17 <= 0)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_26:
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  *&range.start.value = v56;
  range.start.epoch = epoch;
  *&time1.start.value = v54;
  time1.start.epoch = v55;
  result = CMTimeRangeFromTimeToTime(retstr, &range.start, &time1.start);
  if (v45)
  {
    if ([(NSArray *)self->_keyFrameResults count])
    {
      v24 = 0;
      while (1)
      {
        v25 = [(NSArray *)self->_keyFrameResults objectAtIndexedSubscript:v24];
        [v25 sharpness];
        if (v26 >= 0.2)
        {
          break;
        }

        if (++v24 >= [(NSArray *)self->_keyFrameResults count])
        {
          goto LABEL_36;
        }
      }

      if (v25)
      {
        [v25 timestamp];
      }

      else
      {
        memset(&range, 0, 24);
      }

      v56 = *&range.start.value;
      epoch = range.start.epoch;
    }

LABEL_36:
    v27 = [(NSArray *)self->_keyFrameResults count];
    if (v27 - 1 >= 0)
    {
      while (1)
      {
        v28 = [(NSArray *)self->_keyFrameResults objectAtIndexedSubscript:--v27];
        [v28 sharpness];
        if (v29 >= 0.2)
        {
          break;
        }

        if (v27 <= 0)
        {
          goto LABEL_46;
        }
      }

      if (v27 < [(NSArray *)self->_keyFrameResults count]- 1)
      {
        if (v28)
        {
          [v28 timestamp];
        }

        else
        {
          memset(&range, 0, 24);
        }

        v54 = *&range.start.value;
        v55 = range.start.epoch;
      }
    }

LABEL_46:
    memset(&range, 0, sizeof(range));
    *&time1.start.value = v56;
    time1.start.epoch = epoch;
    *&time2.start.value = v54;
    time2.start.epoch = v55;
    CMTimeRangeFromTimeToTime(&range, &time1.start, &time2.start);
    v30 = *&retstr->var0.var3;
    *&time2.start.value = *&retstr->var0.var0;
    *&time2.start.epoch = v30;
    *&time2.duration.timescale = *&retstr->var1.var1;
    otherRange = range;
    result = CMTimeRangeGetIntersection(&time1, &time2, &otherRange);
    v31 = *&time1.start.epoch;
    *&retstr->var0.var0 = *&time1.start.value;
    *&retstr->var0.var3 = v31;
    *&retstr->var1.var1 = *&time1.duration.timescale;
  }

  orientationResults = self->_orientationResults;
  if (orientationResults)
  {
    v33 = *(MEMORY[0x1E6960CA8] + 16);
    *&range.start.value = *MEMORY[0x1E6960CA8];
    *&range.start.epoch = v33;
    *&range.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v34 = orientationResults;
    v35 = [(NSArray *)v34 countByEnumeratingWithState:&v47 objects:v62 count:16];
    if (v35)
    {
      v36 = *v48;
      while (2)
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v48 != v36)
          {
            objc_enumerationMutation(v34);
          }

          v38 = *(*(&v47 + 1) + 8 * i);
          memset(&time1, 0, sizeof(time1));
          CMTimeRangeMakeFromDictionary(&time1, v38);
          time2 = time1;
          v39 = *&retstr->var0.var3;
          *&otherRange.start.value = *&retstr->var0.var0;
          *&otherRange.start.epoch = v39;
          *&otherRange.duration.timescale = *&retstr->var1.var1;
          if (CMTimeRangeContainsTimeRange(&time2, &otherRange))
          {

            return result;
          }

          otherRange = time1;
          memset(&time2, 0, sizeof(time2));
          v40 = *&retstr->var0.var3;
          *&v46.start.value = *&retstr->var0.var0;
          *&v46.start.epoch = v40;
          *&v46.duration.timescale = *&retstr->var1.var1;
          CMTimeRangeGetIntersection(&time2, &otherRange, &v46);
          if ((time2.start.flags & 1) != 0 && (time2.duration.flags & 1) != 0 && !time2.duration.epoch && (time2.duration.value & 0x8000000000000000) == 0)
          {
            otherRange.start = time2.duration;
            *&v46.start.value = *v10;
            v46.start.epoch = *(v10 + 16);
            if (!CMTimeCompare(&otherRange.start, &v46.start))
            {
              continue;
            }
          }

          otherRange.start = time2.duration;
          v46.start = range.duration;
          if (CMTimeCompare(&otherRange.start, &v46.start) <= 0)
          {
            p_range = &range;
          }

          else
          {
            p_range = &time2;
          }

          v42 = *&p_range->start.value;
          v43 = *&p_range->duration.timescale;
          *&range.start.epoch = *&p_range->start.epoch;
          *&range.duration.timescale = v43;
          *&range.start.value = v42;
        }

        v35 = [(NSArray *)v34 countByEnumeratingWithState:&v47 objects:v62 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }

    v44 = *&range.start.epoch;
    *&retstr->var0.var0 = *&range.start.value;
    *&retstr->var0.var3 = v44;
    *&retstr->var1.var1 = *&range.duration.timescale;
  }

  return result;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)computeActionFaceTrimFor:(SEL)for
{
  v130 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E6960C70];
  v85 = *(MEMORY[0x1E6960C70] + 16);
  epoch = v85;
  value = *MEMORY[0x1E6960C70];
  flags = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = v5;
  obj = self->_faceResults;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v116 objects:v127 count:16];
  if (v6)
  {
    v7 = *v117;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v117 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v116 + 1) + 8 * i);
        memset(&v115, 0, sizeof(v115));
        CMTimeRangeMakeFromDictionary(&v115, v9);
        range = v115;
        memset(&v114, 0, sizeof(v114));
        v10 = *&a4->var0.var3;
        *&otherRange.start.value = *&a4->var0.var0;
        *&otherRange.start.epoch = v10;
        *&otherRange.duration.timescale = *&a4->var1.var1;
        CMTimeRangeGetIntersection(&v114, &range, &otherRange);
        if ((v114.start.flags & 1) != 0 && (v114.duration.flags & 1) != 0 && !v114.duration.epoch && (v114.duration.value & 0x8000000000000000) == 0)
        {
          range.start = v114.duration;
          *&otherRange.start.value = *MEMORY[0x1E6960CC0];
          otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
          if (!CMTimeCompare(&range.start, &otherRange.start))
          {
            continue;
          }
        }

        v11 = [(__CFDictionary *)v9 objectForKey:@"attributes"];
        v12 = [v11 objectForKey:@"faceBounds"];
        v131 = NSRectFromString(v12);
        width = v131.size.width;
        height = v131.size.height;
        v15 = [(__CFDictionary *)v9 objectForKey:@"flags", v131.origin.x, v131.origin.y];
        if (([v15 intValue] & 2) != 0 || (v16 = width * height, v16 >= 0.02) && v16 <= 0.6)
        {
          if ((BYTE12(v120) & 1) == 0 || (*&range.start.value = v120, range.start.epoch = epoch, Seconds = CMTimeGetSeconds(&range.start), *&range.start.value = *&v114.start.value, range.start.epoch = v114.start.epoch, Seconds > CMTimeGetSeconds(&range.start)))
          {
            v120 = *&v114.start.value;
            epoch = v114.start.epoch;
          }

          if ((flags & 1) == 0 || (range.start.value = value, range.start.timescale = timescale, range.start.flags = flags, range.start.epoch = v85, v18 = CMTimeGetSeconds(&range.start), range = v114, CMTimeRangeGetEnd(&otherRange.start, &range), v18 < CMTimeGetSeconds(&otherRange.start)))
          {
            range = v114;
            CMTimeRangeGetEnd(&otherRange.start, &range);
            value = otherRange.start.value;
            flags = otherRange.start.flags;
            timescale = otherRange.start.timescale;
            v85 = otherRange.start.epoch;
          }
        }
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v116 objects:v127 count:16];
    }

    while (v6);
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  obja = self->_actionResults;
  v19 = [(NSArray *)obja countByEnumeratingWithState:&v108 objects:v126 count:16];
  if (v19)
  {
    v20 = *v109;
LABEL_25:
    v21 = 0;
    while (1)
    {
      if (*v109 != v20)
      {
        objc_enumerationMutation(obja);
      }

      v22 = *(*(&v108 + 1) + 8 * v21);
      memset(&v115, 0, sizeof(v115));
      CMTimeRangeMakeFromDictionary(&v115, v22);
      v23 = *&a4->var0.var3;
      *&v114.start.value = *&a4->var0.var0;
      *&v114.start.epoch = v23;
      *&v114.duration.timescale = *&a4->var1.var1;
      CMTimeRangeGetEnd(&otherRange.start, &v114);
      *&v114.start.value = *&v115.start.value;
      v114.start.epoch = v115.start.epoch;
      *&range.start.value = *&otherRange.start.value;
      range.start.epoch = otherRange.start.epoch;
      if ((CMTimeCompare(&v114.start, &range.start) & 0x80000000) == 0)
      {
        break;
      }

      range = v115;
      memset(&v114, 0, sizeof(v114));
      v24 = *&a4->var0.var3;
      *&otherRange.start.value = *&a4->var0.var0;
      *&otherRange.start.epoch = v24;
      *&otherRange.duration.timescale = *&a4->var1.var1;
      CMTimeRangeGetIntersection(&v114, &range, &otherRange);
      if ((v114.start.flags & 1) == 0 || (v114.duration.flags & 1) == 0 || v114.duration.epoch || v114.duration.value < 0 || (range.start = v114.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&range.start, &otherRange.start)))
      {
        v25 = [(__CFDictionary *)v22 objectForKey:@"quality"];
        [v25 floatValue];
        v27 = v26;

        if (v27 >= 0.3)
        {
          if ((BYTE12(v120) & 1) == 0 || (*&range.start.value = v120, range.start.epoch = epoch, v28 = CMTimeGetSeconds(&range.start), *&range.start.value = *&v114.start.value, range.start.epoch = v114.start.epoch, v28 > CMTimeGetSeconds(&range.start)))
          {
            v120 = *&v114.start.value;
            epoch = v114.start.epoch;
          }

          if ((flags & 1) == 0 || (range.start.value = value, range.start.timescale = timescale, range.start.flags = flags, range.start.epoch = v85, v29 = CMTimeGetSeconds(&range.start), range = v114, CMTimeRangeGetEnd(&otherRange.start, &range), v29 < CMTimeGetSeconds(&otherRange.start)))
          {
            range = v114;
            CMTimeRangeGetEnd(&otherRange.start, &range);
            value = otherRange.start.value;
            flags = otherRange.start.flags;
            timescale = otherRange.start.timescale;
            v85 = otherRange.start.epoch;
          }
        }
      }

      if (v19 == ++v21)
      {
        v19 = [(NSArray *)obja countByEnumeratingWithState:&v108 objects:v126 count:16];
        if (v19)
        {
          goto LABEL_25;
        }

        break;
      }
    }
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  objb = self->_humanActionResults;
  v30 = [(NSArray *)objb countByEnumeratingWithState:&v104 objects:v125 count:16];
  if (v30)
  {
    v31 = *v105;
LABEL_45:
    v32 = 0;
    while (1)
    {
      if (*v105 != v31)
      {
        objc_enumerationMutation(objb);
      }

      v33 = *(*(&v104 + 1) + 8 * v32);
      memset(&v115, 0, sizeof(v115));
      CMTimeRangeMakeFromDictionary(&v115, v33);
      v34 = *&a4->var0.var3;
      *&v114.start.value = *&a4->var0.var0;
      *&v114.start.epoch = v34;
      *&v114.duration.timescale = *&a4->var1.var1;
      CMTimeRangeGetEnd(&otherRange.start, &v114);
      *&v114.start.value = *&v115.start.value;
      v114.start.epoch = v115.start.epoch;
      *&range.start.value = *&otherRange.start.value;
      range.start.epoch = otherRange.start.epoch;
      if ((CMTimeCompare(&v114.start, &range.start) & 0x80000000) == 0)
      {
        break;
      }

      range = v115;
      memset(&v114, 0, sizeof(v114));
      v35 = *&a4->var0.var3;
      *&otherRange.start.value = *&a4->var0.var0;
      *&otherRange.start.epoch = v35;
      *&otherRange.duration.timescale = *&a4->var1.var1;
      CMTimeRangeGetIntersection(&v114, &range, &otherRange);
      if ((v114.start.flags & 1) == 0 || (v114.duration.flags & 1) == 0 || v114.duration.epoch || v114.duration.value < 0 || (range.start = v114.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&range.start, &otherRange.start)))
      {
        v36 = [(__CFDictionary *)v33 objectForKeyedSubscript:@"attributes"];
        v37 = [v36 objectForKeyedSubscript:@"absoluteScore"];
        [v37 floatValue];
        v39 = v38;

        if (v39 >= 0.2)
        {
          if ((BYTE12(v120) & 1) == 0 || (*&range.start.value = v120, range.start.epoch = epoch, v40 = CMTimeGetSeconds(&range.start), *&range.start.value = *&v114.start.value, range.start.epoch = v114.start.epoch, v40 > CMTimeGetSeconds(&range.start)))
          {
            v120 = *&v114.start.value;
            epoch = v114.start.epoch;
          }

          if ((flags & 1) == 0 || (range.start.value = value, range.start.timescale = timescale, range.start.flags = flags, range.start.epoch = v85, v41 = CMTimeGetSeconds(&range.start), range = v114, CMTimeRangeGetEnd(&otherRange.start, &range), v41 < CMTimeGetSeconds(&otherRange.start)))
          {
            range = v114;
            CMTimeRangeGetEnd(&otherRange.start, &range);
            value = otherRange.start.value;
            flags = otherRange.start.flags;
            timescale = otherRange.start.timescale;
            v85 = otherRange.start.epoch;
          }
        }
      }

      if (v30 == ++v32)
      {
        v30 = [(NSArray *)objb countByEnumeratingWithState:&v104 objects:v125 count:16];
        if (v30)
        {
          goto LABEL_45;
        }

        break;
      }
    }
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  objc = self->_subtleMotionResults;
  v42 = [(NSArray *)objc countByEnumeratingWithState:&v100 objects:v124 count:16];
  if (v42)
  {
    v79 = *v101;
LABEL_65:
    v78 = v42;
    v43 = 0;
    while (1)
    {
      if (*v101 != v79)
      {
        objc_enumerationMutation(objc);
      }

      v44 = *(*(&v100 + 1) + 8 * v43);
      memset(&v115, 0, sizeof(v115));
      CMTimeRangeMakeFromDictionary(&v115, v44);
      v45 = *&a4->var0.var3;
      *&v114.start.value = *&a4->var0.var0;
      *&v114.start.epoch = v45;
      *&v114.duration.timescale = *&a4->var1.var1;
      CMTimeRangeGetEnd(&otherRange.start, &v114);
      *&v114.start.value = *&v115.start.value;
      v114.start.epoch = v115.start.epoch;
      *&range.start.value = *&otherRange.start.value;
      range.start.epoch = otherRange.start.epoch;
      if ((CMTimeCompare(&v114.start, &range.start) & 0x80000000) == 0)
      {
        break;
      }

      range = v115;
      memset(&v114, 0, sizeof(v114));
      v46 = *&a4->var0.var3;
      *&otherRange.start.value = *&a4->var0.var0;
      *&otherRange.start.epoch = v46;
      *&otherRange.duration.timescale = *&a4->var1.var1;
      CMTimeRangeGetIntersection(&v114, &range, &otherRange);
      if ((v114.start.flags & 1) == 0 || (v114.duration.flags & 1) == 0 || v114.duration.epoch || v114.duration.value < 0 || (range.start = v114.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&range.start, &otherRange.start)))
      {
        v47 = [(__CFDictionary *)v44 objectForKey:@"quality"];
        [v47 floatValue];
        v49 = v48;

        if (v49 >= 0.3)
        {
          v50 = *(MEMORY[0x1E6960C98] + 16);
          *&range.start.value = *MEMORY[0x1E6960C98];
          *&range.start.epoch = v50;
          *&range.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v51 = self->_qualityResults;
          v52 = [(NSArray *)v51 countByEnumeratingWithState:&v96 objects:v123 count:16];
          if (v52)
          {
            v53 = *v97;
LABEL_77:
            v54 = 0;
            while (1)
            {
              if (*v97 != v53)
              {
                objc_enumerationMutation(v51);
              }

              v55 = *(*(&v96 + 1) + 8 * v54);
              memset(&otherRange, 0, sizeof(otherRange));
              CMTimeRangeMakeFromDictionary(&otherRange, v55);
              v95 = v114;
              CMTimeRangeGetEnd(&time1.start, &v95);
              *&v95.start.value = *&otherRange.start.value;
              v95.start.epoch = otherRange.start.epoch;
              *&time2.start.value = *&time1.start.value;
              time2.start.epoch = time1.start.epoch;
              if ((CMTimeCompare(&v95.start, &time2.start) & 0x80000000) == 0)
              {
                break;
              }

              time2 = v114;
              memset(&v95, 0, sizeof(v95));
              time1 = otherRange;
              CMTimeRangeGetIntersection(&v95, &time2, &time1);
              v56 = [(__CFDictionary *)v55 objectForKey:@"quality"];
              [v56 floatValue];
              v58 = v57;

              if ((v95.start.flags & 1) == 0 || (v95.duration.flags & 1) == 0 || v95.duration.epoch || v95.duration.value < 0 || (time2.start = v95.duration, *&time1.start.value = *MEMORY[0x1E6960CC0], time1.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time2.start, &time1.start)))
              {
                if (v58 > 0.7)
                {
                  time1 = range;
                  v92 = v95;
                  CMTimeRangeGetUnion(&time2, &time1, &v92);
                  range = time2;
                }
              }

              if (v52 == ++v54)
              {
                v52 = [(NSArray *)v51 countByEnumeratingWithState:&v96 objects:v123 count:16];
                if (v52)
                {
                  goto LABEL_77;
                }

                break;
              }
            }
          }

          v59 = *(MEMORY[0x1E6960C98] + 16);
          *&otherRange.start.value = *MEMORY[0x1E6960C98];
          *&otherRange.start.epoch = v59;
          *&otherRange.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v60 = self->_cameraMotionResults;
          v61 = [(NSArray *)v60 countByEnumeratingWithState:&v88 objects:v122 count:16];
          if (v61)
          {
            v62 = *v89;
LABEL_92:
            v63 = 0;
            while (1)
            {
              if (*v89 != v62)
              {
                objc_enumerationMutation(v60);
              }

              v64 = *(*(&v88 + 1) + 8 * v63);
              memset(&v95, 0, sizeof(v95));
              CMTimeRangeMakeFromDictionary(&v95, v64);
              time2 = v114;
              CMTimeRangeGetEnd(&v92.start, &time2);
              *&time2.start.value = *&v95.start.value;
              time2.start.epoch = v95.start.epoch;
              *&time1.start.value = *&v92.start.value;
              time1.start.epoch = v92.start.epoch;
              if ((CMTimeCompare(&time2.start, &time1.start) & 0x80000000) == 0)
              {
                break;
              }

              time1 = v114;
              memset(&time2, 0, sizeof(time2));
              v92 = v95;
              CMTimeRangeGetIntersection(&time2, &time1, &v92);
              if ((time2.start.flags & 1) == 0 || (time2.duration.flags & 1) == 0 || time2.duration.epoch || time2.duration.value < 0 || (time1.start = time2.duration, *&v92.start.value = *MEMORY[0x1E6960CC0], v92.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time1.start, &v92.start)))
              {
                v65 = [(__CFDictionary *)v64 objectForKey:@"flags"];
                integerValue = [v65 integerValue];
                if ((integerValue & 0x2FFC0) != 0 && (integerValue & 0x40) == 0x40)
                {
                  v92 = otherRange;
                  v87 = time2;
                  CMTimeRangeGetUnion(&time1, &v92, &v87);
                  otherRange = time1;
                }
              }

              if (v61 == ++v63)
              {
                v61 = [(NSArray *)v60 countByEnumeratingWithState:&v88 objects:v122 count:16];
                if (v61)
                {
                  goto LABEL_92;
                }

                break;
              }
            }
          }

          time2 = otherRange;
          time1 = range;
          CMTimeRangeGetIntersection(&v95, &time2, &time1);
          v114 = v95;
          if ((v95.start.flags & 1) == 0 || (v114.duration.flags & 1) == 0 || v114.duration.epoch || v114.duration.value < 0 || (v95.start = v114.duration, *&time2.start.value = *MEMORY[0x1E6960CC0], time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&v95.start, &time2.start)))
          {
            if ((BYTE12(v120) & 1) == 0 || (*&v95.start.value = v120, v95.start.epoch = epoch, v67 = CMTimeGetSeconds(&v95.start), *&v95.start.value = *&v114.start.value, v95.start.epoch = v114.start.epoch, v67 > CMTimeGetSeconds(&v95.start)))
            {
              v120 = *&v114.start.value;
              epoch = v114.start.epoch;
            }

            if ((flags & 1) == 0 || (v95.start.value = value, v95.start.timescale = timescale, v95.start.flags = flags, v95.start.epoch = v85, v68 = CMTimeGetSeconds(&v95.start), v95 = v114, CMTimeRangeGetEnd(&time2.start, &v95), v68 < CMTimeGetSeconds(&time2.start)))
            {
              v95 = v114;
              CMTimeRangeGetEnd(&time2.start, &v95);
              value = time2.start.value;
              flags = time2.start.flags;
              timescale = time2.start.timescale;
              v85 = time2.start.epoch;
            }
          }
        }
      }

      if (++v43 == v78)
      {
        v42 = [(NSArray *)objc countByEnumeratingWithState:&v100 objects:v124 count:16];
        if (v42)
        {
          goto LABEL_65;
        }

        break;
      }
    }
  }

  if ((HIDWORD(v120) | flags))
  {
    v72 = &v120;
    if ((BYTE12(v120) & 1) == 0)
    {
      v72 = a4;
    }

    v73 = *&v72->var0.var0;
    epoch = v72->var0.var3;
    v120 = v73;
    if (flags)
    {
      v114.start.value = value;
      v114.start.timescale = timescale;
      v75 = flags;
      v76 = v85;
    }

    else
    {
      v74 = *&a4->var0.var3;
      *&v115.start.value = *&a4->var0.var0;
      *&v115.start.epoch = v74;
      *&v115.duration.timescale = *&a4->var1.var1;
      CMTimeRangeGetEnd(&v114.start, &v115);
      v75 = v114.start.flags;
      v76 = v114.start.epoch;
    }

    value = v114.start.value;
    timescale = v114.start.timescale;
    *&v115.start.value = v120;
    v115.start.epoch = epoch;
    v114.start.flags = v75;
    v114.start.epoch = v76;
    return CMTimeRangeFromTimeToTime(retstr, &v115.start, &v114.start);
  }

  else
  {
    v70 = MEMORY[0x1E6960CA8];
    v71 = *(MEMORY[0x1E6960CA8] + 16);
    *&retstr->var0.var0 = *MEMORY[0x1E6960CA8];
    *&retstr->var0.var3 = v71;
    *&retstr->var1.var1 = *(v70 + 32);
  }

  return result;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)computeSteadyTranslationTrimFor:(SEL)for
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  epoch = v6;
  value = *MEMORY[0x1E6960C70];
  flags = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = v5;
  obj = self->_qualityResults;
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v8)
  {
    v35 = *v47;
LABEL_3:
    v34 = v8;
    v9 = 0;
    while (1)
    {
      if (*v47 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v46 + 1) + 8 * v9);
      memset(&v45, 0, sizeof(v45));
      CMTimeRangeMakeFromDictionary(&v45, v10);
      memset(&v44, 0, sizeof(v44));
      range = v45;
      CMTimeRangeGetEnd(&v44, &range);
      v11 = *&a4->var0.var3;
      *&range.start.value = *&a4->var0.var0;
      *&range.start.epoch = v11;
      *&range.duration.timescale = *&a4->var1.var1;
      CMTimeRangeGetEnd(&time1.start, &range);
      *&range.start.value = *&v45.start.value;
      range.start.epoch = v45.start.epoch;
      *&time2.start.value = *&time1.start.value;
      time2.start.epoch = time1.start.epoch;
      if ((CMTimeCompare(&range.start, &time2.start) & 0x80000000) == 0)
      {
        break;
      }

      v12 = [(__CFDictionary *)v10 objectForKeyedSubscript:@"quality"];
      [v12 floatValue];
      v14 = v13 < 0.7;

      if (!v14)
      {
        time2 = v45;
        v15 = *&a4->var0.var3;
        *&time1.start.value = *&a4->var0.var0;
        *&time1.start.epoch = v15;
        *&time1.duration.timescale = *&a4->var1.var1;
        CMTimeRangeGetIntersection(&range, &time2, &time1);
        v45 = range;
        if ((range.start.flags & 1) == 0 || (v45.duration.flags & 1) == 0 || v45.duration.epoch || v45.duration.value < 0 || (range.start = v45.duration, *&time2.start.value = *MEMORY[0x1E6960CC0], time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&range.start, &time2.start)))
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v16 = self->_cameraMotionResults;
          v17 = [(NSArray *)v16 countByEnumeratingWithState:&v37 objects:v52 count:16];
          if (v17)
          {
            v18 = *v38;
LABEL_15:
            v19 = 0;
            while (1)
            {
              if (*v38 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v37 + 1) + 8 * v19);
              memset(&range, 0, sizeof(range));
              CMTimeRangeMakeFromDictionary(&range, v20);
              *&time2.start.value = *&range.start.value;
              time2.start.epoch = range.start.epoch;
              time1.start = v44;
              if ((CMTimeCompare(&time2.start, &time1.start) & 0x80000000) == 0)
              {
                break;
              }

              time1 = range;
              memset(&time2, 0, sizeof(time2));
              otherRange = v45;
              CMTimeRangeGetIntersection(&time2, &time1, &otherRange);
              if ((time2.start.flags & 1) == 0 || (time2.duration.flags & 1) == 0 || time2.duration.epoch || time2.duration.value < 0 || (time1.start = time2.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time1.start, &otherRange.start)))
              {
                v21 = [(__CFDictionary *)v20 objectForKey:@"flags"];
                integerValue = [v21 integerValue];
                if ((integerValue & 0x2FFC0) != 0 && __clz(__rbit32(integerValue & 0x2FFC0)) - 7 <= 1)
                {
                  if ((BYTE12(v50) & 1) == 0 || (*&time1.start.value = v50, time1.start.epoch = epoch, Seconds = CMTimeGetSeconds(&time1.start), *&time1.start.value = *&time2.start.value, time1.start.epoch = time2.start.epoch, Seconds > CMTimeGetSeconds(&time1.start)))
                  {
                    v50 = *&time2.start.value;
                    epoch = time2.start.epoch;
                  }

                  if ((flags & 1) == 0 || (time1.start.value = value, time1.start.timescale = timescale, time1.start.flags = flags, time1.start.epoch = v6, v24 = CMTimeGetSeconds(&time1.start), time1 = time2, CMTimeRangeGetEnd(&otherRange.start, &time1), v24 < CMTimeGetSeconds(&otherRange.start)))
                  {
                    time1 = time2;
                    CMTimeRangeGetEnd(&otherRange.start, &time1);
                    value = otherRange.start.value;
                    flags = otherRange.start.flags;
                    timescale = otherRange.start.timescale;
                    v6 = otherRange.start.epoch;
                  }
                }
              }

              if (v17 == ++v19)
              {
                v17 = [(NSArray *)v16 countByEnumeratingWithState:&v37 objects:v52 count:16];
                if (v17)
                {
                  goto LABEL_15;
                }

                break;
              }
            }
          }
        }
      }

      if (++v9 == v34)
      {
        v8 = [(NSArray *)obj countByEnumeratingWithState:&v46 objects:v53 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ((HIDWORD(v50) | flags))
  {
    v28 = &v50;
    if ((BYTE12(v50) & 1) == 0)
    {
      v28 = a4;
    }

    v29 = *&v28->var0.var0;
    epoch = v28->var0.var3;
    v50 = v29;
    if (flags)
    {
      range.start.value = value;
      range.start.timescale = timescale;
    }

    else
    {
      v30 = *&a4->var0.var3;
      *&v45.start.value = *&a4->var0.var0;
      *&v45.start.epoch = v30;
      *&v45.duration.timescale = *&a4->var1.var1;
      CMTimeRangeGetEnd(&range.start, &v45);
      flags = range.start.flags;
      v6 = range.start.epoch;
    }

    value = range.start.value;
    timescale = range.start.timescale;
    *&v45.start.value = v50;
    v45.start.epoch = epoch;
    range.start.flags = flags;
    range.start.epoch = v6;
    return CMTimeRangeFromTimeToTime(retstr, &v45.start, &range.start);
  }

  else
  {
    v26 = MEMORY[0x1E6960CA8];
    v27 = *(MEMORY[0x1E6960CA8] + 16);
    *&retstr->var0.var0 = *MEMORY[0x1E6960CA8];
    *&retstr->var0.var3 = v27;
    *&retstr->var1.var1 = *(v26 + 32);
  }

  return result;
}

- (BOOL)checkCameraZoom:(id *)zoom
{
  v29 = *MEMORY[0x1E69E9840];
  memset(&v27, 0, sizeof(v27));
  v5 = *&zoom->var0.var3;
  *&range.start.value = *&zoom->var0.var0;
  *&range.start.epoch = v5;
  *&range.duration.timescale = *&zoom->var1.var1;
  CMTimeRangeGetEnd(&v27, &range);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = self->_cameraMotionResults;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = *v23;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v22 + 1) + 8 * v9);
      memset(&range, 0, sizeof(range));
      CMTimeRangeMakeFromDictionary(&range, v10);
      *&time1.start.value = *&range.start.value;
      time1.start.epoch = range.start.epoch;
      time2.start = v27;
      if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
      {
        break;
      }

      time2 = range;
      memset(&time1, 0, sizeof(time1));
      v11 = *&zoom->var0.var3;
      *&v19.start.value = *&zoom->var0.var0;
      *&v19.start.epoch = v11;
      *&v19.duration.timescale = *&zoom->var1.var1;
      CMTimeRangeGetIntersection(&time1, &time2, &v19);
      if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&v19.start.value = *MEMORY[0x1E6960CC0], v19.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time2.start, &v19.start)))
      {
        v12 = [(__CFDictionary *)v10 objectForKey:@"flags"];
        integerValue = [v12 integerValue];
        v15 = !(v14 | ((integerValue & 0x2FFC0) == 0)) && (integerValue & 0x1FC0) == 4096;
        v16 = v15;

        if (v16)
        {
          v17 = 1;
          goto LABEL_24;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
        v17 = 0;
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_24;
      }
    }
  }

  v17 = 0;
LABEL_24:

  return v17;
}

- (float)computeHighlightScoreOfRange:(id *)range
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *&range->var0.var3;
  *time = *&range->var0.var0;
  *&time[16] = v5;
  *v23 = *&range->var1.var1;
  [(VCPMovieHighlightAnalyzer *)self computeExpressionScoreInTimerange:time];
  v7 = v6;
  v8 = *&range->var0.var3;
  *time = *&range->var0.var0;
  *&time[16] = v8;
  *v23 = *&range->var1.var1;
  [(VCPMovieHighlightAnalyzer *)self computeActionScoreInTimerange:time];
  v10 = v9;
  v11 = *&range->var0.var3;
  *time = *&range->var0.var0;
  *&time[16] = v11;
  *v23 = *&range->var1.var1;
  [(VCPMovieHighlightAnalyzer *)self computeVoiceScoreInTimeRange:time];
  v13 = v12;
  v14 = (((v7 * 0.4) + 0.0) + (v10 * 0.4)) + (v12 * 0.2);
  v15 = 1.0;
  if (v14 < 1.0)
  {
    v15 = v14;
  }

  if (v14 <= 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v15;
  }

  if (self->_verbose && MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *time = *&range->var0.var0;
    *&time[16] = range->var0.var3;
    Seconds = CMTimeGetSeconds(time);
    v18 = *&range->var0.var3;
    *time = *&range->var0.var0;
    *&time[16] = v18;
    *v23 = *&range->var1.var1;
    CMTimeRangeGetEnd(&v21, time);
    v19 = CMTimeGetSeconds(&v21);
    *time = 134219264;
    *&time[4] = Seconds;
    *&time[12] = 2048;
    *&time[14] = v19;
    *&time[22] = 2048;
    *&time[24] = v7;
    *v23 = 2048;
    *&v23[2] = v10;
    *&v23[10] = 2048;
    *&v23[12] = v13;
    v24 = 2048;
    v25 = v16;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%.2f - %.2f] expressionScore=%.2f, actionScore=%.2f, voiceScore=%.2f, Score=%.2f", time, 0x3Eu);
  }

  return v16;
}

- (void)SetKeyFramesForSegments:(id)segments
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__VCPMovieHighlightAnalyzer_SetKeyFramesForSegments___block_invoke;
  v3[3] = &unk_1E834E098;
  v3[4] = self;
  [segments enumerateObjectsUsingBlock:v3];
}

void __53__VCPMovieHighlightAnalyzer_SetKeyFramesForSegments___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v3)
  {
    [v3 timerange];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v6 = [v5 pickKeyFramesInRange:v7];
  [v4 setKeyFrame:v6];
}

- (id)pickKeyFramesInRange:(id *)range
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_keyFrameResults;
  v5 = 0;
  v6 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = *v19;
    v8 = -1.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = *&range->var0.var3;
        *&range.start.value = *&range->var0.var0;
        *&range.start.epoch = v11;
        *&range.duration.timescale = *&range->var1.var1;
        if (v10)
        {
          [v10 timestamp];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        if (CMTimeRangeContainsTime(&range, &time))
        {
          [v10 score];
          if (v12 > v8)
          {
            [v10 score];
            v8 = v13;
            v14 = v10;

            v5 = v14;
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v5;
}

- (int)computeHighlightScoreResults
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_sceneResults;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v3)
  {
    v4 = *v29;
    do
    {
      v5 = 0;
      do
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * v5);
        memset(&v27, 0, sizeof(v27));
        CMTimeRangeMakeFromDictionary(&v27, v6);
        {
          CMTimeMake([VCPMovieHighlightAnalyzer computeHighlightScoreResults]::kHalfSecond, 300, 600);
        }

        memset(&v26, 0, sizeof(v26));
        CMTimeMake(&v26, 300, 600);
        v25 = v27.start;
        memset(&v24, 0, sizeof(v24));
        range = v27;
        CMTimeRangeGetEnd(&v24, &range);
        v7 = 0;
        v22 = v25;
        while (1)
        {
          range.start = v22;
          time2.start = v24;
          if ((CMTimeCompare(&range.start, &time2.start) & 0x80000000) == 0)
          {
            break;
          }

          memset(&v21, 0, sizeof(v21));
          range.start = v25;
          time2.start = v26;
          CMTimeAdd(&end, &range.start, &time2.start);
          range.start = v22;
          time2.start = end;
          if (CMTimeCompare(&range.start, &time2.start) < 1)
          {
            v21 = v25;
          }

          else
          {
            range.start = v22;
            time2.start = v26;
            CMTimeSubtract(&v21, &range.start, &time2.start);
          }

          memset(&v20, 0, sizeof(v20));
          range.start = v22;
          time2.start = v26;
          CMTimeAdd(&end, &range.start, &time2.start);
          range.start = end;
          time2.start = v24;
          if (CMTimeCompare(&range.start, &time2.start) < 1)
          {
            range.start = v22;
            time2.start = v26;
            CMTimeAdd(&v20, &range.start, &time2.start);
          }

          else
          {
            v20 = v24;
          }

          memset(&range, 0, sizeof(range));
          time2.start = v21;
          end = v20;
          CMTimeRangeFromTimeToTime(&range, &time2.start, &end);
          v8 = [VCPMovieHighlight alloc];
          time2 = range;
          v9 = [(VCPMovieHighlight *)v8 initWithTimeRange:&time2];
          [(VCPMovieHighlightAnalyzer *)self computeHighlightScoreOfSegment:v9];
          time2.start = v22;
          end = *[VCPMovieHighlightAnalyzer computeHighlightScoreResults]::kHalfSecond;
          CMTimeAdd(&start, &time2.start, &end);
          time2.start = start;
          end = v24;
          if (CMTimeCompare(&time2.start, &end) < 0)
          {
            time2.start = v22;
            end = *[VCPMovieHighlightAnalyzer computeHighlightScoreResults]::kHalfSecond;
            CMTimeRangeMake(&v17, &time2.start, &end);
            time2 = v17;
          }

          else
          {
            start = v22;
            time2.start = v24;
            end = v22;
            CMTimeSubtract(&duration, &time2.start, &end);
            CMTimeRangeMake(&v16, &start, &duration);
            time2 = v16;
          }

          [(VCPMovieHighlight *)v9 setTimerange:&time2];
          [(NSMutableArray *)self->_internalResults addObject:v9];
          [(VCPMovieHighlight *)v9 score];
          if (self->_maxHighlightScore >= maxHighlightScore)
          {
            maxHighlightScore = self->_maxHighlightScore;
          }

          self->_maxHighlightScore = maxHighlightScore;
          [(VCPMovieHighlight *)v9 score];
          if (minHighlightScore >= self->_minHighlightScore)
          {
            minHighlightScore = self->_minHighlightScore;
          }

          self->_minHighlightScore = minHighlightScore;

          time2.start = v22;
          end = *[VCPMovieHighlightAnalyzer computeHighlightScoreResults]::kHalfSecond;
          CMTimeAdd(&range.start, &time2.start, &end);
          v22 = range.start;
          v7 = v9;
        }

        ++v5;
      }

      while (v5 != v3);
      v12 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      v3 = v12;
    }

    while (v12);
  }

  return 0;
}

- (int)pickHighlightsFrom:(id)from
{
  fromCopy = from;
  {
    CMTimeMake([VCPMovieHighlightAnalyzer pickHighlightsFrom:]::kHalfSecond, 300, 600);
  }

  memset(&v20, 0, sizeof(v20));
  CMTimeMake(&v20, (self->_maxDurationInSeconds * 600.0), 600);
  if (fromCopy)
  {
    [fromCopy timerange];
    *&time1[48] = *time1;
    memset(&v18, 0, sizeof(v18));
    [fromCopy timerange];
    [fromCopy timerange];
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
    memset(time1, 0, sizeof(time1));
    memset(time2, 0, sizeof(time2));
  }

  lhs = *time1;
  rhs = time2[1];
  CMTimeAdd(&v18, &lhs, &rhs);
  v5 = 0;
  for (rhs = *&time1[48]; ; rhs = *time1)
  {
    *time1 = v18;
    time2[0] = v20;
    CMTimeSubtract(&lhs, time1, time2);
    *time1 = rhs;
    time2[0] = lhs;
    if ((CMTimeCompare(time1, time2) & 0x80000000) == 0)
    {
      break;
    }

    memset(&lhs, 0, sizeof(lhs));
    *time1 = rhs;
    time2[0] = v20;
    CMTimeAdd(&v16, time1, time2);
    *time1 = v16;
    time2[0] = v18;
    if (CMTimeCompare(time1, time2) < 1)
    {
      lhs = v20;
    }

    else
    {
      *time1 = v18;
      time2[0] = rhs;
      CMTimeSubtract(&lhs, time1, time2);
    }

    *time1 = lhs;
    if (fabs(CMTimeGetSeconds(time1)) < self->_minDurationInSeconds)
    {
      break;
    }

    memset(time1, 0, 48);
    time2[0] = rhs;
    v16 = lhs;
    CMTimeRangeMake(time1, time2, &v16);
    v6 = [VCPMovieHighlight alloc];
    *&time2[0].value = *time1;
    v7 = [(VCPMovieHighlight *)v6 initWithTimeRange:time2];
    [(VCPMovieHighlight *)v7 copyScoresFrom:fromCopy];
    *&time2[0].value = *time1;
    v8 = [(VCPMovieHighlightAnalyzer *)self pickKeyFramesInRange:time2];
    [(VCPMovieHighlight *)v7 setKeyFrame:v8];

    [(VCPMovieHighlightAnalyzer *)self computeHighlightScoreOfSegment:v7];
    [(VCPMovieHighlight *)v7 score];
    v10 = v9;
    [(VCPMovieHighlight *)v5 score];
    if (v10 > v11)
    {
      v12 = v7;

      v5 = v12;
    }

    time2[0] = rhs;
    lhs = *[VCPMovieHighlightAnalyzer pickHighlightsFrom:]::kHalfSecond;
    CMTimeAdd(time1, time2, &lhs);
  }

  [(VCPMovieHighlightAnalyzer *)self searchFeatureVectorOfSegment:fromCopy];
  descriptor = [fromCopy descriptor];
  [(VCPMovieHighlight *)v5 setDescriptor:descriptor];

  [(VCPMovieHighlightAnalyzer *)self computeHighlightScoreOfSegment:fromCopy];
  [fromCopy score];
  [(VCPMovieHighlight *)v5 setScore:?];
  v14 = [(VCPMovieHighlightAnalyzer *)self evaluateSegment:v5];

  return v14;
}

- (void)searchFeatureVectorOfSegment:(id)segment
{
  v29 = *MEMORY[0x1E69E9840];
  segmentCopy = segment;
  v17 = segmentCopy;
  if (segmentCopy)
  {
    v5 = segmentCopy;
    [segmentCopy timerange];
    start = range.start;
    memset(&v24, 0, sizeof(v24));
    [v5 timerange];
  }

  else
  {
    memset(&start, 0, sizeof(start));
    memset(&v24, 0, sizeof(v24));
    memset(&range, 0, sizeof(range));
  }

  CMTimeRangeGetEnd(&v24, &range);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_featureResults;
  obj = v6;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_19;
  }

  v6 = 0;
  v8 = *v21;
  while (2)
  {
    v9 = 0;
    v10 = v6;
    do
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v20 + 1) + 8 * v9);
      v12 = [v11 objectForKeyedSubscript:@"attributes"];
      v6 = [v12 objectForKeyedSubscript:@"featureVector"];

      memset(&v19, 0, sizeof(v19));
      v13 = [v11 objectForKeyedSubscript:@"start"];
      CMTimeMakeFromDictionary(&v19, v13);

      range.start = v19;
      time2 = start;
      if (CMTimeCompare(&range.start, &time2) >= 1)
      {
        range.start = v19;
        time2 = v24;
        if ((CMTimeCompare(&range.start, &time2) & 0x80000000) == 0)
        {
          v15 = v10;

          v6 = v15;
        }

        v14 = obj;
        goto LABEL_16;
      }

      v6 = v6;

      ++v9;
      v10 = v6;
    }

    while (v7 != v9);
    v14 = obj;
    v7 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    v10 = v6;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_16:

  if (v6)
  {
    v16 = [VCPImageDescriptor descriptorWithData:v6];
    [v17 setDescriptor:v16];

LABEL_19:
  }
}

- (int)evaluateSegment:(id)segment
{
  v37 = *MEMORY[0x1E69E9840];
  segmentCopy = segment;
  [segmentCopy score];
  if (v5 < self->_minHighlightScore)
  {
    goto LABEL_8;
  }

  if (segmentCopy)
  {
    [segmentCopy timerange];
  }

  else
  {
    memset(&v35, 0, sizeof(v35));
  }

  time.start = v35.duration;
  if (CMTimeGetSeconds(&time.start) < self->_minDurationInSeconds)
  {
    goto LABEL_8;
  }

  if (self->_isLivePhoto)
  {
    [(VCPMovieHighlightAnalyzer *)self addSegment:segmentCopy];
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  descriptor = [segmentCopy descriptor];
  v9 = descriptor == 0;

  if (v9)
  {
    v21 = 0;
    v6 = 0;
    goto LABEL_55;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_internalConstraintResults;
  v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (!v10)
  {

    v27 = 0;
    goto LABEL_35;
  }

  v27 = 0;
  v11 = *v32;
  v12 = *"";
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v32 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v31 + 1) + 8 * i);
      if (segmentCopy)
      {
        [segmentCopy timerange];
        if (v14)
        {
          goto LABEL_18;
        }
      }

      else
      {
        memset(&time, 0, sizeof(time));
        if (v14)
        {
LABEL_18:
          [v14 timerange];
          goto LABEL_21;
        }
      }

      memset(&otherRange, 0, sizeof(otherRange));
LABEL_21:
      CMTimeRangeGetIntersection(&v35, &time, &otherRange);
      time.start = v35.duration;
      *&otherRange.start.value = *MEMORY[0x1E6960CC0];
      otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
      if (CMTimeCompare(&time.start, &otherRange.start) >= 1)
      {
        v22 = v14;

        v27 = v22;
        goto LABEL_32;
      }

      descriptor2 = [v14 descriptor];
      v16 = descriptor2 == 0;

      if (!v16)
      {
        LODWORD(v35.start.value) = 0;
        descriptor3 = [v14 descriptor];
        descriptor4 = [segmentCopy descriptor];
        v6 = [descriptor3 computeDistance:&v35 toDescriptor:descriptor4];

        if (v6)
        {

          goto LABEL_54;
        }

        v19 = *&v35.start.value;
        if (*&v35.start.value < v12)
        {
          v20 = v14;

          v27 = v20;
          v12 = v19;
        }
      }
    }

    v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

  if (v12 < 0.1)
  {
LABEL_32:
    if (segmentCopy)
    {
      [segmentCopy timerange];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    if (v27)
    {
      [v27 timerange];
    }

    else
    {
      memset(&otherRange, 0, sizeof(otherRange));
    }

    CMTimeRangeGetIntersection(&v35, &time, &otherRange);
    time.start = v35.duration;
    *&otherRange.start.value = *MEMORY[0x1E6960CC0];
    otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    if (CMTimeCompare(&time.start, &otherRange.start) < 1)
    {
      goto LABEL_50;
    }

    if (segmentCopy)
    {
      [segmentCopy timerange];
    }

    else
    {
      memset(&v28[3], 0, 32);
    }

    if (v27)
    {
      [v27 timerange];
    }

    else
    {
      memset(v28, 0, 32);
    }

    *&time.start.value = *(&v28[3] + 8);
    time.start.epoch = *(&v28[4] + 1);
    *&otherRange.start.value = *(v28 + 8);
    otherRange.start.epoch = *(&v28[1] + 1);
    if (CMTimeCompare(&time.start, &otherRange.start) < 1)
    {
LABEL_50:
      [v27 score];
      v24 = v23;
      [segmentCopy score];
      if (v24 >= v25 || ![(VCPMovieHighlightAnalyzer *)self addSegment:segmentCopy])
      {
        goto LABEL_53;
      }
    }

    else
    {
      [(NSMutableArray *)self->_internalConstraintResults addObject:segmentCopy];
    }

    [(NSMutableArray *)self->_internalConstraintResults removeObject:v27];
    goto LABEL_53;
  }

LABEL_35:
  [(VCPMovieHighlightAnalyzer *)self addSegment:segmentCopy];
LABEL_53:
  v6 = 0;
LABEL_54:
  v21 = v27;
LABEL_55:

LABEL_9:
  return v6;
}

- (BOOL)addSegment:(id)segment
{
  segmentCopy = segment;
  lastObject = [(NSMutableArray *)self->_internalConstraintResults lastObject];
  [lastObject score];
  v7 = v6;
  [segmentCopy score];
  v9 = v8;
  if (!segmentCopy)
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    if (lastObject)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0u;
    memset(v18, 0, 56);
    goto LABEL_6;
  }

  [segmentCopy timerange];
  if (!lastObject)
  {
    goto LABEL_5;
  }

LABEL_3:
  [lastObject timerange];
  [lastObject timerange];
LABEL_6:
  lhs = *&v18[32];
  rhs = *&v18[8];
  CMTimeAdd(&v19, &lhs, &rhs);
  *&lhs.value = v20;
  lhs.epoch = v21;
  rhs = v19;
  CMTimeSubtract(&time, &lhs, &rhs);
  Seconds = CMTimeGetSeconds(&time);
  if (vabds_f32(v7, v9) < 0.1)
  {
    v11 = Seconds;
    if (v11 < 0.2)
    {
      [segmentCopy score];
      v13 = v12;
      [lastObject score];
      if (v13 <= v14)
      {
        v15 = 0;
        goto LABEL_12;
      }

      [(NSMutableArray *)self->_internalConstraintResults removeLastObject];
    }
  }

  [(NSMutableArray *)self->_internalConstraintResults addObject:segmentCopy, v17, *v18];
  v15 = 1;
LABEL_12:

  return v15;
}

- (void)computeHighlightScoreOfSegment:(id)segment
{
  v81 = *MEMORY[0x1E69E9840];
  segmentCopy = segment;
  v5 = segmentCopy;
  if (segmentCopy)
  {
    [segmentCopy timerange];
  }

  else
  {
    memset(v68, 0, 48);
  }

  [(VCPMovieHighlightAnalyzer *)self qualityScoreForTimerange:v68];
  v7 = v6;
  if (v5)
  {
    [v5 timerange];
  }

  else
  {
    memset(v68, 0, 48);
  }

  [(VCPMovieHighlightAnalyzer *)self computeMLQualityScoreForTimerange:v68];
  v9 = v8;
  if (v5)
  {
    [v5 timerange];
  }

  else
  {
    memset(v68, 0, 48);
  }

  [(VCPMovieHighlightAnalyzer *)self junkScoreForTimerange:v68 lengthScale:0];
  v11 = v10;
  if (v5)
  {
    [v5 timerange];
  }

  else
  {
    memset(v68, 0, 48);
  }

  [(VCPMovieHighlightAnalyzer *)self computeSubtleMotionScoreInTimerange:v68];
  v13 = v12;
  if (v5)
  {
    [v5 timerange];
  }

  else
  {
    memset(v68, 0, 48);
  }

  [(VCPMovieHighlightAnalyzer *)self cameraMotionScoreForTimerange:v68];
  v15 = v14;
  if (v5)
  {
    [v5 timerange];
  }

  else
  {
    memset(v68, 0, 48);
  }

  [(VCPMovieHighlightAnalyzer *)self computeExpressionScoreInTimerange:v68];
  [v5 setExpressionScore:?];
  if (v5)
  {
    [v5 timerange];
  }

  else
  {
    memset(v68, 0, 48);
  }

  [(VCPMovieHighlightAnalyzer *)self computeActionScoreInTimerange:v68];
  [v5 setActionScore:?];
  if (v5)
  {
    [v5 timerange];
  }

  else
  {
    memset(v68, 0, 48);
  }

  [(VCPMovieHighlightAnalyzer *)self computeVoiceScoreInTimeRange:v68];
  [v5 setVoiceScore:?];
  if (v5)
  {
    [v5 timerange];
  }

  else
  {
    memset(v68, 0, 48);
  }

  [(VCPMovieHighlightAnalyzer *)self computeHumanActionScoreInTimerange:v68];
  [v5 setHumanActionScore:?];
  if (v5)
  {
    [v5 timerange];
  }

  else
  {
    memset(v68, 0, 48);
  }

  [(VCPMovieHighlightAnalyzer *)self computeHumanPoseScoreInTimerange:v68];
  [v5 setHumanPoseScore:?];
  v16 = v9 <= 0.7 || v7 <= 0.3;
  v17 = !v16;
  v64 = v9;
  if ((v17 & (v7 < 0.405)) != 0)
  {
    v18 = v9;
  }

  else
  {
    v18 = v7;
  }

  [v5 expressionScore];
  v20 = v19;
  [v5 humanPoseScore];
  v22 = v21 * 0.5;
  if (v20 >= v22)
  {
    v23 = v20;
  }

  else
  {
    v23 = v22;
  }

  [v5 actionScore];
  v25 = v24;
  [v5 humanActionScore];
  v27 = v26;
  [v5 voiceScore];
  v29 = (v13 + v25) + (v27 * 1.5);
  v30 = *&v28 > 0.8;
  v31 = v23 > 0.6;
  if (v30 && v31)
  {
    *&v28 = *&v28 + *&v28;
  }

  v32 = 0.1;
  if (v30 && v31)
  {
    v32 = 0.5;
  }

  if (v29 >= 0.2 || v23 >= 0.2)
  {
    if (v23 >= v29)
    {
      v33 = v23;
    }

    else
    {
      v33 = (v13 + v25) + (v27 * 1.5);
    }

    v34 = (v29 * 0.25) + (v23 * 0.25);
    if (*&v28 >= v33)
    {
      *&v28 = (v34 + (v32 * *&v28)) / (v32 + 0.5);
    }

    else
    {
      *&v28 = v34 + v34;
    }
  }

  else
  {
    [v5 voiceScore];
    *&v28 = (v15 * 0.4) + (*&v28 * 0.07);
  }

  [v5 setScore:v28];
  [v5 score];
  v36 = v35 / 1.5;
  v37 = 1.0;
  if (v36 < 1.0)
  {
    v37 = v36;
  }

  v16 = v36 > 0.0;
  v38 = 0.0;
  if (v16)
  {
    *&v38 = v37;
  }

  [v5 setScore:v38];
  if ((self->_preferredTimeRange.start.flags & 1) != 0 && (self->_preferredTimeRange.duration.flags & 1) != 0 && !self->_preferredTimeRange.duration.epoch && (self->_preferredTimeRange.duration.value & 0x8000000000000000) == 0)
  {
    v40 = *&self->_preferredTimeRange.start.epoch;
    *&range.start.value = *&self->_preferredTimeRange.start.value;
    *&range.start.epoch = v40;
    *&range.duration.timescale = *&self->_preferredTimeRange.duration.timescale;
    memset(v68, 0, 48);
    if (v5)
    {
      [v5 timerange];
    }

    else
    {
      memset(&otherRange, 0, sizeof(otherRange));
    }

    CMTimeRangeGetIntersection(v68, &range, &otherRange);
    *&range.start.value = *&v68[24];
    range.start.epoch = *&v68[40];
    Seconds = CMTimeGetSeconds(&range.start);
    if (v5)
    {
      [v5 timerange];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    otherRange.start = range.duration;
    v42 = CMTimeGetSeconds(&otherRange.start);
    [v5 score];
    v44 = (Seconds * 0.300000012 / v42 + 1.0) * v43;
    *&v44 = v44;
    [v5 setScore:v44];
  }

  v45 = v18 * v11;
  if ((v18 * v11) <= 0.405)
  {
    LODWORD(v39) = -1.0;
    [v5 setScore:v39];
  }

  if (self->_verbose && MediaAnalysisLogLevel() >= 7)
  {
    v46 = MEMORY[0x1E69E9C10];
    v47 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      if (v5)
      {
        [v5 timerange];
      }

      else
      {
        memset(&range, 0, sizeof(range));
      }

      *&otherRange.start.value = *&range.start.value;
      otherRange.start.epoch = range.start.epoch;
      v48 = CMTimeGetSeconds(&otherRange.start);
      if (v5)
      {
        [v5 timerange];
      }

      else
      {
        memset(&otherRange, 0, sizeof(otherRange));
      }

      CMTimeRangeGetEnd(&time, &otherRange);
      v63 = CMTimeGetSeconds(&time);
      keyFrame = [v5 keyFrame];
      [keyFrame score];
      v51 = v50;
      [v5 expressionScore];
      v53 = v52;
      [v5 actionScore];
      v55 = v54;
      [v5 voiceScore];
      v57 = v56;
      [v5 humanActionScore];
      v59 = v58;
      [v5 humanPoseScore];
      v61 = v60;
      [v5 score];
      *v68 = 134220544;
      *&v68[4] = v48;
      *&v68[12] = 2048;
      *&v68[14] = v63;
      *&v68[22] = 2048;
      *&v68[24] = v51;
      *&v68[32] = 2048;
      *&v68[34] = v53;
      *&v68[42] = 2048;
      *&v68[44] = v55;
      v69 = 2048;
      v70 = v57;
      v71 = 2048;
      v72 = v59;
      v73 = 2048;
      v74 = v61;
      v75 = 2048;
      v76 = v45;
      v77 = 2048;
      v78 = v64;
      v79 = 2048;
      v80 = v62;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%.2f - %.2f] keyFrameScore=%.2f, expressionScore=%.2f, actionScore=%.2f, voiceScore=%.2f, humanActionScore=%.2f, humanPoseScore=%0.2f, qualityJunkScore = %.2f, mlQualityScore = %.2f, Score=%.2f", v68, 0x70u);
    }
  }
}

- (float)computeExpressionScoreInTimerange:(id *)timerange
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->_faceResults;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v4)
  {

    return 0.0;
  }

  v5 = *v32;
  v6 = 0.0;
  v7 = 0.0;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v32 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v31 + 1) + 8 * i);
      memset(&v30, 0, sizeof(v30));
      CMTimeRangeMakeFromDictionary(&v30, v9);
      range = v30;
      memset(&v29, 0, sizeof(v29));
      v10 = *&timerange->var0.var3;
      *&otherRange.start.value = *&timerange->var0.var0;
      *&otherRange.start.epoch = v10;
      *&otherRange.duration.timescale = *&timerange->var1.var1;
      CMTimeRangeGetIntersection(&v29, &range, &otherRange);
      if ((v29.start.flags & 1) != 0 && (v29.duration.flags & 1) != 0 && !v29.duration.epoch && (v29.duration.value & 0x8000000000000000) == 0)
      {
        range.start = v29.duration;
        *&otherRange.start.value = *MEMORY[0x1E6960CC0];
        otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
        if (!CMTimeCompare(&range.start, &otherRange.start))
        {
          continue;
        }
      }

      v11 = [(__CFDictionary *)v9 objectForKey:@"attributes"];
      v12 = [v11 objectForKey:@"faceBounds"];
      v13 = [(__CFDictionary *)v9 objectForKey:@"flags"];
      intValue = [v13 intValue];
      v37 = NSRectFromString(v12);
      v15 = v37.size.width * v37.size.height + -0.170000002;
      v16 = [VCPMovieHighlightAnalyzer computeExpressionScoreInTimerange:]::kAreaSigma[v15 > 0.0];
      range.start = v29.duration;
      Seconds = CMTimeGetSeconds(&range.start);
      v18 = expf(-(v15 * v15) / v16);
      if ((intValue & 2) != 0)
      {
        v19 = 0.3;
      }

      else
      {
        v19 = 0.0;
      }

      v20 = v19 + v18;
      if (v20 < 1.0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 1.0;
      }

      if (v20 <= 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v21;
      }

      v23 = Seconds;
      v7 = v7 + (v22 * v23);
      v6 = v6 + v23;
    }

    v4 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v4);

  if (v6 == 0.0)
  {
    return 0.0;
  }

  v24 = 1.0;
  if ((v7 / v6) < 1.0)
  {
    v24 = v7 / v6;
  }

  result = 0.0;
  if ((v7 / v6) > 0.0)
  {
    return v24;
  }

  return result;
}

- (float)expressionScoreForTimerange:(id *)timerange
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = self->_keyFrameResults;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v5)
  {

    return 0.0;
  }

  v6 = *v22;
  v7 = 0.0;
  v8 = 0.0;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v22 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v21 + 1) + 8 * i);
      v11 = *&timerange->var0.var3;
      *&range.start.value = *&timerange->var0.var0;
      *&range.start.epoch = v11;
      *&range.duration.timescale = *&timerange->var1.var1;
      if (v10)
      {
        [v10 timestamp];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      if (CMTimeRangeContainsTime(&range, &time))
      {
        [v10 expressionChangeScore];
        v13 = v12;
        [v10 expressionChangeScore];
        v15 = v14;
        [v10 expressionChangeScore];
        v8 = v8 + (v13 * v15);
        v7 = v7 + v16;
      }
    }

    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v5);

  if (v7 == 0.0)
  {
    return 0.0;
  }

  v17 = 1.0;
  if ((v8 / v7) < 1.0)
  {
    v17 = v8 / v7;
  }

  result = 0.0;
  if ((v8 / v7) > 0.0)
  {
    return v17;
  }

  return result;
}

- (float)computeSubtleMotionScoreInTimerange:(id *)timerange
{
  v34 = *MEMORY[0x1E69E9840];
  memset(&v32, 0, sizeof(v32));
  v5 = *&timerange->var0.var3;
  *&range.start.value = *&timerange->var0.var0;
  *&range.start.epoch = v5;
  *&range.duration.timescale = *&timerange->var1.var1;
  CMTimeRangeGetEnd(&v32, &range);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_subtleMotionResults;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v7)
  {
    v8 = *v28;
    v9 = 0.0;
    v10 = MEMORY[0x1E6960CC0];
    v11 = 0.0;
    v12 = 0.0;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v28 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v27 + 1) + 8 * v13);
      memset(&range, 0, sizeof(range));
      CMTimeRangeMakeFromDictionary(&range, v14);
      *&time1.start.value = *&range.start.value;
      time1.start.epoch = range.start.epoch;
      time2.start = v32;
      if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
      {
        break;
      }

      time2 = range;
      memset(&time1, 0, sizeof(time1));
      v15 = *&timerange->var0.var3;
      *&v24.start.value = *&timerange->var0.var0;
      *&v24.start.epoch = v15;
      *&v24.duration.timescale = *&timerange->var1.var1;
      CMTimeRangeGetIntersection(&time1, &time2, &v24);
      if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&v24.start.value = *v10, v24.start.epoch = *(v10 + 16), CMTimeCompare(&time2.start, &v24.start)))
      {
        v16 = [(__CFDictionary *)v14 objectForKey:@"quality"];
        [v16 floatValue];
        v18 = v17;

        time2.start = time1.duration;
        Seconds = CMTimeGetSeconds(&time2.start);
        v12 = v12 + (v18 * Seconds);
        v11 = v11 + Seconds;
        if (v9 <= v18)
        {
          v9 = v18;
        }
      }

      if (v7 == ++v13)
      {
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    if (v11 != 0.0)
    {
      *&range.start.value = *&timerange->var1.var0;
      range.start.epoch = timerange->var1.var3;
      v12 = v12 / CMTimeGetSeconds(&range.start);
    }
  }

  else
  {

    v9 = 0.0;
    v12 = 0.0;
  }

  v20 = (erff((((v9 + v12) * 0.5) * 6.0) + -1.8) * 0.5) + 0.5;
  v21 = 1.0;
  if (v20 < 1.0)
  {
    v21 = v20;
  }

  v22 = v20 > 0.0;
  result = 0.0;
  if (v22)
  {
    return v21;
  }

  return result;
}

- (float)computeActionScoreInTimerange:(id *)timerange
{
  v34 = *MEMORY[0x1E69E9840];
  memset(&v32, 0, sizeof(v32));
  v5 = *&timerange->var0.var3;
  *&range.start.value = *&timerange->var0.var0;
  *&range.start.epoch = v5;
  *&range.duration.timescale = *&timerange->var1.var1;
  CMTimeRangeGetEnd(&v32, &range);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_actionResults;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v7)
  {
    v8 = *v28;
    v9 = 0.0;
    v10 = MEMORY[0x1E6960CC0];
    v11 = 0.0;
    v12 = 0.0;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v28 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v27 + 1) + 8 * v13);
      memset(&range, 0, sizeof(range));
      CMTimeRangeMakeFromDictionary(&range, v14);
      *&time1.start.value = *&range.start.value;
      time1.start.epoch = range.start.epoch;
      time2.start = v32;
      if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
      {
        break;
      }

      time2 = range;
      memset(&time1, 0, sizeof(time1));
      v15 = *&timerange->var0.var3;
      *&v24.start.value = *&timerange->var0.var0;
      *&v24.start.epoch = v15;
      *&v24.duration.timescale = *&timerange->var1.var1;
      CMTimeRangeGetIntersection(&time1, &time2, &v24);
      if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&v24.start.value = *v10, v24.start.epoch = *(v10 + 16), CMTimeCompare(&time2.start, &v24.start)))
      {
        v16 = [(__CFDictionary *)v14 objectForKey:@"quality"];
        [v16 floatValue];
        v18 = v17;

        time2.start = time1.duration;
        Seconds = CMTimeGetSeconds(&time2.start);
        v12 = v12 + (v18 * Seconds);
        v11 = v11 + Seconds;
        if (v9 <= v18)
        {
          v9 = v18;
        }
      }

      if (v7 == ++v13)
      {
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    if (v11 != 0.0)
    {
      *&range.start.value = *&timerange->var1.var0;
      range.start.epoch = timerange->var1.var3;
      v12 = v12 / CMTimeGetSeconds(&range.start);
    }
  }

  else
  {

    v9 = 0.0;
    v12 = 0.0;
  }

  v20 = (erff((((v9 + v12) * 0.5) * 6.0) + -1.8) * 0.5) + 0.5;
  v21 = 1.0;
  if (v20 < 1.0)
  {
    v21 = v20;
  }

  v22 = v20 > 0.0;
  result = 0.0;
  if (v22)
  {
    return v21;
  }

  return result;
}

- (float)computeHumanActionScoreInTimerange:(id *)timerange
{
  v47 = *MEMORY[0x1E69E9840];
  memset(&v44, 0, sizeof(v44));
  v5 = *&timerange->var0.var3;
  *&range.start.value = *&timerange->var0.var0;
  *&range.start.epoch = v5;
  *&range.duration.timescale = *&timerange->var1.var1;
  CMTimeRangeGetEnd(&v44, &range);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = self->_cameraMotionResults;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v7)
  {
    v8 = *v40;
    v9 = 0.0;
    v10 = 0.0;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v40 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v39 + 1) + 8 * v11);
      memset(&range, 0, sizeof(range));
      CMTimeRangeMakeFromDictionary(&range, v12);
      *&time1.start.value = *&range.start.value;
      time1.start.epoch = range.start.epoch;
      time2.start = v44;
      if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
      {
        break;
      }

      time2 = range;
      memset(&time1, 0, sizeof(time1));
      v13 = *&timerange->var0.var3;
      *&otherRange.start.value = *&timerange->var0.var0;
      *&otherRange.start.epoch = v13;
      *&otherRange.duration.timescale = *&timerange->var1.var1;
      CMTimeRangeGetIntersection(&time1, &time2, &otherRange);
      if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time2.start, &otherRange.start)))
      {
        v14 = [(__CFDictionary *)v12 objectForKeyedSubscript:@"flags"];
        unsignedIntegerValue = [v14 unsignedIntegerValue];

        if ((unsignedIntegerValue & 0x40) != 0)
        {
          time2.start = time1.duration;
          v10 = CMTimeGetSeconds(&time2.start) + v10;
        }

        time2.start = time1.duration;
        v9 = CMTimeGetSeconds(&time2.start) + v9;
      }

      if (v7 == ++v11)
      {
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v39 objects:v46 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    if (v9 != 0.0)
    {
      v16 = (v10 / v9) > 0.8;
      goto LABEL_21;
    }
  }

  else
  {
  }

  v16 = 0;
LABEL_21:
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = self->_humanActionResults;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v18)
  {
    v19 = *v33;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
LABEL_23:
    v23 = 0;
    while (1)
    {
      if (*v33 != v19)
      {
        objc_enumerationMutation(v17);
      }

      v24 = *(*(&v32 + 1) + 8 * v23);
      memset(&range, 0, sizeof(range));
      CMTimeRangeMakeFromDictionary(&range, v24);
      *&time1.start.value = *&range.start.value;
      time1.start.epoch = range.start.epoch;
      time2.start = v44;
      if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
      {
        break;
      }

      time2 = range;
      memset(&time1, 0, sizeof(time1));
      v25 = *&timerange->var0.var3;
      *&otherRange.start.value = *&timerange->var0.var0;
      *&otherRange.start.epoch = v25;
      *&otherRange.duration.timescale = *&timerange->var1.var1;
      CMTimeRangeGetIntersection(&time1, &time2, &otherRange);
      if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time2.start, &otherRange.start)))
      {
        v26 = [(__CFDictionary *)v24 objectForKeyedSubscript:@"attributes"];
        if (v16)
        {
          [v26 objectForKeyedSubscript:@"absoluteScore"];
        }

        else
        {
          [v26 objectForKeyedSubscript:@"relativeScore"];
        }
        v27 = ;
        [v27 floatValue];
        v29 = v28;

        time2.start = time1.duration;
        Seconds = CMTimeGetSeconds(&time2.start);
        v22 = v22 + (v29 * Seconds);
        v21 = v21 + Seconds;
        if (v20 <= v29)
        {
          v20 = v29;
        }
      }

      if (v18 == ++v23)
      {
        v18 = [(NSArray *)v17 countByEnumeratingWithState:&v32 objects:v45 count:16];
        if (v18)
        {
          goto LABEL_23;
        }

        break;
      }
    }

    if (v21 != 0.0)
    {
      *&range.start.value = *&timerange->var1.var0;
      range.start.epoch = timerange->var1.var3;
      v22 = v22 / CMTimeGetSeconds(&range.start);
    }
  }

  else
  {

    v20 = 0.0;
    v22 = 0.0;
  }

  return (v20 + v22) * 0.5;
}

- (float)computeHumanPoseScoreInTimerange:(id *)timerange
{
  v34 = *MEMORY[0x1E69E9840];
  memset(&v32, 0, sizeof(v32));
  v5 = *&timerange->var0.var3;
  *&range.start.value = *&timerange->var0.var0;
  *&range.start.epoch = v5;
  *&range.duration.timescale = *&timerange->var1.var1;
  CMTimeRangeGetEnd(&v32, &range);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_humanActionResults;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v7)
  {
    v8 = *v28;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v28 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v27 + 1) + 8 * v12);
      memset(&range, 0, sizeof(range));
      CMTimeRangeMakeFromDictionary(&range, v13);
      *&time1.start.value = *&range.start.value;
      time1.start.epoch = range.start.epoch;
      time2.start = v32;
      if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
      {
        break;
      }

      time2 = range;
      memset(&time1, 0, sizeof(time1));
      v14 = *&timerange->var0.var3;
      *&v24.start.value = *&timerange->var0.var0;
      *&v24.start.epoch = v14;
      *&v24.duration.timescale = *&timerange->var1.var1;
      CMTimeRangeGetIntersection(&time1, &time2, &v24);
      if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&v24.start.value = *MEMORY[0x1E6960CC0], v24.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time2.start, &v24.start)))
      {
        v15 = [(__CFDictionary *)v13 objectForKeyedSubscript:@"attributes"];
        v16 = [v15 objectForKeyedSubscript:@"humanScore"];
        [v16 floatValue];
        v18 = v17;

        time2.start = time1.duration;
        Seconds = CMTimeGetSeconds(&time2.start);
        v11 = v11 + (v18 * Seconds);
        v10 = v10 + Seconds;
        if (v9 <= v18)
        {
          v9 = v18;
        }
      }

      if (v7 == ++v12)
      {
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    if (v10 != 0.0)
    {
      *&range.start.value = *&timerange->var1.var0;
      range.start.epoch = timerange->var1.var3;
      v11 = v11 / CMTimeGetSeconds(&range.start);
    }
  }

  else
  {

    v9 = 0.0;
    v11 = 0.0;
  }

  v20 = (v9 + v11) * 0.5;
  v21 = 1.0;
  if (v20 < 1.0)
  {
    v21 = (v9 + v11) * 0.5;
  }

  v22 = v20 > 0.0;
  result = 0.0;
  if (v22)
  {
    return v21;
  }

  return result;
}

- (float)computeVoiceScoreInTimeRange:(id *)range
{
  v29 = *MEMORY[0x1E69E9840];
  time.start = range->var1;
  Seconds = CMTimeGetSeconds(&time.start);
  memset(&v27, 0, sizeof(v27));
  v6 = *&range->var0.var3;
  *&time.start.value = *&range->var0.var0;
  *&time.start.epoch = v6;
  *&time.duration.timescale = *&range->var1.var1;
  CMTimeRangeGetEnd(&v27, &time);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_voiceResults;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = *v23;
    v10 = 0.0;
    v11 = MEMORY[0x1E6960CC0];
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v22 + 1) + 8 * v12);
      memset(&time, 0, sizeof(time));
      CMTimeRangeMakeFromDictionary(&time, v13);
      *&time1.start.value = *&time.start.value;
      time1.start.epoch = time.start.epoch;
      time2.start = v27;
      if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
      {
        break;
      }

      time2 = time;
      memset(&time1, 0, sizeof(time1));
      v14 = *&range->var0.var3;
      *&v19.start.value = *&range->var0.var0;
      *&v19.start.epoch = v14;
      *&v19.duration.timescale = *&range->var1.var1;
      CMTimeRangeGetIntersection(&time1, &time2, &v19);
      if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&v19.start.value = *v11, v19.start.epoch = *(v11 + 16), CMTimeCompare(&time2.start, &v19.start)))
      {
        time2.start = time1.duration;
        v10 = CMTimeGetSeconds(&time2.start) + v10;
      }

      if (v8 == ++v12)
      {
        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v10 = 0.0;
  }

  v15 = Seconds;
  v16 = v10 / v15;
  v17 = v15 == 0.0;
  result = 0.0;
  if (!v17)
  {
    return v16;
  }

  return result;
}

- (int)postProcessMLHighlightScore
{
  v40 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = self->_mlHighlightScoreResults;
  array = [(NSArray *)v3 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (!array)
  {
LABEL_25:

    goto LABEL_26;
  }

  v5 = *v35;
  v6 = 0.0;
  v7 = 1.0;
  do
  {
    for (i = 0; i != array; i = (i + 1))
    {
      if (*v35 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v34 + 1) + 8 * i);
      v10 = [v9 objectForKeyedSubscript:@"quality"];
      [v10 floatValue];
      if (v11 >= v6)
      {
        v6 = v11;
      }

      v12 = [v9 objectForKeyedSubscript:@"quality"];
      [v12 floatValue];
      if (v7 >= v13)
      {
        v7 = v13;
      }
    }

    array = [(NSArray *)v3 countByEnumeratingWithState:&v34 objects:v39 count:16];
  }

  while (array);

  if (v6 > 0.0 && v6 > v7)
  {
    array = [MEMORY[0x1E695DF70] array];
    maxHighlightScore = self->_maxHighlightScore;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v3 = self->_mlHighlightScoreResults;
    v16 = [(NSArray *)v3 countByEnumeratingWithState:&v30 objects:v38 count:16];
    v17 = v16;
    if (v16)
    {
      v18 = *v31;
      v19 = maxHighlightScore / v6;
      do
      {
        v20 = 0;
        do
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v3);
          }

          v21 = *(*(&v30 + 1) + 8 * v20);
          v22 = [v21 mutableCopy];
          v23 = [v21 objectForKeyedSubscript:@"quality"];
          [v23 floatValue];
          v25 = v24;

          *&v26 = v19 * v25;
          v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
          [v22 setObject:v27 forKeyedSubscript:@"quality"];

          [(NSArray *)array addObject:v22];
          ++v20;
        }

        while (v17 != v20);
        v17 = [(NSArray *)v3 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v17);
    }

    goto LABEL_25;
  }

  array = 0;
LABEL_26:
  mlHighlightScoreResults = self->_mlHighlightScoreResults;
  self->_mlHighlightScoreResults = array;

  return 0;
}

- (int)combineMLHighlightScore
{
  if (self->_mlHighlightScoreResults && [(NSMutableArray *)self->_internalResults count])
  {
    v3 = 0;
    v4 = 0.0;
    v5 = 0.0;
    do
    {
      v6 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:v3, v19, v20, v21];
      v7 = v6;
      if (v6)
      {
        [v6 timerange];
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
      }

      [(VCPMovieHighlightAnalyzer *)self computeMLHighlightScoreForTimerange:&v19];
      v9 = v8;
      [v7 score];
      if (v10 >= 0.0)
      {
        if (v9 < 0.0 || v9 < 0.3 && ([v7 score], v14 > 0.3))
        {
          if (v5 <= 0.0 || v4 <= 0.0 || (vabds_f32(v4, v5) / (v5 + v4)) >= 0.33)
          {
            [v7 score];
            v9 = v15;
          }

          else
          {
            [v7 score];
            v12 = v4 * (v11 / v5);
            if (v12 < 1.0)
            {
              v13 = v12;
            }

            else
            {
              v13 = 1.0;
            }

            if (v12 <= 0.0)
            {
              v9 = 0.0;
            }

            else
            {
              v9 = v13;
            }
          }
        }

        [v7 score];
        v5 = v16;
        *&v17 = v9;
        [v7 setScore:v17];
        [(NSMutableArray *)self->_internalResults replaceObjectAtIndex:v3 withObject:v7];
        v4 = v9;
      }

      ++v3;
    }

    while (v3 < [(NSMutableArray *)self->_internalResults count]);
  }

  return 0;
}

- (float)computeMLHighlightScoreForTimerange:(id *)timerange
{
  v38 = *MEMORY[0x1E69E9840];
  memset(&v35, 0, sizeof(v35));
  v5 = *&timerange->var0.var3;
  *&range.start.value = *&timerange->var0.var0;
  *&range.start.epoch = v5;
  *&range.duration.timescale = *&timerange->var1.var1;
  CMTimeRangeGetEnd(&v35, &range);
  v6 = MEMORY[0x1E6960CC0];
  v7 = *MEMORY[0x1E6960CC0];
  epoch = *(MEMORY[0x1E6960CC0] + 16);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = v7;
  v8 = self->_mlHighlightScoreResults;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v9)
  {
    v10 = *v29;
    v11 = 0.0;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v29 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v28 + 1) + 8 * v12);
      memset(&range, 0, sizeof(range));
      CMTimeRangeMakeFromDictionary(&range, v13);
      *&time1.start.value = *&range.start.value;
      time1.start.epoch = range.start.epoch;
      time2.start = v35;
      if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
      {
        break;
      }

      time2 = range;
      memset(&time1, 0, sizeof(time1));
      v14 = *&timerange->var0.var3;
      *&v25.start.value = *&timerange->var0.var0;
      *&v25.start.epoch = v14;
      *&v25.duration.timescale = *&timerange->var1.var1;
      CMTimeRangeGetIntersection(&time1, &time2, &v25);
      if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&v25.start.value = *v6, v25.start.epoch = *(v6 + 16), CMTimeCompare(&time2.start, &v25.start)))
      {
        v15 = [(__CFDictionary *)v13 objectForKeyedSubscript:@"quality"];
        [v15 floatValue];
        v17 = v16;

        time2.start = time1.duration;
        Seconds = CMTimeGetSeconds(&time2.start);
        *&v25.start.value = v32;
        v25.start.epoch = epoch;
        rhs = time1.duration;
        CMTimeAdd(&time2.start, &v25.start, &rhs);
        v32 = *&time2.start.value;
        epoch = time2.start.epoch;
        v19 = Seconds;
        v11 = v11 + (v17 * v19);
      }

      if (v9 == ++v12)
      {
        v9 = [(NSArray *)v8 countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v11 = 0.0;
  }

  *&range.start.value = v32;
  range.start.epoch = epoch;
  *&time1.start.value = *&timerange->var1.var0;
  time1.start.epoch = timerange->var1.var3;
  v20 = CMTimeCompare(&range.start, &time1.start);
  result = -1.0;
  if (!v20)
  {
    *&range.start.value = v32;
    range.start.epoch = epoch;
    v22 = v11 / CMTimeGetSeconds(&range.start);
    v23 = 1.0;
    if (v22 < 1.0)
    {
      v23 = v22;
    }

    v24 = v22 > 0.0;
    result = 0.0;
    if (v24)
    {
      return v23;
    }
  }

  return result;
}

- (float)computeMLQualityScoreForTimerange:(id *)timerange
{
  v33 = *MEMORY[0x1E69E9840];
  memset(&v31, 0, sizeof(v31));
  v5 = *&timerange->var0.var3;
  *&range.start.value = *&timerange->var0.var0;
  *&range.start.epoch = v5;
  *&range.duration.timescale = *&timerange->var1.var1;
  CMTimeRangeGetEnd(&v31, &range);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = self->_mlQualityResults;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v7)
  {
    v8 = *v27;
    v9 = 0.0;
    v10 = MEMORY[0x1E6960CC0];
    v11 = 0.0;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v27 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v26 + 1) + 8 * v12);
      memset(&range, 0, sizeof(range));
      CMTimeRangeMakeFromDictionary(&range, v13);
      *&time1.start.value = *&range.start.value;
      time1.start.epoch = range.start.epoch;
      time2.start = v31;
      if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
      {
        break;
      }

      time2 = range;
      memset(&time1, 0, sizeof(time1));
      v14 = *&timerange->var0.var3;
      *&v23.start.value = *&timerange->var0.var0;
      *&v23.start.epoch = v14;
      *&v23.duration.timescale = *&timerange->var1.var1;
      CMTimeRangeGetIntersection(&time1, &time2, &v23);
      if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&v23.start.value = *v10, v23.start.epoch = *(v10 + 16), CMTimeCompare(&time2.start, &v23.start)))
      {
        v15 = [(__CFDictionary *)v13 objectForKeyedSubscript:@"quality"];
        [v15 floatValue];
        v17 = v16;

        time2.start = time1.duration;
        Seconds = CMTimeGetSeconds(&time2.start);
        v11 = v11 + (v17 * Seconds);
        v9 = v9 + Seconds;
      }

      if (v7 == ++v12)
      {
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0.0;
    v11 = 0.0;
  }

  v19 = v11 / v9;
  if (v9 <= 0.0)
  {
    v19 = v11;
  }

  v20 = 1.0;
  if (v19 < 1.0)
  {
    v20 = v19;
  }

  v21 = v19 > 0.0;
  result = 0.0;
  if (v21)
  {
    return v20;
  }

  return result;
}

- (float)stickerScaledScore:(float)score highPrecisionThreshold:(float)threshold highRecallThreshold:(float)recallThreshold
{
  if (score > threshold)
  {
    v5 = ((score - threshold) * 0.1) / (1.0 - threshold);
    v6 = 0.9;
    return v5 + v6;
  }

  v7 = 0.0;
  if (score > recallThreshold)
  {
    v5 = ((score - recallThreshold) * 0.1) / (1.0 - recallThreshold);
    v6 = 0.2;
    return v5 + v6;
  }

  return v7;
}

- (float)analyzeOverallQuality:(id *)quality isSettlingEffect:(BOOL)effect isAnimatedSticker:(BOOL)sticker
{
  stickerCopy = sticker;
  effectCopy = effect;
  v9 = *&quality->var0.var3;
  *time = *&quality->var0.var0;
  *&time[16] = v9;
  v73 = *&quality->var1.var1;
  [(VCPMovieHighlightAnalyzer *)self qualityScoreForTimerange:time];
  v11 = v10;
  v12 = *&quality->var0.var3;
  *time = *&quality->var0.var0;
  *&time[16] = v12;
  v73 = *&quality->var1.var1;
  [(VCPMovieHighlightAnalyzer *)self actionScoreForTimerange:time];
  v14 = v13;
  v15 = *&quality->var0.var3;
  *time = *&quality->var0.var0;
  *&time[16] = v15;
  v73 = *&quality->var1.var1;
  [(VCPMovieHighlightAnalyzer *)self subtleMotionScoreForTimerange:time];
  v17 = v16;
  v18 = *&quality->var0.var3;
  *time = *&quality->var0.var0;
  *&time[16] = v18;
  v73 = *&quality->var1.var1;
  [(VCPMovieHighlightAnalyzer *)self expressionScoreForTimerange:time];
  v20 = v19;
  v21 = 0.5;
  if (!effectCopy)
  {
    v22 = *&quality->var0.var3;
    *time = *&quality->var0.var0;
    *&time[16] = v22;
    v73 = *&quality->var1.var1;
    [(VCPMovieHighlightAnalyzer *)self voiceScoreForTimerange:time];
    v21 = v23;
  }

  v24 = *&quality->var0.var3;
  *time = *&quality->var0.var0;
  *&time[16] = v24;
  v73 = *&quality->var1.var1;
  [(VCPMovieHighlightAnalyzer *)self junkScoreForTimerange:time lengthScale:!effectCopy];
  v71 = v25;
  v26 = *&quality->var0.var3;
  *time = *&quality->var0.var0;
  *&time[16] = v26;
  v73 = *&quality->var1.var1;
  [(VCPMovieHighlightAnalyzer *)self cameraMotionScoreForTimerange:time];
  v28 = v27;
  v29 = *&quality->var0.var3;
  *time = *&quality->var0.var0;
  *&time[16] = v29;
  v73 = *&quality->var1.var1;
  [(VCPMovieHighlightAnalyzer *)self visualPleasingScoreForTimerange:time];
  v31 = v30;
  v32 = *&quality->var0.var3;
  *time = *&quality->var0.var0;
  *&time[16] = v32;
  v73 = *&quality->var1.var1;
  [(VCPMovieHighlightAnalyzer *)self computeHumanActionScoreInTimerange:time];
  v34 = v33;
  v35 = *&quality->var0.var3;
  *time = *&quality->var0.var0;
  *&time[16] = v35;
  v73 = *&quality->var1.var1;
  [(VCPMovieHighlightAnalyzer *)self computeHumanPoseScoreInTimerange:time];
  if (stickerCopy)
  {
    LODWORD(v37) = 1062165545;
    *&v36 = v14;
    LODWORD(v38) = 1045220557;
    [(VCPMovieHighlightAnalyzer *)self stickerScaledScore:v36 highPrecisionThreshold:v37 highRecallThreshold:v38];
    v40 = v39 + 0.0;
    LODWORD(v41) = 1028443341;
    *&v42 = v34;
    [(VCPMovieHighlightAnalyzer *)self stickerScaledScore:v42 highPrecisionThreshold:COERCE_DOUBLE(1041865114) highRecallThreshold:v41];
    v44 = v40 + v43;
    LODWORD(v45) = 1.0;
    *&v46 = v17;
    LODWORD(v47) = 1045220557;
    [(VCPMovieHighlightAnalyzer *)self stickerScaledScore:v46 highPrecisionThreshold:v45 highRecallThreshold:v47];
    return (v44 + v48) / 3.0;
  }

  else
  {
    v50 = v17 * 1.1;
    if (!effectCopy)
    {
      v50 = v17;
    }

    if (v14 >= v50)
    {
      v50 = v14;
    }

    if (v50 < (v34 * 1.5))
    {
      v50 = v34 * 1.5;
    }

    if (v50 < 0.2 && v21 < 0.2)
    {
      *&v36 = *&v36 * 0.3;
    }

    v51 = *&v36 * 0.5;
    if (v20 >= v51)
    {
      v52 = v20;
    }

    else
    {
      v52 = v51;
    }

    v53 = flt_1C9F62588[v11 > 0.4];
    v54 = v53 + 0.1;
    v55 = 0.0;
    if (v50 >= 0.2 || v52 >= 0.2)
    {
      v55 = v21 * 0.1;
    }

    v56 = v55 + (v53 * v11);
    if (v50 < 0.2 && v52 < 0.2)
    {
      if (v28 >= 0.2)
      {
        v58 = v54 + 0.7;
        v59 = (((v31 * 0.6) * 0.35) + ((v28 * 0.35) * 0.6)) + v56;
      }

      else
      {
        v57 = (v52 * 0.35) + (v50 * 0.25);
        v58 = 0.7;
        v59 = v57 + 0.0;
      }
    }

    else
    {
      v60 = ((v31 * 0.6) * 0.35) + ((v28 * 0.35) * 0.6);
      v61 = ((v52 * 0.35) + (v50 * 0.25)) + (v31 * 0.35);
      v62 = 0.7;
      if ((v60 / 0.7) <= (v61 / 0.95))
      {
        v62 = 0.95;
      }

      v58 = v54 + v62;
      if ((v60 / 0.7) > (v61 / 0.95))
      {
        v61 = ((v31 * 0.6) * 0.35) + ((v28 * 0.35) * 0.6);
      }

      v59 = v56 + v61;
    }

    v63 = v59 / v58;
    if (v58 == 0.0)
    {
      v64 = 0.0;
    }

    else
    {
      v64 = v63;
    }

    v65 = 1.0;
    if (!effectCopy)
    {
      *time = *&quality->var1.var0;
      *&time[16] = quality->var1.var3;
      v66 = (CMTimeGetSeconds(time) + -3.0) / 424.26001;
      v67 = erff(v66);
      *time = *&quality->var1.var0;
      *&time[16] = quality->var1.var3;
      if (CMTimeGetSeconds(time) <= 10.0)
      {
        v65 = v67 + 1.0;
      }

      else
      {
        *time = *&quality->var1.var0;
        *&time[16] = quality->var1.var3;
        v68 = (10.0 - CMTimeGetSeconds(time)) / 424.26001;
        v65 = erff(v68) + 1.0;
      }
    }

    v69 = powf((v71 * v64) * v65, 0.8) * 1.25;
    if (v69 < 1.0)
    {
      v70 = v69;
    }

    else
    {
      v70 = 1.0;
    }

    if (v69 <= 0.0)
    {
      return 0.0;
    }

    else
    {
      return v70;
    }
  }
}

- (float)qualityScoreForTimerange:(id *)timerange
{
  if (![(NSArray *)self->_qualityResults count])
  {
    return 0.0;
  }

  v5 = 0;
  v6 = MEMORY[0x1E6960CC0];
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 1.0;
  v11 = 0.0;
  v31 = 1.0;
  do
  {
    v12 = [(NSArray *)self->_qualityResults objectAtIndex:v5];
    memset(&v35, 0, sizeof(v35));
    CMTimeRangeMakeFromDictionary(&v35, v12);
    v13 = *&timerange->var0.var3;
    *&range.start.value = *&timerange->var0.var0;
    *&range.start.epoch = v13;
    *&range.duration.timescale = *&timerange->var1.var1;
    memset(&v34, 0, sizeof(v34));
    otherRange = v35;
    CMTimeRangeGetIntersection(&v34, &range, &otherRange);
    v35 = v34;
    if ((v34.start.flags & 1) == 0 || (v35.duration.flags & 1) == 0 || v35.duration.epoch || v35.duration.value < 0 || (range.start = v34.duration, *&otherRange.start.value = *v6, otherRange.start.epoch = *(v6 + 16), CMTimeCompare(&range.start, &otherRange.start)))
    {
      range.start = v35.duration;
      Seconds = CMTimeGetSeconds(&range.start);
      v15 = [(__CFDictionary *)v12 objectForKey:@"quality"];
      [v15 floatValue];
      v17 = v16;
      v18 = v16 <= 0.3 || v10 > 0.3;
      v19 = !v18;
      v20 = v10;
      if (v16 <= 0.3)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v23 = v16 <= 0.3 && v20 > 0.3;

      if (v23 | v19)
      {
        v9 = v9 + 1.0;
      }

      v24 = [(NSArray *)self->_qualityResults count];
      v25 = Seconds;
      v8 = v8 + v25;
      v7 = v7 + (v17 * v25);
      v11 = v11 + (v21 * v25);
      if (v5 < v24 - 1)
      {
        v26 = v31;
        if (v31 > v25)
        {
          v26 = Seconds;
        }

        v31 = v26;
      }
    }

    else
    {
      v17 = v10;
    }

    ++v5;
    v10 = v17;
  }

  while (v5 < [(NSArray *)self->_qualityResults count]);
  if (v8 == 0.0)
  {
    return 0.0;
  }

  v27 = (v11 * (v7 / v8)) / v8;
  v28 = (((v31 * (v9 * -0.4)) / v8) + 1.0) * v27;
  if (v28 < 1.0)
  {
    v29 = (((v31 * (v9 * -0.4)) / v8) + 1.0) * v27;
  }

  else
  {
    v29 = 1.0;
  }

  v18 = v28 > 0.0;
  result = 0.0;
  if (v18)
  {
    return v29;
  }

  return result;
}

- (float)actionScoreForTimerange:(id *)timerange
{
  v55 = *MEMORY[0x1E69E9840];
  memset(&v52, 0, sizeof(v52));
  v4 = *&timerange->var0.var3;
  *&range.start.value = *&timerange->var0.var0;
  *&range.start.epoch = v4;
  *&range.duration.timescale = *&timerange->var1.var1;
  CMTimeRangeGetEnd(&v52, &range);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = self->_actionResults;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v5)
  {
    v36 = *v48;
    v6 = 0.0;
    v7 = MEMORY[0x1E6960CC0];
    v8 = 0.0;
LABEL_3:
    v35 = v5;
    v9 = 0;
    while (1)
    {
      if (*v48 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v47 + 1) + 8 * v9);
      memset(&range, 0, sizeof(range));
      CMTimeRangeMakeFromDictionary(&range, v10);
      *&time1.start.value = *&range.start.value;
      time1.start.epoch = range.start.epoch;
      time2.start = v52;
      if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
      {
        break;
      }

      time2 = range;
      memset(&time1, 0, sizeof(time1));
      v11 = *&timerange->var0.var3;
      *&otherRange.start.value = *&timerange->var0.var0;
      *&otherRange.start.epoch = v11;
      *&otherRange.duration.timescale = *&timerange->var1.var1;
      CMTimeRangeGetIntersection(&time1, &time2, &otherRange);
      if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&otherRange.start.value = *v7, otherRange.start.epoch = *(v7 + 16), CMTimeCompare(&time2.start, &otherRange.start)))
      {
        v12 = [(__CFDictionary *)v10 objectForKey:@"quality"];
        v37 = v8;
        [v12 floatValue];
        v14 = v13;

        time2.start = time1.duration;
        Seconds = CMTimeGetSeconds(&time2.start);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v16 = self->_qualityResults;
        v17 = [(NSArray *)v16 countByEnumeratingWithState:&v40 objects:v53 count:16];
        if (v17)
        {
          v18 = *v41;
          v19 = 0.0;
LABEL_14:
          v20 = 0;
          while (1)
          {
            if (*v41 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v40 + 1) + 8 * v20);
            memset(&time2, 0, sizeof(time2));
            CMTimeRangeMakeFromDictionary(&time2, v21);
            otherRange = time1;
            CMTimeRangeGetEnd(&v38.start, &otherRange);
            *&otherRange.start.value = *&time2.start.value;
            otherRange.start.epoch = time2.start.epoch;
            *&time.start.value = *&v38.start.value;
            time.start.epoch = v38.start.epoch;
            if ((CMTimeCompare(&otherRange.start, &time.start) & 0x80000000) == 0)
            {
              break;
            }

            memset(&otherRange, 0, sizeof(otherRange));
            time = time1;
            v38 = time2;
            CMTimeRangeGetIntersection(&otherRange, &time, &v38);
            v22 = [(__CFDictionary *)v21 objectForKey:@"quality"];
            [v22 floatValue];
            v24 = v23;

            if ((otherRange.start.flags & 1) == 0 || (otherRange.duration.flags & 1) == 0 || otherRange.duration.epoch || otherRange.duration.value < 0 || (time.start = otherRange.duration, *&v38.start.value = *v7, v38.start.epoch = *(v7 + 16), CMTimeCompare(&time.start, &v38.start)))
            {
              time.start = otherRange.duration;
              v25 = CMTimeGetSeconds(&time.start);
              if (v24 <= 0.3)
              {
                v26 = 0.0;
              }

              else
              {
                v26 = 1.0;
              }

              v19 = v19 + v26 * v25;
            }

            if (v17 == ++v20)
            {
              v17 = [(NSArray *)v16 countByEnumeratingWithState:&v40 objects:v53 count:16];
              if (v17)
              {
                goto LABEL_14;
              }

              break;
            }
          }
        }

        else
        {
          v19 = 0.0;
        }

        v27 = Seconds;
        v6 = v6 + ((v14 * v27) * (v19 / v27));
        v8 = v37 + v27;
      }

      if (++v9 == v35)
      {
        v5 = [(NSArray *)obj countByEnumeratingWithState:&v47 objects:v54 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v6 = 0.0;
    v8 = 0.0;
  }

  v28 = v6 / v8;
  if (v8 <= 0.0)
  {
    v28 = v6;
  }

  v29 = (erff((v28 * 6.0) + -1.8) * 0.5) + 0.5;
  v30 = 1.0;
  if (v29 < 1.0)
  {
    v30 = v29;
  }

  v31 = v29 > 0.0;
  result = 0.0;
  if (v31)
  {
    return v30;
  }

  return result;
}

- (float)voiceScoreForTimerange:(id *)timerange
{
  v3 = *&timerange->var0.var3;
  v9[0] = *&timerange->var0.var0;
  v9[1] = v3;
  v9[2] = *&timerange->var1.var1;
  [(VCPMovieHighlightAnalyzer *)self computeVoiceScoreInTimeRange:v9];
  v5 = expf(((1.0 - v4) * (1.0 - v4)) * -4.0);
  if (v5 < 1.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = v5 > 0.0;
  result = 0.0;
  if (v7)
  {
    return v6;
  }

  return result;
}

- (float)visualPleasingScoreForTimerange:(id *)timerange
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_keyFrameResults;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v17;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = *&timerange->var0.var3;
        *&range.start.value = *&timerange->var0.var0;
        *&range.start.epoch = v11;
        *&range.duration.timescale = *&timerange->var1.var1;
        if (v10)
        {
          [v10 timestamp];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        if (CMTimeRangeContainsTime(&range, &time))
        {
          [v10 visualPleasingScore];
          v8 = v8 + v12;
          ++v6;
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);

    if (v6)
    {
      return v8 / v6;
    }
  }

  else
  {
  }

  return -1.0;
}

- (float)cameraMotionScoreForTimerange:(id *)timerange
{
  v55 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = self->_qualityResults;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v3)
  {
    v35 = v3;
    v36 = *v50;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
LABEL_3:
    v38 = 0;
    while (1)
    {
      if (*v50 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v49 + 1) + 8 * v38);
      memset(&v48, 0, sizeof(v48));
      CMTimeRangeMakeFromDictionary(&v48, v7);
      memset(&v47, 0, sizeof(v47));
      range = v48;
      CMTimeRangeGetEnd(&v47, &range);
      v8 = *&timerange->var0.var3;
      *&range.start.value = *&timerange->var0.var0;
      *&range.start.epoch = v8;
      *&range.duration.timescale = *&timerange->var1.var1;
      CMTimeRangeGetEnd(&time1.start, &range);
      *&range.start.value = *&v48.start.value;
      range.start.epoch = v48.start.epoch;
      *&time2.start.value = *&time1.start.value;
      time2.start.epoch = time1.start.epoch;
      if ((CMTimeCompare(&range.start, &time2.start) & 0x80000000) == 0)
      {
        break;
      }

      time2 = v48;
      v9 = *&timerange->var0.var3;
      *&time1.start.value = *&timerange->var0.var0;
      *&time1.start.epoch = v9;
      *&time1.duration.timescale = *&timerange->var1.var1;
      CMTimeRangeGetIntersection(&range, &time2, &time1);
      v48 = range;
      if ((range.start.flags & 1) == 0 || (v48.duration.flags & 1) == 0 || v48.duration.epoch || v48.duration.value < 0 || (range.start = v48.duration, *&time2.start.value = *MEMORY[0x1E6960CC0], time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&range.start, &time2.start)))
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v10 = self->_cameraMotionResults;
        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v40 objects:v53 count:16];
        if (v11)
        {
          v12 = *v41;
LABEL_14:
          v13 = 0;
          while (1)
          {
            if (*v41 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v40 + 1) + 8 * v13);
            memset(&range, 0, sizeof(range));
            CMTimeRangeMakeFromDictionary(&range, v14);
            *&time2.start.value = *&range.start.value;
            time2.start.epoch = range.start.epoch;
            time1.start = v47;
            if ((CMTimeCompare(&time2.start, &time1.start) & 0x80000000) == 0)
            {
              break;
            }

            time1 = range;
            memset(&time2, 0, sizeof(time2));
            otherRange = v48;
            CMTimeRangeGetIntersection(&time2, &time1, &otherRange);
            if ((time2.start.flags & 1) == 0 || (time2.duration.flags & 1) == 0 || time2.duration.epoch || time2.duration.value < 0 || (time1.start = time2.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time1.start, &otherRange.start)))
            {
              v15 = [(__CFDictionary *)v14 objectForKey:@"flags"];
              integerValue = [v15 integerValue];
              v17 = integerValue & 0x3FFC0;
              v18 = __clz(__rbit32(integerValue & 0x2FFC0));
              if (v19 | ((integerValue & 0x2FFC0) == 0))
              {
                v20 = 0;
              }

              else
              {
                v20 = v18;
              }

              time1.start = time2.duration;
              Seconds = CMTimeGetSeconds(&time1.start);
              v22 = [(__CFDictionary *)v7 objectForKey:@"quality"];
              [v22 floatValue];
              v24 = v23;

              if ((v17 & 0x10000) != 0 || v20 - 7 >= 4 && v20 != 12)
              {
                goto LABEL_37;
              }

              v25 = Seconds;
              v26 = 0.0;
              if (v24 > 0.3)
              {
                if ((v24 + 0.2) < 1.0)
                {
                  v27 = v24 + 0.2;
                }

                else
                {
                  v27 = 1.0;
                }

                v28 = 0.0;
                if ((v24 + 0.2) > 0.0)
                {
                  v28 = v27;
                }

                v26 = v28 * v25;
              }

              v6 = v6 + v26;
              v5 = v5 + v25;
              if (v4 >= v25)
              {
LABEL_37:
                v25 = v4;
              }

              v4 = v25;
            }

            if (v11 == ++v13)
            {
              v11 = [(NSArray *)v10 countByEnumeratingWithState:&v40 objects:v53 count:16];
              if (v11)
              {
                goto LABEL_14;
              }

              break;
            }
          }
        }
      }

      if (++v38 == v35)
      {
        v35 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v35)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    v29 = 0.0;
    if (v4 >= 0.5 && v5 != 0.0)
    {
      *&v48.start.value = *&timerange->var1.var0;
      v48.start.epoch = timerange->var1.var3;
      v29 = v6 / CMTimeGetSeconds(&v48.start);
    }
  }

  else
  {

    v29 = 0.0;
  }

  v30 = 1.0;
  if (v29 < 1.0)
  {
    v30 = v29;
  }

  v31 = v29 > 0.0;
  result = 0.0;
  if (v31)
  {
    return v30;
  }

  return result;
}

- (float)subtleMotionScoreForTimerange:(id *)timerange
{
  v72 = *MEMORY[0x1E69E9840];
  memset(&v68, 0, sizeof(v68));
  v3 = *&timerange->var0.var3;
  *&range.start.value = *&timerange->var0.var0;
  *&range.start.epoch = v3;
  *&range.duration.timescale = *&timerange->var1.var1;
  CMTimeRangeGetEnd(&v68, &range);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = self->_subtleMotionResults;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v4)
  {
    v47 = *v64;
    v5 = MEMORY[0x1E6960CC0];
    v49 = 0.0;
    v6 = 0.0;
LABEL_3:
    v7 = 0;
    v45 = v4;
    while (1)
    {
      if (*v64 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v63 + 1) + 8 * v7);
      memset(&range, 0, sizeof(range));
      CMTimeRangeMakeFromDictionary(&range, v8);
      *&time1.start.value = *&range.start.value;
      time1.start.epoch = range.start.epoch;
      time2.start = v68;
      if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
      {
        break;
      }

      time2 = range;
      memset(&time1, 0, sizeof(time1));
      v9 = *&timerange->var0.var3;
      *&otherRange.start.value = *&timerange->var0.var0;
      *&otherRange.start.epoch = v9;
      *&otherRange.duration.timescale = *&timerange->var1.var1;
      CMTimeRangeGetIntersection(&time1, &time2, &otherRange);
      if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&otherRange.start.value = *v5, otherRange.start.epoch = *(v5 + 16), CMTimeCompare(&time2.start, &otherRange.start)))
      {
        v10 = [(__CFDictionary *)v8 objectForKey:@"quality"];
        [v10 floatValue];
        v12 = v11;

        time2.start = time1.duration;
        Seconds = CMTimeGetSeconds(&time2.start);
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v14 = self->_qualityResults;
        v15 = [(NSArray *)v14 countByEnumeratingWithState:&v56 objects:v70 count:16];
        v16 = Seconds;
        if (v15)
        {
          v17 = *v57;
          v18 = 0.0;
LABEL_14:
          v19 = 0;
          while (1)
          {
            if (*v57 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v56 + 1) + 8 * v19);
            memset(&time2, 0, sizeof(time2));
            CMTimeRangeMakeFromDictionary(&time2, v20);
            otherRange = time1;
            CMTimeRangeGetEnd(&v54.start, &otherRange);
            *&otherRange.start.value = *&time2.start.value;
            otherRange.start.epoch = time2.start.epoch;
            *&time.start.value = *&v54.start.value;
            time.start.epoch = v54.start.epoch;
            if ((CMTimeCompare(&otherRange.start, &time.start) & 0x80000000) == 0)
            {
              break;
            }

            memset(&otherRange, 0, sizeof(otherRange));
            time = time1;
            v54 = time2;
            CMTimeRangeGetIntersection(&otherRange, &time, &v54);
            v21 = [(__CFDictionary *)v20 objectForKey:@"quality"];
            [v21 floatValue];
            v23 = v22;

            if ((otherRange.start.flags & 1) == 0 || (otherRange.duration.flags & 1) == 0 || otherRange.duration.epoch || otherRange.duration.value < 0 || (time.start = otherRange.duration, *&v54.start.value = *v5, v54.start.epoch = *(v5 + 16), CMTimeCompare(&time.start, &v54.start)))
            {
              time.start = otherRange.duration;
              v24 = CMTimeGetSeconds(&time.start);
              if (v23 <= 0.0)
              {
                v25 = 0.0;
              }

              else
              {
                v25 = 1.0;
              }

              v18 = v18 + v25 * v24;
            }

            if (v15 == ++v19)
            {
              v15 = [(NSArray *)v14 countByEnumeratingWithState:&v56 objects:v70 count:16];
              if (v15)
              {
                goto LABEL_14;
              }

              break;
            }
          }

          if (v18 > 0.0)
          {
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v26 = self->_cameraMotionResults;
            v27 = [(NSArray *)v26 countByEnumeratingWithState:&v50 objects:v69 count:16];
            if (v27)
            {
              v28 = *v51;
              v29 = 0.0;
LABEL_32:
              v30 = 0;
              while (1)
              {
                if (*v51 != v28)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v50 + 1) + 8 * v30);
                memset(&time2, 0, sizeof(time2));
                CMTimeRangeMakeFromDictionary(&time2, v31);
                otherRange = time1;
                CMTimeRangeGetEnd(&v54.start, &otherRange);
                *&otherRange.start.value = *&time2.start.value;
                otherRange.start.epoch = time2.start.epoch;
                *&time.start.value = *&v54.start.value;
                time.start.epoch = v54.start.epoch;
                if ((CMTimeCompare(&otherRange.start, &time.start) & 0x80000000) == 0)
                {
                  break;
                }

                memset(&otherRange, 0, sizeof(otherRange));
                time = time1;
                v54 = time2;
                CMTimeRangeGetIntersection(&otherRange, &time, &v54);
                if ((otherRange.start.flags & 1) == 0 || (otherRange.duration.flags & 1) == 0 || otherRange.duration.epoch || otherRange.duration.value < 0 || (time.start = otherRange.duration, *&v54.start.value = *v5, v54.start.epoch = *(v5 + 16), CMTimeCompare(&time.start, &v54.start)))
                {
                  v32 = [(__CFDictionary *)v31 objectForKey:@"flags"];
                  integerValue = [v32 integerValue];
                  time.start = otherRange.duration;
                  v34 = CMTimeGetSeconds(&time.start);
                  if (v35 | ((integerValue & 0x2FFC0) == 0))
                  {
                    v36 = 0;
                  }

                  else
                  {
                    v36 = (integerValue & 0x40) == 64;
                  }

                  v37 = v36;

                  v29 = v29 + v37 * v34;
                }

                if (v27 == ++v30)
                {
                  v27 = [(NSArray *)v26 countByEnumeratingWithState:&v50 objects:v69 count:16];
                  if (v27)
                  {
                    goto LABEL_32;
                  }

                  break;
                }
              }
            }

            else
            {
              v29 = 0.0;
            }

            if (v29 < v18)
            {
              v18 = v29;
            }
          }

          v38 = v18 / v16;
        }

        else
        {

          v38 = 0.0 / v16;
        }

        v49 = v49 + ((v12 * v16) * v38);
        v6 = v6 + v16;
        v4 = v45;
      }

      if (++v7 == v4)
      {
        v4 = [(NSArray *)obj countByEnumeratingWithState:&v63 objects:v71 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v49 = 0.0;
    v6 = 0.0;
  }

  v39 = v49 / v6;
  if (v6 <= 0.0)
  {
    v39 = v49;
  }

  v40 = (erff((v39 * 6.0) + -1.8) * 0.5) + 0.5;
  v41 = 1.0;
  if (v40 < 1.0)
  {
    v41 = v40;
  }

  v42 = v40 > 0.0;
  result = 0.0;
  if (v42)
  {
    return v41;
  }

  return result;
}

- (float)junkScoreForTimerange:(id *)timerange lengthScale:(BOOL)scale
{
  scaleCopy = scale;
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = self->_junkResults;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v7)
  {

LABEL_14:
    v20 = 1.0;
    goto LABEL_17;
  }

  v8 = *v29;
  v9 = 0.0;
  v10 = 0.0;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v28 + 1) + 8 * i);
      memset(&v27, 0, sizeof(v27));
      CMTimeRangeMakeFromDictionary(&v27, v12);
      range = v27;
      memset(&v26, 0, sizeof(v26));
      v13 = *&timerange->var0.var3;
      *&v24.start.value = *&timerange->var0.var0;
      *&v24.start.epoch = v13;
      *&v24.duration.timescale = *&timerange->var1.var1;
      CMTimeRangeGetIntersection(&v26, &range, &v24);
      range.start = v26.duration;
      Seconds = CMTimeGetSeconds(&range.start);
      v15 = [(__CFDictionary *)v12 objectForKey:@"quality"];
      [v15 floatValue];
      v17 = v16;

      v18 = Seconds;
      v10 = v10 + (v17 * v18);
      v9 = v9 + v18;
    }

    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v7);

  if (v9 == 0.0)
  {
    goto LABEL_14;
  }

  v19 = v10 / v9;
  if (scaleCopy)
  {
    v20 = (v19 * (erff((v9 * 3.0) + -2.0) + 1.0)) * 0.5;
    if (v20 >= *&[VCPMovieHighlightAnalyzer junkScoreForTimerange:lengthScale:]::kThreshold[4 * (v9 > 2.0)])
    {
      v20 = 1.0;
    }
  }

  else
  {
    v20 = 1.0;
    if (v19 < 0.5)
    {
      v20 = v10 / v9;
    }
  }

LABEL_17:
  v21 = 1.0;
  if (v20 < 1.0)
  {
    v21 = v20;
  }

  v22 = v20 > 0.0;
  result = 0.0;
  if (v22)
  {
    return v21;
  }

  return result;
}

@end