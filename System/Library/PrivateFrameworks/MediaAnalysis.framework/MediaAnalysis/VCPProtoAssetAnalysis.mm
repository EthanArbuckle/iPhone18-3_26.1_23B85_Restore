@interface VCPProtoAssetAnalysis
+ (id)faceResultKeys;
+ (id)filesystemMovieAnalysisFromLegacyDictionary:(id)dictionary;
+ (id)imageAnalysisComputeSyncPayloadFromLegacyDictionary:(id)dictionary;
+ (id)imageAnalysisFromLegacyDictionary:(id)dictionary assetCloudIdentifier:(id)identifier;
+ (id)movieAnalysisComputeSyncPayloadFromLegacyDictionary:(id)dictionary;
+ (id)movieAnalysisFromLegacyDictionary:(id)dictionary assetCloudIdentifier:(id)identifier;
- (BOOL)exportResultsWithPropertyKey:(id)key toLegacyDictionary:(id)dictionary withKey:(id)withKey;
- (BOOL)isEqual:(id)equal;
- (BOOL)setAttributesFromLegacyDictionary:(id)dictionary;
- (BOOL)setImageAnalysisFromLegacyDictionary:(id)dictionary;
- (BOOL)setMovieAnalysisFromLegacyDictionary:(id)dictionary;
- (BOOL)setResults:(id)results withClass:(Class)class forPropertyKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportFilesystemAnalysisToLegacyDictionary;
- (id)exportToLegacyDictionary;
- (id)imageEmbeddingVSKAssetWithLocalIdentifier:(id)identifier;
- (id)videoEmbeddingVSKAssetWithLocalIdentifier:(id)identifier mediaAnalysisResults:(id)results;
- (unint64_t)hash;
- (void)addAnimatedStickerResults:(id)results;
- (void)addAudioFusedVideoEmbeddingResults:(id)results;
- (void)addFilesystemMovieApplauseResults:(id)results;
- (void)addFilesystemMovieBabbleResults:(id)results;
- (void)addFilesystemMovieCheeringResults:(id)results;
- (void)addFilesystemMovieClassificationResults:(id)results;
- (void)addFilesystemMovieHumanActionClassificationResults:(id)results;
- (void)addFilesystemMovieLaughterResults:(id)results;
- (void)addFilesystemMovieMusicResults:(id)results;
- (void)addFilesystemMovieVoiceResults:(id)results;
- (void)addImageBlurResults:(id)results;
- (void)addImageCaptionResults:(id)results;
- (void)addImageCompositionResults:(id)results;
- (void)addImageEmbeddingResults:(id)results;
- (void)addImageExposureResults:(id)results;
- (void)addImageFaceResults:(id)results;
- (void)addImageFeatureResults:(id)results;
- (void)addImageHumanPoseResults:(id)results;
- (void)addImageJunkResults:(id)results;
- (void)addImagePetsFaceResults:(id)results;
- (void)addImagePetsResults:(id)results;
- (void)addImageSaliencyResults:(id)results;
- (void)addImageSceneprintResults:(id)results;
- (void)addImageShotTypeResults:(id)results;
- (void)addLivePhotoEffectsResults:(id)results;
- (void)addLivePhotoHumanActionClassificationResults:(id)results;
- (void)addLivePhotoKeyFrameResults:(id)results;
- (void)addLivePhotoKeyFrameStillResults:(id)results;
- (void)addLivePhotoRecommendationResults:(id)results;
- (void)addLivePhotoSettlingEffectGatingResults:(id)results;
- (void)addLivePhotoSharpnessResults:(id)results;
- (void)addMovieActivityLevelResults:(id)results;
- (void)addMovieAnimalResults:(id)results;
- (void)addMovieAnimalprintResults:(id)results;
- (void)addMovieApplauseResults:(id)results;
- (void)addMovieAudioQualityResults:(id)results;
- (void)addMovieBabbleResults:(id)results;
- (void)addMovieCameraMotionResults:(id)results;
- (void)addMovieCheeringResults:(id)results;
- (void)addMovieClassificationResults:(id)results;
- (void)addMovieFaceResults:(id)results;
- (void)addMovieFaceprintResults:(id)results;
- (void)addMovieFeatureResults:(id)results;
- (void)addMovieFineSubjectMotionResults:(id)results;
- (void)addMovieHighlightResults:(id)results;
- (void)addMovieHighlightScoreResults:(id)results;
- (void)addMovieHumanActionClassificationResults:(id)results;
- (void)addMovieHumanActionResults:(id)results;
- (void)addMovieHumanPoseResults:(id)results;
- (void)addMovieInterestingnessResults:(id)results;
- (void)addMovieLaughterResults:(id)results;
- (void)addMovieLoudnessResults:(id)results;
- (void)addMovieMovingObjectResults:(id)results;
- (void)addMovieMusicResults:(id)results;
- (void)addMovieObstructionResults:(id)results;
- (void)addMovieOrientationResults:(id)results;
- (void)addMoviePetsFaceResults:(id)results;
- (void)addMoviePetsResults:(id)results;
- (void)addMoviePreEncodeResults:(id)results;
- (void)addMovieQualityResults:(id)results;
- (void)addMovieSafetyResults:(id)results;
- (void)addMovieSaliencyResults:(id)results;
- (void)addMovieSceneResults:(id)results;
- (void)addMovieSceneprintResults:(id)results;
- (void)addMovieStabilizationResults:(id)results;
- (void)addMovieSubjectMotionResults:(id)results;
- (void)addMovieSubtleMotionResults:(id)results;
- (void)addMovieSummaryResults:(id)results;
- (void)addMovieTorsoResults:(id)results;
- (void)addMovieUtteranceResults:(id)results;
- (void)addMovieVoiceResults:(id)results;
- (void)addSummarizedEmbeddingResults:(id)results;
- (void)addVideoCaptionPreferenceResults:(id)results;
- (void)addVideoCaptionResults:(id)results;
- (void)addVideoEmbeddingResults:(id)results;
- (void)addVideoSceneThumbnailResults:(id)results;
- (void)addVideoSegmentCaptionResults:(id)results;
- (void)addVideoThumbnailResults:(id)results;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)persistToPhotosAsset:(id)asset;
- (void)setHasImageEmbeddingVersion:(BOOL)version;
- (void)setHasStatsFlags:(BOOL)flags;
- (void)setHasTypesWide:(BOOL)wide;
- (void)setHasVideoEmbeddingVersion:(BOOL)version;
- (void)setImageEmbeddingResultsFromVSKAsset:(id)asset imageEmbeddingVersion:(signed __int16)version;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoAssetAnalysis

- (void)setHasStatsFlags:(BOOL)flags
{
  if (flags)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTypesWide:(BOOL)wide
{
  if (wide)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addImageBlurResults:(id)results
{
  resultsCopy = results;
  imageBlurResults = self->_imageBlurResults;
  v8 = resultsCopy;
  if (!imageBlurResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_imageBlurResults;
    self->_imageBlurResults = v6;

    resultsCopy = v8;
    imageBlurResults = self->_imageBlurResults;
  }

  [(NSMutableArray *)imageBlurResults addObject:resultsCopy];
}

- (void)addImageCompositionResults:(id)results
{
  resultsCopy = results;
  imageCompositionResults = self->_imageCompositionResults;
  v8 = resultsCopy;
  if (!imageCompositionResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_imageCompositionResults;
    self->_imageCompositionResults = v6;

    resultsCopy = v8;
    imageCompositionResults = self->_imageCompositionResults;
  }

  [(NSMutableArray *)imageCompositionResults addObject:resultsCopy];
}

- (void)addImageFaceResults:(id)results
{
  resultsCopy = results;
  imageFaceResults = self->_imageFaceResults;
  v8 = resultsCopy;
  if (!imageFaceResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_imageFaceResults;
    self->_imageFaceResults = v6;

    resultsCopy = v8;
    imageFaceResults = self->_imageFaceResults;
  }

  [(NSMutableArray *)imageFaceResults addObject:resultsCopy];
}

- (void)addImageFeatureResults:(id)results
{
  resultsCopy = results;
  imageFeatureResults = self->_imageFeatureResults;
  v8 = resultsCopy;
  if (!imageFeatureResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_imageFeatureResults;
    self->_imageFeatureResults = v6;

    resultsCopy = v8;
    imageFeatureResults = self->_imageFeatureResults;
  }

  [(NSMutableArray *)imageFeatureResults addObject:resultsCopy];
}

- (void)addImageJunkResults:(id)results
{
  resultsCopy = results;
  imageJunkResults = self->_imageJunkResults;
  v8 = resultsCopy;
  if (!imageJunkResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_imageJunkResults;
    self->_imageJunkResults = v6;

    resultsCopy = v8;
    imageJunkResults = self->_imageJunkResults;
  }

  [(NSMutableArray *)imageJunkResults addObject:resultsCopy];
}

- (void)addImageSaliencyResults:(id)results
{
  resultsCopy = results;
  imageSaliencyResults = self->_imageSaliencyResults;
  v8 = resultsCopy;
  if (!imageSaliencyResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_imageSaliencyResults;
    self->_imageSaliencyResults = v6;

    resultsCopy = v8;
    imageSaliencyResults = self->_imageSaliencyResults;
  }

  [(NSMutableArray *)imageSaliencyResults addObject:resultsCopy];
}

- (void)addImageShotTypeResults:(id)results
{
  resultsCopy = results;
  imageShotTypeResults = self->_imageShotTypeResults;
  v8 = resultsCopy;
  if (!imageShotTypeResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_imageShotTypeResults;
    self->_imageShotTypeResults = v6;

    resultsCopy = v8;
    imageShotTypeResults = self->_imageShotTypeResults;
  }

  [(NSMutableArray *)imageShotTypeResults addObject:resultsCopy];
}

- (void)addImagePetsResults:(id)results
{
  resultsCopy = results;
  imagePetsResults = self->_imagePetsResults;
  v8 = resultsCopy;
  if (!imagePetsResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_imagePetsResults;
    self->_imagePetsResults = v6;

    resultsCopy = v8;
    imagePetsResults = self->_imagePetsResults;
  }

  [(NSMutableArray *)imagePetsResults addObject:resultsCopy];
}

- (void)addImagePetsFaceResults:(id)results
{
  resultsCopy = results;
  imagePetsFaceResults = self->_imagePetsFaceResults;
  v8 = resultsCopy;
  if (!imagePetsFaceResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_imagePetsFaceResults;
    self->_imagePetsFaceResults = v6;

    resultsCopy = v8;
    imagePetsFaceResults = self->_imagePetsFaceResults;
  }

  [(NSMutableArray *)imagePetsFaceResults addObject:resultsCopy];
}

- (void)addImageSceneprintResults:(id)results
{
  resultsCopy = results;
  imageSceneprintResults = self->_imageSceneprintResults;
  v8 = resultsCopy;
  if (!imageSceneprintResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_imageSceneprintResults;
    self->_imageSceneprintResults = v6;

    resultsCopy = v8;
    imageSceneprintResults = self->_imageSceneprintResults;
  }

  [(NSMutableArray *)imageSceneprintResults addObject:resultsCopy];
}

- (void)addLivePhotoEffectsResults:(id)results
{
  resultsCopy = results;
  livePhotoEffectsResults = self->_livePhotoEffectsResults;
  v8 = resultsCopy;
  if (!livePhotoEffectsResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_livePhotoEffectsResults;
    self->_livePhotoEffectsResults = v6;

    resultsCopy = v8;
    livePhotoEffectsResults = self->_livePhotoEffectsResults;
  }

  [(NSMutableArray *)livePhotoEffectsResults addObject:resultsCopy];
}

- (void)addLivePhotoRecommendationResults:(id)results
{
  resultsCopy = results;
  livePhotoRecommendationResults = self->_livePhotoRecommendationResults;
  v8 = resultsCopy;
  if (!livePhotoRecommendationResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_livePhotoRecommendationResults;
    self->_livePhotoRecommendationResults = v6;

    resultsCopy = v8;
    livePhotoRecommendationResults = self->_livePhotoRecommendationResults;
  }

  [(NSMutableArray *)livePhotoRecommendationResults addObject:resultsCopy];
}

- (void)addLivePhotoSharpnessResults:(id)results
{
  resultsCopy = results;
  livePhotoSharpnessResults = self->_livePhotoSharpnessResults;
  v8 = resultsCopy;
  if (!livePhotoSharpnessResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_livePhotoSharpnessResults;
    self->_livePhotoSharpnessResults = v6;

    resultsCopy = v8;
    livePhotoSharpnessResults = self->_livePhotoSharpnessResults;
  }

  [(NSMutableArray *)livePhotoSharpnessResults addObject:resultsCopy];
}

- (void)addLivePhotoKeyFrameResults:(id)results
{
  resultsCopy = results;
  livePhotoKeyFrameResults = self->_livePhotoKeyFrameResults;
  v8 = resultsCopy;
  if (!livePhotoKeyFrameResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_livePhotoKeyFrameResults;
    self->_livePhotoKeyFrameResults = v6;

    resultsCopy = v8;
    livePhotoKeyFrameResults = self->_livePhotoKeyFrameResults;
  }

  [(NSMutableArray *)livePhotoKeyFrameResults addObject:resultsCopy];
}

- (void)addLivePhotoKeyFrameStillResults:(id)results
{
  resultsCopy = results;
  livePhotoKeyFrameStillResults = self->_livePhotoKeyFrameStillResults;
  v8 = resultsCopy;
  if (!livePhotoKeyFrameStillResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_livePhotoKeyFrameStillResults;
    self->_livePhotoKeyFrameStillResults = v6;

    resultsCopy = v8;
    livePhotoKeyFrameStillResults = self->_livePhotoKeyFrameStillResults;
  }

  [(NSMutableArray *)livePhotoKeyFrameStillResults addObject:resultsCopy];
}

- (void)addLivePhotoSettlingEffectGatingResults:(id)results
{
  resultsCopy = results;
  livePhotoSettlingEffectGatingResults = self->_livePhotoSettlingEffectGatingResults;
  v8 = resultsCopy;
  if (!livePhotoSettlingEffectGatingResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_livePhotoSettlingEffectGatingResults;
    self->_livePhotoSettlingEffectGatingResults = v6;

    resultsCopy = v8;
    livePhotoSettlingEffectGatingResults = self->_livePhotoSettlingEffectGatingResults;
  }

  [(NSMutableArray *)livePhotoSettlingEffectGatingResults addObject:resultsCopy];
}

- (void)addMovieActivityLevelResults:(id)results
{
  resultsCopy = results;
  movieActivityLevelResults = self->_movieActivityLevelResults;
  v8 = resultsCopy;
  if (!movieActivityLevelResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieActivityLevelResults;
    self->_movieActivityLevelResults = v6;

    resultsCopy = v8;
    movieActivityLevelResults = self->_movieActivityLevelResults;
  }

  [(NSMutableArray *)movieActivityLevelResults addObject:resultsCopy];
}

- (void)addMovieCameraMotionResults:(id)results
{
  resultsCopy = results;
  movieCameraMotionResults = self->_movieCameraMotionResults;
  v8 = resultsCopy;
  if (!movieCameraMotionResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieCameraMotionResults;
    self->_movieCameraMotionResults = v6;

    resultsCopy = v8;
    movieCameraMotionResults = self->_movieCameraMotionResults;
  }

  [(NSMutableArray *)movieCameraMotionResults addObject:resultsCopy];
}

- (void)addMovieClassificationResults:(id)results
{
  resultsCopy = results;
  movieClassificationResults = self->_movieClassificationResults;
  v8 = resultsCopy;
  if (!movieClassificationResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieClassificationResults;
    self->_movieClassificationResults = v6;

    resultsCopy = v8;
    movieClassificationResults = self->_movieClassificationResults;
  }

  [(NSMutableArray *)movieClassificationResults addObject:resultsCopy];
}

- (void)addMovieFaceResults:(id)results
{
  resultsCopy = results;
  movieFaceResults = self->_movieFaceResults;
  v8 = resultsCopy;
  if (!movieFaceResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieFaceResults;
    self->_movieFaceResults = v6;

    resultsCopy = v8;
    movieFaceResults = self->_movieFaceResults;
  }

  [(NSMutableArray *)movieFaceResults addObject:resultsCopy];
}

- (void)addMovieFaceprintResults:(id)results
{
  resultsCopy = results;
  movieFaceprintResults = self->_movieFaceprintResults;
  v8 = resultsCopy;
  if (!movieFaceprintResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieFaceprintResults;
    self->_movieFaceprintResults = v6;

    resultsCopy = v8;
    movieFaceprintResults = self->_movieFaceprintResults;
  }

  [(NSMutableArray *)movieFaceprintResults addObject:resultsCopy];
}

- (void)addMovieFeatureResults:(id)results
{
  resultsCopy = results;
  movieFeatureResults = self->_movieFeatureResults;
  v8 = resultsCopy;
  if (!movieFeatureResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieFeatureResults;
    self->_movieFeatureResults = v6;

    resultsCopy = v8;
    movieFeatureResults = self->_movieFeatureResults;
  }

  [(NSMutableArray *)movieFeatureResults addObject:resultsCopy];
}

- (void)addMovieFineSubjectMotionResults:(id)results
{
  resultsCopy = results;
  movieFineSubjectMotionResults = self->_movieFineSubjectMotionResults;
  v8 = resultsCopy;
  if (!movieFineSubjectMotionResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieFineSubjectMotionResults;
    self->_movieFineSubjectMotionResults = v6;

    resultsCopy = v8;
    movieFineSubjectMotionResults = self->_movieFineSubjectMotionResults;
  }

  [(NSMutableArray *)movieFineSubjectMotionResults addObject:resultsCopy];
}

- (void)addMovieInterestingnessResults:(id)results
{
  resultsCopy = results;
  movieInterestingnessResults = self->_movieInterestingnessResults;
  v8 = resultsCopy;
  if (!movieInterestingnessResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieInterestingnessResults;
    self->_movieInterestingnessResults = v6;

    resultsCopy = v8;
    movieInterestingnessResults = self->_movieInterestingnessResults;
  }

  [(NSMutableArray *)movieInterestingnessResults addObject:resultsCopy];
}

- (void)addMovieMovingObjectResults:(id)results
{
  resultsCopy = results;
  movieMovingObjectResults = self->_movieMovingObjectResults;
  v8 = resultsCopy;
  if (!movieMovingObjectResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieMovingObjectResults;
    self->_movieMovingObjectResults = v6;

    resultsCopy = v8;
    movieMovingObjectResults = self->_movieMovingObjectResults;
  }

  [(NSMutableArray *)movieMovingObjectResults addObject:resultsCopy];
}

- (void)addMovieMusicResults:(id)results
{
  resultsCopy = results;
  movieMusicResults = self->_movieMusicResults;
  v8 = resultsCopy;
  if (!movieMusicResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieMusicResults;
    self->_movieMusicResults = v6;

    resultsCopy = v8;
    movieMusicResults = self->_movieMusicResults;
  }

  [(NSMutableArray *)movieMusicResults addObject:resultsCopy];
}

- (void)addMovieObstructionResults:(id)results
{
  resultsCopy = results;
  movieObstructionResults = self->_movieObstructionResults;
  v8 = resultsCopy;
  if (!movieObstructionResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieObstructionResults;
    self->_movieObstructionResults = v6;

    resultsCopy = v8;
    movieObstructionResults = self->_movieObstructionResults;
  }

  [(NSMutableArray *)movieObstructionResults addObject:resultsCopy];
}

- (void)addMovieOrientationResults:(id)results
{
  resultsCopy = results;
  movieOrientationResults = self->_movieOrientationResults;
  v8 = resultsCopy;
  if (!movieOrientationResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieOrientationResults;
    self->_movieOrientationResults = v6;

    resultsCopy = v8;
    movieOrientationResults = self->_movieOrientationResults;
  }

  [(NSMutableArray *)movieOrientationResults addObject:resultsCopy];
}

- (void)addMoviePreEncodeResults:(id)results
{
  resultsCopy = results;
  moviePreEncodeResults = self->_moviePreEncodeResults;
  v8 = resultsCopy;
  if (!moviePreEncodeResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_moviePreEncodeResults;
    self->_moviePreEncodeResults = v6;

    resultsCopy = v8;
    moviePreEncodeResults = self->_moviePreEncodeResults;
  }

  [(NSMutableArray *)moviePreEncodeResults addObject:resultsCopy];
}

- (void)addMovieQualityResults:(id)results
{
  resultsCopy = results;
  movieQualityResults = self->_movieQualityResults;
  v8 = resultsCopy;
  if (!movieQualityResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieQualityResults;
    self->_movieQualityResults = v6;

    resultsCopy = v8;
    movieQualityResults = self->_movieQualityResults;
  }

  [(NSMutableArray *)movieQualityResults addObject:resultsCopy];
}

- (void)addMovieSaliencyResults:(id)results
{
  resultsCopy = results;
  movieSaliencyResults = self->_movieSaliencyResults;
  v8 = resultsCopy;
  if (!movieSaliencyResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieSaliencyResults;
    self->_movieSaliencyResults = v6;

    resultsCopy = v8;
    movieSaliencyResults = self->_movieSaliencyResults;
  }

  [(NSMutableArray *)movieSaliencyResults addObject:resultsCopy];
}

- (void)addMovieSceneResults:(id)results
{
  resultsCopy = results;
  movieSceneResults = self->_movieSceneResults;
  v8 = resultsCopy;
  if (!movieSceneResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieSceneResults;
    self->_movieSceneResults = v6;

    resultsCopy = v8;
    movieSceneResults = self->_movieSceneResults;
  }

  [(NSMutableArray *)movieSceneResults addObject:resultsCopy];
}

- (void)addMovieSceneprintResults:(id)results
{
  resultsCopy = results;
  movieSceneprintResults = self->_movieSceneprintResults;
  v8 = resultsCopy;
  if (!movieSceneprintResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieSceneprintResults;
    self->_movieSceneprintResults = v6;

    resultsCopy = v8;
    movieSceneprintResults = self->_movieSceneprintResults;
  }

  [(NSMutableArray *)movieSceneprintResults addObject:resultsCopy];
}

- (void)addMovieSubjectMotionResults:(id)results
{
  resultsCopy = results;
  movieSubjectMotionResults = self->_movieSubjectMotionResults;
  v8 = resultsCopy;
  if (!movieSubjectMotionResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieSubjectMotionResults;
    self->_movieSubjectMotionResults = v6;

    resultsCopy = v8;
    movieSubjectMotionResults = self->_movieSubjectMotionResults;
  }

  [(NSMutableArray *)movieSubjectMotionResults addObject:resultsCopy];
}

- (void)addMovieSubtleMotionResults:(id)results
{
  resultsCopy = results;
  movieSubtleMotionResults = self->_movieSubtleMotionResults;
  v8 = resultsCopy;
  if (!movieSubtleMotionResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieSubtleMotionResults;
    self->_movieSubtleMotionResults = v6;

    resultsCopy = v8;
    movieSubtleMotionResults = self->_movieSubtleMotionResults;
  }

  [(NSMutableArray *)movieSubtleMotionResults addObject:resultsCopy];
}

- (void)addMovieUtteranceResults:(id)results
{
  resultsCopy = results;
  movieUtteranceResults = self->_movieUtteranceResults;
  v8 = resultsCopy;
  if (!movieUtteranceResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieUtteranceResults;
    self->_movieUtteranceResults = v6;

    resultsCopy = v8;
    movieUtteranceResults = self->_movieUtteranceResults;
  }

  [(NSMutableArray *)movieUtteranceResults addObject:resultsCopy];
}

- (void)addMovieVoiceResults:(id)results
{
  resultsCopy = results;
  movieVoiceResults = self->_movieVoiceResults;
  v8 = resultsCopy;
  if (!movieVoiceResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieVoiceResults;
    self->_movieVoiceResults = v6;

    resultsCopy = v8;
    movieVoiceResults = self->_movieVoiceResults;
  }

  [(NSMutableArray *)movieVoiceResults addObject:resultsCopy];
}

- (void)addMovieSummaryResults:(id)results
{
  resultsCopy = results;
  movieSummaryResults = self->_movieSummaryResults;
  v8 = resultsCopy;
  if (!movieSummaryResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieSummaryResults;
    self->_movieSummaryResults = v6;

    resultsCopy = v8;
    movieSummaryResults = self->_movieSummaryResults;
  }

  [(NSMutableArray *)movieSummaryResults addObject:resultsCopy];
}

- (void)addMovieHighlightResults:(id)results
{
  resultsCopy = results;
  movieHighlightResults = self->_movieHighlightResults;
  v8 = resultsCopy;
  if (!movieHighlightResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieHighlightResults;
    self->_movieHighlightResults = v6;

    resultsCopy = v8;
    movieHighlightResults = self->_movieHighlightResults;
  }

  [(NSMutableArray *)movieHighlightResults addObject:resultsCopy];
}

- (void)addImageExposureResults:(id)results
{
  resultsCopy = results;
  imageExposureResults = self->_imageExposureResults;
  v8 = resultsCopy;
  if (!imageExposureResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_imageExposureResults;
    self->_imageExposureResults = v6;

    resultsCopy = v8;
    imageExposureResults = self->_imageExposureResults;
  }

  [(NSMutableArray *)imageExposureResults addObject:resultsCopy];
}

- (void)addImageHumanPoseResults:(id)results
{
  resultsCopy = results;
  imageHumanPoseResults = self->_imageHumanPoseResults;
  v8 = resultsCopy;
  if (!imageHumanPoseResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_imageHumanPoseResults;
    self->_imageHumanPoseResults = v6;

    resultsCopy = v8;
    imageHumanPoseResults = self->_imageHumanPoseResults;
  }

  [(NSMutableArray *)imageHumanPoseResults addObject:resultsCopy];
}

- (void)addMovieHumanPoseResults:(id)results
{
  resultsCopy = results;
  movieHumanPoseResults = self->_movieHumanPoseResults;
  v8 = resultsCopy;
  if (!movieHumanPoseResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieHumanPoseResults;
    self->_movieHumanPoseResults = v6;

    resultsCopy = v8;
    movieHumanPoseResults = self->_movieHumanPoseResults;
  }

  [(NSMutableArray *)movieHumanPoseResults addObject:resultsCopy];
}

- (void)addMovieApplauseResults:(id)results
{
  resultsCopy = results;
  movieApplauseResults = self->_movieApplauseResults;
  v8 = resultsCopy;
  if (!movieApplauseResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieApplauseResults;
    self->_movieApplauseResults = v6;

    resultsCopy = v8;
    movieApplauseResults = self->_movieApplauseResults;
  }

  [(NSMutableArray *)movieApplauseResults addObject:resultsCopy];
}

- (void)addMovieBabbleResults:(id)results
{
  resultsCopy = results;
  movieBabbleResults = self->_movieBabbleResults;
  v8 = resultsCopy;
  if (!movieBabbleResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieBabbleResults;
    self->_movieBabbleResults = v6;

    resultsCopy = v8;
    movieBabbleResults = self->_movieBabbleResults;
  }

  [(NSMutableArray *)movieBabbleResults addObject:resultsCopy];
}

- (void)addMovieCheeringResults:(id)results
{
  resultsCopy = results;
  movieCheeringResults = self->_movieCheeringResults;
  v8 = resultsCopy;
  if (!movieCheeringResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieCheeringResults;
    self->_movieCheeringResults = v6;

    resultsCopy = v8;
    movieCheeringResults = self->_movieCheeringResults;
  }

  [(NSMutableArray *)movieCheeringResults addObject:resultsCopy];
}

- (void)addMovieLaughterResults:(id)results
{
  resultsCopy = results;
  movieLaughterResults = self->_movieLaughterResults;
  v8 = resultsCopy;
  if (!movieLaughterResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieLaughterResults;
    self->_movieLaughterResults = v6;

    resultsCopy = v8;
    movieLaughterResults = self->_movieLaughterResults;
  }

  [(NSMutableArray *)movieLaughterResults addObject:resultsCopy];
}

- (void)addMovieHumanActionResults:(id)results
{
  resultsCopy = results;
  movieHumanActionResults = self->_movieHumanActionResults;
  v8 = resultsCopy;
  if (!movieHumanActionResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieHumanActionResults;
    self->_movieHumanActionResults = v6;

    resultsCopy = v8;
    movieHumanActionResults = self->_movieHumanActionResults;
  }

  [(NSMutableArray *)movieHumanActionResults addObject:resultsCopy];
}

- (void)addMovieLoudnessResults:(id)results
{
  resultsCopy = results;
  movieLoudnessResults = self->_movieLoudnessResults;
  v8 = resultsCopy;
  if (!movieLoudnessResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieLoudnessResults;
    self->_movieLoudnessResults = v6;

    resultsCopy = v8;
    movieLoudnessResults = self->_movieLoudnessResults;
  }

  [(NSMutableArray *)movieLoudnessResults addObject:resultsCopy];
}

- (void)addMoviePetsResults:(id)results
{
  resultsCopy = results;
  moviePetsResults = self->_moviePetsResults;
  v8 = resultsCopy;
  if (!moviePetsResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_moviePetsResults;
    self->_moviePetsResults = v6;

    resultsCopy = v8;
    moviePetsResults = self->_moviePetsResults;
  }

  [(NSMutableArray *)moviePetsResults addObject:resultsCopy];
}

- (void)addMoviePetsFaceResults:(id)results
{
  resultsCopy = results;
  moviePetsFaceResults = self->_moviePetsFaceResults;
  v8 = resultsCopy;
  if (!moviePetsFaceResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_moviePetsFaceResults;
    self->_moviePetsFaceResults = v6;

    resultsCopy = v8;
    moviePetsFaceResults = self->_moviePetsFaceResults;
  }

  [(NSMutableArray *)moviePetsFaceResults addObject:resultsCopy];
}

- (void)addMovieStabilizationResults:(id)results
{
  resultsCopy = results;
  movieStabilizationResults = self->_movieStabilizationResults;
  v8 = resultsCopy;
  if (!movieStabilizationResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieStabilizationResults;
    self->_movieStabilizationResults = v6;

    resultsCopy = v8;
    movieStabilizationResults = self->_movieStabilizationResults;
  }

  [(NSMutableArray *)movieStabilizationResults addObject:resultsCopy];
}

- (void)addMovieHighlightScoreResults:(id)results
{
  resultsCopy = results;
  movieHighlightScoreResults = self->_movieHighlightScoreResults;
  v8 = resultsCopy;
  if (!movieHighlightScoreResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieHighlightScoreResults;
    self->_movieHighlightScoreResults = v6;

    resultsCopy = v8;
    movieHighlightScoreResults = self->_movieHighlightScoreResults;
  }

  [(NSMutableArray *)movieHighlightScoreResults addObject:resultsCopy];
}

- (void)addLivePhotoHumanActionClassificationResults:(id)results
{
  resultsCopy = results;
  livePhotoHumanActionClassificationResults = self->_livePhotoHumanActionClassificationResults;
  v8 = resultsCopy;
  if (!livePhotoHumanActionClassificationResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_livePhotoHumanActionClassificationResults;
    self->_livePhotoHumanActionClassificationResults = v6;

    resultsCopy = v8;
    livePhotoHumanActionClassificationResults = self->_livePhotoHumanActionClassificationResults;
  }

  [(NSMutableArray *)livePhotoHumanActionClassificationResults addObject:resultsCopy];
}

- (void)addMovieAudioQualityResults:(id)results
{
  resultsCopy = results;
  movieAudioQualityResults = self->_movieAudioQualityResults;
  v8 = resultsCopy;
  if (!movieAudioQualityResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieAudioQualityResults;
    self->_movieAudioQualityResults = v6;

    resultsCopy = v8;
    movieAudioQualityResults = self->_movieAudioQualityResults;
  }

  [(NSMutableArray *)movieAudioQualityResults addObject:resultsCopy];
}

- (void)addMovieSafetyResults:(id)results
{
  resultsCopy = results;
  movieSafetyResults = self->_movieSafetyResults;
  v8 = resultsCopy;
  if (!movieSafetyResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieSafetyResults;
    self->_movieSafetyResults = v6;

    resultsCopy = v8;
    movieSafetyResults = self->_movieSafetyResults;
  }

  [(NSMutableArray *)movieSafetyResults addObject:resultsCopy];
}

- (void)addFilesystemMovieClassificationResults:(id)results
{
  resultsCopy = results;
  filesystemMovieClassificationResults = self->_filesystemMovieClassificationResults;
  v8 = resultsCopy;
  if (!filesystemMovieClassificationResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_filesystemMovieClassificationResults;
    self->_filesystemMovieClassificationResults = v6;

    resultsCopy = v8;
    filesystemMovieClassificationResults = self->_filesystemMovieClassificationResults;
  }

  [(NSMutableArray *)filesystemMovieClassificationResults addObject:resultsCopy];
}

- (void)addFilesystemMovieHumanActionClassificationResults:(id)results
{
  resultsCopy = results;
  filesystemMovieHumanActionClassificationResults = self->_filesystemMovieHumanActionClassificationResults;
  v8 = resultsCopy;
  if (!filesystemMovieHumanActionClassificationResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_filesystemMovieHumanActionClassificationResults;
    self->_filesystemMovieHumanActionClassificationResults = v6;

    resultsCopy = v8;
    filesystemMovieHumanActionClassificationResults = self->_filesystemMovieHumanActionClassificationResults;
  }

  [(NSMutableArray *)filesystemMovieHumanActionClassificationResults addObject:resultsCopy];
}

- (void)addFilesystemMovieApplauseResults:(id)results
{
  resultsCopy = results;
  filesystemMovieApplauseResults = self->_filesystemMovieApplauseResults;
  v8 = resultsCopy;
  if (!filesystemMovieApplauseResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_filesystemMovieApplauseResults;
    self->_filesystemMovieApplauseResults = v6;

    resultsCopy = v8;
    filesystemMovieApplauseResults = self->_filesystemMovieApplauseResults;
  }

  [(NSMutableArray *)filesystemMovieApplauseResults addObject:resultsCopy];
}

- (void)addFilesystemMovieBabbleResults:(id)results
{
  resultsCopy = results;
  filesystemMovieBabbleResults = self->_filesystemMovieBabbleResults;
  v8 = resultsCopy;
  if (!filesystemMovieBabbleResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_filesystemMovieBabbleResults;
    self->_filesystemMovieBabbleResults = v6;

    resultsCopy = v8;
    filesystemMovieBabbleResults = self->_filesystemMovieBabbleResults;
  }

  [(NSMutableArray *)filesystemMovieBabbleResults addObject:resultsCopy];
}

- (void)addFilesystemMovieCheeringResults:(id)results
{
  resultsCopy = results;
  filesystemMovieCheeringResults = self->_filesystemMovieCheeringResults;
  v8 = resultsCopy;
  if (!filesystemMovieCheeringResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_filesystemMovieCheeringResults;
    self->_filesystemMovieCheeringResults = v6;

    resultsCopy = v8;
    filesystemMovieCheeringResults = self->_filesystemMovieCheeringResults;
  }

  [(NSMutableArray *)filesystemMovieCheeringResults addObject:resultsCopy];
}

- (void)addFilesystemMovieLaughterResults:(id)results
{
  resultsCopy = results;
  filesystemMovieLaughterResults = self->_filesystemMovieLaughterResults;
  v8 = resultsCopy;
  if (!filesystemMovieLaughterResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_filesystemMovieLaughterResults;
    self->_filesystemMovieLaughterResults = v6;

    resultsCopy = v8;
    filesystemMovieLaughterResults = self->_filesystemMovieLaughterResults;
  }

  [(NSMutableArray *)filesystemMovieLaughterResults addObject:resultsCopy];
}

- (void)addFilesystemMovieMusicResults:(id)results
{
  resultsCopy = results;
  filesystemMovieMusicResults = self->_filesystemMovieMusicResults;
  v8 = resultsCopy;
  if (!filesystemMovieMusicResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_filesystemMovieMusicResults;
    self->_filesystemMovieMusicResults = v6;

    resultsCopy = v8;
    filesystemMovieMusicResults = self->_filesystemMovieMusicResults;
  }

  [(NSMutableArray *)filesystemMovieMusicResults addObject:resultsCopy];
}

- (void)addFilesystemMovieVoiceResults:(id)results
{
  resultsCopy = results;
  filesystemMovieVoiceResults = self->_filesystemMovieVoiceResults;
  v8 = resultsCopy;
  if (!filesystemMovieVoiceResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_filesystemMovieVoiceResults;
    self->_filesystemMovieVoiceResults = v6;

    resultsCopy = v8;
    filesystemMovieVoiceResults = self->_filesystemMovieVoiceResults;
  }

  [(NSMutableArray *)filesystemMovieVoiceResults addObject:resultsCopy];
}

- (void)addAnimatedStickerResults:(id)results
{
  resultsCopy = results;
  animatedStickerResults = self->_animatedStickerResults;
  v8 = resultsCopy;
  if (!animatedStickerResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_animatedStickerResults;
    self->_animatedStickerResults = v6;

    resultsCopy = v8;
    animatedStickerResults = self->_animatedStickerResults;
  }

  [(NSMutableArray *)animatedStickerResults addObject:resultsCopy];
}

- (void)addMovieTorsoResults:(id)results
{
  resultsCopy = results;
  movieTorsoResults = self->_movieTorsoResults;
  v8 = resultsCopy;
  if (!movieTorsoResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieTorsoResults;
    self->_movieTorsoResults = v6;

    resultsCopy = v8;
    movieTorsoResults = self->_movieTorsoResults;
  }

  [(NSMutableArray *)movieTorsoResults addObject:resultsCopy];
}

- (void)addMovieHumanActionClassificationResults:(id)results
{
  resultsCopy = results;
  movieHumanActionClassificationResults = self->_movieHumanActionClassificationResults;
  v8 = resultsCopy;
  if (!movieHumanActionClassificationResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieHumanActionClassificationResults;
    self->_movieHumanActionClassificationResults = v6;

    resultsCopy = v8;
    movieHumanActionClassificationResults = self->_movieHumanActionClassificationResults;
  }

  [(NSMutableArray *)movieHumanActionClassificationResults addObject:resultsCopy];
}

- (void)addVideoEmbeddingResults:(id)results
{
  resultsCopy = results;
  videoEmbeddingResults = self->_videoEmbeddingResults;
  v8 = resultsCopy;
  if (!videoEmbeddingResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_videoEmbeddingResults;
    self->_videoEmbeddingResults = v6;

    resultsCopy = v8;
    videoEmbeddingResults = self->_videoEmbeddingResults;
  }

  [(NSMutableArray *)videoEmbeddingResults addObject:resultsCopy];
}

- (void)addSummarizedEmbeddingResults:(id)results
{
  resultsCopy = results;
  summarizedEmbeddingResults = self->_summarizedEmbeddingResults;
  v8 = resultsCopy;
  if (!summarizedEmbeddingResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_summarizedEmbeddingResults;
    self->_summarizedEmbeddingResults = v6;

    resultsCopy = v8;
    summarizedEmbeddingResults = self->_summarizedEmbeddingResults;
  }

  [(NSMutableArray *)summarizedEmbeddingResults addObject:resultsCopy];
}

- (void)addAudioFusedVideoEmbeddingResults:(id)results
{
  resultsCopy = results;
  audioFusedVideoEmbeddingResults = self->_audioFusedVideoEmbeddingResults;
  v8 = resultsCopy;
  if (!audioFusedVideoEmbeddingResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_audioFusedVideoEmbeddingResults;
    self->_audioFusedVideoEmbeddingResults = v6;

    resultsCopy = v8;
    audioFusedVideoEmbeddingResults = self->_audioFusedVideoEmbeddingResults;
  }

  [(NSMutableArray *)audioFusedVideoEmbeddingResults addObject:resultsCopy];
}

- (void)addImageEmbeddingResults:(id)results
{
  resultsCopy = results;
  imageEmbeddingResults = self->_imageEmbeddingResults;
  v8 = resultsCopy;
  if (!imageEmbeddingResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_imageEmbeddingResults;
    self->_imageEmbeddingResults = v6;

    resultsCopy = v8;
    imageEmbeddingResults = self->_imageEmbeddingResults;
  }

  [(NSMutableArray *)imageEmbeddingResults addObject:resultsCopy];
}

- (void)addImageCaptionResults:(id)results
{
  resultsCopy = results;
  imageCaptionResults = self->_imageCaptionResults;
  v8 = resultsCopy;
  if (!imageCaptionResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_imageCaptionResults;
    self->_imageCaptionResults = v6;

    resultsCopy = v8;
    imageCaptionResults = self->_imageCaptionResults;
  }

  [(NSMutableArray *)imageCaptionResults addObject:resultsCopy];
}

- (void)addVideoCaptionResults:(id)results
{
  resultsCopy = results;
  videoCaptionResults = self->_videoCaptionResults;
  v8 = resultsCopy;
  if (!videoCaptionResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_videoCaptionResults;
    self->_videoCaptionResults = v6;

    resultsCopy = v8;
    videoCaptionResults = self->_videoCaptionResults;
  }

  [(NSMutableArray *)videoCaptionResults addObject:resultsCopy];
}

- (void)addVideoCaptionPreferenceResults:(id)results
{
  resultsCopy = results;
  videoCaptionPreferenceResults = self->_videoCaptionPreferenceResults;
  v8 = resultsCopy;
  if (!videoCaptionPreferenceResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_videoCaptionPreferenceResults;
    self->_videoCaptionPreferenceResults = v6;

    resultsCopy = v8;
    videoCaptionPreferenceResults = self->_videoCaptionPreferenceResults;
  }

  [(NSMutableArray *)videoCaptionPreferenceResults addObject:resultsCopy];
}

- (void)addVideoSegmentCaptionResults:(id)results
{
  resultsCopy = results;
  videoSegmentCaptionResults = self->_videoSegmentCaptionResults;
  v8 = resultsCopy;
  if (!videoSegmentCaptionResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_videoSegmentCaptionResults;
    self->_videoSegmentCaptionResults = v6;

    resultsCopy = v8;
    videoSegmentCaptionResults = self->_videoSegmentCaptionResults;
  }

  [(NSMutableArray *)videoSegmentCaptionResults addObject:resultsCopy];
}

- (void)addMovieAnimalResults:(id)results
{
  resultsCopy = results;
  movieAnimalResults = self->_movieAnimalResults;
  v8 = resultsCopy;
  if (!movieAnimalResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieAnimalResults;
    self->_movieAnimalResults = v6;

    resultsCopy = v8;
    movieAnimalResults = self->_movieAnimalResults;
  }

  [(NSMutableArray *)movieAnimalResults addObject:resultsCopy];
}

- (void)addMovieAnimalprintResults:(id)results
{
  resultsCopy = results;
  movieAnimalprintResults = self->_movieAnimalprintResults;
  v8 = resultsCopy;
  if (!movieAnimalprintResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_movieAnimalprintResults;
    self->_movieAnimalprintResults = v6;

    resultsCopy = v8;
    movieAnimalprintResults = self->_movieAnimalprintResults;
  }

  [(NSMutableArray *)movieAnimalprintResults addObject:resultsCopy];
}

- (void)setHasImageEmbeddingVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasVideoEmbeddingVersion:(BOOL)version
{
  if (version)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addVideoSceneThumbnailResults:(id)results
{
  resultsCopy = results;
  videoSceneThumbnailResults = self->_videoSceneThumbnailResults;
  v8 = resultsCopy;
  if (!videoSceneThumbnailResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_videoSceneThumbnailResults;
    self->_videoSceneThumbnailResults = v6;

    resultsCopy = v8;
    videoSceneThumbnailResults = self->_videoSceneThumbnailResults;
  }

  [(NSMutableArray *)videoSceneThumbnailResults addObject:resultsCopy];
}

- (void)addVideoThumbnailResults:(id)results
{
  resultsCopy = results;
  videoThumbnailResults = self->_videoThumbnailResults;
  v8 = resultsCopy;
  if (!videoThumbnailResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_videoThumbnailResults;
    self->_videoThumbnailResults = v6;

    resultsCopy = v8;
    videoThumbnailResults = self->_videoThumbnailResults;
  }

  [(NSMutableArray *)videoThumbnailResults addObject:resultsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoAssetAnalysis;
  v4 = [(VCPProtoAssetAnalysis *)&v8 description];
  dictionaryRepresentation = [(VCPProtoAssetAnalysis *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v958 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_types];
  [dictionary setObject:v5 forKey:@"types"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_flags];
  [dictionary setObject:v6 forKey:@"flags"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_date];
  [dictionary setObject:v7 forKey:@"date"];

  has = self->_has;
  if (has)
  {
    v566 = [MEMORY[0x1E696AD98] numberWithDouble:self->_quality];
    [dictionary setObject:v566 forKey:@"quality"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v567 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_statsFlags];
  [dictionary setObject:v567 forKey:@"statsFlags"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_typesWide];
    [dictionary setObject:v9 forKey:@"typesWide"];
  }

LABEL_5:
  assetIdentifier = self->_assetIdentifier;
  if (assetIdentifier)
  {
    [dictionary setObject:assetIdentifier forKey:@"assetIdentifier"];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_assetModificationDate];
  [dictionary setObject:v11 forKey:@"assetModificationDate"];

  assetMasterFingerprint = self->_assetMasterFingerprint;
  if (assetMasterFingerprint)
  {
    [dictionary setObject:assetMasterFingerprint forKey:@"assetMasterFingerprint"];
  }

  assetAdjustedFingerprint = self->_assetAdjustedFingerprint;
  if (assetAdjustedFingerprint)
  {
    [dictionary setObject:assetAdjustedFingerprint forKey:@"assetAdjustedFingerprint"];
  }

  assetCloudIdentifier = self->_assetCloudIdentifier;
  if (assetCloudIdentifier)
  {
    [dictionary setObject:assetCloudIdentifier forKey:@"assetCloudIdentifier"];
  }

  if ([(NSMutableArray *)self->_imageBlurResults count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_imageBlurResults, "count")}];
    v876 = 0u;
    v877 = 0u;
    v878 = 0u;
    v879 = 0u;
    v16 = self->_imageBlurResults;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v876 objects:v957 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v877;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v877 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation = [*(*(&v876 + 1) + 8 * i) dictionaryRepresentation];
          [v15 addObject:dictionaryRepresentation];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v876 objects:v957 count:16];
      }

      while (v18);
    }

    [dictionary setObject:v15 forKey:@"imageBlurResults"];
  }

  if ([(NSMutableArray *)self->_imageCompositionResults count])
  {
    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_imageCompositionResults, "count")}];
    v872 = 0u;
    v873 = 0u;
    v874 = 0u;
    v875 = 0u;
    v23 = self->_imageCompositionResults;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v872 objects:v956 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v873;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v873 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation2 = [*(*(&v872 + 1) + 8 * j) dictionaryRepresentation];
          [v22 addObject:dictionaryRepresentation2];
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v872 objects:v956 count:16];
      }

      while (v25);
    }

    [dictionary setObject:v22 forKey:@"imageCompositionResults"];
  }

  if ([(NSMutableArray *)self->_imageFaceResults count])
  {
    v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_imageFaceResults, "count")}];
    v868 = 0u;
    v869 = 0u;
    v870 = 0u;
    v871 = 0u;
    v30 = self->_imageFaceResults;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v868 objects:v955 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v869;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v869 != v33)
          {
            objc_enumerationMutation(v30);
          }

          dictionaryRepresentation3 = [*(*(&v868 + 1) + 8 * k) dictionaryRepresentation];
          [v29 addObject:dictionaryRepresentation3];
        }

        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v868 objects:v955 count:16];
      }

      while (v32);
    }

    [dictionary setObject:v29 forKey:@"imageFaceResults"];
  }

  if ([(NSMutableArray *)self->_imageFeatureResults count])
  {
    v36 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_imageFeatureResults, "count")}];
    v864 = 0u;
    v865 = 0u;
    v866 = 0u;
    v867 = 0u;
    v37 = self->_imageFeatureResults;
    v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v864 objects:v954 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v865;
      do
      {
        for (m = 0; m != v39; ++m)
        {
          if (*v865 != v40)
          {
            objc_enumerationMutation(v37);
          }

          dictionaryRepresentation4 = [*(*(&v864 + 1) + 8 * m) dictionaryRepresentation];
          [v36 addObject:dictionaryRepresentation4];
        }

        v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v864 objects:v954 count:16];
      }

      while (v39);
    }

    [dictionary setObject:v36 forKey:@"imageFeatureResults"];
  }

  if ([(NSMutableArray *)self->_imageJunkResults count])
  {
    v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_imageJunkResults, "count")}];
    v860 = 0u;
    v861 = 0u;
    v862 = 0u;
    v863 = 0u;
    v44 = self->_imageJunkResults;
    v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v860 objects:v953 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v861;
      do
      {
        for (n = 0; n != v46; ++n)
        {
          if (*v861 != v47)
          {
            objc_enumerationMutation(v44);
          }

          dictionaryRepresentation5 = [*(*(&v860 + 1) + 8 * n) dictionaryRepresentation];
          [v43 addObject:dictionaryRepresentation5];
        }

        v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v860 objects:v953 count:16];
      }

      while (v46);
    }

    [dictionary setObject:v43 forKey:@"imageJunkResults"];
  }

  if ([(NSMutableArray *)self->_imageSaliencyResults count])
  {
    v50 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_imageSaliencyResults, "count")}];
    v856 = 0u;
    v857 = 0u;
    v858 = 0u;
    v859 = 0u;
    v51 = self->_imageSaliencyResults;
    v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v856 objects:v952 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v857;
      do
      {
        for (ii = 0; ii != v53; ++ii)
        {
          if (*v857 != v54)
          {
            objc_enumerationMutation(v51);
          }

          dictionaryRepresentation6 = [*(*(&v856 + 1) + 8 * ii) dictionaryRepresentation];
          [v50 addObject:dictionaryRepresentation6];
        }

        v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v856 objects:v952 count:16];
      }

      while (v53);
    }

    [dictionary setObject:v50 forKey:@"imageSaliencyResults"];
  }

  if ([(NSMutableArray *)self->_imageShotTypeResults count])
  {
    v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_imageShotTypeResults, "count")}];
    v852 = 0u;
    v853 = 0u;
    v854 = 0u;
    v855 = 0u;
    v58 = self->_imageShotTypeResults;
    v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v852 objects:v951 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v853;
      do
      {
        for (jj = 0; jj != v60; ++jj)
        {
          if (*v853 != v61)
          {
            objc_enumerationMutation(v58);
          }

          dictionaryRepresentation7 = [*(*(&v852 + 1) + 8 * jj) dictionaryRepresentation];
          [v57 addObject:dictionaryRepresentation7];
        }

        v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v852 objects:v951 count:16];
      }

      while (v60);
    }

    [dictionary setObject:v57 forKey:@"imageShotTypeResults"];
  }

  if ([(NSMutableArray *)self->_imagePetsResults count])
  {
    v64 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_imagePetsResults, "count")}];
    v848 = 0u;
    v849 = 0u;
    v850 = 0u;
    v851 = 0u;
    v65 = self->_imagePetsResults;
    v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v848 objects:v950 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v849;
      do
      {
        for (kk = 0; kk != v67; ++kk)
        {
          if (*v849 != v68)
          {
            objc_enumerationMutation(v65);
          }

          dictionaryRepresentation8 = [*(*(&v848 + 1) + 8 * kk) dictionaryRepresentation];
          [v64 addObject:dictionaryRepresentation8];
        }

        v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v848 objects:v950 count:16];
      }

      while (v67);
    }

    [dictionary setObject:v64 forKey:@"imagePetsResults"];
  }

  if ([(NSMutableArray *)self->_imagePetsFaceResults count])
  {
    v71 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_imagePetsFaceResults, "count")}];
    v844 = 0u;
    v845 = 0u;
    v846 = 0u;
    v847 = 0u;
    v72 = self->_imagePetsFaceResults;
    v73 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v844 objects:v949 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v845;
      do
      {
        for (mm = 0; mm != v74; ++mm)
        {
          if (*v845 != v75)
          {
            objc_enumerationMutation(v72);
          }

          dictionaryRepresentation9 = [*(*(&v844 + 1) + 8 * mm) dictionaryRepresentation];
          [v71 addObject:dictionaryRepresentation9];
        }

        v74 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v844 objects:v949 count:16];
      }

      while (v74);
    }

    [dictionary setObject:v71 forKey:@"imagePetsFaceResults"];
  }

  if ([(NSMutableArray *)self->_imageSceneprintResults count])
  {
    v78 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_imageSceneprintResults, "count")}];
    v840 = 0u;
    v841 = 0u;
    v842 = 0u;
    v843 = 0u;
    v79 = self->_imageSceneprintResults;
    v80 = [(NSMutableArray *)v79 countByEnumeratingWithState:&v840 objects:v948 count:16];
    if (v80)
    {
      v81 = v80;
      v82 = *v841;
      do
      {
        for (nn = 0; nn != v81; ++nn)
        {
          if (*v841 != v82)
          {
            objc_enumerationMutation(v79);
          }

          dictionaryRepresentation10 = [*(*(&v840 + 1) + 8 * nn) dictionaryRepresentation];
          [v78 addObject:dictionaryRepresentation10];
        }

        v81 = [(NSMutableArray *)v79 countByEnumeratingWithState:&v840 objects:v948 count:16];
      }

      while (v81);
    }

    [dictionary setObject:v78 forKey:@"imageSceneprintResults"];
  }

  if ([(NSMutableArray *)self->_livePhotoEffectsResults count])
  {
    v85 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_livePhotoEffectsResults, "count")}];
    v836 = 0u;
    v837 = 0u;
    v838 = 0u;
    v839 = 0u;
    v86 = self->_livePhotoEffectsResults;
    v87 = [(NSMutableArray *)v86 countByEnumeratingWithState:&v836 objects:v947 count:16];
    if (v87)
    {
      v88 = v87;
      v89 = *v837;
      do
      {
        for (i1 = 0; i1 != v88; ++i1)
        {
          if (*v837 != v89)
          {
            objc_enumerationMutation(v86);
          }

          dictionaryRepresentation11 = [*(*(&v836 + 1) + 8 * i1) dictionaryRepresentation];
          [v85 addObject:dictionaryRepresentation11];
        }

        v88 = [(NSMutableArray *)v86 countByEnumeratingWithState:&v836 objects:v947 count:16];
      }

      while (v88);
    }

    [dictionary setObject:v85 forKey:@"livePhotoEffectsResults"];
  }

  if ([(NSMutableArray *)self->_livePhotoRecommendationResults count])
  {
    v92 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_livePhotoRecommendationResults, "count")}];
    v832 = 0u;
    v833 = 0u;
    v834 = 0u;
    v835 = 0u;
    v93 = self->_livePhotoRecommendationResults;
    v94 = [(NSMutableArray *)v93 countByEnumeratingWithState:&v832 objects:v946 count:16];
    if (v94)
    {
      v95 = v94;
      v96 = *v833;
      do
      {
        for (i2 = 0; i2 != v95; ++i2)
        {
          if (*v833 != v96)
          {
            objc_enumerationMutation(v93);
          }

          dictionaryRepresentation12 = [*(*(&v832 + 1) + 8 * i2) dictionaryRepresentation];
          [v92 addObject:dictionaryRepresentation12];
        }

        v95 = [(NSMutableArray *)v93 countByEnumeratingWithState:&v832 objects:v946 count:16];
      }

      while (v95);
    }

    [dictionary setObject:v92 forKey:@"livePhotoRecommendationResults"];
  }

  if ([(NSMutableArray *)self->_livePhotoSharpnessResults count])
  {
    v99 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_livePhotoSharpnessResults, "count")}];
    v828 = 0u;
    v829 = 0u;
    v830 = 0u;
    v831 = 0u;
    v100 = self->_livePhotoSharpnessResults;
    v101 = [(NSMutableArray *)v100 countByEnumeratingWithState:&v828 objects:v945 count:16];
    if (v101)
    {
      v102 = v101;
      v103 = *v829;
      do
      {
        for (i3 = 0; i3 != v102; ++i3)
        {
          if (*v829 != v103)
          {
            objc_enumerationMutation(v100);
          }

          dictionaryRepresentation13 = [*(*(&v828 + 1) + 8 * i3) dictionaryRepresentation];
          [v99 addObject:dictionaryRepresentation13];
        }

        v102 = [(NSMutableArray *)v100 countByEnumeratingWithState:&v828 objects:v945 count:16];
      }

      while (v102);
    }

    [dictionary setObject:v99 forKey:@"livePhotoSharpnessResults"];
  }

  if ([(NSMutableArray *)self->_livePhotoKeyFrameResults count])
  {
    v106 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_livePhotoKeyFrameResults, "count")}];
    v824 = 0u;
    v825 = 0u;
    v826 = 0u;
    v827 = 0u;
    v107 = self->_livePhotoKeyFrameResults;
    v108 = [(NSMutableArray *)v107 countByEnumeratingWithState:&v824 objects:v944 count:16];
    if (v108)
    {
      v109 = v108;
      v110 = *v825;
      do
      {
        for (i4 = 0; i4 != v109; ++i4)
        {
          if (*v825 != v110)
          {
            objc_enumerationMutation(v107);
          }

          dictionaryRepresentation14 = [*(*(&v824 + 1) + 8 * i4) dictionaryRepresentation];
          [v106 addObject:dictionaryRepresentation14];
        }

        v109 = [(NSMutableArray *)v107 countByEnumeratingWithState:&v824 objects:v944 count:16];
      }

      while (v109);
    }

    [dictionary setObject:v106 forKey:@"livePhotoKeyFrameResults"];
  }

  if ([(NSMutableArray *)self->_livePhotoKeyFrameStillResults count])
  {
    v113 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_livePhotoKeyFrameStillResults, "count")}];
    v820 = 0u;
    v821 = 0u;
    v822 = 0u;
    v823 = 0u;
    v114 = self->_livePhotoKeyFrameStillResults;
    v115 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v820 objects:v943 count:16];
    if (v115)
    {
      v116 = v115;
      v117 = *v821;
      do
      {
        for (i5 = 0; i5 != v116; ++i5)
        {
          if (*v821 != v117)
          {
            objc_enumerationMutation(v114);
          }

          dictionaryRepresentation15 = [*(*(&v820 + 1) + 8 * i5) dictionaryRepresentation];
          [v113 addObject:dictionaryRepresentation15];
        }

        v116 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v820 objects:v943 count:16];
      }

      while (v116);
    }

    [dictionary setObject:v113 forKey:@"livePhotoKeyFrameStillResults"];
  }

  if ([(NSMutableArray *)self->_livePhotoSettlingEffectGatingResults count])
  {
    v120 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_livePhotoSettlingEffectGatingResults, "count")}];
    v816 = 0u;
    v817 = 0u;
    v818 = 0u;
    v819 = 0u;
    v121 = self->_livePhotoSettlingEffectGatingResults;
    v122 = [(NSMutableArray *)v121 countByEnumeratingWithState:&v816 objects:v942 count:16];
    if (v122)
    {
      v123 = v122;
      v124 = *v817;
      do
      {
        for (i6 = 0; i6 != v123; ++i6)
        {
          if (*v817 != v124)
          {
            objc_enumerationMutation(v121);
          }

          dictionaryRepresentation16 = [*(*(&v816 + 1) + 8 * i6) dictionaryRepresentation];
          [v120 addObject:dictionaryRepresentation16];
        }

        v123 = [(NSMutableArray *)v121 countByEnumeratingWithState:&v816 objects:v942 count:16];
      }

      while (v123);
    }

    [dictionary setObject:v120 forKey:@"livePhotoSettlingEffectGatingResults"];
  }

  if ([(NSMutableArray *)self->_movieActivityLevelResults count])
  {
    v127 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieActivityLevelResults, "count")}];
    v812 = 0u;
    v813 = 0u;
    v814 = 0u;
    v815 = 0u;
    v128 = self->_movieActivityLevelResults;
    v129 = [(NSMutableArray *)v128 countByEnumeratingWithState:&v812 objects:v941 count:16];
    if (v129)
    {
      v130 = v129;
      v131 = *v813;
      do
      {
        for (i7 = 0; i7 != v130; ++i7)
        {
          if (*v813 != v131)
          {
            objc_enumerationMutation(v128);
          }

          dictionaryRepresentation17 = [*(*(&v812 + 1) + 8 * i7) dictionaryRepresentation];
          [v127 addObject:dictionaryRepresentation17];
        }

        v130 = [(NSMutableArray *)v128 countByEnumeratingWithState:&v812 objects:v941 count:16];
      }

      while (v130);
    }

    [dictionary setObject:v127 forKey:@"movieActivityLevelResults"];
  }

  if ([(NSMutableArray *)self->_movieCameraMotionResults count])
  {
    v134 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieCameraMotionResults, "count")}];
    v808 = 0u;
    v809 = 0u;
    v810 = 0u;
    v811 = 0u;
    v135 = self->_movieCameraMotionResults;
    v136 = [(NSMutableArray *)v135 countByEnumeratingWithState:&v808 objects:v940 count:16];
    if (v136)
    {
      v137 = v136;
      v138 = *v809;
      do
      {
        for (i8 = 0; i8 != v137; ++i8)
        {
          if (*v809 != v138)
          {
            objc_enumerationMutation(v135);
          }

          dictionaryRepresentation18 = [*(*(&v808 + 1) + 8 * i8) dictionaryRepresentation];
          [v134 addObject:dictionaryRepresentation18];
        }

        v137 = [(NSMutableArray *)v135 countByEnumeratingWithState:&v808 objects:v940 count:16];
      }

      while (v137);
    }

    [dictionary setObject:v134 forKey:@"movieCameraMotionResults"];
  }

  if ([(NSMutableArray *)self->_movieClassificationResults count])
  {
    v141 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieClassificationResults, "count")}];
    v804 = 0u;
    v805 = 0u;
    v806 = 0u;
    v807 = 0u;
    v142 = self->_movieClassificationResults;
    v143 = [(NSMutableArray *)v142 countByEnumeratingWithState:&v804 objects:v939 count:16];
    if (v143)
    {
      v144 = v143;
      v145 = *v805;
      do
      {
        for (i9 = 0; i9 != v144; ++i9)
        {
          if (*v805 != v145)
          {
            objc_enumerationMutation(v142);
          }

          dictionaryRepresentation19 = [*(*(&v804 + 1) + 8 * i9) dictionaryRepresentation];
          [v141 addObject:dictionaryRepresentation19];
        }

        v144 = [(NSMutableArray *)v142 countByEnumeratingWithState:&v804 objects:v939 count:16];
      }

      while (v144);
    }

    [dictionary setObject:v141 forKey:@"movieClassificationResults"];
  }

  if ([(NSMutableArray *)self->_movieFaceResults count])
  {
    v148 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieFaceResults, "count")}];
    v800 = 0u;
    v801 = 0u;
    v802 = 0u;
    v803 = 0u;
    v149 = self->_movieFaceResults;
    v150 = [(NSMutableArray *)v149 countByEnumeratingWithState:&v800 objects:v938 count:16];
    if (v150)
    {
      v151 = v150;
      v152 = *v801;
      do
      {
        for (i10 = 0; i10 != v151; ++i10)
        {
          if (*v801 != v152)
          {
            objc_enumerationMutation(v149);
          }

          dictionaryRepresentation20 = [*(*(&v800 + 1) + 8 * i10) dictionaryRepresentation];
          [v148 addObject:dictionaryRepresentation20];
        }

        v151 = [(NSMutableArray *)v149 countByEnumeratingWithState:&v800 objects:v938 count:16];
      }

      while (v151);
    }

    [dictionary setObject:v148 forKey:@"movieFaceResults"];
  }

  if ([(NSMutableArray *)self->_movieFaceprintResults count])
  {
    v155 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieFaceprintResults, "count")}];
    v796 = 0u;
    v797 = 0u;
    v798 = 0u;
    v799 = 0u;
    v156 = self->_movieFaceprintResults;
    v157 = [(NSMutableArray *)v156 countByEnumeratingWithState:&v796 objects:v937 count:16];
    if (v157)
    {
      v158 = v157;
      v159 = *v797;
      do
      {
        for (i11 = 0; i11 != v158; ++i11)
        {
          if (*v797 != v159)
          {
            objc_enumerationMutation(v156);
          }

          dictionaryRepresentation21 = [*(*(&v796 + 1) + 8 * i11) dictionaryRepresentation];
          [v155 addObject:dictionaryRepresentation21];
        }

        v158 = [(NSMutableArray *)v156 countByEnumeratingWithState:&v796 objects:v937 count:16];
      }

      while (v158);
    }

    [dictionary setObject:v155 forKey:@"movieFaceprintResults"];
  }

  if ([(NSMutableArray *)self->_movieFeatureResults count])
  {
    v162 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieFeatureResults, "count")}];
    v792 = 0u;
    v793 = 0u;
    v794 = 0u;
    v795 = 0u;
    v163 = self->_movieFeatureResults;
    v164 = [(NSMutableArray *)v163 countByEnumeratingWithState:&v792 objects:v936 count:16];
    if (v164)
    {
      v165 = v164;
      v166 = *v793;
      do
      {
        for (i12 = 0; i12 != v165; ++i12)
        {
          if (*v793 != v166)
          {
            objc_enumerationMutation(v163);
          }

          dictionaryRepresentation22 = [*(*(&v792 + 1) + 8 * i12) dictionaryRepresentation];
          [v162 addObject:dictionaryRepresentation22];
        }

        v165 = [(NSMutableArray *)v163 countByEnumeratingWithState:&v792 objects:v936 count:16];
      }

      while (v165);
    }

    [dictionary setObject:v162 forKey:@"movieFeatureResults"];
  }

  if ([(NSMutableArray *)self->_movieFineSubjectMotionResults count])
  {
    v169 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieFineSubjectMotionResults, "count")}];
    v788 = 0u;
    v789 = 0u;
    v790 = 0u;
    v791 = 0u;
    v170 = self->_movieFineSubjectMotionResults;
    v171 = [(NSMutableArray *)v170 countByEnumeratingWithState:&v788 objects:v935 count:16];
    if (v171)
    {
      v172 = v171;
      v173 = *v789;
      do
      {
        for (i13 = 0; i13 != v172; ++i13)
        {
          if (*v789 != v173)
          {
            objc_enumerationMutation(v170);
          }

          dictionaryRepresentation23 = [*(*(&v788 + 1) + 8 * i13) dictionaryRepresentation];
          [v169 addObject:dictionaryRepresentation23];
        }

        v172 = [(NSMutableArray *)v170 countByEnumeratingWithState:&v788 objects:v935 count:16];
      }

      while (v172);
    }

    [dictionary setObject:v169 forKey:@"movieFineSubjectMotionResults"];
  }

  if ([(NSMutableArray *)self->_movieInterestingnessResults count])
  {
    v176 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieInterestingnessResults, "count")}];
    v784 = 0u;
    v785 = 0u;
    v786 = 0u;
    v787 = 0u;
    v177 = self->_movieInterestingnessResults;
    v178 = [(NSMutableArray *)v177 countByEnumeratingWithState:&v784 objects:v934 count:16];
    if (v178)
    {
      v179 = v178;
      v180 = *v785;
      do
      {
        for (i14 = 0; i14 != v179; ++i14)
        {
          if (*v785 != v180)
          {
            objc_enumerationMutation(v177);
          }

          dictionaryRepresentation24 = [*(*(&v784 + 1) + 8 * i14) dictionaryRepresentation];
          [v176 addObject:dictionaryRepresentation24];
        }

        v179 = [(NSMutableArray *)v177 countByEnumeratingWithState:&v784 objects:v934 count:16];
      }

      while (v179);
    }

    [dictionary setObject:v176 forKey:@"movieInterestingnessResults"];
  }

  if ([(NSMutableArray *)self->_movieMovingObjectResults count])
  {
    v183 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieMovingObjectResults, "count")}];
    v780 = 0u;
    v781 = 0u;
    v782 = 0u;
    v783 = 0u;
    v184 = self->_movieMovingObjectResults;
    v185 = [(NSMutableArray *)v184 countByEnumeratingWithState:&v780 objects:v933 count:16];
    if (v185)
    {
      v186 = v185;
      v187 = *v781;
      do
      {
        for (i15 = 0; i15 != v186; ++i15)
        {
          if (*v781 != v187)
          {
            objc_enumerationMutation(v184);
          }

          dictionaryRepresentation25 = [*(*(&v780 + 1) + 8 * i15) dictionaryRepresentation];
          [v183 addObject:dictionaryRepresentation25];
        }

        v186 = [(NSMutableArray *)v184 countByEnumeratingWithState:&v780 objects:v933 count:16];
      }

      while (v186);
    }

    [dictionary setObject:v183 forKey:@"movieMovingObjectResults"];
  }

  if ([(NSMutableArray *)self->_movieMusicResults count])
  {
    v190 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieMusicResults, "count")}];
    v776 = 0u;
    v777 = 0u;
    v778 = 0u;
    v779 = 0u;
    v191 = self->_movieMusicResults;
    v192 = [(NSMutableArray *)v191 countByEnumeratingWithState:&v776 objects:v932 count:16];
    if (v192)
    {
      v193 = v192;
      v194 = *v777;
      do
      {
        for (i16 = 0; i16 != v193; ++i16)
        {
          if (*v777 != v194)
          {
            objc_enumerationMutation(v191);
          }

          dictionaryRepresentation26 = [*(*(&v776 + 1) + 8 * i16) dictionaryRepresentation];
          [v190 addObject:dictionaryRepresentation26];
        }

        v193 = [(NSMutableArray *)v191 countByEnumeratingWithState:&v776 objects:v932 count:16];
      }

      while (v193);
    }

    [dictionary setObject:v190 forKey:@"movieMusicResults"];
  }

  if ([(NSMutableArray *)self->_movieObstructionResults count])
  {
    v197 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieObstructionResults, "count")}];
    v772 = 0u;
    v773 = 0u;
    v774 = 0u;
    v775 = 0u;
    v198 = self->_movieObstructionResults;
    v199 = [(NSMutableArray *)v198 countByEnumeratingWithState:&v772 objects:v931 count:16];
    if (v199)
    {
      v200 = v199;
      v201 = *v773;
      do
      {
        for (i17 = 0; i17 != v200; ++i17)
        {
          if (*v773 != v201)
          {
            objc_enumerationMutation(v198);
          }

          dictionaryRepresentation27 = [*(*(&v772 + 1) + 8 * i17) dictionaryRepresentation];
          [v197 addObject:dictionaryRepresentation27];
        }

        v200 = [(NSMutableArray *)v198 countByEnumeratingWithState:&v772 objects:v931 count:16];
      }

      while (v200);
    }

    [dictionary setObject:v197 forKey:@"movieObstructionResults"];
  }

  if ([(NSMutableArray *)self->_movieOrientationResults count])
  {
    v204 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieOrientationResults, "count")}];
    v768 = 0u;
    v769 = 0u;
    v770 = 0u;
    v771 = 0u;
    v205 = self->_movieOrientationResults;
    v206 = [(NSMutableArray *)v205 countByEnumeratingWithState:&v768 objects:v930 count:16];
    if (v206)
    {
      v207 = v206;
      v208 = *v769;
      do
      {
        for (i18 = 0; i18 != v207; ++i18)
        {
          if (*v769 != v208)
          {
            objc_enumerationMutation(v205);
          }

          dictionaryRepresentation28 = [*(*(&v768 + 1) + 8 * i18) dictionaryRepresentation];
          [v204 addObject:dictionaryRepresentation28];
        }

        v207 = [(NSMutableArray *)v205 countByEnumeratingWithState:&v768 objects:v930 count:16];
      }

      while (v207);
    }

    [dictionary setObject:v204 forKey:@"movieOrientationResults"];
  }

  if ([(NSMutableArray *)self->_moviePreEncodeResults count])
  {
    v211 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_moviePreEncodeResults, "count")}];
    v764 = 0u;
    v765 = 0u;
    v766 = 0u;
    v767 = 0u;
    v212 = self->_moviePreEncodeResults;
    v213 = [(NSMutableArray *)v212 countByEnumeratingWithState:&v764 objects:v929 count:16];
    if (v213)
    {
      v214 = v213;
      v215 = *v765;
      do
      {
        for (i19 = 0; i19 != v214; ++i19)
        {
          if (*v765 != v215)
          {
            objc_enumerationMutation(v212);
          }

          dictionaryRepresentation29 = [*(*(&v764 + 1) + 8 * i19) dictionaryRepresentation];
          [v211 addObject:dictionaryRepresentation29];
        }

        v214 = [(NSMutableArray *)v212 countByEnumeratingWithState:&v764 objects:v929 count:16];
      }

      while (v214);
    }

    [dictionary setObject:v211 forKey:@"moviePreEncodeResults"];
  }

  if ([(NSMutableArray *)self->_movieQualityResults count])
  {
    v218 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieQualityResults, "count")}];
    v760 = 0u;
    v761 = 0u;
    v762 = 0u;
    v763 = 0u;
    v219 = self->_movieQualityResults;
    v220 = [(NSMutableArray *)v219 countByEnumeratingWithState:&v760 objects:v928 count:16];
    if (v220)
    {
      v221 = v220;
      v222 = *v761;
      do
      {
        for (i20 = 0; i20 != v221; ++i20)
        {
          if (*v761 != v222)
          {
            objc_enumerationMutation(v219);
          }

          dictionaryRepresentation30 = [*(*(&v760 + 1) + 8 * i20) dictionaryRepresentation];
          [v218 addObject:dictionaryRepresentation30];
        }

        v221 = [(NSMutableArray *)v219 countByEnumeratingWithState:&v760 objects:v928 count:16];
      }

      while (v221);
    }

    [dictionary setObject:v218 forKey:@"movieQualityResults"];
  }

  if ([(NSMutableArray *)self->_movieSaliencyResults count])
  {
    v225 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieSaliencyResults, "count")}];
    v756 = 0u;
    v757 = 0u;
    v758 = 0u;
    v759 = 0u;
    v226 = self->_movieSaliencyResults;
    v227 = [(NSMutableArray *)v226 countByEnumeratingWithState:&v756 objects:v927 count:16];
    if (v227)
    {
      v228 = v227;
      v229 = *v757;
      do
      {
        for (i21 = 0; i21 != v228; ++i21)
        {
          if (*v757 != v229)
          {
            objc_enumerationMutation(v226);
          }

          dictionaryRepresentation31 = [*(*(&v756 + 1) + 8 * i21) dictionaryRepresentation];
          [v225 addObject:dictionaryRepresentation31];
        }

        v228 = [(NSMutableArray *)v226 countByEnumeratingWithState:&v756 objects:v927 count:16];
      }

      while (v228);
    }

    [dictionary setObject:v225 forKey:@"movieSaliencyResults"];
  }

  if ([(NSMutableArray *)self->_movieSceneResults count])
  {
    v232 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieSceneResults, "count")}];
    v752 = 0u;
    v753 = 0u;
    v754 = 0u;
    v755 = 0u;
    v233 = self->_movieSceneResults;
    v234 = [(NSMutableArray *)v233 countByEnumeratingWithState:&v752 objects:v926 count:16];
    if (v234)
    {
      v235 = v234;
      v236 = *v753;
      do
      {
        for (i22 = 0; i22 != v235; ++i22)
        {
          if (*v753 != v236)
          {
            objc_enumerationMutation(v233);
          }

          dictionaryRepresentation32 = [*(*(&v752 + 1) + 8 * i22) dictionaryRepresentation];
          [v232 addObject:dictionaryRepresentation32];
        }

        v235 = [(NSMutableArray *)v233 countByEnumeratingWithState:&v752 objects:v926 count:16];
      }

      while (v235);
    }

    [dictionary setObject:v232 forKey:@"movieSceneResults"];
  }

  if ([(NSMutableArray *)self->_movieSceneprintResults count])
  {
    v239 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieSceneprintResults, "count")}];
    v748 = 0u;
    v749 = 0u;
    v750 = 0u;
    v751 = 0u;
    v240 = self->_movieSceneprintResults;
    v241 = [(NSMutableArray *)v240 countByEnumeratingWithState:&v748 objects:v925 count:16];
    if (v241)
    {
      v242 = v241;
      v243 = *v749;
      do
      {
        for (i23 = 0; i23 != v242; ++i23)
        {
          if (*v749 != v243)
          {
            objc_enumerationMutation(v240);
          }

          dictionaryRepresentation33 = [*(*(&v748 + 1) + 8 * i23) dictionaryRepresentation];
          [v239 addObject:dictionaryRepresentation33];
        }

        v242 = [(NSMutableArray *)v240 countByEnumeratingWithState:&v748 objects:v925 count:16];
      }

      while (v242);
    }

    [dictionary setObject:v239 forKey:@"movieSceneprintResults"];
  }

  if ([(NSMutableArray *)self->_movieSubjectMotionResults count])
  {
    v246 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieSubjectMotionResults, "count")}];
    v744 = 0u;
    v745 = 0u;
    v746 = 0u;
    v747 = 0u;
    v247 = self->_movieSubjectMotionResults;
    v248 = [(NSMutableArray *)v247 countByEnumeratingWithState:&v744 objects:v924 count:16];
    if (v248)
    {
      v249 = v248;
      v250 = *v745;
      do
      {
        for (i24 = 0; i24 != v249; ++i24)
        {
          if (*v745 != v250)
          {
            objc_enumerationMutation(v247);
          }

          dictionaryRepresentation34 = [*(*(&v744 + 1) + 8 * i24) dictionaryRepresentation];
          [v246 addObject:dictionaryRepresentation34];
        }

        v249 = [(NSMutableArray *)v247 countByEnumeratingWithState:&v744 objects:v924 count:16];
      }

      while (v249);
    }

    [dictionary setObject:v246 forKey:@"movieSubjectMotionResults"];
  }

  if ([(NSMutableArray *)self->_movieSubtleMotionResults count])
  {
    v253 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieSubtleMotionResults, "count")}];
    v740 = 0u;
    v741 = 0u;
    v742 = 0u;
    v743 = 0u;
    v254 = self->_movieSubtleMotionResults;
    v255 = [(NSMutableArray *)v254 countByEnumeratingWithState:&v740 objects:v923 count:16];
    if (v255)
    {
      v256 = v255;
      v257 = *v741;
      do
      {
        for (i25 = 0; i25 != v256; ++i25)
        {
          if (*v741 != v257)
          {
            objc_enumerationMutation(v254);
          }

          dictionaryRepresentation35 = [*(*(&v740 + 1) + 8 * i25) dictionaryRepresentation];
          [v253 addObject:dictionaryRepresentation35];
        }

        v256 = [(NSMutableArray *)v254 countByEnumeratingWithState:&v740 objects:v923 count:16];
      }

      while (v256);
    }

    [dictionary setObject:v253 forKey:@"movieSubtleMotionResults"];
  }

  if ([(NSMutableArray *)self->_movieUtteranceResults count])
  {
    v260 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieUtteranceResults, "count")}];
    v736 = 0u;
    v737 = 0u;
    v738 = 0u;
    v739 = 0u;
    v261 = self->_movieUtteranceResults;
    v262 = [(NSMutableArray *)v261 countByEnumeratingWithState:&v736 objects:v922 count:16];
    if (v262)
    {
      v263 = v262;
      v264 = *v737;
      do
      {
        for (i26 = 0; i26 != v263; ++i26)
        {
          if (*v737 != v264)
          {
            objc_enumerationMutation(v261);
          }

          dictionaryRepresentation36 = [*(*(&v736 + 1) + 8 * i26) dictionaryRepresentation];
          [v260 addObject:dictionaryRepresentation36];
        }

        v263 = [(NSMutableArray *)v261 countByEnumeratingWithState:&v736 objects:v922 count:16];
      }

      while (v263);
    }

    [dictionary setObject:v260 forKey:@"movieUtteranceResults"];
  }

  if ([(NSMutableArray *)self->_movieVoiceResults count])
  {
    v267 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieVoiceResults, "count")}];
    v732 = 0u;
    v733 = 0u;
    v734 = 0u;
    v735 = 0u;
    v268 = self->_movieVoiceResults;
    v269 = [(NSMutableArray *)v268 countByEnumeratingWithState:&v732 objects:v921 count:16];
    if (v269)
    {
      v270 = v269;
      v271 = *v733;
      do
      {
        for (i27 = 0; i27 != v270; ++i27)
        {
          if (*v733 != v271)
          {
            objc_enumerationMutation(v268);
          }

          dictionaryRepresentation37 = [*(*(&v732 + 1) + 8 * i27) dictionaryRepresentation];
          [v267 addObject:dictionaryRepresentation37];
        }

        v270 = [(NSMutableArray *)v268 countByEnumeratingWithState:&v732 objects:v921 count:16];
      }

      while (v270);
    }

    [dictionary setObject:v267 forKey:@"movieVoiceResults"];
  }

  if ([(NSMutableArray *)self->_movieSummaryResults count])
  {
    v274 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieSummaryResults, "count")}];
    v728 = 0u;
    v729 = 0u;
    v730 = 0u;
    v731 = 0u;
    v275 = self->_movieSummaryResults;
    v276 = [(NSMutableArray *)v275 countByEnumeratingWithState:&v728 objects:v920 count:16];
    if (v276)
    {
      v277 = v276;
      v278 = *v729;
      do
      {
        for (i28 = 0; i28 != v277; ++i28)
        {
          if (*v729 != v278)
          {
            objc_enumerationMutation(v275);
          }

          dictionaryRepresentation38 = [*(*(&v728 + 1) + 8 * i28) dictionaryRepresentation];
          [v274 addObject:dictionaryRepresentation38];
        }

        v277 = [(NSMutableArray *)v275 countByEnumeratingWithState:&v728 objects:v920 count:16];
      }

      while (v277);
    }

    [dictionary setObject:v274 forKey:@"movieSummaryResults"];
  }

  if ([(NSMutableArray *)self->_movieHighlightResults count])
  {
    v281 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieHighlightResults, "count")}];
    v724 = 0u;
    v725 = 0u;
    v726 = 0u;
    v727 = 0u;
    v282 = self->_movieHighlightResults;
    v283 = [(NSMutableArray *)v282 countByEnumeratingWithState:&v724 objects:v919 count:16];
    if (v283)
    {
      v284 = v283;
      v285 = *v725;
      do
      {
        for (i29 = 0; i29 != v284; ++i29)
        {
          if (*v725 != v285)
          {
            objc_enumerationMutation(v282);
          }

          dictionaryRepresentation39 = [*(*(&v724 + 1) + 8 * i29) dictionaryRepresentation];
          [v281 addObject:dictionaryRepresentation39];
        }

        v284 = [(NSMutableArray *)v282 countByEnumeratingWithState:&v724 objects:v919 count:16];
      }

      while (v284);
    }

    [dictionary setObject:v281 forKey:@"movieHighlightResults"];
  }

  if ([(NSMutableArray *)self->_imageExposureResults count])
  {
    v288 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_imageExposureResults, "count")}];
    v720 = 0u;
    v721 = 0u;
    v722 = 0u;
    v723 = 0u;
    v289 = self->_imageExposureResults;
    v290 = [(NSMutableArray *)v289 countByEnumeratingWithState:&v720 objects:v918 count:16];
    if (v290)
    {
      v291 = v290;
      v292 = *v721;
      do
      {
        for (i30 = 0; i30 != v291; ++i30)
        {
          if (*v721 != v292)
          {
            objc_enumerationMutation(v289);
          }

          dictionaryRepresentation40 = [*(*(&v720 + 1) + 8 * i30) dictionaryRepresentation];
          [v288 addObject:dictionaryRepresentation40];
        }

        v291 = [(NSMutableArray *)v289 countByEnumeratingWithState:&v720 objects:v918 count:16];
      }

      while (v291);
    }

    [dictionary setObject:v288 forKey:@"imageExposureResults"];
  }

  if ([(NSMutableArray *)self->_imageHumanPoseResults count])
  {
    v295 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_imageHumanPoseResults, "count")}];
    v716 = 0u;
    v717 = 0u;
    v718 = 0u;
    v719 = 0u;
    v296 = self->_imageHumanPoseResults;
    v297 = [(NSMutableArray *)v296 countByEnumeratingWithState:&v716 objects:v917 count:16];
    if (v297)
    {
      v298 = v297;
      v299 = *v717;
      do
      {
        for (i31 = 0; i31 != v298; ++i31)
        {
          if (*v717 != v299)
          {
            objc_enumerationMutation(v296);
          }

          dictionaryRepresentation41 = [*(*(&v716 + 1) + 8 * i31) dictionaryRepresentation];
          [v295 addObject:dictionaryRepresentation41];
        }

        v298 = [(NSMutableArray *)v296 countByEnumeratingWithState:&v716 objects:v917 count:16];
      }

      while (v298);
    }

    [dictionary setObject:v295 forKey:@"imageHumanPoseResults"];
  }

  if ([(NSMutableArray *)self->_movieHumanPoseResults count])
  {
    v302 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieHumanPoseResults, "count")}];
    v712 = 0u;
    v713 = 0u;
    v714 = 0u;
    v715 = 0u;
    v303 = self->_movieHumanPoseResults;
    v304 = [(NSMutableArray *)v303 countByEnumeratingWithState:&v712 objects:v916 count:16];
    if (v304)
    {
      v305 = v304;
      v306 = *v713;
      do
      {
        for (i32 = 0; i32 != v305; ++i32)
        {
          if (*v713 != v306)
          {
            objc_enumerationMutation(v303);
          }

          dictionaryRepresentation42 = [*(*(&v712 + 1) + 8 * i32) dictionaryRepresentation];
          [v302 addObject:dictionaryRepresentation42];
        }

        v305 = [(NSMutableArray *)v303 countByEnumeratingWithState:&v712 objects:v916 count:16];
      }

      while (v305);
    }

    [dictionary setObject:v302 forKey:@"movieHumanPoseResults"];
  }

  if ([(NSMutableArray *)self->_movieApplauseResults count])
  {
    v309 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieApplauseResults, "count")}];
    v708 = 0u;
    v709 = 0u;
    v710 = 0u;
    v711 = 0u;
    v310 = self->_movieApplauseResults;
    v311 = [(NSMutableArray *)v310 countByEnumeratingWithState:&v708 objects:v915 count:16];
    if (v311)
    {
      v312 = v311;
      v313 = *v709;
      do
      {
        for (i33 = 0; i33 != v312; ++i33)
        {
          if (*v709 != v313)
          {
            objc_enumerationMutation(v310);
          }

          dictionaryRepresentation43 = [*(*(&v708 + 1) + 8 * i33) dictionaryRepresentation];
          [v309 addObject:dictionaryRepresentation43];
        }

        v312 = [(NSMutableArray *)v310 countByEnumeratingWithState:&v708 objects:v915 count:16];
      }

      while (v312);
    }

    [dictionary setObject:v309 forKey:@"movieApplauseResults"];
  }

  if ([(NSMutableArray *)self->_movieBabbleResults count])
  {
    v316 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieBabbleResults, "count")}];
    v704 = 0u;
    v705 = 0u;
    v706 = 0u;
    v707 = 0u;
    v317 = self->_movieBabbleResults;
    v318 = [(NSMutableArray *)v317 countByEnumeratingWithState:&v704 objects:v914 count:16];
    if (v318)
    {
      v319 = v318;
      v320 = *v705;
      do
      {
        for (i34 = 0; i34 != v319; ++i34)
        {
          if (*v705 != v320)
          {
            objc_enumerationMutation(v317);
          }

          dictionaryRepresentation44 = [*(*(&v704 + 1) + 8 * i34) dictionaryRepresentation];
          [v316 addObject:dictionaryRepresentation44];
        }

        v319 = [(NSMutableArray *)v317 countByEnumeratingWithState:&v704 objects:v914 count:16];
      }

      while (v319);
    }

    [dictionary setObject:v316 forKey:@"movieBabbleResults"];
  }

  if ([(NSMutableArray *)self->_movieCheeringResults count])
  {
    v323 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieCheeringResults, "count")}];
    v700 = 0u;
    v701 = 0u;
    v702 = 0u;
    v703 = 0u;
    v324 = self->_movieCheeringResults;
    v325 = [(NSMutableArray *)v324 countByEnumeratingWithState:&v700 objects:v913 count:16];
    if (v325)
    {
      v326 = v325;
      v327 = *v701;
      do
      {
        for (i35 = 0; i35 != v326; ++i35)
        {
          if (*v701 != v327)
          {
            objc_enumerationMutation(v324);
          }

          dictionaryRepresentation45 = [*(*(&v700 + 1) + 8 * i35) dictionaryRepresentation];
          [v323 addObject:dictionaryRepresentation45];
        }

        v326 = [(NSMutableArray *)v324 countByEnumeratingWithState:&v700 objects:v913 count:16];
      }

      while (v326);
    }

    [dictionary setObject:v323 forKey:@"movieCheeringResults"];
  }

  if ([(NSMutableArray *)self->_movieLaughterResults count])
  {
    v330 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieLaughterResults, "count")}];
    v696 = 0u;
    v697 = 0u;
    v698 = 0u;
    v699 = 0u;
    v331 = self->_movieLaughterResults;
    v332 = [(NSMutableArray *)v331 countByEnumeratingWithState:&v696 objects:v912 count:16];
    if (v332)
    {
      v333 = v332;
      v334 = *v697;
      do
      {
        for (i36 = 0; i36 != v333; ++i36)
        {
          if (*v697 != v334)
          {
            objc_enumerationMutation(v331);
          }

          dictionaryRepresentation46 = [*(*(&v696 + 1) + 8 * i36) dictionaryRepresentation];
          [v330 addObject:dictionaryRepresentation46];
        }

        v333 = [(NSMutableArray *)v331 countByEnumeratingWithState:&v696 objects:v912 count:16];
      }

      while (v333);
    }

    [dictionary setObject:v330 forKey:@"movieLaughterResults"];
  }

  if ([(NSMutableArray *)self->_movieHumanActionResults count])
  {
    v337 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieHumanActionResults, "count")}];
    v692 = 0u;
    v693 = 0u;
    v694 = 0u;
    v695 = 0u;
    v338 = self->_movieHumanActionResults;
    v339 = [(NSMutableArray *)v338 countByEnumeratingWithState:&v692 objects:v911 count:16];
    if (v339)
    {
      v340 = v339;
      v341 = *v693;
      do
      {
        for (i37 = 0; i37 != v340; ++i37)
        {
          if (*v693 != v341)
          {
            objc_enumerationMutation(v338);
          }

          dictionaryRepresentation47 = [*(*(&v692 + 1) + 8 * i37) dictionaryRepresentation];
          [v337 addObject:dictionaryRepresentation47];
        }

        v340 = [(NSMutableArray *)v338 countByEnumeratingWithState:&v692 objects:v911 count:16];
      }

      while (v340);
    }

    [dictionary setObject:v337 forKey:@"movieHumanActionResults"];
  }

  if ([(NSMutableArray *)self->_movieLoudnessResults count])
  {
    v344 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieLoudnessResults, "count")}];
    v688 = 0u;
    v689 = 0u;
    v690 = 0u;
    v691 = 0u;
    v345 = self->_movieLoudnessResults;
    v346 = [(NSMutableArray *)v345 countByEnumeratingWithState:&v688 objects:v910 count:16];
    if (v346)
    {
      v347 = v346;
      v348 = *v689;
      do
      {
        for (i38 = 0; i38 != v347; ++i38)
        {
          if (*v689 != v348)
          {
            objc_enumerationMutation(v345);
          }

          dictionaryRepresentation48 = [*(*(&v688 + 1) + 8 * i38) dictionaryRepresentation];
          [v344 addObject:dictionaryRepresentation48];
        }

        v347 = [(NSMutableArray *)v345 countByEnumeratingWithState:&v688 objects:v910 count:16];
      }

      while (v347);
    }

    [dictionary setObject:v344 forKey:@"movieLoudnessResults"];
  }

  if ([(NSMutableArray *)self->_moviePetsResults count])
  {
    v351 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_moviePetsResults, "count")}];
    v684 = 0u;
    v685 = 0u;
    v686 = 0u;
    v687 = 0u;
    v352 = self->_moviePetsResults;
    v353 = [(NSMutableArray *)v352 countByEnumeratingWithState:&v684 objects:v909 count:16];
    if (v353)
    {
      v354 = v353;
      v355 = *v685;
      do
      {
        for (i39 = 0; i39 != v354; ++i39)
        {
          if (*v685 != v355)
          {
            objc_enumerationMutation(v352);
          }

          dictionaryRepresentation49 = [*(*(&v684 + 1) + 8 * i39) dictionaryRepresentation];
          [v351 addObject:dictionaryRepresentation49];
        }

        v354 = [(NSMutableArray *)v352 countByEnumeratingWithState:&v684 objects:v909 count:16];
      }

      while (v354);
    }

    [dictionary setObject:v351 forKey:@"moviePetsResults"];
  }

  if ([(NSMutableArray *)self->_moviePetsFaceResults count])
  {
    v358 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_moviePetsFaceResults, "count")}];
    v680 = 0u;
    v681 = 0u;
    v682 = 0u;
    v683 = 0u;
    v359 = self->_moviePetsFaceResults;
    v360 = [(NSMutableArray *)v359 countByEnumeratingWithState:&v680 objects:v908 count:16];
    if (v360)
    {
      v361 = v360;
      v362 = *v681;
      do
      {
        for (i40 = 0; i40 != v361; ++i40)
        {
          if (*v681 != v362)
          {
            objc_enumerationMutation(v359);
          }

          dictionaryRepresentation50 = [*(*(&v680 + 1) + 8 * i40) dictionaryRepresentation];
          [v358 addObject:dictionaryRepresentation50];
        }

        v361 = [(NSMutableArray *)v359 countByEnumeratingWithState:&v680 objects:v908 count:16];
      }

      while (v361);
    }

    [dictionary setObject:v358 forKey:@"moviePetsFaceResults"];
  }

  if ([(NSMutableArray *)self->_movieStabilizationResults count])
  {
    v365 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieStabilizationResults, "count")}];
    v676 = 0u;
    v677 = 0u;
    v678 = 0u;
    v679 = 0u;
    v366 = self->_movieStabilizationResults;
    v367 = [(NSMutableArray *)v366 countByEnumeratingWithState:&v676 objects:v907 count:16];
    if (v367)
    {
      v368 = v367;
      v369 = *v677;
      do
      {
        for (i41 = 0; i41 != v368; ++i41)
        {
          if (*v677 != v369)
          {
            objc_enumerationMutation(v366);
          }

          dictionaryRepresentation51 = [*(*(&v676 + 1) + 8 * i41) dictionaryRepresentation];
          [v365 addObject:dictionaryRepresentation51];
        }

        v368 = [(NSMutableArray *)v366 countByEnumeratingWithState:&v676 objects:v907 count:16];
      }

      while (v368);
    }

    [dictionary setObject:v365 forKey:@"movieStabilizationResults"];
  }

  if ([(NSMutableArray *)self->_movieHighlightScoreResults count])
  {
    v372 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieHighlightScoreResults, "count")}];
    v672 = 0u;
    v673 = 0u;
    v674 = 0u;
    v675 = 0u;
    v373 = self->_movieHighlightScoreResults;
    v374 = [(NSMutableArray *)v373 countByEnumeratingWithState:&v672 objects:v906 count:16];
    if (v374)
    {
      v375 = v374;
      v376 = *v673;
      do
      {
        for (i42 = 0; i42 != v375; ++i42)
        {
          if (*v673 != v376)
          {
            objc_enumerationMutation(v373);
          }

          dictionaryRepresentation52 = [*(*(&v672 + 1) + 8 * i42) dictionaryRepresentation];
          [v372 addObject:dictionaryRepresentation52];
        }

        v375 = [(NSMutableArray *)v373 countByEnumeratingWithState:&v672 objects:v906 count:16];
      }

      while (v375);
    }

    [dictionary setObject:v372 forKey:@"movieHighlightScoreResults"];
  }

  if ([(NSMutableArray *)self->_livePhotoHumanActionClassificationResults count])
  {
    v379 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_livePhotoHumanActionClassificationResults, "count")}];
    v668 = 0u;
    v669 = 0u;
    v670 = 0u;
    v671 = 0u;
    v380 = self->_livePhotoHumanActionClassificationResults;
    v381 = [(NSMutableArray *)v380 countByEnumeratingWithState:&v668 objects:v905 count:16];
    if (v381)
    {
      v382 = v381;
      v383 = *v669;
      do
      {
        for (i43 = 0; i43 != v382; ++i43)
        {
          if (*v669 != v383)
          {
            objc_enumerationMutation(v380);
          }

          dictionaryRepresentation53 = [*(*(&v668 + 1) + 8 * i43) dictionaryRepresentation];
          [v379 addObject:dictionaryRepresentation53];
        }

        v382 = [(NSMutableArray *)v380 countByEnumeratingWithState:&v668 objects:v905 count:16];
      }

      while (v382);
    }

    [dictionary setObject:v379 forKey:@"livePhotoHumanActionClassificationResults"];
  }

  if ([(NSMutableArray *)self->_movieAudioQualityResults count])
  {
    v386 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieAudioQualityResults, "count")}];
    v664 = 0u;
    v665 = 0u;
    v666 = 0u;
    v667 = 0u;
    v387 = self->_movieAudioQualityResults;
    v388 = [(NSMutableArray *)v387 countByEnumeratingWithState:&v664 objects:v904 count:16];
    if (v388)
    {
      v389 = v388;
      v390 = *v665;
      do
      {
        for (i44 = 0; i44 != v389; ++i44)
        {
          if (*v665 != v390)
          {
            objc_enumerationMutation(v387);
          }

          dictionaryRepresentation54 = [*(*(&v664 + 1) + 8 * i44) dictionaryRepresentation];
          [v386 addObject:dictionaryRepresentation54];
        }

        v389 = [(NSMutableArray *)v387 countByEnumeratingWithState:&v664 objects:v904 count:16];
      }

      while (v389);
    }

    [dictionary setObject:v386 forKey:@"movieAudioQualityResults"];
  }

  if ([(NSMutableArray *)self->_movieSafetyResults count])
  {
    v393 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieSafetyResults, "count")}];
    v660 = 0u;
    v661 = 0u;
    v662 = 0u;
    v663 = 0u;
    v394 = self->_movieSafetyResults;
    v395 = [(NSMutableArray *)v394 countByEnumeratingWithState:&v660 objects:v903 count:16];
    if (v395)
    {
      v396 = v395;
      v397 = *v661;
      do
      {
        for (i45 = 0; i45 != v396; ++i45)
        {
          if (*v661 != v397)
          {
            objc_enumerationMutation(v394);
          }

          dictionaryRepresentation55 = [*(*(&v660 + 1) + 8 * i45) dictionaryRepresentation];
          [v393 addObject:dictionaryRepresentation55];
        }

        v396 = [(NSMutableArray *)v394 countByEnumeratingWithState:&v660 objects:v903 count:16];
      }

      while (v396);
    }

    [dictionary setObject:v393 forKey:@"movieSafetyResults"];
  }

  if ([(NSMutableArray *)self->_filesystemMovieClassificationResults count])
  {
    v400 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_filesystemMovieClassificationResults, "count")}];
    v656 = 0u;
    v657 = 0u;
    v658 = 0u;
    v659 = 0u;
    v401 = self->_filesystemMovieClassificationResults;
    v402 = [(NSMutableArray *)v401 countByEnumeratingWithState:&v656 objects:v902 count:16];
    if (v402)
    {
      v403 = v402;
      v404 = *v657;
      do
      {
        for (i46 = 0; i46 != v403; ++i46)
        {
          if (*v657 != v404)
          {
            objc_enumerationMutation(v401);
          }

          dictionaryRepresentation56 = [*(*(&v656 + 1) + 8 * i46) dictionaryRepresentation];
          [v400 addObject:dictionaryRepresentation56];
        }

        v403 = [(NSMutableArray *)v401 countByEnumeratingWithState:&v656 objects:v902 count:16];
      }

      while (v403);
    }

    [dictionary setObject:v400 forKey:@"filesystemMovieClassificationResults"];
  }

  if ([(NSMutableArray *)self->_filesystemMovieHumanActionClassificationResults count])
  {
    v407 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_filesystemMovieHumanActionClassificationResults, "count")}];
    v652 = 0u;
    v653 = 0u;
    v654 = 0u;
    v655 = 0u;
    v408 = self->_filesystemMovieHumanActionClassificationResults;
    v409 = [(NSMutableArray *)v408 countByEnumeratingWithState:&v652 objects:v901 count:16];
    if (v409)
    {
      v410 = v409;
      v411 = *v653;
      do
      {
        for (i47 = 0; i47 != v410; ++i47)
        {
          if (*v653 != v411)
          {
            objc_enumerationMutation(v408);
          }

          dictionaryRepresentation57 = [*(*(&v652 + 1) + 8 * i47) dictionaryRepresentation];
          [v407 addObject:dictionaryRepresentation57];
        }

        v410 = [(NSMutableArray *)v408 countByEnumeratingWithState:&v652 objects:v901 count:16];
      }

      while (v410);
    }

    [dictionary setObject:v407 forKey:@"filesystemMovieHumanActionClassificationResults"];
  }

  if ([(NSMutableArray *)self->_filesystemMovieApplauseResults count])
  {
    v414 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_filesystemMovieApplauseResults, "count")}];
    v648 = 0u;
    v649 = 0u;
    v650 = 0u;
    v651 = 0u;
    v415 = self->_filesystemMovieApplauseResults;
    v416 = [(NSMutableArray *)v415 countByEnumeratingWithState:&v648 objects:v900 count:16];
    if (v416)
    {
      v417 = v416;
      v418 = *v649;
      do
      {
        for (i48 = 0; i48 != v417; ++i48)
        {
          if (*v649 != v418)
          {
            objc_enumerationMutation(v415);
          }

          dictionaryRepresentation58 = [*(*(&v648 + 1) + 8 * i48) dictionaryRepresentation];
          [v414 addObject:dictionaryRepresentation58];
        }

        v417 = [(NSMutableArray *)v415 countByEnumeratingWithState:&v648 objects:v900 count:16];
      }

      while (v417);
    }

    [dictionary setObject:v414 forKey:@"filesystemMovieApplauseResults"];
  }

  if ([(NSMutableArray *)self->_filesystemMovieBabbleResults count])
  {
    v421 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_filesystemMovieBabbleResults, "count")}];
    v644 = 0u;
    v645 = 0u;
    v646 = 0u;
    v647 = 0u;
    v422 = self->_filesystemMovieBabbleResults;
    v423 = [(NSMutableArray *)v422 countByEnumeratingWithState:&v644 objects:v899 count:16];
    if (v423)
    {
      v424 = v423;
      v425 = *v645;
      do
      {
        for (i49 = 0; i49 != v424; ++i49)
        {
          if (*v645 != v425)
          {
            objc_enumerationMutation(v422);
          }

          dictionaryRepresentation59 = [*(*(&v644 + 1) + 8 * i49) dictionaryRepresentation];
          [v421 addObject:dictionaryRepresentation59];
        }

        v424 = [(NSMutableArray *)v422 countByEnumeratingWithState:&v644 objects:v899 count:16];
      }

      while (v424);
    }

    [dictionary setObject:v421 forKey:@"filesystemMovieBabbleResults"];
  }

  if ([(NSMutableArray *)self->_filesystemMovieCheeringResults count])
  {
    v428 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_filesystemMovieCheeringResults, "count")}];
    v640 = 0u;
    v641 = 0u;
    v642 = 0u;
    v643 = 0u;
    v429 = self->_filesystemMovieCheeringResults;
    v430 = [(NSMutableArray *)v429 countByEnumeratingWithState:&v640 objects:v898 count:16];
    if (v430)
    {
      v431 = v430;
      v432 = *v641;
      do
      {
        for (i50 = 0; i50 != v431; ++i50)
        {
          if (*v641 != v432)
          {
            objc_enumerationMutation(v429);
          }

          dictionaryRepresentation60 = [*(*(&v640 + 1) + 8 * i50) dictionaryRepresentation];
          [v428 addObject:dictionaryRepresentation60];
        }

        v431 = [(NSMutableArray *)v429 countByEnumeratingWithState:&v640 objects:v898 count:16];
      }

      while (v431);
    }

    [dictionary setObject:v428 forKey:@"filesystemMovieCheeringResults"];
  }

  if ([(NSMutableArray *)self->_filesystemMovieLaughterResults count])
  {
    v435 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_filesystemMovieLaughterResults, "count")}];
    v636 = 0u;
    v637 = 0u;
    v638 = 0u;
    v639 = 0u;
    v436 = self->_filesystemMovieLaughterResults;
    v437 = [(NSMutableArray *)v436 countByEnumeratingWithState:&v636 objects:v897 count:16];
    if (v437)
    {
      v438 = v437;
      v439 = *v637;
      do
      {
        for (i51 = 0; i51 != v438; ++i51)
        {
          if (*v637 != v439)
          {
            objc_enumerationMutation(v436);
          }

          dictionaryRepresentation61 = [*(*(&v636 + 1) + 8 * i51) dictionaryRepresentation];
          [v435 addObject:dictionaryRepresentation61];
        }

        v438 = [(NSMutableArray *)v436 countByEnumeratingWithState:&v636 objects:v897 count:16];
      }

      while (v438);
    }

    [dictionary setObject:v435 forKey:@"filesystemMovieLaughterResults"];
  }

  if ([(NSMutableArray *)self->_filesystemMovieMusicResults count])
  {
    v442 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_filesystemMovieMusicResults, "count")}];
    v632 = 0u;
    v633 = 0u;
    v634 = 0u;
    v635 = 0u;
    v443 = self->_filesystemMovieMusicResults;
    v444 = [(NSMutableArray *)v443 countByEnumeratingWithState:&v632 objects:v896 count:16];
    if (v444)
    {
      v445 = v444;
      v446 = *v633;
      do
      {
        for (i52 = 0; i52 != v445; ++i52)
        {
          if (*v633 != v446)
          {
            objc_enumerationMutation(v443);
          }

          dictionaryRepresentation62 = [*(*(&v632 + 1) + 8 * i52) dictionaryRepresentation];
          [v442 addObject:dictionaryRepresentation62];
        }

        v445 = [(NSMutableArray *)v443 countByEnumeratingWithState:&v632 objects:v896 count:16];
      }

      while (v445);
    }

    [dictionary setObject:v442 forKey:@"filesystemMovieMusicResults"];
  }

  if ([(NSMutableArray *)self->_filesystemMovieVoiceResults count])
  {
    v449 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_filesystemMovieVoiceResults, "count")}];
    v628 = 0u;
    v629 = 0u;
    v630 = 0u;
    v631 = 0u;
    v450 = self->_filesystemMovieVoiceResults;
    v451 = [(NSMutableArray *)v450 countByEnumeratingWithState:&v628 objects:v895 count:16];
    if (v451)
    {
      v452 = v451;
      v453 = *v629;
      do
      {
        for (i53 = 0; i53 != v452; ++i53)
        {
          if (*v629 != v453)
          {
            objc_enumerationMutation(v450);
          }

          dictionaryRepresentation63 = [*(*(&v628 + 1) + 8 * i53) dictionaryRepresentation];
          [v449 addObject:dictionaryRepresentation63];
        }

        v452 = [(NSMutableArray *)v450 countByEnumeratingWithState:&v628 objects:v895 count:16];
      }

      while (v452);
    }

    [dictionary setObject:v449 forKey:@"filesystemMovieVoiceResults"];
  }

  if ([(NSMutableArray *)self->_animatedStickerResults count])
  {
    v456 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_animatedStickerResults, "count")}];
    v624 = 0u;
    v625 = 0u;
    v626 = 0u;
    v627 = 0u;
    v457 = self->_animatedStickerResults;
    v458 = [(NSMutableArray *)v457 countByEnumeratingWithState:&v624 objects:v894 count:16];
    if (v458)
    {
      v459 = v458;
      v460 = *v625;
      do
      {
        for (i54 = 0; i54 != v459; ++i54)
        {
          if (*v625 != v460)
          {
            objc_enumerationMutation(v457);
          }

          dictionaryRepresentation64 = [*(*(&v624 + 1) + 8 * i54) dictionaryRepresentation];
          [v456 addObject:dictionaryRepresentation64];
        }

        v459 = [(NSMutableArray *)v457 countByEnumeratingWithState:&v624 objects:v894 count:16];
      }

      while (v459);
    }

    [dictionary setObject:v456 forKey:@"animatedStickerResults"];
  }

  if ([(NSMutableArray *)self->_movieTorsoResults count])
  {
    v463 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieTorsoResults, "count")}];
    v620 = 0u;
    v621 = 0u;
    v622 = 0u;
    v623 = 0u;
    v464 = self->_movieTorsoResults;
    v465 = [(NSMutableArray *)v464 countByEnumeratingWithState:&v620 objects:v893 count:16];
    if (v465)
    {
      v466 = v465;
      v467 = *v621;
      do
      {
        for (i55 = 0; i55 != v466; ++i55)
        {
          if (*v621 != v467)
          {
            objc_enumerationMutation(v464);
          }

          dictionaryRepresentation65 = [*(*(&v620 + 1) + 8 * i55) dictionaryRepresentation];
          [v463 addObject:dictionaryRepresentation65];
        }

        v466 = [(NSMutableArray *)v464 countByEnumeratingWithState:&v620 objects:v893 count:16];
      }

      while (v466);
    }

    [dictionary setObject:v463 forKey:@"movieTorsoResults"];
  }

  if ([(NSMutableArray *)self->_movieHumanActionClassificationResults count])
  {
    v470 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieHumanActionClassificationResults, "count")}];
    v616 = 0u;
    v617 = 0u;
    v618 = 0u;
    v619 = 0u;
    v471 = self->_movieHumanActionClassificationResults;
    v472 = [(NSMutableArray *)v471 countByEnumeratingWithState:&v616 objects:v892 count:16];
    if (v472)
    {
      v473 = v472;
      v474 = *v617;
      do
      {
        for (i56 = 0; i56 != v473; ++i56)
        {
          if (*v617 != v474)
          {
            objc_enumerationMutation(v471);
          }

          dictionaryRepresentation66 = [*(*(&v616 + 1) + 8 * i56) dictionaryRepresentation];
          [v470 addObject:dictionaryRepresentation66];
        }

        v473 = [(NSMutableArray *)v471 countByEnumeratingWithState:&v616 objects:v892 count:16];
      }

      while (v473);
    }

    [dictionary setObject:v470 forKey:@"movieHumanActionClassificationResults"];
  }

  if ([(NSMutableArray *)self->_videoEmbeddingResults count])
  {
    v477 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_videoEmbeddingResults, "count")}];
    v612 = 0u;
    v613 = 0u;
    v614 = 0u;
    v615 = 0u;
    v478 = self->_videoEmbeddingResults;
    v479 = [(NSMutableArray *)v478 countByEnumeratingWithState:&v612 objects:v891 count:16];
    if (v479)
    {
      v480 = v479;
      v481 = *v613;
      do
      {
        for (i57 = 0; i57 != v480; ++i57)
        {
          if (*v613 != v481)
          {
            objc_enumerationMutation(v478);
          }

          dictionaryRepresentation67 = [*(*(&v612 + 1) + 8 * i57) dictionaryRepresentation];
          [v477 addObject:dictionaryRepresentation67];
        }

        v480 = [(NSMutableArray *)v478 countByEnumeratingWithState:&v612 objects:v891 count:16];
      }

      while (v480);
    }

    [dictionary setObject:v477 forKey:@"videoEmbeddingResults"];
  }

  if ([(NSMutableArray *)self->_summarizedEmbeddingResults count])
  {
    v484 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_summarizedEmbeddingResults, "count")}];
    v608 = 0u;
    v609 = 0u;
    v610 = 0u;
    v611 = 0u;
    v485 = self->_summarizedEmbeddingResults;
    v486 = [(NSMutableArray *)v485 countByEnumeratingWithState:&v608 objects:v890 count:16];
    if (v486)
    {
      v487 = v486;
      v488 = *v609;
      do
      {
        for (i58 = 0; i58 != v487; ++i58)
        {
          if (*v609 != v488)
          {
            objc_enumerationMutation(v485);
          }

          dictionaryRepresentation68 = [*(*(&v608 + 1) + 8 * i58) dictionaryRepresentation];
          [v484 addObject:dictionaryRepresentation68];
        }

        v487 = [(NSMutableArray *)v485 countByEnumeratingWithState:&v608 objects:v890 count:16];
      }

      while (v487);
    }

    [dictionary setObject:v484 forKey:@"summarizedEmbeddingResults"];
  }

  if ([(NSMutableArray *)self->_audioFusedVideoEmbeddingResults count])
  {
    v491 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_audioFusedVideoEmbeddingResults, "count")}];
    v604 = 0u;
    v605 = 0u;
    v606 = 0u;
    v607 = 0u;
    v492 = self->_audioFusedVideoEmbeddingResults;
    v493 = [(NSMutableArray *)v492 countByEnumeratingWithState:&v604 objects:v889 count:16];
    if (v493)
    {
      v494 = v493;
      v495 = *v605;
      do
      {
        for (i59 = 0; i59 != v494; ++i59)
        {
          if (*v605 != v495)
          {
            objc_enumerationMutation(v492);
          }

          dictionaryRepresentation69 = [*(*(&v604 + 1) + 8 * i59) dictionaryRepresentation];
          [v491 addObject:dictionaryRepresentation69];
        }

        v494 = [(NSMutableArray *)v492 countByEnumeratingWithState:&v604 objects:v889 count:16];
      }

      while (v494);
    }

    [dictionary setObject:v491 forKey:@"audioFusedVideoEmbeddingResults"];
  }

  if ([(NSMutableArray *)self->_imageEmbeddingResults count])
  {
    v498 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_imageEmbeddingResults, "count")}];
    v600 = 0u;
    v601 = 0u;
    v602 = 0u;
    v603 = 0u;
    v499 = self->_imageEmbeddingResults;
    v500 = [(NSMutableArray *)v499 countByEnumeratingWithState:&v600 objects:v888 count:16];
    if (v500)
    {
      v501 = v500;
      v502 = *v601;
      do
      {
        for (i60 = 0; i60 != v501; ++i60)
        {
          if (*v601 != v502)
          {
            objc_enumerationMutation(v499);
          }

          dictionaryRepresentation70 = [*(*(&v600 + 1) + 8 * i60) dictionaryRepresentation];
          [v498 addObject:dictionaryRepresentation70];
        }

        v501 = [(NSMutableArray *)v499 countByEnumeratingWithState:&v600 objects:v888 count:16];
      }

      while (v501);
    }

    [dictionary setObject:v498 forKey:@"imageEmbeddingResults"];
  }

  if ([(NSMutableArray *)self->_imageCaptionResults count])
  {
    v505 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_imageCaptionResults, "count")}];
    v596 = 0u;
    v597 = 0u;
    v598 = 0u;
    v599 = 0u;
    v506 = self->_imageCaptionResults;
    v507 = [(NSMutableArray *)v506 countByEnumeratingWithState:&v596 objects:v887 count:16];
    if (v507)
    {
      v508 = v507;
      v509 = *v597;
      do
      {
        for (i61 = 0; i61 != v508; ++i61)
        {
          if (*v597 != v509)
          {
            objc_enumerationMutation(v506);
          }

          dictionaryRepresentation71 = [*(*(&v596 + 1) + 8 * i61) dictionaryRepresentation];
          [v505 addObject:dictionaryRepresentation71];
        }

        v508 = [(NSMutableArray *)v506 countByEnumeratingWithState:&v596 objects:v887 count:16];
      }

      while (v508);
    }

    [dictionary setObject:v505 forKey:@"imageCaptionResults"];
  }

  if ([(NSMutableArray *)self->_videoCaptionResults count])
  {
    v512 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_videoCaptionResults, "count")}];
    v592 = 0u;
    v593 = 0u;
    v594 = 0u;
    v595 = 0u;
    v513 = self->_videoCaptionResults;
    v514 = [(NSMutableArray *)v513 countByEnumeratingWithState:&v592 objects:v886 count:16];
    if (v514)
    {
      v515 = v514;
      v516 = *v593;
      do
      {
        for (i62 = 0; i62 != v515; ++i62)
        {
          if (*v593 != v516)
          {
            objc_enumerationMutation(v513);
          }

          dictionaryRepresentation72 = [*(*(&v592 + 1) + 8 * i62) dictionaryRepresentation];
          [v512 addObject:dictionaryRepresentation72];
        }

        v515 = [(NSMutableArray *)v513 countByEnumeratingWithState:&v592 objects:v886 count:16];
      }

      while (v515);
    }

    [dictionary setObject:v512 forKey:@"videoCaptionResults"];
  }

  if ([(NSMutableArray *)self->_videoCaptionPreferenceResults count])
  {
    v519 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_videoCaptionPreferenceResults, "count")}];
    v588 = 0u;
    v589 = 0u;
    v590 = 0u;
    v591 = 0u;
    v520 = self->_videoCaptionPreferenceResults;
    v521 = [(NSMutableArray *)v520 countByEnumeratingWithState:&v588 objects:v885 count:16];
    if (v521)
    {
      v522 = v521;
      v523 = *v589;
      do
      {
        for (i63 = 0; i63 != v522; ++i63)
        {
          if (*v589 != v523)
          {
            objc_enumerationMutation(v520);
          }

          dictionaryRepresentation73 = [*(*(&v588 + 1) + 8 * i63) dictionaryRepresentation];
          [v519 addObject:dictionaryRepresentation73];
        }

        v522 = [(NSMutableArray *)v520 countByEnumeratingWithState:&v588 objects:v885 count:16];
      }

      while (v522);
    }

    [dictionary setObject:v519 forKey:@"videoCaptionPreferenceResults"];
  }

  if ([(NSMutableArray *)self->_videoSegmentCaptionResults count])
  {
    v526 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_videoSegmentCaptionResults, "count")}];
    v584 = 0u;
    v585 = 0u;
    v586 = 0u;
    v587 = 0u;
    v527 = self->_videoSegmentCaptionResults;
    v528 = [(NSMutableArray *)v527 countByEnumeratingWithState:&v584 objects:v884 count:16];
    if (v528)
    {
      v529 = v528;
      v530 = *v585;
      do
      {
        for (i64 = 0; i64 != v529; ++i64)
        {
          if (*v585 != v530)
          {
            objc_enumerationMutation(v527);
          }

          dictionaryRepresentation74 = [*(*(&v584 + 1) + 8 * i64) dictionaryRepresentation];
          [v526 addObject:dictionaryRepresentation74];
        }

        v529 = [(NSMutableArray *)v527 countByEnumeratingWithState:&v584 objects:v884 count:16];
      }

      while (v529);
    }

    [dictionary setObject:v526 forKey:@"videoSegmentCaptionResults"];
  }

  if ([(NSMutableArray *)self->_movieAnimalResults count])
  {
    v533 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieAnimalResults, "count")}];
    v580 = 0u;
    v581 = 0u;
    v582 = 0u;
    v583 = 0u;
    v534 = self->_movieAnimalResults;
    v535 = [(NSMutableArray *)v534 countByEnumeratingWithState:&v580 objects:v883 count:16];
    if (v535)
    {
      v536 = v535;
      v537 = *v581;
      do
      {
        for (i65 = 0; i65 != v536; ++i65)
        {
          if (*v581 != v537)
          {
            objc_enumerationMutation(v534);
          }

          dictionaryRepresentation75 = [*(*(&v580 + 1) + 8 * i65) dictionaryRepresentation];
          [v533 addObject:dictionaryRepresentation75];
        }

        v536 = [(NSMutableArray *)v534 countByEnumeratingWithState:&v580 objects:v883 count:16];
      }

      while (v536);
    }

    [dictionary setObject:v533 forKey:@"movieAnimalResults"];
  }

  if ([(NSMutableArray *)self->_movieAnimalprintResults count])
  {
    v540 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_movieAnimalprintResults, "count")}];
    v576 = 0u;
    v577 = 0u;
    v578 = 0u;
    v579 = 0u;
    v541 = self->_movieAnimalprintResults;
    v542 = [(NSMutableArray *)v541 countByEnumeratingWithState:&v576 objects:v882 count:16];
    if (v542)
    {
      v543 = v542;
      v544 = *v577;
      do
      {
        for (i66 = 0; i66 != v543; ++i66)
        {
          if (*v577 != v544)
          {
            objc_enumerationMutation(v541);
          }

          dictionaryRepresentation76 = [*(*(&v576 + 1) + 8 * i66) dictionaryRepresentation];
          [v540 addObject:dictionaryRepresentation76];
        }

        v543 = [(NSMutableArray *)v541 countByEnumeratingWithState:&v576 objects:v882 count:16];
      }

      while (v543);
    }

    [dictionary setObject:v540 forKey:@"movieAnimalprintResults"];
  }

  v547 = self->_has;
  if ((v547 & 8) != 0)
  {
    v548 = [MEMORY[0x1E696AD98] numberWithInt:self->_imageEmbeddingVersion];
    [dictionary setObject:v548 forKey:@"imageEmbeddingVersion"];

    v547 = self->_has;
  }

  if ((v547 & 0x10) != 0)
  {
    v549 = [MEMORY[0x1E696AD98] numberWithInt:self->_videoEmbeddingVersion];
    [dictionary setObject:v549 forKey:@"videoEmbeddingVersion"];
  }

  if ([(NSMutableArray *)self->_videoSceneThumbnailResults count])
  {
    v550 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_videoSceneThumbnailResults, "count")}];
    v572 = 0u;
    v573 = 0u;
    v574 = 0u;
    v575 = 0u;
    v551 = self->_videoSceneThumbnailResults;
    v552 = [(NSMutableArray *)v551 countByEnumeratingWithState:&v572 objects:v881 count:16];
    if (v552)
    {
      v553 = v552;
      v554 = *v573;
      do
      {
        for (i67 = 0; i67 != v553; ++i67)
        {
          if (*v573 != v554)
          {
            objc_enumerationMutation(v551);
          }

          dictionaryRepresentation77 = [*(*(&v572 + 1) + 8 * i67) dictionaryRepresentation];
          [v550 addObject:dictionaryRepresentation77];
        }

        v553 = [(NSMutableArray *)v551 countByEnumeratingWithState:&v572 objects:v881 count:16];
      }

      while (v553);
    }

    [dictionary setObject:v550 forKey:@"videoSceneThumbnailResults"];
  }

  if ([(NSMutableArray *)self->_videoThumbnailResults count])
  {
    v557 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_videoThumbnailResults, "count")}];
    v568 = 0u;
    v569 = 0u;
    v570 = 0u;
    v571 = 0u;
    v558 = self->_videoThumbnailResults;
    v559 = [(NSMutableArray *)v558 countByEnumeratingWithState:&v568 objects:v880 count:16];
    if (v559)
    {
      v560 = v559;
      v561 = *v569;
      do
      {
        for (i68 = 0; i68 != v560; ++i68)
        {
          if (*v569 != v561)
          {
            objc_enumerationMutation(v558);
          }

          dictionaryRepresentation78 = [*(*(&v568 + 1) + 8 * i68) dictionaryRepresentation];
          [v557 addObject:dictionaryRepresentation78];
        }

        v560 = [(NSMutableArray *)v558 countByEnumeratingWithState:&v568 objects:v880 count:16];
      }

      while (v560);
    }

    [dictionary setObject:v557 forKey:@"videoThumbnailResults"];
  }

  v564 = dictionary;

  return dictionary;
}

- (void)writeTo:(id)to
{
  v786 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteDoubleField();
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  PBDataWriterWriteStringField();
  PBDataWriterWriteDoubleField();
  if (self->_assetMasterFingerprint)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_assetAdjustedFingerprint)
  {
    PBDataWriterWriteStringField();
  }

  v707 = 0u;
  v706 = 0u;
  v705 = 0u;
  v704 = 0u;
  v5 = self->_imageBlurResults;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v704 objects:v785 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v705;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v705 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v704 objects:v785 count:16];
    }

    while (v7);
  }

  v703 = 0u;
  v702 = 0u;
  v701 = 0u;
  v700 = 0u;
  v10 = self->_imageCompositionResults;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v700 objects:v784 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v701;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v701 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v700 objects:v784 count:16];
    }

    while (v12);
  }

  v699 = 0u;
  v698 = 0u;
  v697 = 0u;
  v696 = 0u;
  v15 = self->_imageFaceResults;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v696 objects:v783 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v697;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v697 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v696 objects:v783 count:16];
    }

    while (v17);
  }

  v695 = 0u;
  v694 = 0u;
  v693 = 0u;
  v692 = 0u;
  v20 = self->_imageFeatureResults;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v692 objects:v782 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v693;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v693 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v692 objects:v782 count:16];
    }

    while (v22);
  }

  v691 = 0u;
  v690 = 0u;
  v689 = 0u;
  v688 = 0u;
  v25 = self->_imageJunkResults;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v688 objects:v781 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v689;
    do
    {
      for (n = 0; n != v27; ++n)
      {
        if (*v689 != v28)
        {
          objc_enumerationMutation(v25);
        }

        PBDataWriterWriteSubmessage();
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v688 objects:v781 count:16];
    }

    while (v27);
  }

  v687 = 0u;
  v686 = 0u;
  v685 = 0u;
  v684 = 0u;
  v30 = self->_imageSaliencyResults;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v684 objects:v780 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v685;
    do
    {
      for (ii = 0; ii != v32; ++ii)
      {
        if (*v685 != v33)
        {
          objc_enumerationMutation(v30);
        }

        PBDataWriterWriteSubmessage();
      }

      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v684 objects:v780 count:16];
    }

    while (v32);
  }

  v683 = 0u;
  v682 = 0u;
  v681 = 0u;
  v680 = 0u;
  v35 = self->_imageShotTypeResults;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v680 objects:v779 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v681;
    do
    {
      for (jj = 0; jj != v37; ++jj)
      {
        if (*v681 != v38)
        {
          objc_enumerationMutation(v35);
        }

        PBDataWriterWriteSubmessage();
      }

      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v680 objects:v779 count:16];
    }

    while (v37);
  }

  v679 = 0u;
  v678 = 0u;
  v677 = 0u;
  v676 = 0u;
  v40 = self->_livePhotoRecommendationResults;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v676 objects:v778 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v677;
    do
    {
      for (kk = 0; kk != v42; ++kk)
      {
        if (*v677 != v43)
        {
          objc_enumerationMutation(v40);
        }

        PBDataWriterWriteSubmessage();
      }

      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v676 objects:v778 count:16];
    }

    while (v42);
  }

  v675 = 0u;
  v674 = 0u;
  v673 = 0u;
  v672 = 0u;
  v45 = self->_livePhotoSharpnessResults;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v672 objects:v777 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v673;
    do
    {
      for (mm = 0; mm != v47; ++mm)
      {
        if (*v673 != v48)
        {
          objc_enumerationMutation(v45);
        }

        PBDataWriterWriteSubmessage();
      }

      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v672 objects:v777 count:16];
    }

    while (v47);
  }

  v671 = 0u;
  v670 = 0u;
  v669 = 0u;
  v668 = 0u;
  v50 = self->_movieActivityLevelResults;
  v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v668 objects:v776 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v669;
    do
    {
      for (nn = 0; nn != v52; ++nn)
      {
        if (*v669 != v53)
        {
          objc_enumerationMutation(v50);
        }

        PBDataWriterWriteSubmessage();
      }

      v52 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v668 objects:v776 count:16];
    }

    while (v52);
  }

  v667 = 0u;
  v666 = 0u;
  v665 = 0u;
  v664 = 0u;
  v55 = self->_movieCameraMotionResults;
  v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v664 objects:v775 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v665;
    do
    {
      for (i1 = 0; i1 != v57; ++i1)
      {
        if (*v665 != v58)
        {
          objc_enumerationMutation(v55);
        }

        PBDataWriterWriteSubmessage();
      }

      v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v664 objects:v775 count:16];
    }

    while (v57);
  }

  v663 = 0u;
  v662 = 0u;
  v661 = 0u;
  v660 = 0u;
  v60 = self->_movieClassificationResults;
  v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v660 objects:v774 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v661;
    do
    {
      for (i2 = 0; i2 != v62; ++i2)
      {
        if (*v661 != v63)
        {
          objc_enumerationMutation(v60);
        }

        PBDataWriterWriteSubmessage();
      }

      v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v660 objects:v774 count:16];
    }

    while (v62);
  }

  v659 = 0u;
  v658 = 0u;
  v657 = 0u;
  v656 = 0u;
  v65 = self->_movieFaceResults;
  v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v656 objects:v773 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v657;
    do
    {
      for (i3 = 0; i3 != v67; ++i3)
      {
        if (*v657 != v68)
        {
          objc_enumerationMutation(v65);
        }

        PBDataWriterWriteSubmessage();
      }

      v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v656 objects:v773 count:16];
    }

    while (v67);
  }

  v655 = 0u;
  v654 = 0u;
  v653 = 0u;
  v652 = 0u;
  v70 = self->_movieFaceprintResults;
  v71 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v652 objects:v772 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v653;
    do
    {
      for (i4 = 0; i4 != v72; ++i4)
      {
        if (*v653 != v73)
        {
          objc_enumerationMutation(v70);
        }

        PBDataWriterWriteSubmessage();
      }

      v72 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v652 objects:v772 count:16];
    }

    while (v72);
  }

  v651 = 0u;
  v650 = 0u;
  v649 = 0u;
  v648 = 0u;
  v75 = self->_movieFeatureResults;
  v76 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v648 objects:v771 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v649;
    do
    {
      for (i5 = 0; i5 != v77; ++i5)
      {
        if (*v649 != v78)
        {
          objc_enumerationMutation(v75);
        }

        PBDataWriterWriteSubmessage();
      }

      v77 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v648 objects:v771 count:16];
    }

    while (v77);
  }

  v647 = 0u;
  v646 = 0u;
  v645 = 0u;
  v644 = 0u;
  v80 = self->_movieFineSubjectMotionResults;
  v81 = [(NSMutableArray *)v80 countByEnumeratingWithState:&v644 objects:v770 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v645;
    do
    {
      for (i6 = 0; i6 != v82; ++i6)
      {
        if (*v645 != v83)
        {
          objc_enumerationMutation(v80);
        }

        PBDataWriterWriteSubmessage();
      }

      v82 = [(NSMutableArray *)v80 countByEnumeratingWithState:&v644 objects:v770 count:16];
    }

    while (v82);
  }

  v643 = 0u;
  v642 = 0u;
  v641 = 0u;
  v640 = 0u;
  v85 = self->_movieInterestingnessResults;
  v86 = [(NSMutableArray *)v85 countByEnumeratingWithState:&v640 objects:v769 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v641;
    do
    {
      for (i7 = 0; i7 != v87; ++i7)
      {
        if (*v641 != v88)
        {
          objc_enumerationMutation(v85);
        }

        PBDataWriterWriteSubmessage();
      }

      v87 = [(NSMutableArray *)v85 countByEnumeratingWithState:&v640 objects:v769 count:16];
    }

    while (v87);
  }

  v639 = 0u;
  v638 = 0u;
  v637 = 0u;
  v636 = 0u;
  v90 = self->_movieMovingObjectResults;
  v91 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v636 objects:v768 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v637;
    do
    {
      for (i8 = 0; i8 != v92; ++i8)
      {
        if (*v637 != v93)
        {
          objc_enumerationMutation(v90);
        }

        PBDataWriterWriteSubmessage();
      }

      v92 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v636 objects:v768 count:16];
    }

    while (v92);
  }

  v635 = 0u;
  v634 = 0u;
  v633 = 0u;
  v632 = 0u;
  v95 = self->_movieMusicResults;
  v96 = [(NSMutableArray *)v95 countByEnumeratingWithState:&v632 objects:v767 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v633;
    do
    {
      for (i9 = 0; i9 != v97; ++i9)
      {
        if (*v633 != v98)
        {
          objc_enumerationMutation(v95);
        }

        PBDataWriterWriteSubmessage();
      }

      v97 = [(NSMutableArray *)v95 countByEnumeratingWithState:&v632 objects:v767 count:16];
    }

    while (v97);
  }

  v631 = 0u;
  v630 = 0u;
  v629 = 0u;
  v628 = 0u;
  v100 = self->_movieObstructionResults;
  v101 = [(NSMutableArray *)v100 countByEnumeratingWithState:&v628 objects:v766 count:16];
  if (v101)
  {
    v102 = v101;
    v103 = *v629;
    do
    {
      for (i10 = 0; i10 != v102; ++i10)
      {
        if (*v629 != v103)
        {
          objc_enumerationMutation(v100);
        }

        PBDataWriterWriteSubmessage();
      }

      v102 = [(NSMutableArray *)v100 countByEnumeratingWithState:&v628 objects:v766 count:16];
    }

    while (v102);
  }

  v627 = 0u;
  v626 = 0u;
  v625 = 0u;
  v624 = 0u;
  v105 = self->_movieOrientationResults;
  v106 = [(NSMutableArray *)v105 countByEnumeratingWithState:&v624 objects:v765 count:16];
  if (v106)
  {
    v107 = v106;
    v108 = *v625;
    do
    {
      for (i11 = 0; i11 != v107; ++i11)
      {
        if (*v625 != v108)
        {
          objc_enumerationMutation(v105);
        }

        PBDataWriterWriteSubmessage();
      }

      v107 = [(NSMutableArray *)v105 countByEnumeratingWithState:&v624 objects:v765 count:16];
    }

    while (v107);
  }

  v623 = 0u;
  v622 = 0u;
  v621 = 0u;
  v620 = 0u;
  v110 = self->_moviePreEncodeResults;
  v111 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v620 objects:v764 count:16];
  if (v111)
  {
    v112 = v111;
    v113 = *v621;
    do
    {
      for (i12 = 0; i12 != v112; ++i12)
      {
        if (*v621 != v113)
        {
          objc_enumerationMutation(v110);
        }

        PBDataWriterWriteSubmessage();
      }

      v112 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v620 objects:v764 count:16];
    }

    while (v112);
  }

  v619 = 0u;
  v618 = 0u;
  v617 = 0u;
  v616 = 0u;
  v115 = self->_movieQualityResults;
  v116 = [(NSMutableArray *)v115 countByEnumeratingWithState:&v616 objects:v763 count:16];
  if (v116)
  {
    v117 = v116;
    v118 = *v617;
    do
    {
      for (i13 = 0; i13 != v117; ++i13)
      {
        if (*v617 != v118)
        {
          objc_enumerationMutation(v115);
        }

        PBDataWriterWriteSubmessage();
      }

      v117 = [(NSMutableArray *)v115 countByEnumeratingWithState:&v616 objects:v763 count:16];
    }

    while (v117);
  }

  v615 = 0u;
  v614 = 0u;
  v613 = 0u;
  v612 = 0u;
  v120 = self->_movieSaliencyResults;
  v121 = [(NSMutableArray *)v120 countByEnumeratingWithState:&v612 objects:v762 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = *v613;
    do
    {
      for (i14 = 0; i14 != v122; ++i14)
      {
        if (*v613 != v123)
        {
          objc_enumerationMutation(v120);
        }

        PBDataWriterWriteSubmessage();
      }

      v122 = [(NSMutableArray *)v120 countByEnumeratingWithState:&v612 objects:v762 count:16];
    }

    while (v122);
  }

  v611 = 0u;
  v610 = 0u;
  v609 = 0u;
  v608 = 0u;
  v125 = self->_movieSceneResults;
  v126 = [(NSMutableArray *)v125 countByEnumeratingWithState:&v608 objects:v761 count:16];
  if (v126)
  {
    v127 = v126;
    v128 = *v609;
    do
    {
      for (i15 = 0; i15 != v127; ++i15)
      {
        if (*v609 != v128)
        {
          objc_enumerationMutation(v125);
        }

        PBDataWriterWriteSubmessage();
      }

      v127 = [(NSMutableArray *)v125 countByEnumeratingWithState:&v608 objects:v761 count:16];
    }

    while (v127);
  }

  v607 = 0u;
  v606 = 0u;
  v605 = 0u;
  v604 = 0u;
  v130 = self->_movieSubjectMotionResults;
  v131 = [(NSMutableArray *)v130 countByEnumeratingWithState:&v604 objects:v760 count:16];
  if (v131)
  {
    v132 = v131;
    v133 = *v605;
    do
    {
      for (i16 = 0; i16 != v132; ++i16)
      {
        if (*v605 != v133)
        {
          objc_enumerationMutation(v130);
        }

        PBDataWriterWriteSubmessage();
      }

      v132 = [(NSMutableArray *)v130 countByEnumeratingWithState:&v604 objects:v760 count:16];
    }

    while (v132);
  }

  v603 = 0u;
  v602 = 0u;
  v601 = 0u;
  v600 = 0u;
  v135 = self->_movieUtteranceResults;
  v136 = [(NSMutableArray *)v135 countByEnumeratingWithState:&v600 objects:v759 count:16];
  if (v136)
  {
    v137 = v136;
    v138 = *v601;
    do
    {
      for (i17 = 0; i17 != v137; ++i17)
      {
        if (*v601 != v138)
        {
          objc_enumerationMutation(v135);
        }

        PBDataWriterWriteSubmessage();
      }

      v137 = [(NSMutableArray *)v135 countByEnumeratingWithState:&v600 objects:v759 count:16];
    }

    while (v137);
  }

  v599 = 0u;
  v598 = 0u;
  v597 = 0u;
  v596 = 0u;
  v140 = self->_movieVoiceResults;
  v141 = [(NSMutableArray *)v140 countByEnumeratingWithState:&v596 objects:v758 count:16];
  if (v141)
  {
    v142 = v141;
    v143 = *v597;
    do
    {
      for (i18 = 0; i18 != v142; ++i18)
      {
        if (*v597 != v143)
        {
          objc_enumerationMutation(v140);
        }

        PBDataWriterWriteSubmessage();
      }

      v142 = [(NSMutableArray *)v140 countByEnumeratingWithState:&v596 objects:v758 count:16];
    }

    while (v142);
  }

  v595 = 0u;
  v594 = 0u;
  v593 = 0u;
  v592 = 0u;
  v145 = self->_imagePetsResults;
  v146 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v592 objects:v757 count:16];
  if (v146)
  {
    v147 = v146;
    v148 = *v593;
    do
    {
      for (i19 = 0; i19 != v147; ++i19)
      {
        if (*v593 != v148)
        {
          objc_enumerationMutation(v145);
        }

        PBDataWriterWriteSubmessage();
      }

      v147 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v592 objects:v757 count:16];
    }

    while (v147);
  }

  v591 = 0u;
  v590 = 0u;
  v589 = 0u;
  v588 = 0u;
  v150 = self->_movieSummaryResults;
  v151 = [(NSMutableArray *)v150 countByEnumeratingWithState:&v588 objects:v756 count:16];
  if (v151)
  {
    v152 = v151;
    v153 = *v589;
    do
    {
      for (i20 = 0; i20 != v152; ++i20)
      {
        if (*v589 != v153)
        {
          objc_enumerationMutation(v150);
        }

        PBDataWriterWriteSubmessage();
      }

      v152 = [(NSMutableArray *)v150 countByEnumeratingWithState:&v588 objects:v756 count:16];
    }

    while (v152);
  }

  v587 = 0u;
  v586 = 0u;
  v585 = 0u;
  v584 = 0u;
  v155 = self->_movieHighlightResults;
  v156 = [(NSMutableArray *)v155 countByEnumeratingWithState:&v584 objects:v755 count:16];
  if (v156)
  {
    v157 = v156;
    v158 = *v585;
    do
    {
      for (i21 = 0; i21 != v157; ++i21)
      {
        if (*v585 != v158)
        {
          objc_enumerationMutation(v155);
        }

        PBDataWriterWriteSubmessage();
      }

      v157 = [(NSMutableArray *)v155 countByEnumeratingWithState:&v584 objects:v755 count:16];
    }

    while (v157);
  }

  v583 = 0u;
  v582 = 0u;
  v581 = 0u;
  v580 = 0u;
  v160 = self->_imageExposureResults;
  v161 = [(NSMutableArray *)v160 countByEnumeratingWithState:&v580 objects:v754 count:16];
  if (v161)
  {
    v162 = v161;
    v163 = *v581;
    do
    {
      for (i22 = 0; i22 != v162; ++i22)
      {
        if (*v581 != v163)
        {
          objc_enumerationMutation(v160);
        }

        PBDataWriterWriteSubmessage();
      }

      v162 = [(NSMutableArray *)v160 countByEnumeratingWithState:&v580 objects:v754 count:16];
    }

    while (v162);
  }

  v579 = 0u;
  v578 = 0u;
  v577 = 0u;
  v576 = 0u;
  v165 = self->_livePhotoEffectsResults;
  v166 = [(NSMutableArray *)v165 countByEnumeratingWithState:&v576 objects:v753 count:16];
  if (v166)
  {
    v167 = v166;
    v168 = *v577;
    do
    {
      for (i23 = 0; i23 != v167; ++i23)
      {
        if (*v577 != v168)
        {
          objc_enumerationMutation(v165);
        }

        PBDataWriterWriteSubmessage();
      }

      v167 = [(NSMutableArray *)v165 countByEnumeratingWithState:&v576 objects:v753 count:16];
    }

    while (v167);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  v575 = 0u;
  v574 = 0u;
  v573 = 0u;
  v572 = 0u;
  v170 = self->_imagePetsFaceResults;
  v171 = [(NSMutableArray *)v170 countByEnumeratingWithState:&v572 objects:v752 count:16];
  if (v171)
  {
    v172 = v171;
    v173 = *v573;
    do
    {
      for (i24 = 0; i24 != v172; ++i24)
      {
        if (*v573 != v173)
        {
          objc_enumerationMutation(v170);
        }

        PBDataWriterWriteSubmessage();
      }

      v172 = [(NSMutableArray *)v170 countByEnumeratingWithState:&v572 objects:v752 count:16];
    }

    while (v172);
  }

  v571 = 0u;
  v570 = 0u;
  v569 = 0u;
  v568 = 0u;
  v175 = self->_imageSceneprintResults;
  v176 = [(NSMutableArray *)v175 countByEnumeratingWithState:&v568 objects:v751 count:16];
  if (v176)
  {
    v177 = v176;
    v178 = *v569;
    do
    {
      for (i25 = 0; i25 != v177; ++i25)
      {
        if (*v569 != v178)
        {
          objc_enumerationMutation(v175);
        }

        PBDataWriterWriteSubmessage();
      }

      v177 = [(NSMutableArray *)v175 countByEnumeratingWithState:&v568 objects:v751 count:16];
    }

    while (v177);
  }

  v567 = 0u;
  v566 = 0u;
  v565 = 0u;
  v564 = 0u;
  v180 = self->_movieSceneprintResults;
  v181 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v564 objects:v750 count:16];
  if (v181)
  {
    v182 = v181;
    v183 = *v565;
    do
    {
      for (i26 = 0; i26 != v182; ++i26)
      {
        if (*v565 != v183)
        {
          objc_enumerationMutation(v180);
        }

        PBDataWriterWriteSubmessage();
      }

      v182 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v564 objects:v750 count:16];
    }

    while (v182);
  }

  v563 = 0u;
  v562 = 0u;
  v561 = 0u;
  v560 = 0u;
  v185 = self->_imageHumanPoseResults;
  v186 = [(NSMutableArray *)v185 countByEnumeratingWithState:&v560 objects:v749 count:16];
  if (v186)
  {
    v187 = v186;
    v188 = *v561;
    do
    {
      for (i27 = 0; i27 != v187; ++i27)
      {
        if (*v561 != v188)
        {
          objc_enumerationMutation(v185);
        }

        PBDataWriterWriteSubmessage();
      }

      v187 = [(NSMutableArray *)v185 countByEnumeratingWithState:&v560 objects:v749 count:16];
    }

    while (v187);
  }

  v559 = 0u;
  v558 = 0u;
  v557 = 0u;
  v556 = 0u;
  v190 = self->_movieHumanPoseResults;
  v191 = [(NSMutableArray *)v190 countByEnumeratingWithState:&v556 objects:v748 count:16];
  if (v191)
  {
    v192 = v191;
    v193 = *v557;
    do
    {
      for (i28 = 0; i28 != v192; ++i28)
      {
        if (*v557 != v193)
        {
          objc_enumerationMutation(v190);
        }

        PBDataWriterWriteSubmessage();
      }

      v192 = [(NSMutableArray *)v190 countByEnumeratingWithState:&v556 objects:v748 count:16];
    }

    while (v192);
  }

  v555 = 0u;
  v554 = 0u;
  v553 = 0u;
  v552 = 0u;
  v195 = self->_movieApplauseResults;
  v196 = [(NSMutableArray *)v195 countByEnumeratingWithState:&v552 objects:v747 count:16];
  if (v196)
  {
    v197 = v196;
    v198 = *v553;
    do
    {
      for (i29 = 0; i29 != v197; ++i29)
      {
        if (*v553 != v198)
        {
          objc_enumerationMutation(v195);
        }

        PBDataWriterWriteSubmessage();
      }

      v197 = [(NSMutableArray *)v195 countByEnumeratingWithState:&v552 objects:v747 count:16];
    }

    while (v197);
  }

  v551 = 0u;
  v550 = 0u;
  v549 = 0u;
  v548 = 0u;
  v200 = self->_movieBabbleResults;
  v201 = [(NSMutableArray *)v200 countByEnumeratingWithState:&v548 objects:v746 count:16];
  if (v201)
  {
    v202 = v201;
    v203 = *v549;
    do
    {
      for (i30 = 0; i30 != v202; ++i30)
      {
        if (*v549 != v203)
        {
          objc_enumerationMutation(v200);
        }

        PBDataWriterWriteSubmessage();
      }

      v202 = [(NSMutableArray *)v200 countByEnumeratingWithState:&v548 objects:v746 count:16];
    }

    while (v202);
  }

  v547 = 0u;
  v546 = 0u;
  v545 = 0u;
  v544 = 0u;
  v205 = self->_movieCheeringResults;
  v206 = [(NSMutableArray *)v205 countByEnumeratingWithState:&v544 objects:v745 count:16];
  if (v206)
  {
    v207 = v206;
    v208 = *v545;
    do
    {
      for (i31 = 0; i31 != v207; ++i31)
      {
        if (*v545 != v208)
        {
          objc_enumerationMutation(v205);
        }

        PBDataWriterWriteSubmessage();
      }

      v207 = [(NSMutableArray *)v205 countByEnumeratingWithState:&v544 objects:v745 count:16];
    }

    while (v207);
  }

  v543 = 0u;
  v542 = 0u;
  v541 = 0u;
  v540 = 0u;
  v210 = self->_movieLaughterResults;
  v211 = [(NSMutableArray *)v210 countByEnumeratingWithState:&v540 objects:v744 count:16];
  if (v211)
  {
    v212 = v211;
    v213 = *v541;
    do
    {
      for (i32 = 0; i32 != v212; ++i32)
      {
        if (*v541 != v213)
        {
          objc_enumerationMutation(v210);
        }

        PBDataWriterWriteSubmessage();
      }

      v212 = [(NSMutableArray *)v210 countByEnumeratingWithState:&v540 objects:v744 count:16];
    }

    while (v212);
  }

  v539 = 0u;
  v538 = 0u;
  v537 = 0u;
  v536 = 0u;
  v215 = self->_livePhotoKeyFrameResults;
  v216 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v536 objects:v743 count:16];
  if (v216)
  {
    v217 = v216;
    v218 = *v537;
    do
    {
      for (i33 = 0; i33 != v217; ++i33)
      {
        if (*v537 != v218)
        {
          objc_enumerationMutation(v215);
        }

        PBDataWriterWriteSubmessage();
      }

      v217 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v536 objects:v743 count:16];
    }

    while (v217);
  }

  v535 = 0u;
  v534 = 0u;
  v533 = 0u;
  v532 = 0u;
  v220 = self->_livePhotoKeyFrameStillResults;
  v221 = [(NSMutableArray *)v220 countByEnumeratingWithState:&v532 objects:v742 count:16];
  if (v221)
  {
    v222 = v221;
    v223 = *v533;
    do
    {
      for (i34 = 0; i34 != v222; ++i34)
      {
        if (*v533 != v223)
        {
          objc_enumerationMutation(v220);
        }

        PBDataWriterWriteSubmessage();
      }

      v222 = [(NSMutableArray *)v220 countByEnumeratingWithState:&v532 objects:v742 count:16];
    }

    while (v222);
  }

  v531 = 0u;
  v530 = 0u;
  v529 = 0u;
  v528 = 0u;
  v225 = self->_movieHumanActionResults;
  v226 = [(NSMutableArray *)v225 countByEnumeratingWithState:&v528 objects:v741 count:16];
  if (v226)
  {
    v227 = v226;
    v228 = *v529;
    do
    {
      for (i35 = 0; i35 != v227; ++i35)
      {
        if (*v529 != v228)
        {
          objc_enumerationMutation(v225);
        }

        PBDataWriterWriteSubmessage();
      }

      v227 = [(NSMutableArray *)v225 countByEnumeratingWithState:&v528 objects:v741 count:16];
    }

    while (v227);
  }

  v527 = 0u;
  v526 = 0u;
  v525 = 0u;
  v524 = 0u;
  v230 = self->_movieSubtleMotionResults;
  v231 = [(NSMutableArray *)v230 countByEnumeratingWithState:&v524 objects:v740 count:16];
  if (v231)
  {
    v232 = v231;
    v233 = *v525;
    do
    {
      for (i36 = 0; i36 != v232; ++i36)
      {
        if (*v525 != v233)
        {
          objc_enumerationMutation(v230);
        }

        PBDataWriterWriteSubmessage();
      }

      v232 = [(NSMutableArray *)v230 countByEnumeratingWithState:&v524 objects:v740 count:16];
    }

    while (v232);
  }

  v523 = 0u;
  v522 = 0u;
  v521 = 0u;
  v520 = 0u;
  v235 = self->_movieLoudnessResults;
  v236 = [(NSMutableArray *)v235 countByEnumeratingWithState:&v520 objects:v739 count:16];
  if (v236)
  {
    v237 = v236;
    v238 = *v521;
    do
    {
      for (i37 = 0; i37 != v237; ++i37)
      {
        if (*v521 != v238)
        {
          objc_enumerationMutation(v235);
        }

        PBDataWriterWriteSubmessage();
      }

      v237 = [(NSMutableArray *)v235 countByEnumeratingWithState:&v520 objects:v739 count:16];
    }

    while (v237);
  }

  v519 = 0u;
  v518 = 0u;
  v517 = 0u;
  v516 = 0u;
  v240 = self->_moviePetsResults;
  v241 = [(NSMutableArray *)v240 countByEnumeratingWithState:&v516 objects:v738 count:16];
  if (v241)
  {
    v242 = v241;
    v243 = *v517;
    do
    {
      for (i38 = 0; i38 != v242; ++i38)
      {
        if (*v517 != v243)
        {
          objc_enumerationMutation(v240);
        }

        PBDataWriterWriteSubmessage();
      }

      v242 = [(NSMutableArray *)v240 countByEnumeratingWithState:&v516 objects:v738 count:16];
    }

    while (v242);
  }

  v515 = 0u;
  v514 = 0u;
  v513 = 0u;
  v512 = 0u;
  v245 = self->_moviePetsFaceResults;
  v246 = [(NSMutableArray *)v245 countByEnumeratingWithState:&v512 objects:v737 count:16];
  if (v246)
  {
    v247 = v246;
    v248 = *v513;
    do
    {
      for (i39 = 0; i39 != v247; ++i39)
      {
        if (*v513 != v248)
        {
          objc_enumerationMutation(v245);
        }

        PBDataWriterWriteSubmessage();
      }

      v247 = [(NSMutableArray *)v245 countByEnumeratingWithState:&v512 objects:v737 count:16];
    }

    while (v247);
  }

  v511 = 0u;
  v510 = 0u;
  v509 = 0u;
  v508 = 0u;
  v250 = self->_movieStabilizationResults;
  v251 = [(NSMutableArray *)v250 countByEnumeratingWithState:&v508 objects:v736 count:16];
  if (v251)
  {
    v252 = v251;
    v253 = *v509;
    do
    {
      for (i40 = 0; i40 != v252; ++i40)
      {
        if (*v509 != v253)
        {
          objc_enumerationMutation(v250);
        }

        PBDataWriterWriteSubmessage();
      }

      v252 = [(NSMutableArray *)v250 countByEnumeratingWithState:&v508 objects:v736 count:16];
    }

    while (v252);
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  v507 = 0u;
  v506 = 0u;
  v505 = 0u;
  v504 = 0u;
  v255 = self->_movieHighlightScoreResults;
  v256 = [(NSMutableArray *)v255 countByEnumeratingWithState:&v504 objects:v735 count:16];
  if (v256)
  {
    v257 = v256;
    v258 = *v505;
    do
    {
      for (i41 = 0; i41 != v257; ++i41)
      {
        if (*v505 != v258)
        {
          objc_enumerationMutation(v255);
        }

        PBDataWriterWriteSubmessage();
      }

      v257 = [(NSMutableArray *)v255 countByEnumeratingWithState:&v504 objects:v735 count:16];
    }

    while (v257);
  }

  v503 = 0u;
  v502 = 0u;
  v501 = 0u;
  v500 = 0u;
  v260 = self->_livePhotoHumanActionClassificationResults;
  v261 = [(NSMutableArray *)v260 countByEnumeratingWithState:&v500 objects:v734 count:16];
  if (v261)
  {
    v262 = v261;
    v263 = *v501;
    do
    {
      for (i42 = 0; i42 != v262; ++i42)
      {
        if (*v501 != v263)
        {
          objc_enumerationMutation(v260);
        }

        PBDataWriterWriteSubmessage();
      }

      v262 = [(NSMutableArray *)v260 countByEnumeratingWithState:&v500 objects:v734 count:16];
    }

    while (v262);
  }

  v499 = 0u;
  v498 = 0u;
  v497 = 0u;
  v496 = 0u;
  v265 = self->_movieAudioQualityResults;
  v266 = [(NSMutableArray *)v265 countByEnumeratingWithState:&v496 objects:v733 count:16];
  if (v266)
  {
    v267 = v266;
    v268 = *v497;
    do
    {
      for (i43 = 0; i43 != v267; ++i43)
      {
        if (*v497 != v268)
        {
          objc_enumerationMutation(v265);
        }

        PBDataWriterWriteSubmessage();
      }

      v267 = [(NSMutableArray *)v265 countByEnumeratingWithState:&v496 objects:v733 count:16];
    }

    while (v267);
  }

  v495 = 0u;
  v494 = 0u;
  v493 = 0u;
  v492 = 0u;
  v270 = self->_movieSafetyResults;
  v271 = [(NSMutableArray *)v270 countByEnumeratingWithState:&v492 objects:v732 count:16];
  if (v271)
  {
    v272 = v271;
    v273 = *v493;
    do
    {
      for (i44 = 0; i44 != v272; ++i44)
      {
        if (*v493 != v273)
        {
          objc_enumerationMutation(v270);
        }

        PBDataWriterWriteSubmessage();
      }

      v272 = [(NSMutableArray *)v270 countByEnumeratingWithState:&v492 objects:v732 count:16];
    }

    while (v272);
  }

  v491 = 0u;
  v490 = 0u;
  v489 = 0u;
  v488 = 0u;
  v275 = self->_filesystemMovieClassificationResults;
  v276 = [(NSMutableArray *)v275 countByEnumeratingWithState:&v488 objects:v731 count:16];
  if (v276)
  {
    v277 = v276;
    v278 = *v489;
    do
    {
      for (i45 = 0; i45 != v277; ++i45)
      {
        if (*v489 != v278)
        {
          objc_enumerationMutation(v275);
        }

        PBDataWriterWriteSubmessage();
      }

      v277 = [(NSMutableArray *)v275 countByEnumeratingWithState:&v488 objects:v731 count:16];
    }

    while (v277);
  }

  v487 = 0u;
  v486 = 0u;
  v485 = 0u;
  v484 = 0u;
  v280 = self->_filesystemMovieHumanActionClassificationResults;
  v281 = [(NSMutableArray *)v280 countByEnumeratingWithState:&v484 objects:v730 count:16];
  if (v281)
  {
    v282 = v281;
    v283 = *v485;
    do
    {
      for (i46 = 0; i46 != v282; ++i46)
      {
        if (*v485 != v283)
        {
          objc_enumerationMutation(v280);
        }

        PBDataWriterWriteSubmessage();
      }

      v282 = [(NSMutableArray *)v280 countByEnumeratingWithState:&v484 objects:v730 count:16];
    }

    while (v282);
  }

  v483 = 0u;
  v482 = 0u;
  v481 = 0u;
  v480 = 0u;
  v285 = self->_filesystemMovieApplauseResults;
  v286 = [(NSMutableArray *)v285 countByEnumeratingWithState:&v480 objects:v729 count:16];
  if (v286)
  {
    v287 = v286;
    v288 = *v481;
    do
    {
      for (i47 = 0; i47 != v287; ++i47)
      {
        if (*v481 != v288)
        {
          objc_enumerationMutation(v285);
        }

        PBDataWriterWriteSubmessage();
      }

      v287 = [(NSMutableArray *)v285 countByEnumeratingWithState:&v480 objects:v729 count:16];
    }

    while (v287);
  }

  v479 = 0u;
  v478 = 0u;
  v477 = 0u;
  v476 = 0u;
  v290 = self->_filesystemMovieBabbleResults;
  v291 = [(NSMutableArray *)v290 countByEnumeratingWithState:&v476 objects:v728 count:16];
  if (v291)
  {
    v292 = v291;
    v293 = *v477;
    do
    {
      for (i48 = 0; i48 != v292; ++i48)
      {
        if (*v477 != v293)
        {
          objc_enumerationMutation(v290);
        }

        PBDataWriterWriteSubmessage();
      }

      v292 = [(NSMutableArray *)v290 countByEnumeratingWithState:&v476 objects:v728 count:16];
    }

    while (v292);
  }

  v475 = 0u;
  v474 = 0u;
  v473 = 0u;
  v472 = 0u;
  v295 = self->_filesystemMovieCheeringResults;
  v296 = [(NSMutableArray *)v295 countByEnumeratingWithState:&v472 objects:v727 count:16];
  if (v296)
  {
    v297 = v296;
    v298 = *v473;
    do
    {
      for (i49 = 0; i49 != v297; ++i49)
      {
        if (*v473 != v298)
        {
          objc_enumerationMutation(v295);
        }

        PBDataWriterWriteSubmessage();
      }

      v297 = [(NSMutableArray *)v295 countByEnumeratingWithState:&v472 objects:v727 count:16];
    }

    while (v297);
  }

  v471 = 0u;
  v470 = 0u;
  v469 = 0u;
  v468 = 0u;
  v300 = self->_filesystemMovieLaughterResults;
  v301 = [(NSMutableArray *)v300 countByEnumeratingWithState:&v468 objects:v726 count:16];
  if (v301)
  {
    v302 = v301;
    v303 = *v469;
    do
    {
      for (i50 = 0; i50 != v302; ++i50)
      {
        if (*v469 != v303)
        {
          objc_enumerationMutation(v300);
        }

        PBDataWriterWriteSubmessage();
      }

      v302 = [(NSMutableArray *)v300 countByEnumeratingWithState:&v468 objects:v726 count:16];
    }

    while (v302);
  }

  v467 = 0u;
  v466 = 0u;
  v465 = 0u;
  v464 = 0u;
  v305 = self->_filesystemMovieMusicResults;
  v306 = [(NSMutableArray *)v305 countByEnumeratingWithState:&v464 objects:v725 count:16];
  if (v306)
  {
    v307 = v306;
    v308 = *v465;
    do
    {
      for (i51 = 0; i51 != v307; ++i51)
      {
        if (*v465 != v308)
        {
          objc_enumerationMutation(v305);
        }

        PBDataWriterWriteSubmessage();
      }

      v307 = [(NSMutableArray *)v305 countByEnumeratingWithState:&v464 objects:v725 count:16];
    }

    while (v307);
  }

  v463 = 0u;
  v462 = 0u;
  v461 = 0u;
  v460 = 0u;
  v310 = self->_filesystemMovieVoiceResults;
  v311 = [(NSMutableArray *)v310 countByEnumeratingWithState:&v460 objects:v724 count:16];
  if (v311)
  {
    v312 = v311;
    v313 = *v461;
    do
    {
      for (i52 = 0; i52 != v312; ++i52)
      {
        if (*v461 != v313)
        {
          objc_enumerationMutation(v310);
        }

        PBDataWriterWriteSubmessage();
      }

      v312 = [(NSMutableArray *)v310 countByEnumeratingWithState:&v460 objects:v724 count:16];
    }

    while (v312);
  }

  v458 = 0u;
  v459 = 0u;
  v456 = 0u;
  v457 = 0u;
  v315 = self->_animatedStickerResults;
  v316 = [(NSMutableArray *)v315 countByEnumeratingWithState:&v456 objects:v723 count:16];
  if (v316)
  {
    v317 = v316;
    v318 = *v457;
    do
    {
      for (i53 = 0; i53 != v317; ++i53)
      {
        if (*v457 != v318)
        {
          objc_enumerationMutation(v315);
        }

        PBDataWriterWriteSubmessage();
      }

      v317 = [(NSMutableArray *)v315 countByEnumeratingWithState:&v456 objects:v723 count:16];
    }

    while (v317);
  }

  v454 = 0u;
  v455 = 0u;
  v452 = 0u;
  v453 = 0u;
  v320 = self->_livePhotoSettlingEffectGatingResults;
  v321 = [(NSMutableArray *)v320 countByEnumeratingWithState:&v452 objects:v722 count:16];
  if (v321)
  {
    v322 = v321;
    v323 = *v453;
    do
    {
      for (i54 = 0; i54 != v322; ++i54)
      {
        if (*v453 != v323)
        {
          objc_enumerationMutation(v320);
        }

        PBDataWriterWriteSubmessage();
      }

      v322 = [(NSMutableArray *)v320 countByEnumeratingWithState:&v452 objects:v722 count:16];
    }

    while (v322);
  }

  if (self->_assetCloudIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v450 = 0u;
  v451 = 0u;
  v448 = 0u;
  v449 = 0u;
  v325 = self->_movieTorsoResults;
  v326 = [(NSMutableArray *)v325 countByEnumeratingWithState:&v448 objects:v721 count:16];
  if (v326)
  {
    v327 = v326;
    v328 = *v449;
    do
    {
      for (i55 = 0; i55 != v327; ++i55)
      {
        if (*v449 != v328)
        {
          objc_enumerationMutation(v325);
        }

        PBDataWriterWriteSubmessage();
      }

      v327 = [(NSMutableArray *)v325 countByEnumeratingWithState:&v448 objects:v721 count:16];
    }

    while (v327);
  }

  v446 = 0u;
  v447 = 0u;
  v444 = 0u;
  v445 = 0u;
  v330 = self->_movieHumanActionClassificationResults;
  v331 = [(NSMutableArray *)v330 countByEnumeratingWithState:&v444 objects:v720 count:16];
  if (v331)
  {
    v332 = v331;
    v333 = *v445;
    do
    {
      for (i56 = 0; i56 != v332; ++i56)
      {
        if (*v445 != v333)
        {
          objc_enumerationMutation(v330);
        }

        PBDataWriterWriteSubmessage();
      }

      v332 = [(NSMutableArray *)v330 countByEnumeratingWithState:&v444 objects:v720 count:16];
    }

    while (v332);
  }

  v442 = 0u;
  v443 = 0u;
  v440 = 0u;
  v441 = 0u;
  v335 = self->_videoEmbeddingResults;
  v336 = [(NSMutableArray *)v335 countByEnumeratingWithState:&v440 objects:v719 count:16];
  if (v336)
  {
    v337 = v336;
    v338 = *v441;
    do
    {
      for (i57 = 0; i57 != v337; ++i57)
      {
        if (*v441 != v338)
        {
          objc_enumerationMutation(v335);
        }

        PBDataWriterWriteSubmessage();
      }

      v337 = [(NSMutableArray *)v335 countByEnumeratingWithState:&v440 objects:v719 count:16];
    }

    while (v337);
  }

  v438 = 0u;
  v439 = 0u;
  v436 = 0u;
  v437 = 0u;
  v340 = self->_summarizedEmbeddingResults;
  v341 = [(NSMutableArray *)v340 countByEnumeratingWithState:&v436 objects:v718 count:16];
  if (v341)
  {
    v342 = v341;
    v343 = *v437;
    do
    {
      for (i58 = 0; i58 != v342; ++i58)
      {
        if (*v437 != v343)
        {
          objc_enumerationMutation(v340);
        }

        PBDataWriterWriteSubmessage();
      }

      v342 = [(NSMutableArray *)v340 countByEnumeratingWithState:&v436 objects:v718 count:16];
    }

    while (v342);
  }

  v434 = 0u;
  v435 = 0u;
  v432 = 0u;
  v433 = 0u;
  v345 = self->_audioFusedVideoEmbeddingResults;
  v346 = [(NSMutableArray *)v345 countByEnumeratingWithState:&v432 objects:v717 count:16];
  if (v346)
  {
    v347 = v346;
    v348 = *v433;
    do
    {
      for (i59 = 0; i59 != v347; ++i59)
      {
        if (*v433 != v348)
        {
          objc_enumerationMutation(v345);
        }

        PBDataWriterWriteSubmessage();
      }

      v347 = [(NSMutableArray *)v345 countByEnumeratingWithState:&v432 objects:v717 count:16];
    }

    while (v347);
  }

  v430 = 0u;
  v431 = 0u;
  v428 = 0u;
  v429 = 0u;
  v350 = self->_imageEmbeddingResults;
  v351 = [(NSMutableArray *)v350 countByEnumeratingWithState:&v428 objects:v716 count:16];
  if (v351)
  {
    v352 = v351;
    v353 = *v429;
    do
    {
      for (i60 = 0; i60 != v352; ++i60)
      {
        if (*v429 != v353)
        {
          objc_enumerationMutation(v350);
        }

        PBDataWriterWriteSubmessage();
      }

      v352 = [(NSMutableArray *)v350 countByEnumeratingWithState:&v428 objects:v716 count:16];
    }

    while (v352);
  }

  v426 = 0u;
  v427 = 0u;
  v424 = 0u;
  v425 = 0u;
  v355 = self->_imageCaptionResults;
  v356 = [(NSMutableArray *)v355 countByEnumeratingWithState:&v424 objects:v715 count:16];
  if (v356)
  {
    v357 = v356;
    v358 = *v425;
    do
    {
      for (i61 = 0; i61 != v357; ++i61)
      {
        if (*v425 != v358)
        {
          objc_enumerationMutation(v355);
        }

        PBDataWriterWriteSubmessage();
      }

      v357 = [(NSMutableArray *)v355 countByEnumeratingWithState:&v424 objects:v715 count:16];
    }

    while (v357);
  }

  v422 = 0u;
  v423 = 0u;
  v420 = 0u;
  v421 = 0u;
  v360 = self->_videoCaptionResults;
  v361 = [(NSMutableArray *)v360 countByEnumeratingWithState:&v420 objects:v714 count:16];
  if (v361)
  {
    v362 = v361;
    v363 = *v421;
    do
    {
      for (i62 = 0; i62 != v362; ++i62)
      {
        if (*v421 != v363)
        {
          objc_enumerationMutation(v360);
        }

        PBDataWriterWriteSubmessage();
      }

      v362 = [(NSMutableArray *)v360 countByEnumeratingWithState:&v420 objects:v714 count:16];
    }

    while (v362);
  }

  v418 = 0u;
  v419 = 0u;
  v416 = 0u;
  v417 = 0u;
  v365 = self->_videoCaptionPreferenceResults;
  v366 = [(NSMutableArray *)v365 countByEnumeratingWithState:&v416 objects:v713 count:16];
  if (v366)
  {
    v367 = v366;
    v368 = *v417;
    do
    {
      for (i63 = 0; i63 != v367; ++i63)
      {
        if (*v417 != v368)
        {
          objc_enumerationMutation(v365);
        }

        PBDataWriterWriteSubmessage();
      }

      v367 = [(NSMutableArray *)v365 countByEnumeratingWithState:&v416 objects:v713 count:16];
    }

    while (v367);
  }

  v414 = 0u;
  v415 = 0u;
  v412 = 0u;
  v413 = 0u;
  v370 = self->_videoSegmentCaptionResults;
  v371 = [(NSMutableArray *)v370 countByEnumeratingWithState:&v412 objects:v712 count:16];
  if (v371)
  {
    v372 = v371;
    v373 = *v413;
    do
    {
      for (i64 = 0; i64 != v372; ++i64)
      {
        if (*v413 != v373)
        {
          objc_enumerationMutation(v370);
        }

        PBDataWriterWriteSubmessage();
      }

      v372 = [(NSMutableArray *)v370 countByEnumeratingWithState:&v412 objects:v712 count:16];
    }

    while (v372);
  }

  v410 = 0u;
  v411 = 0u;
  v408 = 0u;
  v409 = 0u;
  v375 = self->_movieAnimalResults;
  v376 = [(NSMutableArray *)v375 countByEnumeratingWithState:&v408 objects:v711 count:16];
  if (v376)
  {
    v377 = v376;
    v378 = *v409;
    do
    {
      for (i65 = 0; i65 != v377; ++i65)
      {
        if (*v409 != v378)
        {
          objc_enumerationMutation(v375);
        }

        PBDataWriterWriteSubmessage();
      }

      v377 = [(NSMutableArray *)v375 countByEnumeratingWithState:&v408 objects:v711 count:16];
    }

    while (v377);
  }

  v406 = 0u;
  v407 = 0u;
  v404 = 0u;
  v405 = 0u;
  v380 = self->_movieAnimalprintResults;
  v381 = [(NSMutableArray *)v380 countByEnumeratingWithState:&v404 objects:v710 count:16];
  if (v381)
  {
    v382 = v381;
    v383 = *v405;
    do
    {
      for (i66 = 0; i66 != v382; ++i66)
      {
        if (*v405 != v383)
        {
          objc_enumerationMutation(v380);
        }

        PBDataWriterWriteSubmessage();
      }

      v382 = [(NSMutableArray *)v380 countByEnumeratingWithState:&v404 objects:v710 count:16];
    }

    while (v382);
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v402 = 0u;
  v403 = 0u;
  v400 = 0u;
  v401 = 0u;
  v386 = self->_videoSceneThumbnailResults;
  v387 = [(NSMutableArray *)v386 countByEnumeratingWithState:&v400 objects:v709 count:16];
  if (v387)
  {
    v388 = v387;
    v389 = *v401;
    do
    {
      for (i67 = 0; i67 != v388; ++i67)
      {
        if (*v401 != v389)
        {
          objc_enumerationMutation(v386);
        }

        PBDataWriterWriteSubmessage();
      }

      v388 = [(NSMutableArray *)v386 countByEnumeratingWithState:&v400 objects:v709 count:16];
    }

    while (v388);
  }

  v398 = 0u;
  v399 = 0u;
  v396 = 0u;
  v397 = 0u;
  v391 = self->_videoThumbnailResults;
  v392 = [(NSMutableArray *)v391 countByEnumeratingWithState:&v396 objects:v708 count:16];
  if (v392)
  {
    v393 = v392;
    v394 = *v397;
    do
    {
      for (i68 = 0; i68 != v393; ++i68)
      {
        if (*v397 != v394)
        {
          objc_enumerationMutation(v391);
        }

        PBDataWriterWriteSubmessage();
      }

      v393 = [(NSMutableArray *)v391 countByEnumeratingWithState:&v396 objects:v708 count:16];
    }

    while (v393);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[169] = self->_version;
  toCopy[168] = self->_types;
  toCopy[40] = self->_flags;
  *(toCopy + 2) = *&self->_date;
  if (*&self->_has)
  {
    *(toCopy + 3) = *&self->_quality;
    *(toCopy + 736) |= 1u;
  }

  v318 = toCopy;
  [toCopy setAssetIdentifier:self->_assetIdentifier];
  v318[1] = *&self->_assetModificationDate;
  if (self->_assetMasterFingerprint)
  {
    [v318 setAssetMasterFingerprint:?];
  }

  if (self->_assetAdjustedFingerprint)
  {
    [v318 setAssetAdjustedFingerprint:?];
  }

  if ([(VCPProtoAssetAnalysis *)self imageBlurResultsCount])
  {
    [v318 clearImageBlurResults];
    imageBlurResultsCount = [(VCPProtoAssetAnalysis *)self imageBlurResultsCount];
    if (imageBlurResultsCount)
    {
      v6 = imageBlurResultsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(VCPProtoAssetAnalysis *)self imageBlurResultsAtIndex:i];
        [v318 addImageBlurResults:v8];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self imageCompositionResultsCount])
  {
    [v318 clearImageCompositionResults];
    imageCompositionResultsCount = [(VCPProtoAssetAnalysis *)self imageCompositionResultsCount];
    if (imageCompositionResultsCount)
    {
      v10 = imageCompositionResultsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(VCPProtoAssetAnalysis *)self imageCompositionResultsAtIndex:j];
        [v318 addImageCompositionResults:v12];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self imageFaceResultsCount])
  {
    [v318 clearImageFaceResults];
    imageFaceResultsCount = [(VCPProtoAssetAnalysis *)self imageFaceResultsCount];
    if (imageFaceResultsCount)
    {
      v14 = imageFaceResultsCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(VCPProtoAssetAnalysis *)self imageFaceResultsAtIndex:k];
        [v318 addImageFaceResults:v16];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self imageFeatureResultsCount])
  {
    [v318 clearImageFeatureResults];
    imageFeatureResultsCount = [(VCPProtoAssetAnalysis *)self imageFeatureResultsCount];
    if (imageFeatureResultsCount)
    {
      v18 = imageFeatureResultsCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(VCPProtoAssetAnalysis *)self imageFeatureResultsAtIndex:m];
        [v318 addImageFeatureResults:v20];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self imageJunkResultsCount])
  {
    [v318 clearImageJunkResults];
    imageJunkResultsCount = [(VCPProtoAssetAnalysis *)self imageJunkResultsCount];
    if (imageJunkResultsCount)
    {
      v22 = imageJunkResultsCount;
      for (n = 0; n != v22; ++n)
      {
        v24 = [(VCPProtoAssetAnalysis *)self imageJunkResultsAtIndex:n];
        [v318 addImageJunkResults:v24];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self imageSaliencyResultsCount])
  {
    [v318 clearImageSaliencyResults];
    imageSaliencyResultsCount = [(VCPProtoAssetAnalysis *)self imageSaliencyResultsCount];
    if (imageSaliencyResultsCount)
    {
      v26 = imageSaliencyResultsCount;
      for (ii = 0; ii != v26; ++ii)
      {
        v28 = [(VCPProtoAssetAnalysis *)self imageSaliencyResultsAtIndex:ii];
        [v318 addImageSaliencyResults:v28];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self imageShotTypeResultsCount])
  {
    [v318 clearImageShotTypeResults];
    imageShotTypeResultsCount = [(VCPProtoAssetAnalysis *)self imageShotTypeResultsCount];
    if (imageShotTypeResultsCount)
    {
      v30 = imageShotTypeResultsCount;
      for (jj = 0; jj != v30; ++jj)
      {
        v32 = [(VCPProtoAssetAnalysis *)self imageShotTypeResultsAtIndex:jj];
        [v318 addImageShotTypeResults:v32];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self livePhotoRecommendationResultsCount])
  {
    [v318 clearLivePhotoRecommendationResults];
    livePhotoRecommendationResultsCount = [(VCPProtoAssetAnalysis *)self livePhotoRecommendationResultsCount];
    if (livePhotoRecommendationResultsCount)
    {
      v34 = livePhotoRecommendationResultsCount;
      for (kk = 0; kk != v34; ++kk)
      {
        v36 = [(VCPProtoAssetAnalysis *)self livePhotoRecommendationResultsAtIndex:kk];
        [v318 addLivePhotoRecommendationResults:v36];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self livePhotoSharpnessResultsCount])
  {
    [v318 clearLivePhotoSharpnessResults];
    livePhotoSharpnessResultsCount = [(VCPProtoAssetAnalysis *)self livePhotoSharpnessResultsCount];
    if (livePhotoSharpnessResultsCount)
    {
      v38 = livePhotoSharpnessResultsCount;
      for (mm = 0; mm != v38; ++mm)
      {
        v40 = [(VCPProtoAssetAnalysis *)self livePhotoSharpnessResultsAtIndex:mm];
        [v318 addLivePhotoSharpnessResults:v40];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieActivityLevelResultsCount])
  {
    [v318 clearMovieActivityLevelResults];
    movieActivityLevelResultsCount = [(VCPProtoAssetAnalysis *)self movieActivityLevelResultsCount];
    if (movieActivityLevelResultsCount)
    {
      v42 = movieActivityLevelResultsCount;
      for (nn = 0; nn != v42; ++nn)
      {
        v44 = [(VCPProtoAssetAnalysis *)self movieActivityLevelResultsAtIndex:nn];
        [v318 addMovieActivityLevelResults:v44];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieCameraMotionResultsCount])
  {
    [v318 clearMovieCameraMotionResults];
    movieCameraMotionResultsCount = [(VCPProtoAssetAnalysis *)self movieCameraMotionResultsCount];
    if (movieCameraMotionResultsCount)
    {
      v46 = movieCameraMotionResultsCount;
      for (i1 = 0; i1 != v46; ++i1)
      {
        v48 = [(VCPProtoAssetAnalysis *)self movieCameraMotionResultsAtIndex:i1];
        [v318 addMovieCameraMotionResults:v48];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieClassificationResultsCount])
  {
    [v318 clearMovieClassificationResults];
    movieClassificationResultsCount = [(VCPProtoAssetAnalysis *)self movieClassificationResultsCount];
    if (movieClassificationResultsCount)
    {
      v50 = movieClassificationResultsCount;
      for (i2 = 0; i2 != v50; ++i2)
      {
        v52 = [(VCPProtoAssetAnalysis *)self movieClassificationResultsAtIndex:i2];
        [v318 addMovieClassificationResults:v52];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieFaceResultsCount])
  {
    [v318 clearMovieFaceResults];
    movieFaceResultsCount = [(VCPProtoAssetAnalysis *)self movieFaceResultsCount];
    if (movieFaceResultsCount)
    {
      v54 = movieFaceResultsCount;
      for (i3 = 0; i3 != v54; ++i3)
      {
        v56 = [(VCPProtoAssetAnalysis *)self movieFaceResultsAtIndex:i3];
        [v318 addMovieFaceResults:v56];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieFaceprintResultsCount])
  {
    [v318 clearMovieFaceprintResults];
    movieFaceprintResultsCount = [(VCPProtoAssetAnalysis *)self movieFaceprintResultsCount];
    if (movieFaceprintResultsCount)
    {
      v58 = movieFaceprintResultsCount;
      for (i4 = 0; i4 != v58; ++i4)
      {
        v60 = [(VCPProtoAssetAnalysis *)self movieFaceprintResultsAtIndex:i4];
        [v318 addMovieFaceprintResults:v60];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieFeatureResultsCount])
  {
    [v318 clearMovieFeatureResults];
    movieFeatureResultsCount = [(VCPProtoAssetAnalysis *)self movieFeatureResultsCount];
    if (movieFeatureResultsCount)
    {
      v62 = movieFeatureResultsCount;
      for (i5 = 0; i5 != v62; ++i5)
      {
        v64 = [(VCPProtoAssetAnalysis *)self movieFeatureResultsAtIndex:i5];
        [v318 addMovieFeatureResults:v64];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieFineSubjectMotionResultsCount])
  {
    [v318 clearMovieFineSubjectMotionResults];
    movieFineSubjectMotionResultsCount = [(VCPProtoAssetAnalysis *)self movieFineSubjectMotionResultsCount];
    if (movieFineSubjectMotionResultsCount)
    {
      v66 = movieFineSubjectMotionResultsCount;
      for (i6 = 0; i6 != v66; ++i6)
      {
        v68 = [(VCPProtoAssetAnalysis *)self movieFineSubjectMotionResultsAtIndex:i6];
        [v318 addMovieFineSubjectMotionResults:v68];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieInterestingnessResultsCount])
  {
    [v318 clearMovieInterestingnessResults];
    movieInterestingnessResultsCount = [(VCPProtoAssetAnalysis *)self movieInterestingnessResultsCount];
    if (movieInterestingnessResultsCount)
    {
      v70 = movieInterestingnessResultsCount;
      for (i7 = 0; i7 != v70; ++i7)
      {
        v72 = [(VCPProtoAssetAnalysis *)self movieInterestingnessResultsAtIndex:i7];
        [v318 addMovieInterestingnessResults:v72];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieMovingObjectResultsCount])
  {
    [v318 clearMovieMovingObjectResults];
    movieMovingObjectResultsCount = [(VCPProtoAssetAnalysis *)self movieMovingObjectResultsCount];
    if (movieMovingObjectResultsCount)
    {
      v74 = movieMovingObjectResultsCount;
      for (i8 = 0; i8 != v74; ++i8)
      {
        v76 = [(VCPProtoAssetAnalysis *)self movieMovingObjectResultsAtIndex:i8];
        [v318 addMovieMovingObjectResults:v76];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieMusicResultsCount])
  {
    [v318 clearMovieMusicResults];
    movieMusicResultsCount = [(VCPProtoAssetAnalysis *)self movieMusicResultsCount];
    if (movieMusicResultsCount)
    {
      v78 = movieMusicResultsCount;
      for (i9 = 0; i9 != v78; ++i9)
      {
        v80 = [(VCPProtoAssetAnalysis *)self movieMusicResultsAtIndex:i9];
        [v318 addMovieMusicResults:v80];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieObstructionResultsCount])
  {
    [v318 clearMovieObstructionResults];
    movieObstructionResultsCount = [(VCPProtoAssetAnalysis *)self movieObstructionResultsCount];
    if (movieObstructionResultsCount)
    {
      v82 = movieObstructionResultsCount;
      for (i10 = 0; i10 != v82; ++i10)
      {
        v84 = [(VCPProtoAssetAnalysis *)self movieObstructionResultsAtIndex:i10];
        [v318 addMovieObstructionResults:v84];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieOrientationResultsCount])
  {
    [v318 clearMovieOrientationResults];
    movieOrientationResultsCount = [(VCPProtoAssetAnalysis *)self movieOrientationResultsCount];
    if (movieOrientationResultsCount)
    {
      v86 = movieOrientationResultsCount;
      for (i11 = 0; i11 != v86; ++i11)
      {
        v88 = [(VCPProtoAssetAnalysis *)self movieOrientationResultsAtIndex:i11];
        [v318 addMovieOrientationResults:v88];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self moviePreEncodeResultsCount])
  {
    [v318 clearMoviePreEncodeResults];
    moviePreEncodeResultsCount = [(VCPProtoAssetAnalysis *)self moviePreEncodeResultsCount];
    if (moviePreEncodeResultsCount)
    {
      v90 = moviePreEncodeResultsCount;
      for (i12 = 0; i12 != v90; ++i12)
      {
        v92 = [(VCPProtoAssetAnalysis *)self moviePreEncodeResultsAtIndex:i12];
        [v318 addMoviePreEncodeResults:v92];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieQualityResultsCount])
  {
    [v318 clearMovieQualityResults];
    movieQualityResultsCount = [(VCPProtoAssetAnalysis *)self movieQualityResultsCount];
    if (movieQualityResultsCount)
    {
      v94 = movieQualityResultsCount;
      for (i13 = 0; i13 != v94; ++i13)
      {
        v96 = [(VCPProtoAssetAnalysis *)self movieQualityResultsAtIndex:i13];
        [v318 addMovieQualityResults:v96];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieSaliencyResultsCount])
  {
    [v318 clearMovieSaliencyResults];
    movieSaliencyResultsCount = [(VCPProtoAssetAnalysis *)self movieSaliencyResultsCount];
    if (movieSaliencyResultsCount)
    {
      v98 = movieSaliencyResultsCount;
      for (i14 = 0; i14 != v98; ++i14)
      {
        v100 = [(VCPProtoAssetAnalysis *)self movieSaliencyResultsAtIndex:i14];
        [v318 addMovieSaliencyResults:v100];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieSceneResultsCount])
  {
    [v318 clearMovieSceneResults];
    movieSceneResultsCount = [(VCPProtoAssetAnalysis *)self movieSceneResultsCount];
    if (movieSceneResultsCount)
    {
      v102 = movieSceneResultsCount;
      for (i15 = 0; i15 != v102; ++i15)
      {
        v104 = [(VCPProtoAssetAnalysis *)self movieSceneResultsAtIndex:i15];
        [v318 addMovieSceneResults:v104];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieSubjectMotionResultsCount])
  {
    [v318 clearMovieSubjectMotionResults];
    movieSubjectMotionResultsCount = [(VCPProtoAssetAnalysis *)self movieSubjectMotionResultsCount];
    if (movieSubjectMotionResultsCount)
    {
      v106 = movieSubjectMotionResultsCount;
      for (i16 = 0; i16 != v106; ++i16)
      {
        v108 = [(VCPProtoAssetAnalysis *)self movieSubjectMotionResultsAtIndex:i16];
        [v318 addMovieSubjectMotionResults:v108];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieUtteranceResultsCount])
  {
    [v318 clearMovieUtteranceResults];
    movieUtteranceResultsCount = [(VCPProtoAssetAnalysis *)self movieUtteranceResultsCount];
    if (movieUtteranceResultsCount)
    {
      v110 = movieUtteranceResultsCount;
      for (i17 = 0; i17 != v110; ++i17)
      {
        v112 = [(VCPProtoAssetAnalysis *)self movieUtteranceResultsAtIndex:i17];
        [v318 addMovieUtteranceResults:v112];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieVoiceResultsCount])
  {
    [v318 clearMovieVoiceResults];
    movieVoiceResultsCount = [(VCPProtoAssetAnalysis *)self movieVoiceResultsCount];
    if (movieVoiceResultsCount)
    {
      v114 = movieVoiceResultsCount;
      for (i18 = 0; i18 != v114; ++i18)
      {
        v116 = [(VCPProtoAssetAnalysis *)self movieVoiceResultsAtIndex:i18];
        [v318 addMovieVoiceResults:v116];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self imagePetsResultsCount])
  {
    [v318 clearImagePetsResults];
    imagePetsResultsCount = [(VCPProtoAssetAnalysis *)self imagePetsResultsCount];
    if (imagePetsResultsCount)
    {
      v118 = imagePetsResultsCount;
      for (i19 = 0; i19 != v118; ++i19)
      {
        v120 = [(VCPProtoAssetAnalysis *)self imagePetsResultsAtIndex:i19];
        [v318 addImagePetsResults:v120];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieSummaryResultsCount])
  {
    [v318 clearMovieSummaryResults];
    movieSummaryResultsCount = [(VCPProtoAssetAnalysis *)self movieSummaryResultsCount];
    if (movieSummaryResultsCount)
    {
      v122 = movieSummaryResultsCount;
      for (i20 = 0; i20 != v122; ++i20)
      {
        v124 = [(VCPProtoAssetAnalysis *)self movieSummaryResultsAtIndex:i20];
        [v318 addMovieSummaryResults:v124];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieHighlightResultsCount])
  {
    [v318 clearMovieHighlightResults];
    movieHighlightResultsCount = [(VCPProtoAssetAnalysis *)self movieHighlightResultsCount];
    if (movieHighlightResultsCount)
    {
      v126 = movieHighlightResultsCount;
      for (i21 = 0; i21 != v126; ++i21)
      {
        v128 = [(VCPProtoAssetAnalysis *)self movieHighlightResultsAtIndex:i21];
        [v318 addMovieHighlightResults:v128];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self imageExposureResultsCount])
  {
    [v318 clearImageExposureResults];
    imageExposureResultsCount = [(VCPProtoAssetAnalysis *)self imageExposureResultsCount];
    if (imageExposureResultsCount)
    {
      v130 = imageExposureResultsCount;
      for (i22 = 0; i22 != v130; ++i22)
      {
        v132 = [(VCPProtoAssetAnalysis *)self imageExposureResultsAtIndex:i22];
        [v318 addImageExposureResults:v132];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self livePhotoEffectsResultsCount])
  {
    [v318 clearLivePhotoEffectsResults];
    livePhotoEffectsResultsCount = [(VCPProtoAssetAnalysis *)self livePhotoEffectsResultsCount];
    if (livePhotoEffectsResultsCount)
    {
      v134 = livePhotoEffectsResultsCount;
      for (i23 = 0; i23 != v134; ++i23)
      {
        v136 = [(VCPProtoAssetAnalysis *)self livePhotoEffectsResultsAtIndex:i23];
        [v318 addLivePhotoEffectsResults:v136];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v318[4] = self->_statsFlags;
    *(v318 + 736) |= 2u;
  }

  if ([(VCPProtoAssetAnalysis *)self imagePetsFaceResultsCount])
  {
    [v318 clearImagePetsFaceResults];
    imagePetsFaceResultsCount = [(VCPProtoAssetAnalysis *)self imagePetsFaceResultsCount];
    if (imagePetsFaceResultsCount)
    {
      v138 = imagePetsFaceResultsCount;
      for (i24 = 0; i24 != v138; ++i24)
      {
        v140 = [(VCPProtoAssetAnalysis *)self imagePetsFaceResultsAtIndex:i24];
        [v318 addImagePetsFaceResults:v140];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self imageSceneprintResultsCount])
  {
    [v318 clearImageSceneprintResults];
    imageSceneprintResultsCount = [(VCPProtoAssetAnalysis *)self imageSceneprintResultsCount];
    if (imageSceneprintResultsCount)
    {
      v142 = imageSceneprintResultsCount;
      for (i25 = 0; i25 != v142; ++i25)
      {
        v144 = [(VCPProtoAssetAnalysis *)self imageSceneprintResultsAtIndex:i25];
        [v318 addImageSceneprintResults:v144];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieSceneprintResultsCount])
  {
    [v318 clearMovieSceneprintResults];
    movieSceneprintResultsCount = [(VCPProtoAssetAnalysis *)self movieSceneprintResultsCount];
    if (movieSceneprintResultsCount)
    {
      v146 = movieSceneprintResultsCount;
      for (i26 = 0; i26 != v146; ++i26)
      {
        v148 = [(VCPProtoAssetAnalysis *)self movieSceneprintResultsAtIndex:i26];
        [v318 addMovieSceneprintResults:v148];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self imageHumanPoseResultsCount])
  {
    [v318 clearImageHumanPoseResults];
    imageHumanPoseResultsCount = [(VCPProtoAssetAnalysis *)self imageHumanPoseResultsCount];
    if (imageHumanPoseResultsCount)
    {
      v150 = imageHumanPoseResultsCount;
      for (i27 = 0; i27 != v150; ++i27)
      {
        v152 = [(VCPProtoAssetAnalysis *)self imageHumanPoseResultsAtIndex:i27];
        [v318 addImageHumanPoseResults:v152];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieHumanPoseResultsCount])
  {
    [v318 clearMovieHumanPoseResults];
    movieHumanPoseResultsCount = [(VCPProtoAssetAnalysis *)self movieHumanPoseResultsCount];
    if (movieHumanPoseResultsCount)
    {
      v154 = movieHumanPoseResultsCount;
      for (i28 = 0; i28 != v154; ++i28)
      {
        v156 = [(VCPProtoAssetAnalysis *)self movieHumanPoseResultsAtIndex:i28];
        [v318 addMovieHumanPoseResults:v156];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieApplauseResultsCount])
  {
    [v318 clearMovieApplauseResults];
    movieApplauseResultsCount = [(VCPProtoAssetAnalysis *)self movieApplauseResultsCount];
    if (movieApplauseResultsCount)
    {
      v158 = movieApplauseResultsCount;
      for (i29 = 0; i29 != v158; ++i29)
      {
        v160 = [(VCPProtoAssetAnalysis *)self movieApplauseResultsAtIndex:i29];
        [v318 addMovieApplauseResults:v160];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieBabbleResultsCount])
  {
    [v318 clearMovieBabbleResults];
    movieBabbleResultsCount = [(VCPProtoAssetAnalysis *)self movieBabbleResultsCount];
    if (movieBabbleResultsCount)
    {
      v162 = movieBabbleResultsCount;
      for (i30 = 0; i30 != v162; ++i30)
      {
        v164 = [(VCPProtoAssetAnalysis *)self movieBabbleResultsAtIndex:i30];
        [v318 addMovieBabbleResults:v164];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieCheeringResultsCount])
  {
    [v318 clearMovieCheeringResults];
    movieCheeringResultsCount = [(VCPProtoAssetAnalysis *)self movieCheeringResultsCount];
    if (movieCheeringResultsCount)
    {
      v166 = movieCheeringResultsCount;
      for (i31 = 0; i31 != v166; ++i31)
      {
        v168 = [(VCPProtoAssetAnalysis *)self movieCheeringResultsAtIndex:i31];
        [v318 addMovieCheeringResults:v168];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieLaughterResultsCount])
  {
    [v318 clearMovieLaughterResults];
    movieLaughterResultsCount = [(VCPProtoAssetAnalysis *)self movieLaughterResultsCount];
    if (movieLaughterResultsCount)
    {
      v170 = movieLaughterResultsCount;
      for (i32 = 0; i32 != v170; ++i32)
      {
        v172 = [(VCPProtoAssetAnalysis *)self movieLaughterResultsAtIndex:i32];
        [v318 addMovieLaughterResults:v172];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self livePhotoKeyFrameResultsCount])
  {
    [v318 clearLivePhotoKeyFrameResults];
    livePhotoKeyFrameResultsCount = [(VCPProtoAssetAnalysis *)self livePhotoKeyFrameResultsCount];
    if (livePhotoKeyFrameResultsCount)
    {
      v174 = livePhotoKeyFrameResultsCount;
      for (i33 = 0; i33 != v174; ++i33)
      {
        v176 = [(VCPProtoAssetAnalysis *)self livePhotoKeyFrameResultsAtIndex:i33];
        [v318 addLivePhotoKeyFrameResults:v176];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self livePhotoKeyFrameStillResultsCount])
  {
    [v318 clearLivePhotoKeyFrameStillResults];
    livePhotoKeyFrameStillResultsCount = [(VCPProtoAssetAnalysis *)self livePhotoKeyFrameStillResultsCount];
    if (livePhotoKeyFrameStillResultsCount)
    {
      v178 = livePhotoKeyFrameStillResultsCount;
      for (i34 = 0; i34 != v178; ++i34)
      {
        v180 = [(VCPProtoAssetAnalysis *)self livePhotoKeyFrameStillResultsAtIndex:i34];
        [v318 addLivePhotoKeyFrameStillResults:v180];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieHumanActionResultsCount])
  {
    [v318 clearMovieHumanActionResults];
    movieHumanActionResultsCount = [(VCPProtoAssetAnalysis *)self movieHumanActionResultsCount];
    if (movieHumanActionResultsCount)
    {
      v182 = movieHumanActionResultsCount;
      for (i35 = 0; i35 != v182; ++i35)
      {
        v184 = [(VCPProtoAssetAnalysis *)self movieHumanActionResultsAtIndex:i35];
        [v318 addMovieHumanActionResults:v184];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieSubtleMotionResultsCount])
  {
    [v318 clearMovieSubtleMotionResults];
    movieSubtleMotionResultsCount = [(VCPProtoAssetAnalysis *)self movieSubtleMotionResultsCount];
    if (movieSubtleMotionResultsCount)
    {
      v186 = movieSubtleMotionResultsCount;
      for (i36 = 0; i36 != v186; ++i36)
      {
        v188 = [(VCPProtoAssetAnalysis *)self movieSubtleMotionResultsAtIndex:i36];
        [v318 addMovieSubtleMotionResults:v188];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieLoudnessResultsCount])
  {
    [v318 clearMovieLoudnessResults];
    movieLoudnessResultsCount = [(VCPProtoAssetAnalysis *)self movieLoudnessResultsCount];
    if (movieLoudnessResultsCount)
    {
      v190 = movieLoudnessResultsCount;
      for (i37 = 0; i37 != v190; ++i37)
      {
        v192 = [(VCPProtoAssetAnalysis *)self movieLoudnessResultsAtIndex:i37];
        [v318 addMovieLoudnessResults:v192];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self moviePetsResultsCount])
  {
    [v318 clearMoviePetsResults];
    moviePetsResultsCount = [(VCPProtoAssetAnalysis *)self moviePetsResultsCount];
    if (moviePetsResultsCount)
    {
      v194 = moviePetsResultsCount;
      for (i38 = 0; i38 != v194; ++i38)
      {
        v196 = [(VCPProtoAssetAnalysis *)self moviePetsResultsAtIndex:i38];
        [v318 addMoviePetsResults:v196];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self moviePetsFaceResultsCount])
  {
    [v318 clearMoviePetsFaceResults];
    moviePetsFaceResultsCount = [(VCPProtoAssetAnalysis *)self moviePetsFaceResultsCount];
    if (moviePetsFaceResultsCount)
    {
      v198 = moviePetsFaceResultsCount;
      for (i39 = 0; i39 != v198; ++i39)
      {
        v200 = [(VCPProtoAssetAnalysis *)self moviePetsFaceResultsAtIndex:i39];
        [v318 addMoviePetsFaceResults:v200];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieStabilizationResultsCount])
  {
    [v318 clearMovieStabilizationResults];
    movieStabilizationResultsCount = [(VCPProtoAssetAnalysis *)self movieStabilizationResultsCount];
    if (movieStabilizationResultsCount)
    {
      v202 = movieStabilizationResultsCount;
      for (i40 = 0; i40 != v202; ++i40)
      {
        v204 = [(VCPProtoAssetAnalysis *)self movieStabilizationResultsAtIndex:i40];
        [v318 addMovieStabilizationResults:v204];
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v318[5] = self->_typesWide;
    *(v318 + 736) |= 4u;
  }

  if ([(VCPProtoAssetAnalysis *)self movieHighlightScoreResultsCount])
  {
    [v318 clearMovieHighlightScoreResults];
    movieHighlightScoreResultsCount = [(VCPProtoAssetAnalysis *)self movieHighlightScoreResultsCount];
    if (movieHighlightScoreResultsCount)
    {
      v206 = movieHighlightScoreResultsCount;
      for (i41 = 0; i41 != v206; ++i41)
      {
        v208 = [(VCPProtoAssetAnalysis *)self movieHighlightScoreResultsAtIndex:i41];
        [v318 addMovieHighlightScoreResults:v208];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self livePhotoHumanActionClassificationResultsCount])
  {
    [v318 clearLivePhotoHumanActionClassificationResults];
    livePhotoHumanActionClassificationResultsCount = [(VCPProtoAssetAnalysis *)self livePhotoHumanActionClassificationResultsCount];
    if (livePhotoHumanActionClassificationResultsCount)
    {
      v210 = livePhotoHumanActionClassificationResultsCount;
      for (i42 = 0; i42 != v210; ++i42)
      {
        v212 = [(VCPProtoAssetAnalysis *)self livePhotoHumanActionClassificationResultsAtIndex:i42];
        [v318 addLivePhotoHumanActionClassificationResults:v212];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieAudioQualityResultsCount])
  {
    [v318 clearMovieAudioQualityResults];
    movieAudioQualityResultsCount = [(VCPProtoAssetAnalysis *)self movieAudioQualityResultsCount];
    if (movieAudioQualityResultsCount)
    {
      v214 = movieAudioQualityResultsCount;
      for (i43 = 0; i43 != v214; ++i43)
      {
        v216 = [(VCPProtoAssetAnalysis *)self movieAudioQualityResultsAtIndex:i43];
        [v318 addMovieAudioQualityResults:v216];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieSafetyResultsCount])
  {
    [v318 clearMovieSafetyResults];
    movieSafetyResultsCount = [(VCPProtoAssetAnalysis *)self movieSafetyResultsCount];
    if (movieSafetyResultsCount)
    {
      v218 = movieSafetyResultsCount;
      for (i44 = 0; i44 != v218; ++i44)
      {
        v220 = [(VCPProtoAssetAnalysis *)self movieSafetyResultsAtIndex:i44];
        [v318 addMovieSafetyResults:v220];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self filesystemMovieClassificationResultsCount])
  {
    [v318 clearFilesystemMovieClassificationResults];
    filesystemMovieClassificationResultsCount = [(VCPProtoAssetAnalysis *)self filesystemMovieClassificationResultsCount];
    if (filesystemMovieClassificationResultsCount)
    {
      v222 = filesystemMovieClassificationResultsCount;
      for (i45 = 0; i45 != v222; ++i45)
      {
        v224 = [(VCPProtoAssetAnalysis *)self filesystemMovieClassificationResultsAtIndex:i45];
        [v318 addFilesystemMovieClassificationResults:v224];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self filesystemMovieHumanActionClassificationResultsCount])
  {
    [v318 clearFilesystemMovieHumanActionClassificationResults];
    filesystemMovieHumanActionClassificationResultsCount = [(VCPProtoAssetAnalysis *)self filesystemMovieHumanActionClassificationResultsCount];
    if (filesystemMovieHumanActionClassificationResultsCount)
    {
      v226 = filesystemMovieHumanActionClassificationResultsCount;
      for (i46 = 0; i46 != v226; ++i46)
      {
        v228 = [(VCPProtoAssetAnalysis *)self filesystemMovieHumanActionClassificationResultsAtIndex:i46];
        [v318 addFilesystemMovieHumanActionClassificationResults:v228];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self filesystemMovieApplauseResultsCount])
  {
    [v318 clearFilesystemMovieApplauseResults];
    filesystemMovieApplauseResultsCount = [(VCPProtoAssetAnalysis *)self filesystemMovieApplauseResultsCount];
    if (filesystemMovieApplauseResultsCount)
    {
      v230 = filesystemMovieApplauseResultsCount;
      for (i47 = 0; i47 != v230; ++i47)
      {
        v232 = [(VCPProtoAssetAnalysis *)self filesystemMovieApplauseResultsAtIndex:i47];
        [v318 addFilesystemMovieApplauseResults:v232];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self filesystemMovieBabbleResultsCount])
  {
    [v318 clearFilesystemMovieBabbleResults];
    filesystemMovieBabbleResultsCount = [(VCPProtoAssetAnalysis *)self filesystemMovieBabbleResultsCount];
    if (filesystemMovieBabbleResultsCount)
    {
      v234 = filesystemMovieBabbleResultsCount;
      for (i48 = 0; i48 != v234; ++i48)
      {
        v236 = [(VCPProtoAssetAnalysis *)self filesystemMovieBabbleResultsAtIndex:i48];
        [v318 addFilesystemMovieBabbleResults:v236];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self filesystemMovieCheeringResultsCount])
  {
    [v318 clearFilesystemMovieCheeringResults];
    filesystemMovieCheeringResultsCount = [(VCPProtoAssetAnalysis *)self filesystemMovieCheeringResultsCount];
    if (filesystemMovieCheeringResultsCount)
    {
      v238 = filesystemMovieCheeringResultsCount;
      for (i49 = 0; i49 != v238; ++i49)
      {
        v240 = [(VCPProtoAssetAnalysis *)self filesystemMovieCheeringResultsAtIndex:i49];
        [v318 addFilesystemMovieCheeringResults:v240];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self filesystemMovieLaughterResultsCount])
  {
    [v318 clearFilesystemMovieLaughterResults];
    filesystemMovieLaughterResultsCount = [(VCPProtoAssetAnalysis *)self filesystemMovieLaughterResultsCount];
    if (filesystemMovieLaughterResultsCount)
    {
      v242 = filesystemMovieLaughterResultsCount;
      for (i50 = 0; i50 != v242; ++i50)
      {
        v244 = [(VCPProtoAssetAnalysis *)self filesystemMovieLaughterResultsAtIndex:i50];
        [v318 addFilesystemMovieLaughterResults:v244];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self filesystemMovieMusicResultsCount])
  {
    [v318 clearFilesystemMovieMusicResults];
    filesystemMovieMusicResultsCount = [(VCPProtoAssetAnalysis *)self filesystemMovieMusicResultsCount];
    if (filesystemMovieMusicResultsCount)
    {
      v246 = filesystemMovieMusicResultsCount;
      for (i51 = 0; i51 != v246; ++i51)
      {
        v248 = [(VCPProtoAssetAnalysis *)self filesystemMovieMusicResultsAtIndex:i51];
        [v318 addFilesystemMovieMusicResults:v248];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self filesystemMovieVoiceResultsCount])
  {
    [v318 clearFilesystemMovieVoiceResults];
    filesystemMovieVoiceResultsCount = [(VCPProtoAssetAnalysis *)self filesystemMovieVoiceResultsCount];
    if (filesystemMovieVoiceResultsCount)
    {
      v250 = filesystemMovieVoiceResultsCount;
      for (i52 = 0; i52 != v250; ++i52)
      {
        v252 = [(VCPProtoAssetAnalysis *)self filesystemMovieVoiceResultsAtIndex:i52];
        [v318 addFilesystemMovieVoiceResults:v252];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self animatedStickerResultsCount])
  {
    [v318 clearAnimatedStickerResults];
    animatedStickerResultsCount = [(VCPProtoAssetAnalysis *)self animatedStickerResultsCount];
    if (animatedStickerResultsCount)
    {
      v254 = animatedStickerResultsCount;
      for (i53 = 0; i53 != v254; ++i53)
      {
        v256 = [(VCPProtoAssetAnalysis *)self animatedStickerResultsAtIndex:i53];
        [v318 addAnimatedStickerResults:v256];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self livePhotoSettlingEffectGatingResultsCount])
  {
    [v318 clearLivePhotoSettlingEffectGatingResults];
    livePhotoSettlingEffectGatingResultsCount = [(VCPProtoAssetAnalysis *)self livePhotoSettlingEffectGatingResultsCount];
    if (livePhotoSettlingEffectGatingResultsCount)
    {
      v258 = livePhotoSettlingEffectGatingResultsCount;
      for (i54 = 0; i54 != v258; ++i54)
      {
        v260 = [(VCPProtoAssetAnalysis *)self livePhotoSettlingEffectGatingResultsAtIndex:i54];
        [v318 addLivePhotoSettlingEffectGatingResults:v260];
      }
    }
  }

  if (self->_assetCloudIdentifier)
  {
    [v318 setAssetCloudIdentifier:?];
  }

  if ([(VCPProtoAssetAnalysis *)self movieTorsoResultsCount])
  {
    [v318 clearMovieTorsoResults];
    movieTorsoResultsCount = [(VCPProtoAssetAnalysis *)self movieTorsoResultsCount];
    if (movieTorsoResultsCount)
    {
      v262 = movieTorsoResultsCount;
      for (i55 = 0; i55 != v262; ++i55)
      {
        v264 = [(VCPProtoAssetAnalysis *)self movieTorsoResultsAtIndex:i55];
        [v318 addMovieTorsoResults:v264];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieHumanActionClassificationResultsCount])
  {
    [v318 clearMovieHumanActionClassificationResults];
    movieHumanActionClassificationResultsCount = [(VCPProtoAssetAnalysis *)self movieHumanActionClassificationResultsCount];
    if (movieHumanActionClassificationResultsCount)
    {
      v266 = movieHumanActionClassificationResultsCount;
      for (i56 = 0; i56 != v266; ++i56)
      {
        v268 = [(VCPProtoAssetAnalysis *)self movieHumanActionClassificationResultsAtIndex:i56];
        [v318 addMovieHumanActionClassificationResults:v268];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self videoEmbeddingResultsCount])
  {
    [v318 clearVideoEmbeddingResults];
    videoEmbeddingResultsCount = [(VCPProtoAssetAnalysis *)self videoEmbeddingResultsCount];
    if (videoEmbeddingResultsCount)
    {
      v270 = videoEmbeddingResultsCount;
      for (i57 = 0; i57 != v270; ++i57)
      {
        v272 = [(VCPProtoAssetAnalysis *)self videoEmbeddingResultsAtIndex:i57];
        [v318 addVideoEmbeddingResults:v272];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self summarizedEmbeddingResultsCount])
  {
    [v318 clearSummarizedEmbeddingResults];
    summarizedEmbeddingResultsCount = [(VCPProtoAssetAnalysis *)self summarizedEmbeddingResultsCount];
    if (summarizedEmbeddingResultsCount)
    {
      v274 = summarizedEmbeddingResultsCount;
      for (i58 = 0; i58 != v274; ++i58)
      {
        v276 = [(VCPProtoAssetAnalysis *)self summarizedEmbeddingResultsAtIndex:i58];
        [v318 addSummarizedEmbeddingResults:v276];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self audioFusedVideoEmbeddingResultsCount])
  {
    [v318 clearAudioFusedVideoEmbeddingResults];
    audioFusedVideoEmbeddingResultsCount = [(VCPProtoAssetAnalysis *)self audioFusedVideoEmbeddingResultsCount];
    if (audioFusedVideoEmbeddingResultsCount)
    {
      v278 = audioFusedVideoEmbeddingResultsCount;
      for (i59 = 0; i59 != v278; ++i59)
      {
        v280 = [(VCPProtoAssetAnalysis *)self audioFusedVideoEmbeddingResultsAtIndex:i59];
        [v318 addAudioFusedVideoEmbeddingResults:v280];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self imageEmbeddingResultsCount])
  {
    [v318 clearImageEmbeddingResults];
    imageEmbeddingResultsCount = [(VCPProtoAssetAnalysis *)self imageEmbeddingResultsCount];
    if (imageEmbeddingResultsCount)
    {
      v282 = imageEmbeddingResultsCount;
      for (i60 = 0; i60 != v282; ++i60)
      {
        v284 = [(VCPProtoAssetAnalysis *)self imageEmbeddingResultsAtIndex:i60];
        [v318 addImageEmbeddingResults:v284];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self imageCaptionResultsCount])
  {
    [v318 clearImageCaptionResults];
    imageCaptionResultsCount = [(VCPProtoAssetAnalysis *)self imageCaptionResultsCount];
    if (imageCaptionResultsCount)
    {
      v286 = imageCaptionResultsCount;
      for (i61 = 0; i61 != v286; ++i61)
      {
        v288 = [(VCPProtoAssetAnalysis *)self imageCaptionResultsAtIndex:i61];
        [v318 addImageCaptionResults:v288];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self videoCaptionResultsCount])
  {
    [v318 clearVideoCaptionResults];
    videoCaptionResultsCount = [(VCPProtoAssetAnalysis *)self videoCaptionResultsCount];
    if (videoCaptionResultsCount)
    {
      v290 = videoCaptionResultsCount;
      for (i62 = 0; i62 != v290; ++i62)
      {
        v292 = [(VCPProtoAssetAnalysis *)self videoCaptionResultsAtIndex:i62];
        [v318 addVideoCaptionResults:v292];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self videoCaptionPreferenceResultsCount])
  {
    [v318 clearVideoCaptionPreferenceResults];
    videoCaptionPreferenceResultsCount = [(VCPProtoAssetAnalysis *)self videoCaptionPreferenceResultsCount];
    if (videoCaptionPreferenceResultsCount)
    {
      v294 = videoCaptionPreferenceResultsCount;
      for (i63 = 0; i63 != v294; ++i63)
      {
        v296 = [(VCPProtoAssetAnalysis *)self videoCaptionPreferenceResultsAtIndex:i63];
        [v318 addVideoCaptionPreferenceResults:v296];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self videoSegmentCaptionResultsCount])
  {
    [v318 clearVideoSegmentCaptionResults];
    videoSegmentCaptionResultsCount = [(VCPProtoAssetAnalysis *)self videoSegmentCaptionResultsCount];
    if (videoSegmentCaptionResultsCount)
    {
      v298 = videoSegmentCaptionResultsCount;
      for (i64 = 0; i64 != v298; ++i64)
      {
        v300 = [(VCPProtoAssetAnalysis *)self videoSegmentCaptionResultsAtIndex:i64];
        [v318 addVideoSegmentCaptionResults:v300];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieAnimalResultsCount])
  {
    [v318 clearMovieAnimalResults];
    movieAnimalResultsCount = [(VCPProtoAssetAnalysis *)self movieAnimalResultsCount];
    if (movieAnimalResultsCount)
    {
      v302 = movieAnimalResultsCount;
      for (i65 = 0; i65 != v302; ++i65)
      {
        v304 = [(VCPProtoAssetAnalysis *)self movieAnimalResultsAtIndex:i65];
        [v318 addMovieAnimalResults:v304];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self movieAnimalprintResultsCount])
  {
    [v318 clearMovieAnimalprintResults];
    movieAnimalprintResultsCount = [(VCPProtoAssetAnalysis *)self movieAnimalprintResultsCount];
    if (movieAnimalprintResultsCount)
    {
      v306 = movieAnimalprintResultsCount;
      for (i66 = 0; i66 != v306; ++i66)
      {
        v308 = [(VCPProtoAssetAnalysis *)self movieAnimalprintResultsAtIndex:i66];
        [v318 addMovieAnimalprintResults:v308];
      }
    }
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v318 + 50) = self->_imageEmbeddingVersion;
    *(v318 + 736) |= 8u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v318 + 176) = self->_videoEmbeddingVersion;
    *(v318 + 736) |= 0x10u;
  }

  if ([(VCPProtoAssetAnalysis *)self videoSceneThumbnailResultsCount])
  {
    [v318 clearVideoSceneThumbnailResults];
    videoSceneThumbnailResultsCount = [(VCPProtoAssetAnalysis *)self videoSceneThumbnailResultsCount];
    if (videoSceneThumbnailResultsCount)
    {
      v311 = videoSceneThumbnailResultsCount;
      for (i67 = 0; i67 != v311; ++i67)
      {
        v313 = [(VCPProtoAssetAnalysis *)self videoSceneThumbnailResultsAtIndex:i67];
        [v318 addVideoSceneThumbnailResults:v313];
      }
    }
  }

  if ([(VCPProtoAssetAnalysis *)self videoThumbnailResultsCount])
  {
    [v318 clearVideoThumbnailResults];
    videoThumbnailResultsCount = [(VCPProtoAssetAnalysis *)self videoThumbnailResultsCount];
    if (videoThumbnailResultsCount)
    {
      v315 = videoThumbnailResultsCount;
      for (i68 = 0; i68 != v315; ++i68)
      {
        v317 = [(VCPProtoAssetAnalysis *)self videoThumbnailResultsAtIndex:i68];
        [v318 addVideoThumbnailResults:v317];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v876 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  *(v5 + 676) = self->_version;
  *(v5 + 672) = self->_types;
  *(v5 + 160) = self->_flags;
  *(v5 + 16) = self->_date;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_quality;
    *(v5 + 736) |= 1u;
  }

  v7 = [(NSString *)self->_assetIdentifier copyWithZone:zone];
  v8 = *(v6 + 72);
  *(v6 + 72) = v7;

  *(v6 + 8) = self->_assetModificationDate;
  v9 = [(NSString *)self->_assetMasterFingerprint copyWithZone:zone];
  v10 = *(v6 + 80);
  *(v6 + 80) = v9;

  v11 = [(NSString *)self->_assetAdjustedFingerprint copyWithZone:zone];
  v12 = *(v6 + 56);
  *(v6 + 56) = v11;

  v797 = 0u;
  v796 = 0u;
  v795 = 0u;
  v794 = 0u;
  v13 = self->_imageBlurResults;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v794 objects:v875 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v795;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v795 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v794 + 1) + 8 * i) copyWithZone:zone];
        [v6 addImageBlurResults:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v794 objects:v875 count:16];
    }

    while (v15);
  }

  v793 = 0u;
  v792 = 0u;
  v791 = 0u;
  v790 = 0u;
  v19 = self->_imageCompositionResults;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v790 objects:v874 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v791;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v791 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v790 + 1) + 8 * j) copyWithZone:zone];
        [v6 addImageCompositionResults:v24];
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v790 objects:v874 count:16];
    }

    while (v21);
  }

  v789 = 0u;
  v788 = 0u;
  v787 = 0u;
  v786 = 0u;
  v25 = self->_imageFaceResults;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v786 objects:v873 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v787;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v787 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v786 + 1) + 8 * k) copyWithZone:zone];
        [v6 addImageFaceResults:v30];
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v786 objects:v873 count:16];
    }

    while (v27);
  }

  v785 = 0u;
  v784 = 0u;
  v783 = 0u;
  v782 = 0u;
  v31 = self->_imageFeatureResults;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v782 objects:v872 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v783;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v783 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [*(*(&v782 + 1) + 8 * m) copyWithZone:zone];
        [v6 addImageFeatureResults:v36];
      }

      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v782 objects:v872 count:16];
    }

    while (v33);
  }

  v781 = 0u;
  v780 = 0u;
  v779 = 0u;
  v778 = 0u;
  v37 = self->_imageJunkResults;
  v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v778 objects:v871 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v779;
    do
    {
      for (n = 0; n != v39; ++n)
      {
        if (*v779 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = [*(*(&v778 + 1) + 8 * n) copyWithZone:zone];
        [v6 addImageJunkResults:v42];
      }

      v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v778 objects:v871 count:16];
    }

    while (v39);
  }

  v777 = 0u;
  v776 = 0u;
  v775 = 0u;
  v774 = 0u;
  v43 = self->_imageSaliencyResults;
  v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v774 objects:v870 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v775;
    do
    {
      for (ii = 0; ii != v45; ++ii)
      {
        if (*v775 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = [*(*(&v774 + 1) + 8 * ii) copyWithZone:zone];
        [v6 addImageSaliencyResults:v48];
      }

      v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v774 objects:v870 count:16];
    }

    while (v45);
  }

  v773 = 0u;
  v772 = 0u;
  v771 = 0u;
  v770 = 0u;
  v49 = self->_imageShotTypeResults;
  v50 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v770 objects:v869 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v771;
    do
    {
      for (jj = 0; jj != v51; ++jj)
      {
        if (*v771 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = [*(*(&v770 + 1) + 8 * jj) copyWithZone:zone];
        [v6 addImageShotTypeResults:v54];
      }

      v51 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v770 objects:v869 count:16];
    }

    while (v51);
  }

  v769 = 0u;
  v768 = 0u;
  v767 = 0u;
  v766 = 0u;
  v55 = self->_livePhotoRecommendationResults;
  v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v766 objects:v868 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v767;
    do
    {
      for (kk = 0; kk != v57; ++kk)
      {
        if (*v767 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = [*(*(&v766 + 1) + 8 * kk) copyWithZone:zone];
        [v6 addLivePhotoRecommendationResults:v60];
      }

      v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v766 objects:v868 count:16];
    }

    while (v57);
  }

  v765 = 0u;
  v764 = 0u;
  v763 = 0u;
  v762 = 0u;
  v61 = self->_livePhotoSharpnessResults;
  v62 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v762 objects:v867 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v763;
    do
    {
      for (mm = 0; mm != v63; ++mm)
      {
        if (*v763 != v64)
        {
          objc_enumerationMutation(v61);
        }

        v66 = [*(*(&v762 + 1) + 8 * mm) copyWithZone:zone];
        [v6 addLivePhotoSharpnessResults:v66];
      }

      v63 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v762 objects:v867 count:16];
    }

    while (v63);
  }

  v761 = 0u;
  v760 = 0u;
  v759 = 0u;
  v758 = 0u;
  v67 = self->_movieActivityLevelResults;
  v68 = [(NSMutableArray *)v67 countByEnumeratingWithState:&v758 objects:v866 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v759;
    do
    {
      for (nn = 0; nn != v69; ++nn)
      {
        if (*v759 != v70)
        {
          objc_enumerationMutation(v67);
        }

        v72 = [*(*(&v758 + 1) + 8 * nn) copyWithZone:zone];
        [v6 addMovieActivityLevelResults:v72];
      }

      v69 = [(NSMutableArray *)v67 countByEnumeratingWithState:&v758 objects:v866 count:16];
    }

    while (v69);
  }

  v757 = 0u;
  v756 = 0u;
  v755 = 0u;
  v754 = 0u;
  v73 = self->_movieCameraMotionResults;
  v74 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v754 objects:v865 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v755;
    do
    {
      for (i1 = 0; i1 != v75; ++i1)
      {
        if (*v755 != v76)
        {
          objc_enumerationMutation(v73);
        }

        v78 = [*(*(&v754 + 1) + 8 * i1) copyWithZone:zone];
        [v6 addMovieCameraMotionResults:v78];
      }

      v75 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v754 objects:v865 count:16];
    }

    while (v75);
  }

  v753 = 0u;
  v752 = 0u;
  v751 = 0u;
  v750 = 0u;
  v79 = self->_movieClassificationResults;
  v80 = [(NSMutableArray *)v79 countByEnumeratingWithState:&v750 objects:v864 count:16];
  if (v80)
  {
    v81 = v80;
    v82 = *v751;
    do
    {
      for (i2 = 0; i2 != v81; ++i2)
      {
        if (*v751 != v82)
        {
          objc_enumerationMutation(v79);
        }

        v84 = [*(*(&v750 + 1) + 8 * i2) copyWithZone:zone];
        [v6 addMovieClassificationResults:v84];
      }

      v81 = [(NSMutableArray *)v79 countByEnumeratingWithState:&v750 objects:v864 count:16];
    }

    while (v81);
  }

  v749 = 0u;
  v748 = 0u;
  v747 = 0u;
  v746 = 0u;
  v85 = self->_movieFaceResults;
  v86 = [(NSMutableArray *)v85 countByEnumeratingWithState:&v746 objects:v863 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v747;
    do
    {
      for (i3 = 0; i3 != v87; ++i3)
      {
        if (*v747 != v88)
        {
          objc_enumerationMutation(v85);
        }

        v90 = [*(*(&v746 + 1) + 8 * i3) copyWithZone:zone];
        [v6 addMovieFaceResults:v90];
      }

      v87 = [(NSMutableArray *)v85 countByEnumeratingWithState:&v746 objects:v863 count:16];
    }

    while (v87);
  }

  v745 = 0u;
  v744 = 0u;
  v743 = 0u;
  v742 = 0u;
  v91 = self->_movieFaceprintResults;
  v92 = [(NSMutableArray *)v91 countByEnumeratingWithState:&v742 objects:v862 count:16];
  if (v92)
  {
    v93 = v92;
    v94 = *v743;
    do
    {
      for (i4 = 0; i4 != v93; ++i4)
      {
        if (*v743 != v94)
        {
          objc_enumerationMutation(v91);
        }

        v96 = [*(*(&v742 + 1) + 8 * i4) copyWithZone:zone];
        [v6 addMovieFaceprintResults:v96];
      }

      v93 = [(NSMutableArray *)v91 countByEnumeratingWithState:&v742 objects:v862 count:16];
    }

    while (v93);
  }

  v741 = 0u;
  v740 = 0u;
  v739 = 0u;
  v738 = 0u;
  v97 = self->_movieFeatureResults;
  v98 = [(NSMutableArray *)v97 countByEnumeratingWithState:&v738 objects:v861 count:16];
  if (v98)
  {
    v99 = v98;
    v100 = *v739;
    do
    {
      for (i5 = 0; i5 != v99; ++i5)
      {
        if (*v739 != v100)
        {
          objc_enumerationMutation(v97);
        }

        v102 = [*(*(&v738 + 1) + 8 * i5) copyWithZone:zone];
        [v6 addMovieFeatureResults:v102];
      }

      v99 = [(NSMutableArray *)v97 countByEnumeratingWithState:&v738 objects:v861 count:16];
    }

    while (v99);
  }

  v737 = 0u;
  v736 = 0u;
  v735 = 0u;
  v734 = 0u;
  v103 = self->_movieFineSubjectMotionResults;
  v104 = [(NSMutableArray *)v103 countByEnumeratingWithState:&v734 objects:v860 count:16];
  if (v104)
  {
    v105 = v104;
    v106 = *v735;
    do
    {
      for (i6 = 0; i6 != v105; ++i6)
      {
        if (*v735 != v106)
        {
          objc_enumerationMutation(v103);
        }

        v108 = [*(*(&v734 + 1) + 8 * i6) copyWithZone:zone];
        [v6 addMovieFineSubjectMotionResults:v108];
      }

      v105 = [(NSMutableArray *)v103 countByEnumeratingWithState:&v734 objects:v860 count:16];
    }

    while (v105);
  }

  v733 = 0u;
  v732 = 0u;
  v731 = 0u;
  v730 = 0u;
  v109 = self->_movieInterestingnessResults;
  v110 = [(NSMutableArray *)v109 countByEnumeratingWithState:&v730 objects:v859 count:16];
  if (v110)
  {
    v111 = v110;
    v112 = *v731;
    do
    {
      for (i7 = 0; i7 != v111; ++i7)
      {
        if (*v731 != v112)
        {
          objc_enumerationMutation(v109);
        }

        v114 = [*(*(&v730 + 1) + 8 * i7) copyWithZone:zone];
        [v6 addMovieInterestingnessResults:v114];
      }

      v111 = [(NSMutableArray *)v109 countByEnumeratingWithState:&v730 objects:v859 count:16];
    }

    while (v111);
  }

  v729 = 0u;
  v728 = 0u;
  v727 = 0u;
  v726 = 0u;
  v115 = self->_movieMovingObjectResults;
  v116 = [(NSMutableArray *)v115 countByEnumeratingWithState:&v726 objects:v858 count:16];
  if (v116)
  {
    v117 = v116;
    v118 = *v727;
    do
    {
      for (i8 = 0; i8 != v117; ++i8)
      {
        if (*v727 != v118)
        {
          objc_enumerationMutation(v115);
        }

        v120 = [*(*(&v726 + 1) + 8 * i8) copyWithZone:zone];
        [v6 addMovieMovingObjectResults:v120];
      }

      v117 = [(NSMutableArray *)v115 countByEnumeratingWithState:&v726 objects:v858 count:16];
    }

    while (v117);
  }

  v725 = 0u;
  v724 = 0u;
  v723 = 0u;
  v722 = 0u;
  v121 = self->_movieMusicResults;
  v122 = [(NSMutableArray *)v121 countByEnumeratingWithState:&v722 objects:v857 count:16];
  if (v122)
  {
    v123 = v122;
    v124 = *v723;
    do
    {
      for (i9 = 0; i9 != v123; ++i9)
      {
        if (*v723 != v124)
        {
          objc_enumerationMutation(v121);
        }

        v126 = [*(*(&v722 + 1) + 8 * i9) copyWithZone:zone];
        [v6 addMovieMusicResults:v126];
      }

      v123 = [(NSMutableArray *)v121 countByEnumeratingWithState:&v722 objects:v857 count:16];
    }

    while (v123);
  }

  v721 = 0u;
  v720 = 0u;
  v719 = 0u;
  v718 = 0u;
  v127 = self->_movieObstructionResults;
  v128 = [(NSMutableArray *)v127 countByEnumeratingWithState:&v718 objects:v856 count:16];
  if (v128)
  {
    v129 = v128;
    v130 = *v719;
    do
    {
      for (i10 = 0; i10 != v129; ++i10)
      {
        if (*v719 != v130)
        {
          objc_enumerationMutation(v127);
        }

        v132 = [*(*(&v718 + 1) + 8 * i10) copyWithZone:zone];
        [v6 addMovieObstructionResults:v132];
      }

      v129 = [(NSMutableArray *)v127 countByEnumeratingWithState:&v718 objects:v856 count:16];
    }

    while (v129);
  }

  v717 = 0u;
  v716 = 0u;
  v715 = 0u;
  v714 = 0u;
  v133 = self->_movieOrientationResults;
  v134 = [(NSMutableArray *)v133 countByEnumeratingWithState:&v714 objects:v855 count:16];
  if (v134)
  {
    v135 = v134;
    v136 = *v715;
    do
    {
      for (i11 = 0; i11 != v135; ++i11)
      {
        if (*v715 != v136)
        {
          objc_enumerationMutation(v133);
        }

        v138 = [*(*(&v714 + 1) + 8 * i11) copyWithZone:zone];
        [v6 addMovieOrientationResults:v138];
      }

      v135 = [(NSMutableArray *)v133 countByEnumeratingWithState:&v714 objects:v855 count:16];
    }

    while (v135);
  }

  v713 = 0u;
  v712 = 0u;
  v711 = 0u;
  v710 = 0u;
  v139 = self->_moviePreEncodeResults;
  v140 = [(NSMutableArray *)v139 countByEnumeratingWithState:&v710 objects:v854 count:16];
  if (v140)
  {
    v141 = v140;
    v142 = *v711;
    do
    {
      for (i12 = 0; i12 != v141; ++i12)
      {
        if (*v711 != v142)
        {
          objc_enumerationMutation(v139);
        }

        v144 = [*(*(&v710 + 1) + 8 * i12) copyWithZone:zone];
        [v6 addMoviePreEncodeResults:v144];
      }

      v141 = [(NSMutableArray *)v139 countByEnumeratingWithState:&v710 objects:v854 count:16];
    }

    while (v141);
  }

  v709 = 0u;
  v708 = 0u;
  v707 = 0u;
  v706 = 0u;
  v145 = self->_movieQualityResults;
  v146 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v706 objects:v853 count:16];
  if (v146)
  {
    v147 = v146;
    v148 = *v707;
    do
    {
      for (i13 = 0; i13 != v147; ++i13)
      {
        if (*v707 != v148)
        {
          objc_enumerationMutation(v145);
        }

        v150 = [*(*(&v706 + 1) + 8 * i13) copyWithZone:zone];
        [v6 addMovieQualityResults:v150];
      }

      v147 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v706 objects:v853 count:16];
    }

    while (v147);
  }

  v705 = 0u;
  v704 = 0u;
  v703 = 0u;
  v702 = 0u;
  v151 = self->_movieSaliencyResults;
  v152 = [(NSMutableArray *)v151 countByEnumeratingWithState:&v702 objects:v852 count:16];
  if (v152)
  {
    v153 = v152;
    v154 = *v703;
    do
    {
      for (i14 = 0; i14 != v153; ++i14)
      {
        if (*v703 != v154)
        {
          objc_enumerationMutation(v151);
        }

        v156 = [*(*(&v702 + 1) + 8 * i14) copyWithZone:zone];
        [v6 addMovieSaliencyResults:v156];
      }

      v153 = [(NSMutableArray *)v151 countByEnumeratingWithState:&v702 objects:v852 count:16];
    }

    while (v153);
  }

  v701 = 0u;
  v700 = 0u;
  v699 = 0u;
  v698 = 0u;
  v157 = self->_movieSceneResults;
  v158 = [(NSMutableArray *)v157 countByEnumeratingWithState:&v698 objects:v851 count:16];
  if (v158)
  {
    v159 = v158;
    v160 = *v699;
    do
    {
      for (i15 = 0; i15 != v159; ++i15)
      {
        if (*v699 != v160)
        {
          objc_enumerationMutation(v157);
        }

        v162 = [*(*(&v698 + 1) + 8 * i15) copyWithZone:zone];
        [v6 addMovieSceneResults:v162];
      }

      v159 = [(NSMutableArray *)v157 countByEnumeratingWithState:&v698 objects:v851 count:16];
    }

    while (v159);
  }

  v697 = 0u;
  v696 = 0u;
  v695 = 0u;
  v694 = 0u;
  v163 = self->_movieSubjectMotionResults;
  v164 = [(NSMutableArray *)v163 countByEnumeratingWithState:&v694 objects:v850 count:16];
  if (v164)
  {
    v165 = v164;
    v166 = *v695;
    do
    {
      for (i16 = 0; i16 != v165; ++i16)
      {
        if (*v695 != v166)
        {
          objc_enumerationMutation(v163);
        }

        v168 = [*(*(&v694 + 1) + 8 * i16) copyWithZone:zone];
        [v6 addMovieSubjectMotionResults:v168];
      }

      v165 = [(NSMutableArray *)v163 countByEnumeratingWithState:&v694 objects:v850 count:16];
    }

    while (v165);
  }

  v693 = 0u;
  v692 = 0u;
  v691 = 0u;
  v690 = 0u;
  v169 = self->_movieUtteranceResults;
  v170 = [(NSMutableArray *)v169 countByEnumeratingWithState:&v690 objects:v849 count:16];
  if (v170)
  {
    v171 = v170;
    v172 = *v691;
    do
    {
      for (i17 = 0; i17 != v171; ++i17)
      {
        if (*v691 != v172)
        {
          objc_enumerationMutation(v169);
        }

        v174 = [*(*(&v690 + 1) + 8 * i17) copyWithZone:zone];
        [v6 addMovieUtteranceResults:v174];
      }

      v171 = [(NSMutableArray *)v169 countByEnumeratingWithState:&v690 objects:v849 count:16];
    }

    while (v171);
  }

  v689 = 0u;
  v688 = 0u;
  v687 = 0u;
  v686 = 0u;
  v175 = self->_movieVoiceResults;
  v176 = [(NSMutableArray *)v175 countByEnumeratingWithState:&v686 objects:v848 count:16];
  if (v176)
  {
    v177 = v176;
    v178 = *v687;
    do
    {
      for (i18 = 0; i18 != v177; ++i18)
      {
        if (*v687 != v178)
        {
          objc_enumerationMutation(v175);
        }

        v180 = [*(*(&v686 + 1) + 8 * i18) copyWithZone:zone];
        [v6 addMovieVoiceResults:v180];
      }

      v177 = [(NSMutableArray *)v175 countByEnumeratingWithState:&v686 objects:v848 count:16];
    }

    while (v177);
  }

  v685 = 0u;
  v684 = 0u;
  v683 = 0u;
  v682 = 0u;
  v181 = self->_imagePetsResults;
  v182 = [(NSMutableArray *)v181 countByEnumeratingWithState:&v682 objects:v847 count:16];
  if (v182)
  {
    v183 = v182;
    v184 = *v683;
    do
    {
      for (i19 = 0; i19 != v183; ++i19)
      {
        if (*v683 != v184)
        {
          objc_enumerationMutation(v181);
        }

        v186 = [*(*(&v682 + 1) + 8 * i19) copyWithZone:zone];
        [v6 addImagePetsResults:v186];
      }

      v183 = [(NSMutableArray *)v181 countByEnumeratingWithState:&v682 objects:v847 count:16];
    }

    while (v183);
  }

  v681 = 0u;
  v680 = 0u;
  v679 = 0u;
  v678 = 0u;
  v187 = self->_movieSummaryResults;
  v188 = [(NSMutableArray *)v187 countByEnumeratingWithState:&v678 objects:v846 count:16];
  if (v188)
  {
    v189 = v188;
    v190 = *v679;
    do
    {
      for (i20 = 0; i20 != v189; ++i20)
      {
        if (*v679 != v190)
        {
          objc_enumerationMutation(v187);
        }

        v192 = [*(*(&v678 + 1) + 8 * i20) copyWithZone:zone];
        [v6 addMovieSummaryResults:v192];
      }

      v189 = [(NSMutableArray *)v187 countByEnumeratingWithState:&v678 objects:v846 count:16];
    }

    while (v189);
  }

  v677 = 0u;
  v676 = 0u;
  v675 = 0u;
  v674 = 0u;
  v193 = self->_movieHighlightResults;
  v194 = [(NSMutableArray *)v193 countByEnumeratingWithState:&v674 objects:v845 count:16];
  if (v194)
  {
    v195 = v194;
    v196 = *v675;
    do
    {
      for (i21 = 0; i21 != v195; ++i21)
      {
        if (*v675 != v196)
        {
          objc_enumerationMutation(v193);
        }

        v198 = [*(*(&v674 + 1) + 8 * i21) copyWithZone:zone];
        [v6 addMovieHighlightResults:v198];
      }

      v195 = [(NSMutableArray *)v193 countByEnumeratingWithState:&v674 objects:v845 count:16];
    }

    while (v195);
  }

  v673 = 0u;
  v672 = 0u;
  v671 = 0u;
  v670 = 0u;
  v199 = self->_imageExposureResults;
  v200 = [(NSMutableArray *)v199 countByEnumeratingWithState:&v670 objects:v844 count:16];
  if (v200)
  {
    v201 = v200;
    v202 = *v671;
    do
    {
      for (i22 = 0; i22 != v201; ++i22)
      {
        if (*v671 != v202)
        {
          objc_enumerationMutation(v199);
        }

        v204 = [*(*(&v670 + 1) + 8 * i22) copyWithZone:zone];
        [v6 addImageExposureResults:v204];
      }

      v201 = [(NSMutableArray *)v199 countByEnumeratingWithState:&v670 objects:v844 count:16];
    }

    while (v201);
  }

  v669 = 0u;
  v668 = 0u;
  v667 = 0u;
  v666 = 0u;
  v205 = self->_livePhotoEffectsResults;
  v206 = [(NSMutableArray *)v205 countByEnumeratingWithState:&v666 objects:v843 count:16];
  if (v206)
  {
    v207 = v206;
    v208 = *v667;
    do
    {
      for (i23 = 0; i23 != v207; ++i23)
      {
        if (*v667 != v208)
        {
          objc_enumerationMutation(v205);
        }

        v210 = [*(*(&v666 + 1) + 8 * i23) copyWithZone:zone];
        [v6 addLivePhotoEffectsResults:v210];
      }

      v207 = [(NSMutableArray *)v205 countByEnumeratingWithState:&v666 objects:v843 count:16];
    }

    while (v207);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 32) = self->_statsFlags;
    *(v6 + 736) |= 2u;
  }

  v665 = 0u;
  v664 = 0u;
  v663 = 0u;
  v662 = 0u;
  v211 = self->_imagePetsFaceResults;
  v212 = [(NSMutableArray *)v211 countByEnumeratingWithState:&v662 objects:v842 count:16];
  if (v212)
  {
    v213 = v212;
    v214 = *v663;
    do
    {
      for (i24 = 0; i24 != v213; ++i24)
      {
        if (*v663 != v214)
        {
          objc_enumerationMutation(v211);
        }

        v216 = [*(*(&v662 + 1) + 8 * i24) copyWithZone:zone];
        [v6 addImagePetsFaceResults:v216];
      }

      v213 = [(NSMutableArray *)v211 countByEnumeratingWithState:&v662 objects:v842 count:16];
    }

    while (v213);
  }

  v661 = 0u;
  v660 = 0u;
  v659 = 0u;
  v658 = 0u;
  v217 = self->_imageSceneprintResults;
  v218 = [(NSMutableArray *)v217 countByEnumeratingWithState:&v658 objects:v841 count:16];
  if (v218)
  {
    v219 = v218;
    v220 = *v659;
    do
    {
      for (i25 = 0; i25 != v219; ++i25)
      {
        if (*v659 != v220)
        {
          objc_enumerationMutation(v217);
        }

        v222 = [*(*(&v658 + 1) + 8 * i25) copyWithZone:zone];
        [v6 addImageSceneprintResults:v222];
      }

      v219 = [(NSMutableArray *)v217 countByEnumeratingWithState:&v658 objects:v841 count:16];
    }

    while (v219);
  }

  v657 = 0u;
  v656 = 0u;
  v655 = 0u;
  v654 = 0u;
  v223 = self->_movieSceneprintResults;
  v224 = [(NSMutableArray *)v223 countByEnumeratingWithState:&v654 objects:v840 count:16];
  if (v224)
  {
    v225 = v224;
    v226 = *v655;
    do
    {
      for (i26 = 0; i26 != v225; ++i26)
      {
        if (*v655 != v226)
        {
          objc_enumerationMutation(v223);
        }

        v228 = [*(*(&v654 + 1) + 8 * i26) copyWithZone:zone];
        [v6 addMovieSceneprintResults:v228];
      }

      v225 = [(NSMutableArray *)v223 countByEnumeratingWithState:&v654 objects:v840 count:16];
    }

    while (v225);
  }

  v653 = 0u;
  v652 = 0u;
  v651 = 0u;
  v650 = 0u;
  v229 = self->_imageHumanPoseResults;
  v230 = [(NSMutableArray *)v229 countByEnumeratingWithState:&v650 objects:v839 count:16];
  if (v230)
  {
    v231 = v230;
    v232 = *v651;
    do
    {
      for (i27 = 0; i27 != v231; ++i27)
      {
        if (*v651 != v232)
        {
          objc_enumerationMutation(v229);
        }

        v234 = [*(*(&v650 + 1) + 8 * i27) copyWithZone:zone];
        [v6 addImageHumanPoseResults:v234];
      }

      v231 = [(NSMutableArray *)v229 countByEnumeratingWithState:&v650 objects:v839 count:16];
    }

    while (v231);
  }

  v649 = 0u;
  v648 = 0u;
  v647 = 0u;
  v646 = 0u;
  v235 = self->_movieHumanPoseResults;
  v236 = [(NSMutableArray *)v235 countByEnumeratingWithState:&v646 objects:v838 count:16];
  if (v236)
  {
    v237 = v236;
    v238 = *v647;
    do
    {
      for (i28 = 0; i28 != v237; ++i28)
      {
        if (*v647 != v238)
        {
          objc_enumerationMutation(v235);
        }

        v240 = [*(*(&v646 + 1) + 8 * i28) copyWithZone:zone];
        [v6 addMovieHumanPoseResults:v240];
      }

      v237 = [(NSMutableArray *)v235 countByEnumeratingWithState:&v646 objects:v838 count:16];
    }

    while (v237);
  }

  v645 = 0u;
  v644 = 0u;
  v643 = 0u;
  v642 = 0u;
  v241 = self->_movieApplauseResults;
  v242 = [(NSMutableArray *)v241 countByEnumeratingWithState:&v642 objects:v837 count:16];
  if (v242)
  {
    v243 = v242;
    v244 = *v643;
    do
    {
      for (i29 = 0; i29 != v243; ++i29)
      {
        if (*v643 != v244)
        {
          objc_enumerationMutation(v241);
        }

        v246 = [*(*(&v642 + 1) + 8 * i29) copyWithZone:zone];
        [v6 addMovieApplauseResults:v246];
      }

      v243 = [(NSMutableArray *)v241 countByEnumeratingWithState:&v642 objects:v837 count:16];
    }

    while (v243);
  }

  v641 = 0u;
  v640 = 0u;
  v639 = 0u;
  v638 = 0u;
  v247 = self->_movieBabbleResults;
  v248 = [(NSMutableArray *)v247 countByEnumeratingWithState:&v638 objects:v836 count:16];
  if (v248)
  {
    v249 = v248;
    v250 = *v639;
    do
    {
      for (i30 = 0; i30 != v249; ++i30)
      {
        if (*v639 != v250)
        {
          objc_enumerationMutation(v247);
        }

        v252 = [*(*(&v638 + 1) + 8 * i30) copyWithZone:zone];
        [v6 addMovieBabbleResults:v252];
      }

      v249 = [(NSMutableArray *)v247 countByEnumeratingWithState:&v638 objects:v836 count:16];
    }

    while (v249);
  }

  v637 = 0u;
  v636 = 0u;
  v635 = 0u;
  v634 = 0u;
  v253 = self->_movieCheeringResults;
  v254 = [(NSMutableArray *)v253 countByEnumeratingWithState:&v634 objects:v835 count:16];
  if (v254)
  {
    v255 = v254;
    v256 = *v635;
    do
    {
      for (i31 = 0; i31 != v255; ++i31)
      {
        if (*v635 != v256)
        {
          objc_enumerationMutation(v253);
        }

        v258 = [*(*(&v634 + 1) + 8 * i31) copyWithZone:zone];
        [v6 addMovieCheeringResults:v258];
      }

      v255 = [(NSMutableArray *)v253 countByEnumeratingWithState:&v634 objects:v835 count:16];
    }

    while (v255);
  }

  v633 = 0u;
  v632 = 0u;
  v631 = 0u;
  v630 = 0u;
  v259 = self->_movieLaughterResults;
  v260 = [(NSMutableArray *)v259 countByEnumeratingWithState:&v630 objects:v834 count:16];
  if (v260)
  {
    v261 = v260;
    v262 = *v631;
    do
    {
      for (i32 = 0; i32 != v261; ++i32)
      {
        if (*v631 != v262)
        {
          objc_enumerationMutation(v259);
        }

        v264 = [*(*(&v630 + 1) + 8 * i32) copyWithZone:zone];
        [v6 addMovieLaughterResults:v264];
      }

      v261 = [(NSMutableArray *)v259 countByEnumeratingWithState:&v630 objects:v834 count:16];
    }

    while (v261);
  }

  v629 = 0u;
  v628 = 0u;
  v627 = 0u;
  v626 = 0u;
  v265 = self->_livePhotoKeyFrameResults;
  v266 = [(NSMutableArray *)v265 countByEnumeratingWithState:&v626 objects:v833 count:16];
  if (v266)
  {
    v267 = v266;
    v268 = *v627;
    do
    {
      for (i33 = 0; i33 != v267; ++i33)
      {
        if (*v627 != v268)
        {
          objc_enumerationMutation(v265);
        }

        v270 = [*(*(&v626 + 1) + 8 * i33) copyWithZone:zone];
        [v6 addLivePhotoKeyFrameResults:v270];
      }

      v267 = [(NSMutableArray *)v265 countByEnumeratingWithState:&v626 objects:v833 count:16];
    }

    while (v267);
  }

  v625 = 0u;
  v624 = 0u;
  v623 = 0u;
  v622 = 0u;
  v271 = self->_livePhotoKeyFrameStillResults;
  v272 = [(NSMutableArray *)v271 countByEnumeratingWithState:&v622 objects:v832 count:16];
  if (v272)
  {
    v273 = v272;
    v274 = *v623;
    do
    {
      for (i34 = 0; i34 != v273; ++i34)
      {
        if (*v623 != v274)
        {
          objc_enumerationMutation(v271);
        }

        v276 = [*(*(&v622 + 1) + 8 * i34) copyWithZone:zone];
        [v6 addLivePhotoKeyFrameStillResults:v276];
      }

      v273 = [(NSMutableArray *)v271 countByEnumeratingWithState:&v622 objects:v832 count:16];
    }

    while (v273);
  }

  v621 = 0u;
  v620 = 0u;
  v619 = 0u;
  v618 = 0u;
  v277 = self->_movieHumanActionResults;
  v278 = [(NSMutableArray *)v277 countByEnumeratingWithState:&v618 objects:v831 count:16];
  if (v278)
  {
    v279 = v278;
    v280 = *v619;
    do
    {
      for (i35 = 0; i35 != v279; ++i35)
      {
        if (*v619 != v280)
        {
          objc_enumerationMutation(v277);
        }

        v282 = [*(*(&v618 + 1) + 8 * i35) copyWithZone:zone];
        [v6 addMovieHumanActionResults:v282];
      }

      v279 = [(NSMutableArray *)v277 countByEnumeratingWithState:&v618 objects:v831 count:16];
    }

    while (v279);
  }

  v617 = 0u;
  v616 = 0u;
  v615 = 0u;
  v614 = 0u;
  v283 = self->_movieSubtleMotionResults;
  v284 = [(NSMutableArray *)v283 countByEnumeratingWithState:&v614 objects:v830 count:16];
  if (v284)
  {
    v285 = v284;
    v286 = *v615;
    do
    {
      for (i36 = 0; i36 != v285; ++i36)
      {
        if (*v615 != v286)
        {
          objc_enumerationMutation(v283);
        }

        v288 = [*(*(&v614 + 1) + 8 * i36) copyWithZone:zone];
        [v6 addMovieSubtleMotionResults:v288];
      }

      v285 = [(NSMutableArray *)v283 countByEnumeratingWithState:&v614 objects:v830 count:16];
    }

    while (v285);
  }

  v613 = 0u;
  v612 = 0u;
  v611 = 0u;
  v610 = 0u;
  v289 = self->_movieLoudnessResults;
  v290 = [(NSMutableArray *)v289 countByEnumeratingWithState:&v610 objects:v829 count:16];
  if (v290)
  {
    v291 = v290;
    v292 = *v611;
    do
    {
      for (i37 = 0; i37 != v291; ++i37)
      {
        if (*v611 != v292)
        {
          objc_enumerationMutation(v289);
        }

        v294 = [*(*(&v610 + 1) + 8 * i37) copyWithZone:zone];
        [v6 addMovieLoudnessResults:v294];
      }

      v291 = [(NSMutableArray *)v289 countByEnumeratingWithState:&v610 objects:v829 count:16];
    }

    while (v291);
  }

  v609 = 0u;
  v608 = 0u;
  v607 = 0u;
  v606 = 0u;
  v295 = self->_moviePetsResults;
  v296 = [(NSMutableArray *)v295 countByEnumeratingWithState:&v606 objects:v828 count:16];
  if (v296)
  {
    v297 = v296;
    v298 = *v607;
    do
    {
      for (i38 = 0; i38 != v297; ++i38)
      {
        if (*v607 != v298)
        {
          objc_enumerationMutation(v295);
        }

        v300 = [*(*(&v606 + 1) + 8 * i38) copyWithZone:zone];
        [v6 addMoviePetsResults:v300];
      }

      v297 = [(NSMutableArray *)v295 countByEnumeratingWithState:&v606 objects:v828 count:16];
    }

    while (v297);
  }

  v605 = 0u;
  v604 = 0u;
  v603 = 0u;
  v602 = 0u;
  v301 = self->_moviePetsFaceResults;
  v302 = [(NSMutableArray *)v301 countByEnumeratingWithState:&v602 objects:v827 count:16];
  if (v302)
  {
    v303 = v302;
    v304 = *v603;
    do
    {
      for (i39 = 0; i39 != v303; ++i39)
      {
        if (*v603 != v304)
        {
          objc_enumerationMutation(v301);
        }

        v306 = [*(*(&v602 + 1) + 8 * i39) copyWithZone:zone];
        [v6 addMoviePetsFaceResults:v306];
      }

      v303 = [(NSMutableArray *)v301 countByEnumeratingWithState:&v602 objects:v827 count:16];
    }

    while (v303);
  }

  v601 = 0u;
  v600 = 0u;
  v599 = 0u;
  v598 = 0u;
  v307 = self->_movieStabilizationResults;
  v308 = [(NSMutableArray *)v307 countByEnumeratingWithState:&v598 objects:v826 count:16];
  if (v308)
  {
    v309 = v308;
    v310 = *v599;
    do
    {
      for (i40 = 0; i40 != v309; ++i40)
      {
        if (*v599 != v310)
        {
          objc_enumerationMutation(v307);
        }

        v312 = [*(*(&v598 + 1) + 8 * i40) copyWithZone:zone];
        [v6 addMovieStabilizationResults:v312];
      }

      v309 = [(NSMutableArray *)v307 countByEnumeratingWithState:&v598 objects:v826 count:16];
    }

    while (v309);
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 40) = self->_typesWide;
    *(v6 + 736) |= 4u;
  }

  v597 = 0u;
  v596 = 0u;
  v595 = 0u;
  v594 = 0u;
  v313 = self->_movieHighlightScoreResults;
  v314 = [(NSMutableArray *)v313 countByEnumeratingWithState:&v594 objects:v825 count:16];
  if (v314)
  {
    v315 = v314;
    v316 = *v595;
    do
    {
      for (i41 = 0; i41 != v315; ++i41)
      {
        if (*v595 != v316)
        {
          objc_enumerationMutation(v313);
        }

        v318 = [*(*(&v594 + 1) + 8 * i41) copyWithZone:zone];
        [v6 addMovieHighlightScoreResults:v318];
      }

      v315 = [(NSMutableArray *)v313 countByEnumeratingWithState:&v594 objects:v825 count:16];
    }

    while (v315);
  }

  v593 = 0u;
  v592 = 0u;
  v591 = 0u;
  v590 = 0u;
  v319 = self->_livePhotoHumanActionClassificationResults;
  v320 = [(NSMutableArray *)v319 countByEnumeratingWithState:&v590 objects:v824 count:16];
  if (v320)
  {
    v321 = v320;
    v322 = *v591;
    do
    {
      for (i42 = 0; i42 != v321; ++i42)
      {
        if (*v591 != v322)
        {
          objc_enumerationMutation(v319);
        }

        v324 = [*(*(&v590 + 1) + 8 * i42) copyWithZone:zone];
        [v6 addLivePhotoHumanActionClassificationResults:v324];
      }

      v321 = [(NSMutableArray *)v319 countByEnumeratingWithState:&v590 objects:v824 count:16];
    }

    while (v321);
  }

  v589 = 0u;
  v588 = 0u;
  v587 = 0u;
  v586 = 0u;
  v325 = self->_movieAudioQualityResults;
  v326 = [(NSMutableArray *)v325 countByEnumeratingWithState:&v586 objects:v823 count:16];
  if (v326)
  {
    v327 = v326;
    v328 = *v587;
    do
    {
      for (i43 = 0; i43 != v327; ++i43)
      {
        if (*v587 != v328)
        {
          objc_enumerationMutation(v325);
        }

        v330 = [*(*(&v586 + 1) + 8 * i43) copyWithZone:zone];
        [v6 addMovieAudioQualityResults:v330];
      }

      v327 = [(NSMutableArray *)v325 countByEnumeratingWithState:&v586 objects:v823 count:16];
    }

    while (v327);
  }

  v585 = 0u;
  v584 = 0u;
  v583 = 0u;
  v582 = 0u;
  v331 = self->_movieSafetyResults;
  v332 = [(NSMutableArray *)v331 countByEnumeratingWithState:&v582 objects:v822 count:16];
  if (v332)
  {
    v333 = v332;
    v334 = *v583;
    do
    {
      for (i44 = 0; i44 != v333; ++i44)
      {
        if (*v583 != v334)
        {
          objc_enumerationMutation(v331);
        }

        v336 = [*(*(&v582 + 1) + 8 * i44) copyWithZone:zone];
        [v6 addMovieSafetyResults:v336];
      }

      v333 = [(NSMutableArray *)v331 countByEnumeratingWithState:&v582 objects:v822 count:16];
    }

    while (v333);
  }

  v581 = 0u;
  v580 = 0u;
  v579 = 0u;
  v578 = 0u;
  v337 = self->_filesystemMovieClassificationResults;
  v338 = [(NSMutableArray *)v337 countByEnumeratingWithState:&v578 objects:v821 count:16];
  if (v338)
  {
    v339 = v338;
    v340 = *v579;
    do
    {
      for (i45 = 0; i45 != v339; ++i45)
      {
        if (*v579 != v340)
        {
          objc_enumerationMutation(v337);
        }

        v342 = [*(*(&v578 + 1) + 8 * i45) copyWithZone:zone];
        [v6 addFilesystemMovieClassificationResults:v342];
      }

      v339 = [(NSMutableArray *)v337 countByEnumeratingWithState:&v578 objects:v821 count:16];
    }

    while (v339);
  }

  v577 = 0u;
  v576 = 0u;
  v575 = 0u;
  v574 = 0u;
  v343 = self->_filesystemMovieHumanActionClassificationResults;
  v344 = [(NSMutableArray *)v343 countByEnumeratingWithState:&v574 objects:v820 count:16];
  if (v344)
  {
    v345 = v344;
    v346 = *v575;
    do
    {
      for (i46 = 0; i46 != v345; ++i46)
      {
        if (*v575 != v346)
        {
          objc_enumerationMutation(v343);
        }

        v348 = [*(*(&v574 + 1) + 8 * i46) copyWithZone:zone];
        [v6 addFilesystemMovieHumanActionClassificationResults:v348];
      }

      v345 = [(NSMutableArray *)v343 countByEnumeratingWithState:&v574 objects:v820 count:16];
    }

    while (v345);
  }

  v573 = 0u;
  v572 = 0u;
  v571 = 0u;
  v570 = 0u;
  v349 = self->_filesystemMovieApplauseResults;
  v350 = [(NSMutableArray *)v349 countByEnumeratingWithState:&v570 objects:v819 count:16];
  if (v350)
  {
    v351 = v350;
    v352 = *v571;
    do
    {
      for (i47 = 0; i47 != v351; ++i47)
      {
        if (*v571 != v352)
        {
          objc_enumerationMutation(v349);
        }

        v354 = [*(*(&v570 + 1) + 8 * i47) copyWithZone:zone];
        [v6 addFilesystemMovieApplauseResults:v354];
      }

      v351 = [(NSMutableArray *)v349 countByEnumeratingWithState:&v570 objects:v819 count:16];
    }

    while (v351);
  }

  v569 = 0u;
  v568 = 0u;
  v567 = 0u;
  v566 = 0u;
  v355 = self->_filesystemMovieBabbleResults;
  v356 = [(NSMutableArray *)v355 countByEnumeratingWithState:&v566 objects:v818 count:16];
  if (v356)
  {
    v357 = v356;
    v358 = *v567;
    do
    {
      for (i48 = 0; i48 != v357; ++i48)
      {
        if (*v567 != v358)
        {
          objc_enumerationMutation(v355);
        }

        v360 = [*(*(&v566 + 1) + 8 * i48) copyWithZone:zone];
        [v6 addFilesystemMovieBabbleResults:v360];
      }

      v357 = [(NSMutableArray *)v355 countByEnumeratingWithState:&v566 objects:v818 count:16];
    }

    while (v357);
  }

  v565 = 0u;
  v564 = 0u;
  v563 = 0u;
  v562 = 0u;
  v361 = self->_filesystemMovieCheeringResults;
  v362 = [(NSMutableArray *)v361 countByEnumeratingWithState:&v562 objects:v817 count:16];
  if (v362)
  {
    v363 = v362;
    v364 = *v563;
    do
    {
      for (i49 = 0; i49 != v363; ++i49)
      {
        if (*v563 != v364)
        {
          objc_enumerationMutation(v361);
        }

        v366 = [*(*(&v562 + 1) + 8 * i49) copyWithZone:zone];
        [v6 addFilesystemMovieCheeringResults:v366];
      }

      v363 = [(NSMutableArray *)v361 countByEnumeratingWithState:&v562 objects:v817 count:16];
    }

    while (v363);
  }

  v561 = 0u;
  v560 = 0u;
  v559 = 0u;
  v558 = 0u;
  v367 = self->_filesystemMovieLaughterResults;
  v368 = [(NSMutableArray *)v367 countByEnumeratingWithState:&v558 objects:v816 count:16];
  if (v368)
  {
    v369 = v368;
    v370 = *v559;
    do
    {
      for (i50 = 0; i50 != v369; ++i50)
      {
        if (*v559 != v370)
        {
          objc_enumerationMutation(v367);
        }

        v372 = [*(*(&v558 + 1) + 8 * i50) copyWithZone:zone];
        [v6 addFilesystemMovieLaughterResults:v372];
      }

      v369 = [(NSMutableArray *)v367 countByEnumeratingWithState:&v558 objects:v816 count:16];
    }

    while (v369);
  }

  v557 = 0u;
  v556 = 0u;
  v555 = 0u;
  v554 = 0u;
  v373 = self->_filesystemMovieMusicResults;
  v374 = [(NSMutableArray *)v373 countByEnumeratingWithState:&v554 objects:v815 count:16];
  if (v374)
  {
    v375 = v374;
    v376 = *v555;
    do
    {
      for (i51 = 0; i51 != v375; ++i51)
      {
        if (*v555 != v376)
        {
          objc_enumerationMutation(v373);
        }

        v378 = [*(*(&v554 + 1) + 8 * i51) copyWithZone:zone];
        [v6 addFilesystemMovieMusicResults:v378];
      }

      v375 = [(NSMutableArray *)v373 countByEnumeratingWithState:&v554 objects:v815 count:16];
    }

    while (v375);
  }

  v553 = 0u;
  v552 = 0u;
  v551 = 0u;
  v550 = 0u;
  v379 = self->_filesystemMovieVoiceResults;
  v380 = [(NSMutableArray *)v379 countByEnumeratingWithState:&v550 objects:v814 count:16];
  if (v380)
  {
    v381 = v380;
    v382 = *v551;
    do
    {
      for (i52 = 0; i52 != v381; ++i52)
      {
        if (*v551 != v382)
        {
          objc_enumerationMutation(v379);
        }

        v384 = [*(*(&v550 + 1) + 8 * i52) copyWithZone:zone];
        [v6 addFilesystemMovieVoiceResults:v384];
      }

      v381 = [(NSMutableArray *)v379 countByEnumeratingWithState:&v550 objects:v814 count:16];
    }

    while (v381);
  }

  v548 = 0u;
  v549 = 0u;
  v546 = 0u;
  v547 = 0u;
  v385 = self->_animatedStickerResults;
  v386 = [(NSMutableArray *)v385 countByEnumeratingWithState:&v546 objects:v813 count:16];
  if (v386)
  {
    v387 = v386;
    v388 = *v547;
    do
    {
      for (i53 = 0; i53 != v387; ++i53)
      {
        if (*v547 != v388)
        {
          objc_enumerationMutation(v385);
        }

        v390 = [*(*(&v546 + 1) + 8 * i53) copyWithZone:zone];
        [v6 addAnimatedStickerResults:v390];
      }

      v387 = [(NSMutableArray *)v385 countByEnumeratingWithState:&v546 objects:v813 count:16];
    }

    while (v387);
  }

  v544 = 0u;
  v545 = 0u;
  v542 = 0u;
  v543 = 0u;
  v391 = self->_livePhotoSettlingEffectGatingResults;
  v392 = [(NSMutableArray *)v391 countByEnumeratingWithState:&v542 objects:v812 count:16];
  if (v392)
  {
    v393 = v392;
    v394 = *v543;
    do
    {
      for (i54 = 0; i54 != v393; ++i54)
      {
        if (*v543 != v394)
        {
          objc_enumerationMutation(v391);
        }

        v396 = [*(*(&v542 + 1) + 8 * i54) copyWithZone:zone];
        [v6 addLivePhotoSettlingEffectGatingResults:v396];
      }

      v393 = [(NSMutableArray *)v391 countByEnumeratingWithState:&v542 objects:v812 count:16];
    }

    while (v393);
  }

  v397 = [(NSString *)self->_assetCloudIdentifier copyWithZone:zone];
  v398 = *(v6 + 64);
  *(v6 + 64) = v397;

  v540 = 0u;
  v541 = 0u;
  v538 = 0u;
  v539 = 0u;
  v399 = self->_movieTorsoResults;
  v400 = [(NSMutableArray *)v399 countByEnumeratingWithState:&v538 objects:v811 count:16];
  if (v400)
  {
    v401 = v400;
    v402 = *v539;
    do
    {
      for (i55 = 0; i55 != v401; ++i55)
      {
        if (*v539 != v402)
        {
          objc_enumerationMutation(v399);
        }

        v404 = [*(*(&v538 + 1) + 8 * i55) copyWithZone:zone];
        [v6 addMovieTorsoResults:v404];
      }

      v401 = [(NSMutableArray *)v399 countByEnumeratingWithState:&v538 objects:v811 count:16];
    }

    while (v401);
  }

  v536 = 0u;
  v537 = 0u;
  v534 = 0u;
  v535 = 0u;
  v405 = self->_movieHumanActionClassificationResults;
  v406 = [(NSMutableArray *)v405 countByEnumeratingWithState:&v534 objects:v810 count:16];
  if (v406)
  {
    v407 = v406;
    v408 = *v535;
    do
    {
      for (i56 = 0; i56 != v407; ++i56)
      {
        if (*v535 != v408)
        {
          objc_enumerationMutation(v405);
        }

        v410 = [*(*(&v534 + 1) + 8 * i56) copyWithZone:zone];
        [v6 addMovieHumanActionClassificationResults:v410];
      }

      v407 = [(NSMutableArray *)v405 countByEnumeratingWithState:&v534 objects:v810 count:16];
    }

    while (v407);
  }

  v532 = 0u;
  v533 = 0u;
  v530 = 0u;
  v531 = 0u;
  v411 = self->_videoEmbeddingResults;
  v412 = [(NSMutableArray *)v411 countByEnumeratingWithState:&v530 objects:v809 count:16];
  if (v412)
  {
    v413 = v412;
    v414 = *v531;
    do
    {
      for (i57 = 0; i57 != v413; ++i57)
      {
        if (*v531 != v414)
        {
          objc_enumerationMutation(v411);
        }

        v416 = [*(*(&v530 + 1) + 8 * i57) copyWithZone:zone];
        [v6 addVideoEmbeddingResults:v416];
      }

      v413 = [(NSMutableArray *)v411 countByEnumeratingWithState:&v530 objects:v809 count:16];
    }

    while (v413);
  }

  v528 = 0u;
  v529 = 0u;
  v526 = 0u;
  v527 = 0u;
  v417 = self->_summarizedEmbeddingResults;
  v418 = [(NSMutableArray *)v417 countByEnumeratingWithState:&v526 objects:v808 count:16];
  if (v418)
  {
    v419 = v418;
    v420 = *v527;
    do
    {
      for (i58 = 0; i58 != v419; ++i58)
      {
        if (*v527 != v420)
        {
          objc_enumerationMutation(v417);
        }

        v422 = [*(*(&v526 + 1) + 8 * i58) copyWithZone:zone];
        [v6 addSummarizedEmbeddingResults:v422];
      }

      v419 = [(NSMutableArray *)v417 countByEnumeratingWithState:&v526 objects:v808 count:16];
    }

    while (v419);
  }

  v524 = 0u;
  v525 = 0u;
  v522 = 0u;
  v523 = 0u;
  v423 = self->_audioFusedVideoEmbeddingResults;
  v424 = [(NSMutableArray *)v423 countByEnumeratingWithState:&v522 objects:v807 count:16];
  if (v424)
  {
    v425 = v424;
    v426 = *v523;
    do
    {
      for (i59 = 0; i59 != v425; ++i59)
      {
        if (*v523 != v426)
        {
          objc_enumerationMutation(v423);
        }

        v428 = [*(*(&v522 + 1) + 8 * i59) copyWithZone:zone];
        [v6 addAudioFusedVideoEmbeddingResults:v428];
      }

      v425 = [(NSMutableArray *)v423 countByEnumeratingWithState:&v522 objects:v807 count:16];
    }

    while (v425);
  }

  v520 = 0u;
  v521 = 0u;
  v518 = 0u;
  v519 = 0u;
  v429 = self->_imageEmbeddingResults;
  v430 = [(NSMutableArray *)v429 countByEnumeratingWithState:&v518 objects:v806 count:16];
  if (v430)
  {
    v431 = v430;
    v432 = *v519;
    do
    {
      for (i60 = 0; i60 != v431; ++i60)
      {
        if (*v519 != v432)
        {
          objc_enumerationMutation(v429);
        }

        v434 = [*(*(&v518 + 1) + 8 * i60) copyWithZone:zone];
        [v6 addImageEmbeddingResults:v434];
      }

      v431 = [(NSMutableArray *)v429 countByEnumeratingWithState:&v518 objects:v806 count:16];
    }

    while (v431);
  }

  v516 = 0u;
  v517 = 0u;
  v514 = 0u;
  v515 = 0u;
  v435 = self->_imageCaptionResults;
  v436 = [(NSMutableArray *)v435 countByEnumeratingWithState:&v514 objects:v805 count:16];
  if (v436)
  {
    v437 = v436;
    v438 = *v515;
    do
    {
      for (i61 = 0; i61 != v437; ++i61)
      {
        if (*v515 != v438)
        {
          objc_enumerationMutation(v435);
        }

        v440 = [*(*(&v514 + 1) + 8 * i61) copyWithZone:zone];
        [v6 addImageCaptionResults:v440];
      }

      v437 = [(NSMutableArray *)v435 countByEnumeratingWithState:&v514 objects:v805 count:16];
    }

    while (v437);
  }

  v512 = 0u;
  v513 = 0u;
  v510 = 0u;
  v511 = 0u;
  v441 = self->_videoCaptionResults;
  v442 = [(NSMutableArray *)v441 countByEnumeratingWithState:&v510 objects:v804 count:16];
  if (v442)
  {
    v443 = v442;
    v444 = *v511;
    do
    {
      for (i62 = 0; i62 != v443; ++i62)
      {
        if (*v511 != v444)
        {
          objc_enumerationMutation(v441);
        }

        v446 = [*(*(&v510 + 1) + 8 * i62) copyWithZone:zone];
        [v6 addVideoCaptionResults:v446];
      }

      v443 = [(NSMutableArray *)v441 countByEnumeratingWithState:&v510 objects:v804 count:16];
    }

    while (v443);
  }

  v508 = 0u;
  v509 = 0u;
  v506 = 0u;
  v507 = 0u;
  v447 = self->_videoCaptionPreferenceResults;
  v448 = [(NSMutableArray *)v447 countByEnumeratingWithState:&v506 objects:v803 count:16];
  if (v448)
  {
    v449 = v448;
    v450 = *v507;
    do
    {
      for (i63 = 0; i63 != v449; ++i63)
      {
        if (*v507 != v450)
        {
          objc_enumerationMutation(v447);
        }

        v452 = [*(*(&v506 + 1) + 8 * i63) copyWithZone:zone];
        [v6 addVideoCaptionPreferenceResults:v452];
      }

      v449 = [(NSMutableArray *)v447 countByEnumeratingWithState:&v506 objects:v803 count:16];
    }

    while (v449);
  }

  v504 = 0u;
  v505 = 0u;
  v502 = 0u;
  v503 = 0u;
  v453 = self->_videoSegmentCaptionResults;
  v454 = [(NSMutableArray *)v453 countByEnumeratingWithState:&v502 objects:v802 count:16];
  if (v454)
  {
    v455 = v454;
    v456 = *v503;
    do
    {
      for (i64 = 0; i64 != v455; ++i64)
      {
        if (*v503 != v456)
        {
          objc_enumerationMutation(v453);
        }

        v458 = [*(*(&v502 + 1) + 8 * i64) copyWithZone:zone];
        [v6 addVideoSegmentCaptionResults:v458];
      }

      v455 = [(NSMutableArray *)v453 countByEnumeratingWithState:&v502 objects:v802 count:16];
    }

    while (v455);
  }

  v500 = 0u;
  v501 = 0u;
  v498 = 0u;
  v499 = 0u;
  v459 = self->_movieAnimalResults;
  v460 = [(NSMutableArray *)v459 countByEnumeratingWithState:&v498 objects:v801 count:16];
  if (v460)
  {
    v461 = v460;
    v462 = *v499;
    do
    {
      for (i65 = 0; i65 != v461; ++i65)
      {
        if (*v499 != v462)
        {
          objc_enumerationMutation(v459);
        }

        v464 = [*(*(&v498 + 1) + 8 * i65) copyWithZone:zone];
        [v6 addMovieAnimalResults:v464];
      }

      v461 = [(NSMutableArray *)v459 countByEnumeratingWithState:&v498 objects:v801 count:16];
    }

    while (v461);
  }

  v496 = 0u;
  v497 = 0u;
  v494 = 0u;
  v495 = 0u;
  v465 = self->_movieAnimalprintResults;
  v466 = [(NSMutableArray *)v465 countByEnumeratingWithState:&v494 objects:v800 count:16];
  if (v466)
  {
    v467 = v466;
    v468 = *v495;
    do
    {
      for (i66 = 0; i66 != v467; ++i66)
      {
        if (*v495 != v468)
        {
          objc_enumerationMutation(v465);
        }

        v470 = [*(*(&v494 + 1) + 8 * i66) copyWithZone:zone];
        [v6 addMovieAnimalprintResults:v470];
      }

      v467 = [(NSMutableArray *)v465 countByEnumeratingWithState:&v494 objects:v800 count:16];
    }

    while (v467);
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v6 + 200) = self->_imageEmbeddingVersion;
    *(v6 + 736) |= 8u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v6 + 704) = self->_videoEmbeddingVersion;
    *(v6 + 736) |= 0x10u;
  }

  v492 = 0u;
  v493 = 0u;
  v490 = 0u;
  v491 = 0u;
  v472 = self->_videoSceneThumbnailResults;
  v473 = [(NSMutableArray *)v472 countByEnumeratingWithState:&v490 objects:v799 count:16];
  if (v473)
  {
    v474 = v473;
    v475 = *v491;
    do
    {
      for (i67 = 0; i67 != v474; ++i67)
      {
        if (*v491 != v475)
        {
          objc_enumerationMutation(v472);
        }

        v477 = [*(*(&v490 + 1) + 8 * i67) copyWithZone:zone];
        [v6 addVideoSceneThumbnailResults:v477];
      }

      v474 = [(NSMutableArray *)v472 countByEnumeratingWithState:&v490 objects:v799 count:16];
    }

    while (v474);
  }

  v488 = 0u;
  v489 = 0u;
  v486 = 0u;
  v487 = 0u;
  v478 = self->_videoThumbnailResults;
  v479 = [(NSMutableArray *)v478 countByEnumeratingWithState:&v486 objects:v798 count:16];
  if (v479)
  {
    v480 = v479;
    v481 = *v487;
    do
    {
      for (i68 = 0; i68 != v480; ++i68)
      {
        if (*v487 != v481)
        {
          objc_enumerationMutation(v478);
        }

        v483 = [*(*(&v486 + 1) + 8 * i68) copyWithZone:{zone, v486}];
        [v6 addVideoThumbnailResults:v483];
      }

      v480 = [(NSMutableArray *)v478 countByEnumeratingWithState:&v486 objects:v798 count:16];
    }

    while (v480);
  }

  v484 = v6;
  return v484;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_version != *(equalCopy + 169) || self->_types != *(equalCopy + 168) || self->_flags != *(equalCopy + 40) || self->_date != *(equalCopy + 2))
  {
    goto LABEL_196;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 736) & 1) == 0 || self->_quality != *(equalCopy + 3))
    {
      goto LABEL_196;
    }
  }

  else if (*(equalCopy + 736))
  {
LABEL_196:
    v87 = 0;
    goto LABEL_197;
  }

  assetIdentifier = self->_assetIdentifier;
  if (assetIdentifier | *(equalCopy + 9) && ![(NSString *)assetIdentifier isEqual:?])
  {
    goto LABEL_196;
  }

  if (self->_assetModificationDate != *(equalCopy + 1))
  {
    goto LABEL_196;
  }

  assetMasterFingerprint = self->_assetMasterFingerprint;
  if (assetMasterFingerprint | *(equalCopy + 10))
  {
    if (![(NSString *)assetMasterFingerprint isEqual:?])
    {
      goto LABEL_196;
    }
  }

  assetAdjustedFingerprint = self->_assetAdjustedFingerprint;
  if (assetAdjustedFingerprint | *(equalCopy + 7))
  {
    if (![(NSString *)assetAdjustedFingerprint isEqual:?])
    {
      goto LABEL_196;
    }
  }

  imageBlurResults = self->_imageBlurResults;
  if (imageBlurResults | *(equalCopy + 21))
  {
    if (![(NSMutableArray *)imageBlurResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  imageCompositionResults = self->_imageCompositionResults;
  if (imageCompositionResults | *(equalCopy + 23))
  {
    if (![(NSMutableArray *)imageCompositionResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  imageFaceResults = self->_imageFaceResults;
  if (imageFaceResults | *(equalCopy + 27))
  {
    if (![(NSMutableArray *)imageFaceResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  imageFeatureResults = self->_imageFeatureResults;
  if (imageFeatureResults | *(equalCopy + 28))
  {
    if (![(NSMutableArray *)imageFeatureResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  imageJunkResults = self->_imageJunkResults;
  if (imageJunkResults | *(equalCopy + 30))
  {
    if (![(NSMutableArray *)imageJunkResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  imageSaliencyResults = self->_imageSaliencyResults;
  if (imageSaliencyResults | *(equalCopy + 33))
  {
    if (![(NSMutableArray *)imageSaliencyResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  imageShotTypeResults = self->_imageShotTypeResults;
  if (imageShotTypeResults | *(equalCopy + 35))
  {
    if (![(NSMutableArray *)imageShotTypeResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  livePhotoRecommendationResults = self->_livePhotoRecommendationResults;
  if (livePhotoRecommendationResults | *(equalCopy + 40))
  {
    if (![(NSMutableArray *)livePhotoRecommendationResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  livePhotoSharpnessResults = self->_livePhotoSharpnessResults;
  if (livePhotoSharpnessResults | *(equalCopy + 42))
  {
    if (![(NSMutableArray *)livePhotoSharpnessResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieActivityLevelResults = self->_movieActivityLevelResults;
  if (movieActivityLevelResults | *(equalCopy + 43))
  {
    if (![(NSMutableArray *)movieActivityLevelResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieCameraMotionResults = self->_movieCameraMotionResults;
  if (movieCameraMotionResults | *(equalCopy + 49))
  {
    if (![(NSMutableArray *)movieCameraMotionResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieClassificationResults = self->_movieClassificationResults;
  if (movieClassificationResults | *(equalCopy + 51))
  {
    if (![(NSMutableArray *)movieClassificationResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieFaceResults = self->_movieFaceResults;
  if (movieFaceResults | *(equalCopy + 52))
  {
    if (![(NSMutableArray *)movieFaceResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieFaceprintResults = self->_movieFaceprintResults;
  if (movieFaceprintResults | *(equalCopy + 53))
  {
    if (![(NSMutableArray *)movieFaceprintResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieFeatureResults = self->_movieFeatureResults;
  if (movieFeatureResults | *(equalCopy + 54))
  {
    if (![(NSMutableArray *)movieFeatureResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieFineSubjectMotionResults = self->_movieFineSubjectMotionResults;
  if (movieFineSubjectMotionResults | *(equalCopy + 55))
  {
    if (![(NSMutableArray *)movieFineSubjectMotionResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieInterestingnessResults = self->_movieInterestingnessResults;
  if (movieInterestingnessResults | *(equalCopy + 61))
  {
    if (![(NSMutableArray *)movieInterestingnessResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieMovingObjectResults = self->_movieMovingObjectResults;
  if (movieMovingObjectResults | *(equalCopy + 64))
  {
    if (![(NSMutableArray *)movieMovingObjectResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieMusicResults = self->_movieMusicResults;
  if (movieMusicResults | *(equalCopy + 65))
  {
    if (![(NSMutableArray *)movieMusicResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieObstructionResults = self->_movieObstructionResults;
  if (movieObstructionResults | *(equalCopy + 66))
  {
    if (![(NSMutableArray *)movieObstructionResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieOrientationResults = self->_movieOrientationResults;
  if (movieOrientationResults | *(equalCopy + 67))
  {
    if (![(NSMutableArray *)movieOrientationResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  moviePreEncodeResults = self->_moviePreEncodeResults;
  if (moviePreEncodeResults | *(equalCopy + 70))
  {
    if (![(NSMutableArray *)moviePreEncodeResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieQualityResults = self->_movieQualityResults;
  if (movieQualityResults | *(equalCopy + 71))
  {
    if (![(NSMutableArray *)movieQualityResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieSaliencyResults = self->_movieSaliencyResults;
  if (movieSaliencyResults | *(equalCopy + 73))
  {
    if (![(NSMutableArray *)movieSaliencyResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieSceneResults = self->_movieSceneResults;
  if (movieSceneResults | *(equalCopy + 74))
  {
    if (![(NSMutableArray *)movieSceneResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieSubjectMotionResults = self->_movieSubjectMotionResults;
  if (movieSubjectMotionResults | *(equalCopy + 77))
  {
    if (![(NSMutableArray *)movieSubjectMotionResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieUtteranceResults = self->_movieUtteranceResults;
  if (movieUtteranceResults | *(equalCopy + 81))
  {
    if (![(NSMutableArray *)movieUtteranceResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieVoiceResults = self->_movieVoiceResults;
  if (movieVoiceResults | *(equalCopy + 82))
  {
    if (![(NSMutableArray *)movieVoiceResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  imagePetsResults = self->_imagePetsResults;
  if (imagePetsResults | *(equalCopy + 32))
  {
    if (![(NSMutableArray *)imagePetsResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieSummaryResults = self->_movieSummaryResults;
  if (movieSummaryResults | *(equalCopy + 79))
  {
    if (![(NSMutableArray *)movieSummaryResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieHighlightResults = self->_movieHighlightResults;
  if (movieHighlightResults | *(equalCopy + 56))
  {
    if (![(NSMutableArray *)movieHighlightResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  imageExposureResults = self->_imageExposureResults;
  if (imageExposureResults | *(equalCopy + 26))
  {
    if (![(NSMutableArray *)imageExposureResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  livePhotoEffectsResults = self->_livePhotoEffectsResults;
  if (livePhotoEffectsResults | *(equalCopy + 36))
  {
    if (![(NSMutableArray *)livePhotoEffectsResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 736) & 2) == 0 || self->_statsFlags != *(equalCopy + 4))
    {
      goto LABEL_196;
    }
  }

  else if ((*(equalCopy + 736) & 2) != 0)
  {
    goto LABEL_196;
  }

  imagePetsFaceResults = self->_imagePetsFaceResults;
  if (imagePetsFaceResults | *(equalCopy + 31) && ![(NSMutableArray *)imagePetsFaceResults isEqual:?])
  {
    goto LABEL_196;
  }

  imageSceneprintResults = self->_imageSceneprintResults;
  if (imageSceneprintResults | *(equalCopy + 34))
  {
    if (![(NSMutableArray *)imageSceneprintResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieSceneprintResults = self->_movieSceneprintResults;
  if (movieSceneprintResults | *(equalCopy + 75))
  {
    if (![(NSMutableArray *)movieSceneprintResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  imageHumanPoseResults = self->_imageHumanPoseResults;
  if (imageHumanPoseResults | *(equalCopy + 29))
  {
    if (![(NSMutableArray *)imageHumanPoseResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieHumanPoseResults = self->_movieHumanPoseResults;
  if (movieHumanPoseResults | *(equalCopy + 60))
  {
    if (![(NSMutableArray *)movieHumanPoseResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieApplauseResults = self->_movieApplauseResults;
  if (movieApplauseResults | *(equalCopy + 46))
  {
    if (![(NSMutableArray *)movieApplauseResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieBabbleResults = self->_movieBabbleResults;
  if (movieBabbleResults | *(equalCopy + 48))
  {
    if (![(NSMutableArray *)movieBabbleResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieCheeringResults = self->_movieCheeringResults;
  if (movieCheeringResults | *(equalCopy + 50))
  {
    if (![(NSMutableArray *)movieCheeringResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieLaughterResults = self->_movieLaughterResults;
  if (movieLaughterResults | *(equalCopy + 62))
  {
    if (![(NSMutableArray *)movieLaughterResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  livePhotoKeyFrameResults = self->_livePhotoKeyFrameResults;
  if (livePhotoKeyFrameResults | *(equalCopy + 38))
  {
    if (![(NSMutableArray *)livePhotoKeyFrameResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  livePhotoKeyFrameStillResults = self->_livePhotoKeyFrameStillResults;
  if (livePhotoKeyFrameStillResults | *(equalCopy + 39))
  {
    if (![(NSMutableArray *)livePhotoKeyFrameStillResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieHumanActionResults = self->_movieHumanActionResults;
  if (movieHumanActionResults | *(equalCopy + 59))
  {
    if (![(NSMutableArray *)movieHumanActionResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieSubtleMotionResults = self->_movieSubtleMotionResults;
  if (movieSubtleMotionResults | *(equalCopy + 78))
  {
    if (![(NSMutableArray *)movieSubtleMotionResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieLoudnessResults = self->_movieLoudnessResults;
  if (movieLoudnessResults | *(equalCopy + 63))
  {
    if (![(NSMutableArray *)movieLoudnessResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  moviePetsResults = self->_moviePetsResults;
  if (moviePetsResults | *(equalCopy + 69))
  {
    if (![(NSMutableArray *)moviePetsResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  moviePetsFaceResults = self->_moviePetsFaceResults;
  if (moviePetsFaceResults | *(equalCopy + 68))
  {
    if (![(NSMutableArray *)moviePetsFaceResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieStabilizationResults = self->_movieStabilizationResults;
  if (movieStabilizationResults | *(equalCopy + 76))
  {
    if (![(NSMutableArray *)movieStabilizationResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 736) & 4) == 0 || self->_typesWide != *(equalCopy + 5))
    {
      goto LABEL_196;
    }
  }

  else if ((*(equalCopy + 736) & 4) != 0)
  {
    goto LABEL_196;
  }

  movieHighlightScoreResults = self->_movieHighlightScoreResults;
  if (movieHighlightScoreResults | *(equalCopy + 57) && ![(NSMutableArray *)movieHighlightScoreResults isEqual:?])
  {
    goto LABEL_196;
  }

  livePhotoHumanActionClassificationResults = self->_livePhotoHumanActionClassificationResults;
  if (livePhotoHumanActionClassificationResults | *(equalCopy + 37))
  {
    if (![(NSMutableArray *)livePhotoHumanActionClassificationResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieAudioQualityResults = self->_movieAudioQualityResults;
  if (movieAudioQualityResults | *(equalCopy + 47))
  {
    if (![(NSMutableArray *)movieAudioQualityResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieSafetyResults = self->_movieSafetyResults;
  if (movieSafetyResults | *(equalCopy + 72))
  {
    if (![(NSMutableArray *)movieSafetyResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  filesystemMovieClassificationResults = self->_filesystemMovieClassificationResults;
  if (filesystemMovieClassificationResults | *(equalCopy + 15))
  {
    if (![(NSMutableArray *)filesystemMovieClassificationResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  filesystemMovieHumanActionClassificationResults = self->_filesystemMovieHumanActionClassificationResults;
  if (filesystemMovieHumanActionClassificationResults | *(equalCopy + 16))
  {
    if (![(NSMutableArray *)filesystemMovieHumanActionClassificationResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  filesystemMovieApplauseResults = self->_filesystemMovieApplauseResults;
  if (filesystemMovieApplauseResults | *(equalCopy + 12))
  {
    if (![(NSMutableArray *)filesystemMovieApplauseResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  filesystemMovieBabbleResults = self->_filesystemMovieBabbleResults;
  if (filesystemMovieBabbleResults | *(equalCopy + 13))
  {
    if (![(NSMutableArray *)filesystemMovieBabbleResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  filesystemMovieCheeringResults = self->_filesystemMovieCheeringResults;
  if (filesystemMovieCheeringResults | *(equalCopy + 14))
  {
    if (![(NSMutableArray *)filesystemMovieCheeringResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  filesystemMovieLaughterResults = self->_filesystemMovieLaughterResults;
  if (filesystemMovieLaughterResults | *(equalCopy + 17))
  {
    if (![(NSMutableArray *)filesystemMovieLaughterResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  filesystemMovieMusicResults = self->_filesystemMovieMusicResults;
  if (filesystemMovieMusicResults | *(equalCopy + 18))
  {
    if (![(NSMutableArray *)filesystemMovieMusicResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  filesystemMovieVoiceResults = self->_filesystemMovieVoiceResults;
  if (filesystemMovieVoiceResults | *(equalCopy + 19))
  {
    if (![(NSMutableArray *)filesystemMovieVoiceResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  animatedStickerResults = self->_animatedStickerResults;
  if (animatedStickerResults | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)animatedStickerResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  livePhotoSettlingEffectGatingResults = self->_livePhotoSettlingEffectGatingResults;
  if (livePhotoSettlingEffectGatingResults | *(equalCopy + 41))
  {
    if (![(NSMutableArray *)livePhotoSettlingEffectGatingResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  assetCloudIdentifier = self->_assetCloudIdentifier;
  if (assetCloudIdentifier | *(equalCopy + 8))
  {
    if (![(NSString *)assetCloudIdentifier isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieTorsoResults = self->_movieTorsoResults;
  if (movieTorsoResults | *(equalCopy + 80))
  {
    if (![(NSMutableArray *)movieTorsoResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieHumanActionClassificationResults = self->_movieHumanActionClassificationResults;
  if (movieHumanActionClassificationResults | *(equalCopy + 58))
  {
    if (![(NSMutableArray *)movieHumanActionClassificationResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  videoEmbeddingResults = self->_videoEmbeddingResults;
  if (videoEmbeddingResults | *(equalCopy + 87))
  {
    if (![(NSMutableArray *)videoEmbeddingResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  summarizedEmbeddingResults = self->_summarizedEmbeddingResults;
  if (summarizedEmbeddingResults | *(equalCopy + 83))
  {
    if (![(NSMutableArray *)summarizedEmbeddingResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  audioFusedVideoEmbeddingResults = self->_audioFusedVideoEmbeddingResults;
  if (audioFusedVideoEmbeddingResults | *(equalCopy + 11))
  {
    if (![(NSMutableArray *)audioFusedVideoEmbeddingResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  imageEmbeddingResults = self->_imageEmbeddingResults;
  if (imageEmbeddingResults | *(equalCopy + 24))
  {
    if (![(NSMutableArray *)imageEmbeddingResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  imageCaptionResults = self->_imageCaptionResults;
  if (imageCaptionResults | *(equalCopy + 22))
  {
    if (![(NSMutableArray *)imageCaptionResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  videoCaptionResults = self->_videoCaptionResults;
  if (videoCaptionResults | *(equalCopy + 86))
  {
    if (![(NSMutableArray *)videoCaptionResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  videoCaptionPreferenceResults = self->_videoCaptionPreferenceResults;
  if (videoCaptionPreferenceResults | *(equalCopy + 85))
  {
    if (![(NSMutableArray *)videoCaptionPreferenceResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  videoSegmentCaptionResults = self->_videoSegmentCaptionResults;
  if (videoSegmentCaptionResults | *(equalCopy + 90))
  {
    if (![(NSMutableArray *)videoSegmentCaptionResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieAnimalResults = self->_movieAnimalResults;
  if (movieAnimalResults | *(equalCopy + 44))
  {
    if (![(NSMutableArray *)movieAnimalResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  movieAnimalprintResults = self->_movieAnimalprintResults;
  if (movieAnimalprintResults | *(equalCopy + 45))
  {
    if (![(NSMutableArray *)movieAnimalprintResults isEqual:?])
    {
      goto LABEL_196;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 736) & 8) == 0 || self->_imageEmbeddingVersion != *(equalCopy + 50))
    {
      goto LABEL_196;
    }
  }

  else if ((*(equalCopy + 736) & 8) != 0)
  {
    goto LABEL_196;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 736) & 0x10) == 0 || self->_videoEmbeddingVersion != *(equalCopy + 176))
    {
      goto LABEL_196;
    }
  }

  else if ((*(equalCopy + 736) & 0x10) != 0)
  {
    goto LABEL_196;
  }

  videoSceneThumbnailResults = self->_videoSceneThumbnailResults;
  if (videoSceneThumbnailResults | *(equalCopy + 89) && ![(NSMutableArray *)videoSceneThumbnailResults isEqual:?])
  {
    goto LABEL_196;
  }

  videoThumbnailResults = self->_videoThumbnailResults;
  if (videoThumbnailResults | *(equalCopy + 91))
  {
    v87 = [(NSMutableArray *)videoThumbnailResults isEqual:?];
  }

  else
  {
    v87 = 1;
  }

LABEL_197:

  return v87;
}

- (unint64_t)hash
{
  date = self->_date;
  if (date < 0.0)
  {
    date = -date;
  }

  *v2.i64 = floor(date + 0.5);
  v6 = (date - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = vbslq_s8(vnegq_f64(v7), v3, v2);
  v9 = 2654435761u * *v8.i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v9 += v6;
    }
  }

  else
  {
    v9 -= fabs(v6);
  }

  v111 = v9;
  if (*&self->_has)
  {
    quality = self->_quality;
    if (quality < 0.0)
    {
      quality = -quality;
    }

    *v8.i64 = floor(quality + 0.5);
    v12 = (quality - *v8.i64) * 1.84467441e19;
    *v3.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v3, v8).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  version = self->_version;
  v110 = v10;
  types = self->_types;
  flags = self->_flags;
  v106 = [(NSString *)self->_assetIdentifier hash];
  assetModificationDate = self->_assetModificationDate;
  if (assetModificationDate < 0.0)
  {
    assetModificationDate = -assetModificationDate;
  }

  *v14.i64 = floor(assetModificationDate + 0.5);
  v17 = (assetModificationDate - *v14.i64) * 1.84467441e19;
  *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v19 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v15, v14).i64;
  if (v17 >= 0.0)
  {
    if (v17 > 0.0)
    {
      v19 += v17;
    }
  }

  else
  {
    v19 -= fabs(v17);
  }

  v105 = v19;
  v104 = [(NSString *)self->_assetMasterFingerprint hash];
  v103 = [(NSString *)self->_assetAdjustedFingerprint hash];
  v102 = [(NSMutableArray *)self->_imageBlurResults hash];
  v101 = [(NSMutableArray *)self->_imageCompositionResults hash];
  v100 = [(NSMutableArray *)self->_imageFaceResults hash];
  v99 = [(NSMutableArray *)self->_imageFeatureResults hash];
  v98 = [(NSMutableArray *)self->_imageJunkResults hash];
  v97 = [(NSMutableArray *)self->_imageSaliencyResults hash];
  v96 = [(NSMutableArray *)self->_imageShotTypeResults hash];
  v95 = [(NSMutableArray *)self->_livePhotoRecommendationResults hash];
  v94 = [(NSMutableArray *)self->_livePhotoSharpnessResults hash];
  v93 = [(NSMutableArray *)self->_movieActivityLevelResults hash];
  v92 = [(NSMutableArray *)self->_movieCameraMotionResults hash];
  v91 = [(NSMutableArray *)self->_movieClassificationResults hash];
  v90 = [(NSMutableArray *)self->_movieFaceResults hash];
  v89 = [(NSMutableArray *)self->_movieFaceprintResults hash];
  v88 = [(NSMutableArray *)self->_movieFeatureResults hash];
  v87 = [(NSMutableArray *)self->_movieFineSubjectMotionResults hash];
  v86 = [(NSMutableArray *)self->_movieInterestingnessResults hash];
  v85 = [(NSMutableArray *)self->_movieMovingObjectResults hash];
  v84 = [(NSMutableArray *)self->_movieMusicResults hash];
  v83 = [(NSMutableArray *)self->_movieObstructionResults hash];
  v82 = [(NSMutableArray *)self->_movieOrientationResults hash];
  v81 = [(NSMutableArray *)self->_moviePreEncodeResults hash];
  v80 = [(NSMutableArray *)self->_movieQualityResults hash];
  v79 = [(NSMutableArray *)self->_movieSaliencyResults hash];
  v78 = [(NSMutableArray *)self->_movieSceneResults hash];
  v77 = [(NSMutableArray *)self->_movieSubjectMotionResults hash];
  v76 = [(NSMutableArray *)self->_movieUtteranceResults hash];
  v75 = [(NSMutableArray *)self->_movieVoiceResults hash];
  v74 = [(NSMutableArray *)self->_imagePetsResults hash];
  v73 = [(NSMutableArray *)self->_movieSummaryResults hash];
  v72 = [(NSMutableArray *)self->_movieHighlightResults hash];
  v71 = [(NSMutableArray *)self->_imageExposureResults hash];
  v70 = [(NSMutableArray *)self->_livePhotoEffectsResults hash];
  if ((*&self->_has & 2) != 0)
  {
    v69 = 2654435761u * self->_statsFlags;
  }

  else
  {
    v69 = 0;
  }

  v68 = [(NSMutableArray *)self->_imagePetsFaceResults hash];
  v67 = [(NSMutableArray *)self->_imageSceneprintResults hash];
  v66 = [(NSMutableArray *)self->_movieSceneprintResults hash];
  v65 = [(NSMutableArray *)self->_imageHumanPoseResults hash];
  v64 = [(NSMutableArray *)self->_movieHumanPoseResults hash];
  v63 = [(NSMutableArray *)self->_movieApplauseResults hash];
  v62 = [(NSMutableArray *)self->_movieBabbleResults hash];
  v61 = [(NSMutableArray *)self->_movieCheeringResults hash];
  v60 = [(NSMutableArray *)self->_movieLaughterResults hash];
  v59 = [(NSMutableArray *)self->_livePhotoKeyFrameResults hash];
  v58 = [(NSMutableArray *)self->_livePhotoKeyFrameStillResults hash];
  v57 = [(NSMutableArray *)self->_movieHumanActionResults hash];
  v56 = [(NSMutableArray *)self->_movieSubtleMotionResults hash];
  v55 = [(NSMutableArray *)self->_movieLoudnessResults hash];
  v54 = [(NSMutableArray *)self->_moviePetsResults hash];
  v53 = [(NSMutableArray *)self->_moviePetsFaceResults hash];
  v52 = [(NSMutableArray *)self->_movieStabilizationResults hash];
  if ((*&self->_has & 4) != 0)
  {
    v50 = 2654435761u * self->_typesWide;
  }

  else
  {
    v50 = 0;
  }

  v47 = [(NSMutableArray *)self->_movieHighlightScoreResults hash];
  v45 = [(NSMutableArray *)self->_livePhotoHumanActionClassificationResults hash];
  v43 = [(NSMutableArray *)self->_movieAudioQualityResults hash];
  v41 = [(NSMutableArray *)self->_movieSafetyResults hash];
  v39 = [(NSMutableArray *)self->_filesystemMovieClassificationResults hash];
  v37 = [(NSMutableArray *)self->_filesystemMovieHumanActionClassificationResults hash];
  v35 = [(NSMutableArray *)self->_filesystemMovieApplauseResults hash];
  v20 = [(NSMutableArray *)self->_filesystemMovieBabbleResults hash];
  v51 = [(NSMutableArray *)self->_filesystemMovieCheeringResults hash];
  v49 = [(NSMutableArray *)self->_filesystemMovieLaughterResults hash];
  v48 = [(NSMutableArray *)self->_filesystemMovieMusicResults hash];
  v46 = [(NSMutableArray *)self->_filesystemMovieVoiceResults hash];
  v44 = [(NSMutableArray *)self->_animatedStickerResults hash];
  v42 = [(NSMutableArray *)self->_livePhotoSettlingEffectGatingResults hash];
  v40 = [(NSString *)self->_assetCloudIdentifier hash];
  v38 = [(NSMutableArray *)self->_movieTorsoResults hash];
  v36 = [(NSMutableArray *)self->_movieHumanActionClassificationResults hash];
  v34 = [(NSMutableArray *)self->_videoEmbeddingResults hash];
  v33 = [(NSMutableArray *)self->_summarizedEmbeddingResults hash];
  v21 = [(NSMutableArray *)self->_audioFusedVideoEmbeddingResults hash];
  v22 = [(NSMutableArray *)self->_imageEmbeddingResults hash];
  v23 = [(NSMutableArray *)self->_imageCaptionResults hash];
  v24 = [(NSMutableArray *)self->_videoCaptionResults hash];
  v25 = [(NSMutableArray *)self->_videoCaptionPreferenceResults hash];
  v26 = [(NSMutableArray *)self->_videoSegmentCaptionResults hash];
  v27 = [(NSMutableArray *)self->_movieAnimalResults hash];
  v28 = [(NSMutableArray *)self->_movieAnimalprintResults hash];
  if ((*&self->_has & 8) != 0)
  {
    v29 = 2654435761 * self->_imageEmbeddingVersion;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_29;
    }

LABEL_31:
    v30 = 0;
    goto LABEL_32;
  }

  v29 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_31;
  }

LABEL_29:
  v30 = 2654435761 * self->_videoEmbeddingVersion;
LABEL_32:
  v31 = v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v50 ^ v47 ^ v45 ^ v43 ^ v41 ^ v39 ^ v37 ^ v35 ^ v20 ^ v51 ^ v49 ^ v48 ^ v46 ^ v44 ^ v42 ^ v40 ^ v38 ^ v36 ^ v34 ^ v33 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ [(NSMutableArray *)self->_videoSceneThumbnailResults hash];
  return (2654435761 * types) ^ (2654435761 * version) ^ (2654435761 * flags) ^ v110 ^ v106 ^ v111 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v31 ^ [(NSMutableArray *)self->_videoThumbnailResults hash];
}

- (void)mergeFrom:(id)from
{
  v787 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  self->_version = *(fromCopy + 169);
  self->_types = *(fromCopy + 168);
  self->_flags = *(fromCopy + 40);
  self->_date = *(fromCopy + 2);
  if (*(fromCopy + 736))
  {
    self->_quality = *(fromCopy + 3);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 9))
  {
    [(VCPProtoAssetAnalysis *)self setAssetIdentifier:?];
  }

  self->_assetModificationDate = *(v5 + 1);
  if (*(v5 + 10))
  {
    [(VCPProtoAssetAnalysis *)self setAssetMasterFingerprint:?];
  }

  if (*(v5 + 7))
  {
    [(VCPProtoAssetAnalysis *)self setAssetAdjustedFingerprint:?];
  }

  v708 = 0u;
  v707 = 0u;
  v706 = 0u;
  v705 = 0u;
  v6 = *(v5 + 21);
  v7 = [v6 countByEnumeratingWithState:&v705 objects:v786 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v706;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v706 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(VCPProtoAssetAnalysis *)self addImageBlurResults:*(*(&v705 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v705 objects:v786 count:16];
    }

    while (v8);
  }

  v704 = 0u;
  v703 = 0u;
  v702 = 0u;
  v701 = 0u;
  v11 = *(v5 + 23);
  v12 = [v11 countByEnumeratingWithState:&v701 objects:v785 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v702;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v702 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(VCPProtoAssetAnalysis *)self addImageCompositionResults:*(*(&v701 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v701 objects:v785 count:16];
    }

    while (v13);
  }

  v700 = 0u;
  v699 = 0u;
  v698 = 0u;
  v697 = 0u;
  v16 = *(v5 + 27);
  v17 = [v16 countByEnumeratingWithState:&v697 objects:v784 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v698;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v698 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(VCPProtoAssetAnalysis *)self addImageFaceResults:*(*(&v697 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v697 objects:v784 count:16];
    }

    while (v18);
  }

  v696 = 0u;
  v695 = 0u;
  v694 = 0u;
  v693 = 0u;
  v21 = *(v5 + 28);
  v22 = [v21 countByEnumeratingWithState:&v693 objects:v783 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v694;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v694 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(VCPProtoAssetAnalysis *)self addImageFeatureResults:*(*(&v693 + 1) + 8 * m)];
      }

      v23 = [v21 countByEnumeratingWithState:&v693 objects:v783 count:16];
    }

    while (v23);
  }

  v692 = 0u;
  v691 = 0u;
  v690 = 0u;
  v689 = 0u;
  v26 = *(v5 + 30);
  v27 = [v26 countByEnumeratingWithState:&v689 objects:v782 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v690;
    do
    {
      for (n = 0; n != v28; ++n)
      {
        if (*v690 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(VCPProtoAssetAnalysis *)self addImageJunkResults:*(*(&v689 + 1) + 8 * n)];
      }

      v28 = [v26 countByEnumeratingWithState:&v689 objects:v782 count:16];
    }

    while (v28);
  }

  v688 = 0u;
  v687 = 0u;
  v686 = 0u;
  v685 = 0u;
  v31 = *(v5 + 33);
  v32 = [v31 countByEnumeratingWithState:&v685 objects:v781 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v686;
    do
    {
      for (ii = 0; ii != v33; ++ii)
      {
        if (*v686 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(VCPProtoAssetAnalysis *)self addImageSaliencyResults:*(*(&v685 + 1) + 8 * ii)];
      }

      v33 = [v31 countByEnumeratingWithState:&v685 objects:v781 count:16];
    }

    while (v33);
  }

  v684 = 0u;
  v683 = 0u;
  v682 = 0u;
  v681 = 0u;
  v36 = *(v5 + 35);
  v37 = [v36 countByEnumeratingWithState:&v681 objects:v780 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v682;
    do
    {
      for (jj = 0; jj != v38; ++jj)
      {
        if (*v682 != v39)
        {
          objc_enumerationMutation(v36);
        }

        [(VCPProtoAssetAnalysis *)self addImageShotTypeResults:*(*(&v681 + 1) + 8 * jj)];
      }

      v38 = [v36 countByEnumeratingWithState:&v681 objects:v780 count:16];
    }

    while (v38);
  }

  v680 = 0u;
  v679 = 0u;
  v678 = 0u;
  v677 = 0u;
  v41 = *(v5 + 40);
  v42 = [v41 countByEnumeratingWithState:&v677 objects:v779 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v678;
    do
    {
      for (kk = 0; kk != v43; ++kk)
      {
        if (*v678 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [(VCPProtoAssetAnalysis *)self addLivePhotoRecommendationResults:*(*(&v677 + 1) + 8 * kk)];
      }

      v43 = [v41 countByEnumeratingWithState:&v677 objects:v779 count:16];
    }

    while (v43);
  }

  v676 = 0u;
  v675 = 0u;
  v674 = 0u;
  v673 = 0u;
  v46 = *(v5 + 42);
  v47 = [v46 countByEnumeratingWithState:&v673 objects:v778 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v674;
    do
    {
      for (mm = 0; mm != v48; ++mm)
      {
        if (*v674 != v49)
        {
          objc_enumerationMutation(v46);
        }

        [(VCPProtoAssetAnalysis *)self addLivePhotoSharpnessResults:*(*(&v673 + 1) + 8 * mm)];
      }

      v48 = [v46 countByEnumeratingWithState:&v673 objects:v778 count:16];
    }

    while (v48);
  }

  v672 = 0u;
  v671 = 0u;
  v670 = 0u;
  v669 = 0u;
  v51 = *(v5 + 43);
  v52 = [v51 countByEnumeratingWithState:&v669 objects:v777 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v670;
    do
    {
      for (nn = 0; nn != v53; ++nn)
      {
        if (*v670 != v54)
        {
          objc_enumerationMutation(v51);
        }

        [(VCPProtoAssetAnalysis *)self addMovieActivityLevelResults:*(*(&v669 + 1) + 8 * nn)];
      }

      v53 = [v51 countByEnumeratingWithState:&v669 objects:v777 count:16];
    }

    while (v53);
  }

  v668 = 0u;
  v667 = 0u;
  v666 = 0u;
  v665 = 0u;
  v56 = *(v5 + 49);
  v57 = [v56 countByEnumeratingWithState:&v665 objects:v776 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v666;
    do
    {
      for (i1 = 0; i1 != v58; ++i1)
      {
        if (*v666 != v59)
        {
          objc_enumerationMutation(v56);
        }

        [(VCPProtoAssetAnalysis *)self addMovieCameraMotionResults:*(*(&v665 + 1) + 8 * i1)];
      }

      v58 = [v56 countByEnumeratingWithState:&v665 objects:v776 count:16];
    }

    while (v58);
  }

  v664 = 0u;
  v663 = 0u;
  v662 = 0u;
  v661 = 0u;
  v61 = *(v5 + 51);
  v62 = [v61 countByEnumeratingWithState:&v661 objects:v775 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v662;
    do
    {
      for (i2 = 0; i2 != v63; ++i2)
      {
        if (*v662 != v64)
        {
          objc_enumerationMutation(v61);
        }

        [(VCPProtoAssetAnalysis *)self addMovieClassificationResults:*(*(&v661 + 1) + 8 * i2)];
      }

      v63 = [v61 countByEnumeratingWithState:&v661 objects:v775 count:16];
    }

    while (v63);
  }

  v660 = 0u;
  v659 = 0u;
  v658 = 0u;
  v657 = 0u;
  v66 = *(v5 + 52);
  v67 = [v66 countByEnumeratingWithState:&v657 objects:v774 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v658;
    do
    {
      for (i3 = 0; i3 != v68; ++i3)
      {
        if (*v658 != v69)
        {
          objc_enumerationMutation(v66);
        }

        [(VCPProtoAssetAnalysis *)self addMovieFaceResults:*(*(&v657 + 1) + 8 * i3)];
      }

      v68 = [v66 countByEnumeratingWithState:&v657 objects:v774 count:16];
    }

    while (v68);
  }

  v656 = 0u;
  v655 = 0u;
  v654 = 0u;
  v653 = 0u;
  v71 = *(v5 + 53);
  v72 = [v71 countByEnumeratingWithState:&v653 objects:v773 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v654;
    do
    {
      for (i4 = 0; i4 != v73; ++i4)
      {
        if (*v654 != v74)
        {
          objc_enumerationMutation(v71);
        }

        [(VCPProtoAssetAnalysis *)self addMovieFaceprintResults:*(*(&v653 + 1) + 8 * i4)];
      }

      v73 = [v71 countByEnumeratingWithState:&v653 objects:v773 count:16];
    }

    while (v73);
  }

  v652 = 0u;
  v651 = 0u;
  v650 = 0u;
  v649 = 0u;
  v76 = *(v5 + 54);
  v77 = [v76 countByEnumeratingWithState:&v649 objects:v772 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v650;
    do
    {
      for (i5 = 0; i5 != v78; ++i5)
      {
        if (*v650 != v79)
        {
          objc_enumerationMutation(v76);
        }

        [(VCPProtoAssetAnalysis *)self addMovieFeatureResults:*(*(&v649 + 1) + 8 * i5)];
      }

      v78 = [v76 countByEnumeratingWithState:&v649 objects:v772 count:16];
    }

    while (v78);
  }

  v648 = 0u;
  v647 = 0u;
  v646 = 0u;
  v645 = 0u;
  v81 = *(v5 + 55);
  v82 = [v81 countByEnumeratingWithState:&v645 objects:v771 count:16];
  if (v82)
  {
    v83 = v82;
    v84 = *v646;
    do
    {
      for (i6 = 0; i6 != v83; ++i6)
      {
        if (*v646 != v84)
        {
          objc_enumerationMutation(v81);
        }

        [(VCPProtoAssetAnalysis *)self addMovieFineSubjectMotionResults:*(*(&v645 + 1) + 8 * i6)];
      }

      v83 = [v81 countByEnumeratingWithState:&v645 objects:v771 count:16];
    }

    while (v83);
  }

  v644 = 0u;
  v643 = 0u;
  v642 = 0u;
  v641 = 0u;
  v86 = *(v5 + 61);
  v87 = [v86 countByEnumeratingWithState:&v641 objects:v770 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = *v642;
    do
    {
      for (i7 = 0; i7 != v88; ++i7)
      {
        if (*v642 != v89)
        {
          objc_enumerationMutation(v86);
        }

        [(VCPProtoAssetAnalysis *)self addMovieInterestingnessResults:*(*(&v641 + 1) + 8 * i7)];
      }

      v88 = [v86 countByEnumeratingWithState:&v641 objects:v770 count:16];
    }

    while (v88);
  }

  v640 = 0u;
  v639 = 0u;
  v638 = 0u;
  v637 = 0u;
  v91 = *(v5 + 64);
  v92 = [v91 countByEnumeratingWithState:&v637 objects:v769 count:16];
  if (v92)
  {
    v93 = v92;
    v94 = *v638;
    do
    {
      for (i8 = 0; i8 != v93; ++i8)
      {
        if (*v638 != v94)
        {
          objc_enumerationMutation(v91);
        }

        [(VCPProtoAssetAnalysis *)self addMovieMovingObjectResults:*(*(&v637 + 1) + 8 * i8)];
      }

      v93 = [v91 countByEnumeratingWithState:&v637 objects:v769 count:16];
    }

    while (v93);
  }

  v636 = 0u;
  v635 = 0u;
  v634 = 0u;
  v633 = 0u;
  v96 = *(v5 + 65);
  v97 = [v96 countByEnumeratingWithState:&v633 objects:v768 count:16];
  if (v97)
  {
    v98 = v97;
    v99 = *v634;
    do
    {
      for (i9 = 0; i9 != v98; ++i9)
      {
        if (*v634 != v99)
        {
          objc_enumerationMutation(v96);
        }

        [(VCPProtoAssetAnalysis *)self addMovieMusicResults:*(*(&v633 + 1) + 8 * i9)];
      }

      v98 = [v96 countByEnumeratingWithState:&v633 objects:v768 count:16];
    }

    while (v98);
  }

  v632 = 0u;
  v631 = 0u;
  v630 = 0u;
  v629 = 0u;
  v101 = *(v5 + 66);
  v102 = [v101 countByEnumeratingWithState:&v629 objects:v767 count:16];
  if (v102)
  {
    v103 = v102;
    v104 = *v630;
    do
    {
      for (i10 = 0; i10 != v103; ++i10)
      {
        if (*v630 != v104)
        {
          objc_enumerationMutation(v101);
        }

        [(VCPProtoAssetAnalysis *)self addMovieObstructionResults:*(*(&v629 + 1) + 8 * i10)];
      }

      v103 = [v101 countByEnumeratingWithState:&v629 objects:v767 count:16];
    }

    while (v103);
  }

  v628 = 0u;
  v627 = 0u;
  v626 = 0u;
  v625 = 0u;
  v106 = *(v5 + 67);
  v107 = [v106 countByEnumeratingWithState:&v625 objects:v766 count:16];
  if (v107)
  {
    v108 = v107;
    v109 = *v626;
    do
    {
      for (i11 = 0; i11 != v108; ++i11)
      {
        if (*v626 != v109)
        {
          objc_enumerationMutation(v106);
        }

        [(VCPProtoAssetAnalysis *)self addMovieOrientationResults:*(*(&v625 + 1) + 8 * i11)];
      }

      v108 = [v106 countByEnumeratingWithState:&v625 objects:v766 count:16];
    }

    while (v108);
  }

  v624 = 0u;
  v623 = 0u;
  v622 = 0u;
  v621 = 0u;
  v111 = *(v5 + 70);
  v112 = [v111 countByEnumeratingWithState:&v621 objects:v765 count:16];
  if (v112)
  {
    v113 = v112;
    v114 = *v622;
    do
    {
      for (i12 = 0; i12 != v113; ++i12)
      {
        if (*v622 != v114)
        {
          objc_enumerationMutation(v111);
        }

        [(VCPProtoAssetAnalysis *)self addMoviePreEncodeResults:*(*(&v621 + 1) + 8 * i12)];
      }

      v113 = [v111 countByEnumeratingWithState:&v621 objects:v765 count:16];
    }

    while (v113);
  }

  v620 = 0u;
  v619 = 0u;
  v618 = 0u;
  v617 = 0u;
  v116 = *(v5 + 71);
  v117 = [v116 countByEnumeratingWithState:&v617 objects:v764 count:16];
  if (v117)
  {
    v118 = v117;
    v119 = *v618;
    do
    {
      for (i13 = 0; i13 != v118; ++i13)
      {
        if (*v618 != v119)
        {
          objc_enumerationMutation(v116);
        }

        [(VCPProtoAssetAnalysis *)self addMovieQualityResults:*(*(&v617 + 1) + 8 * i13)];
      }

      v118 = [v116 countByEnumeratingWithState:&v617 objects:v764 count:16];
    }

    while (v118);
  }

  v616 = 0u;
  v615 = 0u;
  v614 = 0u;
  v613 = 0u;
  v121 = *(v5 + 73);
  v122 = [v121 countByEnumeratingWithState:&v613 objects:v763 count:16];
  if (v122)
  {
    v123 = v122;
    v124 = *v614;
    do
    {
      for (i14 = 0; i14 != v123; ++i14)
      {
        if (*v614 != v124)
        {
          objc_enumerationMutation(v121);
        }

        [(VCPProtoAssetAnalysis *)self addMovieSaliencyResults:*(*(&v613 + 1) + 8 * i14)];
      }

      v123 = [v121 countByEnumeratingWithState:&v613 objects:v763 count:16];
    }

    while (v123);
  }

  v612 = 0u;
  v611 = 0u;
  v610 = 0u;
  v609 = 0u;
  v126 = *(v5 + 74);
  v127 = [v126 countByEnumeratingWithState:&v609 objects:v762 count:16];
  if (v127)
  {
    v128 = v127;
    v129 = *v610;
    do
    {
      for (i15 = 0; i15 != v128; ++i15)
      {
        if (*v610 != v129)
        {
          objc_enumerationMutation(v126);
        }

        [(VCPProtoAssetAnalysis *)self addMovieSceneResults:*(*(&v609 + 1) + 8 * i15)];
      }

      v128 = [v126 countByEnumeratingWithState:&v609 objects:v762 count:16];
    }

    while (v128);
  }

  v608 = 0u;
  v607 = 0u;
  v606 = 0u;
  v605 = 0u;
  v131 = *(v5 + 77);
  v132 = [v131 countByEnumeratingWithState:&v605 objects:v761 count:16];
  if (v132)
  {
    v133 = v132;
    v134 = *v606;
    do
    {
      for (i16 = 0; i16 != v133; ++i16)
      {
        if (*v606 != v134)
        {
          objc_enumerationMutation(v131);
        }

        [(VCPProtoAssetAnalysis *)self addMovieSubjectMotionResults:*(*(&v605 + 1) + 8 * i16)];
      }

      v133 = [v131 countByEnumeratingWithState:&v605 objects:v761 count:16];
    }

    while (v133);
  }

  v604 = 0u;
  v603 = 0u;
  v602 = 0u;
  v601 = 0u;
  v136 = *(v5 + 81);
  v137 = [v136 countByEnumeratingWithState:&v601 objects:v760 count:16];
  if (v137)
  {
    v138 = v137;
    v139 = *v602;
    do
    {
      for (i17 = 0; i17 != v138; ++i17)
      {
        if (*v602 != v139)
        {
          objc_enumerationMutation(v136);
        }

        [(VCPProtoAssetAnalysis *)self addMovieUtteranceResults:*(*(&v601 + 1) + 8 * i17)];
      }

      v138 = [v136 countByEnumeratingWithState:&v601 objects:v760 count:16];
    }

    while (v138);
  }

  v600 = 0u;
  v599 = 0u;
  v598 = 0u;
  v597 = 0u;
  v141 = *(v5 + 82);
  v142 = [v141 countByEnumeratingWithState:&v597 objects:v759 count:16];
  if (v142)
  {
    v143 = v142;
    v144 = *v598;
    do
    {
      for (i18 = 0; i18 != v143; ++i18)
      {
        if (*v598 != v144)
        {
          objc_enumerationMutation(v141);
        }

        [(VCPProtoAssetAnalysis *)self addMovieVoiceResults:*(*(&v597 + 1) + 8 * i18)];
      }

      v143 = [v141 countByEnumeratingWithState:&v597 objects:v759 count:16];
    }

    while (v143);
  }

  v596 = 0u;
  v595 = 0u;
  v594 = 0u;
  v593 = 0u;
  v146 = *(v5 + 32);
  v147 = [v146 countByEnumeratingWithState:&v593 objects:v758 count:16];
  if (v147)
  {
    v148 = v147;
    v149 = *v594;
    do
    {
      for (i19 = 0; i19 != v148; ++i19)
      {
        if (*v594 != v149)
        {
          objc_enumerationMutation(v146);
        }

        [(VCPProtoAssetAnalysis *)self addImagePetsResults:*(*(&v593 + 1) + 8 * i19)];
      }

      v148 = [v146 countByEnumeratingWithState:&v593 objects:v758 count:16];
    }

    while (v148);
  }

  v592 = 0u;
  v591 = 0u;
  v590 = 0u;
  v589 = 0u;
  v151 = *(v5 + 79);
  v152 = [v151 countByEnumeratingWithState:&v589 objects:v757 count:16];
  if (v152)
  {
    v153 = v152;
    v154 = *v590;
    do
    {
      for (i20 = 0; i20 != v153; ++i20)
      {
        if (*v590 != v154)
        {
          objc_enumerationMutation(v151);
        }

        [(VCPProtoAssetAnalysis *)self addMovieSummaryResults:*(*(&v589 + 1) + 8 * i20)];
      }

      v153 = [v151 countByEnumeratingWithState:&v589 objects:v757 count:16];
    }

    while (v153);
  }

  v588 = 0u;
  v587 = 0u;
  v586 = 0u;
  v585 = 0u;
  v156 = *(v5 + 56);
  v157 = [v156 countByEnumeratingWithState:&v585 objects:v756 count:16];
  if (v157)
  {
    v158 = v157;
    v159 = *v586;
    do
    {
      for (i21 = 0; i21 != v158; ++i21)
      {
        if (*v586 != v159)
        {
          objc_enumerationMutation(v156);
        }

        [(VCPProtoAssetAnalysis *)self addMovieHighlightResults:*(*(&v585 + 1) + 8 * i21)];
      }

      v158 = [v156 countByEnumeratingWithState:&v585 objects:v756 count:16];
    }

    while (v158);
  }

  v584 = 0u;
  v583 = 0u;
  v582 = 0u;
  v581 = 0u;
  v161 = *(v5 + 26);
  v162 = [v161 countByEnumeratingWithState:&v581 objects:v755 count:16];
  if (v162)
  {
    v163 = v162;
    v164 = *v582;
    do
    {
      for (i22 = 0; i22 != v163; ++i22)
      {
        if (*v582 != v164)
        {
          objc_enumerationMutation(v161);
        }

        [(VCPProtoAssetAnalysis *)self addImageExposureResults:*(*(&v581 + 1) + 8 * i22)];
      }

      v163 = [v161 countByEnumeratingWithState:&v581 objects:v755 count:16];
    }

    while (v163);
  }

  v580 = 0u;
  v579 = 0u;
  v578 = 0u;
  v577 = 0u;
  v166 = *(v5 + 36);
  v167 = [v166 countByEnumeratingWithState:&v577 objects:v754 count:16];
  if (v167)
  {
    v168 = v167;
    v169 = *v578;
    do
    {
      for (i23 = 0; i23 != v168; ++i23)
      {
        if (*v578 != v169)
        {
          objc_enumerationMutation(v166);
        }

        [(VCPProtoAssetAnalysis *)self addLivePhotoEffectsResults:*(*(&v577 + 1) + 8 * i23)];
      }

      v168 = [v166 countByEnumeratingWithState:&v577 objects:v754 count:16];
    }

    while (v168);
  }

  if ((*(v5 + 736) & 2) != 0)
  {
    self->_statsFlags = *(v5 + 4);
    *&self->_has |= 2u;
  }

  v576 = 0u;
  v575 = 0u;
  v574 = 0u;
  v573 = 0u;
  v171 = *(v5 + 31);
  v172 = [v171 countByEnumeratingWithState:&v573 objects:v753 count:16];
  if (v172)
  {
    v173 = v172;
    v174 = *v574;
    do
    {
      for (i24 = 0; i24 != v173; ++i24)
      {
        if (*v574 != v174)
        {
          objc_enumerationMutation(v171);
        }

        [(VCPProtoAssetAnalysis *)self addImagePetsFaceResults:*(*(&v573 + 1) + 8 * i24)];
      }

      v173 = [v171 countByEnumeratingWithState:&v573 objects:v753 count:16];
    }

    while (v173);
  }

  v572 = 0u;
  v571 = 0u;
  v570 = 0u;
  v569 = 0u;
  v176 = *(v5 + 34);
  v177 = [v176 countByEnumeratingWithState:&v569 objects:v752 count:16];
  if (v177)
  {
    v178 = v177;
    v179 = *v570;
    do
    {
      for (i25 = 0; i25 != v178; ++i25)
      {
        if (*v570 != v179)
        {
          objc_enumerationMutation(v176);
        }

        [(VCPProtoAssetAnalysis *)self addImageSceneprintResults:*(*(&v569 + 1) + 8 * i25)];
      }

      v178 = [v176 countByEnumeratingWithState:&v569 objects:v752 count:16];
    }

    while (v178);
  }

  v568 = 0u;
  v567 = 0u;
  v566 = 0u;
  v565 = 0u;
  v181 = *(v5 + 75);
  v182 = [v181 countByEnumeratingWithState:&v565 objects:v751 count:16];
  if (v182)
  {
    v183 = v182;
    v184 = *v566;
    do
    {
      for (i26 = 0; i26 != v183; ++i26)
      {
        if (*v566 != v184)
        {
          objc_enumerationMutation(v181);
        }

        [(VCPProtoAssetAnalysis *)self addMovieSceneprintResults:*(*(&v565 + 1) + 8 * i26)];
      }

      v183 = [v181 countByEnumeratingWithState:&v565 objects:v751 count:16];
    }

    while (v183);
  }

  v564 = 0u;
  v563 = 0u;
  v562 = 0u;
  v561 = 0u;
  v186 = *(v5 + 29);
  v187 = [v186 countByEnumeratingWithState:&v561 objects:v750 count:16];
  if (v187)
  {
    v188 = v187;
    v189 = *v562;
    do
    {
      for (i27 = 0; i27 != v188; ++i27)
      {
        if (*v562 != v189)
        {
          objc_enumerationMutation(v186);
        }

        [(VCPProtoAssetAnalysis *)self addImageHumanPoseResults:*(*(&v561 + 1) + 8 * i27)];
      }

      v188 = [v186 countByEnumeratingWithState:&v561 objects:v750 count:16];
    }

    while (v188);
  }

  v560 = 0u;
  v559 = 0u;
  v558 = 0u;
  v557 = 0u;
  v191 = *(v5 + 60);
  v192 = [v191 countByEnumeratingWithState:&v557 objects:v749 count:16];
  if (v192)
  {
    v193 = v192;
    v194 = *v558;
    do
    {
      for (i28 = 0; i28 != v193; ++i28)
      {
        if (*v558 != v194)
        {
          objc_enumerationMutation(v191);
        }

        [(VCPProtoAssetAnalysis *)self addMovieHumanPoseResults:*(*(&v557 + 1) + 8 * i28)];
      }

      v193 = [v191 countByEnumeratingWithState:&v557 objects:v749 count:16];
    }

    while (v193);
  }

  v556 = 0u;
  v555 = 0u;
  v554 = 0u;
  v553 = 0u;
  v196 = *(v5 + 46);
  v197 = [v196 countByEnumeratingWithState:&v553 objects:v748 count:16];
  if (v197)
  {
    v198 = v197;
    v199 = *v554;
    do
    {
      for (i29 = 0; i29 != v198; ++i29)
      {
        if (*v554 != v199)
        {
          objc_enumerationMutation(v196);
        }

        [(VCPProtoAssetAnalysis *)self addMovieApplauseResults:*(*(&v553 + 1) + 8 * i29)];
      }

      v198 = [v196 countByEnumeratingWithState:&v553 objects:v748 count:16];
    }

    while (v198);
  }

  v552 = 0u;
  v551 = 0u;
  v550 = 0u;
  v549 = 0u;
  v201 = *(v5 + 48);
  v202 = [v201 countByEnumeratingWithState:&v549 objects:v747 count:16];
  if (v202)
  {
    v203 = v202;
    v204 = *v550;
    do
    {
      for (i30 = 0; i30 != v203; ++i30)
      {
        if (*v550 != v204)
        {
          objc_enumerationMutation(v201);
        }

        [(VCPProtoAssetAnalysis *)self addMovieBabbleResults:*(*(&v549 + 1) + 8 * i30)];
      }

      v203 = [v201 countByEnumeratingWithState:&v549 objects:v747 count:16];
    }

    while (v203);
  }

  v548 = 0u;
  v547 = 0u;
  v546 = 0u;
  v545 = 0u;
  v206 = *(v5 + 50);
  v207 = [v206 countByEnumeratingWithState:&v545 objects:v746 count:16];
  if (v207)
  {
    v208 = v207;
    v209 = *v546;
    do
    {
      for (i31 = 0; i31 != v208; ++i31)
      {
        if (*v546 != v209)
        {
          objc_enumerationMutation(v206);
        }

        [(VCPProtoAssetAnalysis *)self addMovieCheeringResults:*(*(&v545 + 1) + 8 * i31)];
      }

      v208 = [v206 countByEnumeratingWithState:&v545 objects:v746 count:16];
    }

    while (v208);
  }

  v544 = 0u;
  v543 = 0u;
  v542 = 0u;
  v541 = 0u;
  v211 = *(v5 + 62);
  v212 = [v211 countByEnumeratingWithState:&v541 objects:v745 count:16];
  if (v212)
  {
    v213 = v212;
    v214 = *v542;
    do
    {
      for (i32 = 0; i32 != v213; ++i32)
      {
        if (*v542 != v214)
        {
          objc_enumerationMutation(v211);
        }

        [(VCPProtoAssetAnalysis *)self addMovieLaughterResults:*(*(&v541 + 1) + 8 * i32)];
      }

      v213 = [v211 countByEnumeratingWithState:&v541 objects:v745 count:16];
    }

    while (v213);
  }

  v540 = 0u;
  v539 = 0u;
  v538 = 0u;
  v537 = 0u;
  v216 = *(v5 + 38);
  v217 = [v216 countByEnumeratingWithState:&v537 objects:v744 count:16];
  if (v217)
  {
    v218 = v217;
    v219 = *v538;
    do
    {
      for (i33 = 0; i33 != v218; ++i33)
      {
        if (*v538 != v219)
        {
          objc_enumerationMutation(v216);
        }

        [(VCPProtoAssetAnalysis *)self addLivePhotoKeyFrameResults:*(*(&v537 + 1) + 8 * i33)];
      }

      v218 = [v216 countByEnumeratingWithState:&v537 objects:v744 count:16];
    }

    while (v218);
  }

  v536 = 0u;
  v535 = 0u;
  v534 = 0u;
  v533 = 0u;
  v221 = *(v5 + 39);
  v222 = [v221 countByEnumeratingWithState:&v533 objects:v743 count:16];
  if (v222)
  {
    v223 = v222;
    v224 = *v534;
    do
    {
      for (i34 = 0; i34 != v223; ++i34)
      {
        if (*v534 != v224)
        {
          objc_enumerationMutation(v221);
        }

        [(VCPProtoAssetAnalysis *)self addLivePhotoKeyFrameStillResults:*(*(&v533 + 1) + 8 * i34)];
      }

      v223 = [v221 countByEnumeratingWithState:&v533 objects:v743 count:16];
    }

    while (v223);
  }

  v532 = 0u;
  v531 = 0u;
  v530 = 0u;
  v529 = 0u;
  v226 = *(v5 + 59);
  v227 = [v226 countByEnumeratingWithState:&v529 objects:v742 count:16];
  if (v227)
  {
    v228 = v227;
    v229 = *v530;
    do
    {
      for (i35 = 0; i35 != v228; ++i35)
      {
        if (*v530 != v229)
        {
          objc_enumerationMutation(v226);
        }

        [(VCPProtoAssetAnalysis *)self addMovieHumanActionResults:*(*(&v529 + 1) + 8 * i35)];
      }

      v228 = [v226 countByEnumeratingWithState:&v529 objects:v742 count:16];
    }

    while (v228);
  }

  v528 = 0u;
  v527 = 0u;
  v526 = 0u;
  v525 = 0u;
  v231 = *(v5 + 78);
  v232 = [v231 countByEnumeratingWithState:&v525 objects:v741 count:16];
  if (v232)
  {
    v233 = v232;
    v234 = *v526;
    do
    {
      for (i36 = 0; i36 != v233; ++i36)
      {
        if (*v526 != v234)
        {
          objc_enumerationMutation(v231);
        }

        [(VCPProtoAssetAnalysis *)self addMovieSubtleMotionResults:*(*(&v525 + 1) + 8 * i36)];
      }

      v233 = [v231 countByEnumeratingWithState:&v525 objects:v741 count:16];
    }

    while (v233);
  }

  v524 = 0u;
  v523 = 0u;
  v522 = 0u;
  v521 = 0u;
  v236 = *(v5 + 63);
  v237 = [v236 countByEnumeratingWithState:&v521 objects:v740 count:16];
  if (v237)
  {
    v238 = v237;
    v239 = *v522;
    do
    {
      for (i37 = 0; i37 != v238; ++i37)
      {
        if (*v522 != v239)
        {
          objc_enumerationMutation(v236);
        }

        [(VCPProtoAssetAnalysis *)self addMovieLoudnessResults:*(*(&v521 + 1) + 8 * i37)];
      }

      v238 = [v236 countByEnumeratingWithState:&v521 objects:v740 count:16];
    }

    while (v238);
  }

  v520 = 0u;
  v519 = 0u;
  v518 = 0u;
  v517 = 0u;
  v241 = *(v5 + 69);
  v242 = [v241 countByEnumeratingWithState:&v517 objects:v739 count:16];
  if (v242)
  {
    v243 = v242;
    v244 = *v518;
    do
    {
      for (i38 = 0; i38 != v243; ++i38)
      {
        if (*v518 != v244)
        {
          objc_enumerationMutation(v241);
        }

        [(VCPProtoAssetAnalysis *)self addMoviePetsResults:*(*(&v517 + 1) + 8 * i38)];
      }

      v243 = [v241 countByEnumeratingWithState:&v517 objects:v739 count:16];
    }

    while (v243);
  }

  v516 = 0u;
  v515 = 0u;
  v514 = 0u;
  v513 = 0u;
  v246 = *(v5 + 68);
  v247 = [v246 countByEnumeratingWithState:&v513 objects:v738 count:16];
  if (v247)
  {
    v248 = v247;
    v249 = *v514;
    do
    {
      for (i39 = 0; i39 != v248; ++i39)
      {
        if (*v514 != v249)
        {
          objc_enumerationMutation(v246);
        }

        [(VCPProtoAssetAnalysis *)self addMoviePetsFaceResults:*(*(&v513 + 1) + 8 * i39)];
      }

      v248 = [v246 countByEnumeratingWithState:&v513 objects:v738 count:16];
    }

    while (v248);
  }

  v512 = 0u;
  v511 = 0u;
  v510 = 0u;
  v509 = 0u;
  v251 = *(v5 + 76);
  v252 = [v251 countByEnumeratingWithState:&v509 objects:v737 count:16];
  if (v252)
  {
    v253 = v252;
    v254 = *v510;
    do
    {
      for (i40 = 0; i40 != v253; ++i40)
      {
        if (*v510 != v254)
        {
          objc_enumerationMutation(v251);
        }

        [(VCPProtoAssetAnalysis *)self addMovieStabilizationResults:*(*(&v509 + 1) + 8 * i40)];
      }

      v253 = [v251 countByEnumeratingWithState:&v509 objects:v737 count:16];
    }

    while (v253);
  }

  if ((*(v5 + 736) & 4) != 0)
  {
    self->_typesWide = *(v5 + 5);
    *&self->_has |= 4u;
  }

  v508 = 0u;
  v507 = 0u;
  v506 = 0u;
  v505 = 0u;
  v256 = *(v5 + 57);
  v257 = [v256 countByEnumeratingWithState:&v505 objects:v736 count:16];
  if (v257)
  {
    v258 = v257;
    v259 = *v506;
    do
    {
      for (i41 = 0; i41 != v258; ++i41)
      {
        if (*v506 != v259)
        {
          objc_enumerationMutation(v256);
        }

        [(VCPProtoAssetAnalysis *)self addMovieHighlightScoreResults:*(*(&v505 + 1) + 8 * i41)];
      }

      v258 = [v256 countByEnumeratingWithState:&v505 objects:v736 count:16];
    }

    while (v258);
  }

  v504 = 0u;
  v503 = 0u;
  v502 = 0u;
  v501 = 0u;
  v261 = *(v5 + 37);
  v262 = [v261 countByEnumeratingWithState:&v501 objects:v735 count:16];
  if (v262)
  {
    v263 = v262;
    v264 = *v502;
    do
    {
      for (i42 = 0; i42 != v263; ++i42)
      {
        if (*v502 != v264)
        {
          objc_enumerationMutation(v261);
        }

        [(VCPProtoAssetAnalysis *)self addLivePhotoHumanActionClassificationResults:*(*(&v501 + 1) + 8 * i42)];
      }

      v263 = [v261 countByEnumeratingWithState:&v501 objects:v735 count:16];
    }

    while (v263);
  }

  v500 = 0u;
  v499 = 0u;
  v498 = 0u;
  v497 = 0u;
  v266 = *(v5 + 47);
  v267 = [v266 countByEnumeratingWithState:&v497 objects:v734 count:16];
  if (v267)
  {
    v268 = v267;
    v269 = *v498;
    do
    {
      for (i43 = 0; i43 != v268; ++i43)
      {
        if (*v498 != v269)
        {
          objc_enumerationMutation(v266);
        }

        [(VCPProtoAssetAnalysis *)self addMovieAudioQualityResults:*(*(&v497 + 1) + 8 * i43)];
      }

      v268 = [v266 countByEnumeratingWithState:&v497 objects:v734 count:16];
    }

    while (v268);
  }

  v496 = 0u;
  v495 = 0u;
  v494 = 0u;
  v493 = 0u;
  v271 = *(v5 + 72);
  v272 = [v271 countByEnumeratingWithState:&v493 objects:v733 count:16];
  if (v272)
  {
    v273 = v272;
    v274 = *v494;
    do
    {
      for (i44 = 0; i44 != v273; ++i44)
      {
        if (*v494 != v274)
        {
          objc_enumerationMutation(v271);
        }

        [(VCPProtoAssetAnalysis *)self addMovieSafetyResults:*(*(&v493 + 1) + 8 * i44)];
      }

      v273 = [v271 countByEnumeratingWithState:&v493 objects:v733 count:16];
    }

    while (v273);
  }

  v492 = 0u;
  v491 = 0u;
  v490 = 0u;
  v489 = 0u;
  v276 = *(v5 + 15);
  v277 = [v276 countByEnumeratingWithState:&v489 objects:v732 count:16];
  if (v277)
  {
    v278 = v277;
    v279 = *v490;
    do
    {
      for (i45 = 0; i45 != v278; ++i45)
      {
        if (*v490 != v279)
        {
          objc_enumerationMutation(v276);
        }

        [(VCPProtoAssetAnalysis *)self addFilesystemMovieClassificationResults:*(*(&v489 + 1) + 8 * i45)];
      }

      v278 = [v276 countByEnumeratingWithState:&v489 objects:v732 count:16];
    }

    while (v278);
  }

  v488 = 0u;
  v487 = 0u;
  v486 = 0u;
  v485 = 0u;
  v281 = *(v5 + 16);
  v282 = [v281 countByEnumeratingWithState:&v485 objects:v731 count:16];
  if (v282)
  {
    v283 = v282;
    v284 = *v486;
    do
    {
      for (i46 = 0; i46 != v283; ++i46)
      {
        if (*v486 != v284)
        {
          objc_enumerationMutation(v281);
        }

        [(VCPProtoAssetAnalysis *)self addFilesystemMovieHumanActionClassificationResults:*(*(&v485 + 1) + 8 * i46)];
      }

      v283 = [v281 countByEnumeratingWithState:&v485 objects:v731 count:16];
    }

    while (v283);
  }

  v484 = 0u;
  v483 = 0u;
  v482 = 0u;
  v481 = 0u;
  v286 = *(v5 + 12);
  v287 = [v286 countByEnumeratingWithState:&v481 objects:v730 count:16];
  if (v287)
  {
    v288 = v287;
    v289 = *v482;
    do
    {
      for (i47 = 0; i47 != v288; ++i47)
      {
        if (*v482 != v289)
        {
          objc_enumerationMutation(v286);
        }

        [(VCPProtoAssetAnalysis *)self addFilesystemMovieApplauseResults:*(*(&v481 + 1) + 8 * i47)];
      }

      v288 = [v286 countByEnumeratingWithState:&v481 objects:v730 count:16];
    }

    while (v288);
  }

  v480 = 0u;
  v479 = 0u;
  v478 = 0u;
  v477 = 0u;
  v291 = *(v5 + 13);
  v292 = [v291 countByEnumeratingWithState:&v477 objects:v729 count:16];
  if (v292)
  {
    v293 = v292;
    v294 = *v478;
    do
    {
      for (i48 = 0; i48 != v293; ++i48)
      {
        if (*v478 != v294)
        {
          objc_enumerationMutation(v291);
        }

        [(VCPProtoAssetAnalysis *)self addFilesystemMovieBabbleResults:*(*(&v477 + 1) + 8 * i48)];
      }

      v293 = [v291 countByEnumeratingWithState:&v477 objects:v729 count:16];
    }

    while (v293);
  }

  v476 = 0u;
  v475 = 0u;
  v474 = 0u;
  v473 = 0u;
  v296 = *(v5 + 14);
  v297 = [v296 countByEnumeratingWithState:&v473 objects:v728 count:16];
  if (v297)
  {
    v298 = v297;
    v299 = *v474;
    do
    {
      for (i49 = 0; i49 != v298; ++i49)
      {
        if (*v474 != v299)
        {
          objc_enumerationMutation(v296);
        }

        [(VCPProtoAssetAnalysis *)self addFilesystemMovieCheeringResults:*(*(&v473 + 1) + 8 * i49)];
      }

      v298 = [v296 countByEnumeratingWithState:&v473 objects:v728 count:16];
    }

    while (v298);
  }

  v472 = 0u;
  v471 = 0u;
  v470 = 0u;
  v469 = 0u;
  v301 = *(v5 + 17);
  v302 = [v301 countByEnumeratingWithState:&v469 objects:v727 count:16];
  if (v302)
  {
    v303 = v302;
    v304 = *v470;
    do
    {
      for (i50 = 0; i50 != v303; ++i50)
      {
        if (*v470 != v304)
        {
          objc_enumerationMutation(v301);
        }

        [(VCPProtoAssetAnalysis *)self addFilesystemMovieLaughterResults:*(*(&v469 + 1) + 8 * i50)];
      }

      v303 = [v301 countByEnumeratingWithState:&v469 objects:v727 count:16];
    }

    while (v303);
  }

  v468 = 0u;
  v467 = 0u;
  v466 = 0u;
  v465 = 0u;
  v306 = *(v5 + 18);
  v307 = [v306 countByEnumeratingWithState:&v465 objects:v726 count:16];
  if (v307)
  {
    v308 = v307;
    v309 = *v466;
    do
    {
      for (i51 = 0; i51 != v308; ++i51)
      {
        if (*v466 != v309)
        {
          objc_enumerationMutation(v306);
        }

        [(VCPProtoAssetAnalysis *)self addFilesystemMovieMusicResults:*(*(&v465 + 1) + 8 * i51)];
      }

      v308 = [v306 countByEnumeratingWithState:&v465 objects:v726 count:16];
    }

    while (v308);
  }

  v464 = 0u;
  v463 = 0u;
  v462 = 0u;
  v461 = 0u;
  v311 = *(v5 + 19);
  v312 = [v311 countByEnumeratingWithState:&v461 objects:v725 count:16];
  if (v312)
  {
    v313 = v312;
    v314 = *v462;
    do
    {
      for (i52 = 0; i52 != v313; ++i52)
      {
        if (*v462 != v314)
        {
          objc_enumerationMutation(v311);
        }

        [(VCPProtoAssetAnalysis *)self addFilesystemMovieVoiceResults:*(*(&v461 + 1) + 8 * i52)];
      }

      v313 = [v311 countByEnumeratingWithState:&v461 objects:v725 count:16];
    }

    while (v313);
  }

  v459 = 0u;
  v460 = 0u;
  v457 = 0u;
  v458 = 0u;
  v316 = *(v5 + 6);
  v317 = [v316 countByEnumeratingWithState:&v457 objects:v724 count:16];
  if (v317)
  {
    v318 = v317;
    v319 = *v458;
    do
    {
      for (i53 = 0; i53 != v318; ++i53)
      {
        if (*v458 != v319)
        {
          objc_enumerationMutation(v316);
        }

        [(VCPProtoAssetAnalysis *)self addAnimatedStickerResults:*(*(&v457 + 1) + 8 * i53)];
      }

      v318 = [v316 countByEnumeratingWithState:&v457 objects:v724 count:16];
    }

    while (v318);
  }

  v455 = 0u;
  v456 = 0u;
  v453 = 0u;
  v454 = 0u;
  v321 = *(v5 + 41);
  v322 = [v321 countByEnumeratingWithState:&v453 objects:v723 count:16];
  if (v322)
  {
    v323 = v322;
    v324 = *v454;
    do
    {
      for (i54 = 0; i54 != v323; ++i54)
      {
        if (*v454 != v324)
        {
          objc_enumerationMutation(v321);
        }

        [(VCPProtoAssetAnalysis *)self addLivePhotoSettlingEffectGatingResults:*(*(&v453 + 1) + 8 * i54)];
      }

      v323 = [v321 countByEnumeratingWithState:&v453 objects:v723 count:16];
    }

    while (v323);
  }

  if (*(v5 + 8))
  {
    [(VCPProtoAssetAnalysis *)self setAssetCloudIdentifier:?];
  }

  v451 = 0u;
  v452 = 0u;
  v449 = 0u;
  v450 = 0u;
  v326 = *(v5 + 80);
  v327 = [v326 countByEnumeratingWithState:&v449 objects:v722 count:16];
  if (v327)
  {
    v328 = v327;
    v329 = *v450;
    do
    {
      for (i55 = 0; i55 != v328; ++i55)
      {
        if (*v450 != v329)
        {
          objc_enumerationMutation(v326);
        }

        [(VCPProtoAssetAnalysis *)self addMovieTorsoResults:*(*(&v449 + 1) + 8 * i55)];
      }

      v328 = [v326 countByEnumeratingWithState:&v449 objects:v722 count:16];
    }

    while (v328);
  }

  v447 = 0u;
  v448 = 0u;
  v445 = 0u;
  v446 = 0u;
  v331 = *(v5 + 58);
  v332 = [v331 countByEnumeratingWithState:&v445 objects:v721 count:16];
  if (v332)
  {
    v333 = v332;
    v334 = *v446;
    do
    {
      for (i56 = 0; i56 != v333; ++i56)
      {
        if (*v446 != v334)
        {
          objc_enumerationMutation(v331);
        }

        [(VCPProtoAssetAnalysis *)self addMovieHumanActionClassificationResults:*(*(&v445 + 1) + 8 * i56)];
      }

      v333 = [v331 countByEnumeratingWithState:&v445 objects:v721 count:16];
    }

    while (v333);
  }

  v443 = 0u;
  v444 = 0u;
  v441 = 0u;
  v442 = 0u;
  v336 = *(v5 + 87);
  v337 = [v336 countByEnumeratingWithState:&v441 objects:v720 count:16];
  if (v337)
  {
    v338 = v337;
    v339 = *v442;
    do
    {
      for (i57 = 0; i57 != v338; ++i57)
      {
        if (*v442 != v339)
        {
          objc_enumerationMutation(v336);
        }

        [(VCPProtoAssetAnalysis *)self addVideoEmbeddingResults:*(*(&v441 + 1) + 8 * i57)];
      }

      v338 = [v336 countByEnumeratingWithState:&v441 objects:v720 count:16];
    }

    while (v338);
  }

  v439 = 0u;
  v440 = 0u;
  v437 = 0u;
  v438 = 0u;
  v341 = *(v5 + 83);
  v342 = [v341 countByEnumeratingWithState:&v437 objects:v719 count:16];
  if (v342)
  {
    v343 = v342;
    v344 = *v438;
    do
    {
      for (i58 = 0; i58 != v343; ++i58)
      {
        if (*v438 != v344)
        {
          objc_enumerationMutation(v341);
        }

        [(VCPProtoAssetAnalysis *)self addSummarizedEmbeddingResults:*(*(&v437 + 1) + 8 * i58)];
      }

      v343 = [v341 countByEnumeratingWithState:&v437 objects:v719 count:16];
    }

    while (v343);
  }

  v435 = 0u;
  v436 = 0u;
  v433 = 0u;
  v434 = 0u;
  v346 = *(v5 + 11);
  v347 = [v346 countByEnumeratingWithState:&v433 objects:v718 count:16];
  if (v347)
  {
    v348 = v347;
    v349 = *v434;
    do
    {
      for (i59 = 0; i59 != v348; ++i59)
      {
        if (*v434 != v349)
        {
          objc_enumerationMutation(v346);
        }

        [(VCPProtoAssetAnalysis *)self addAudioFusedVideoEmbeddingResults:*(*(&v433 + 1) + 8 * i59)];
      }

      v348 = [v346 countByEnumeratingWithState:&v433 objects:v718 count:16];
    }

    while (v348);
  }

  v431 = 0u;
  v432 = 0u;
  v429 = 0u;
  v430 = 0u;
  v351 = *(v5 + 24);
  v352 = [v351 countByEnumeratingWithState:&v429 objects:v717 count:16];
  if (v352)
  {
    v353 = v352;
    v354 = *v430;
    do
    {
      for (i60 = 0; i60 != v353; ++i60)
      {
        if (*v430 != v354)
        {
          objc_enumerationMutation(v351);
        }

        [(VCPProtoAssetAnalysis *)self addImageEmbeddingResults:*(*(&v429 + 1) + 8 * i60)];
      }

      v353 = [v351 countByEnumeratingWithState:&v429 objects:v717 count:16];
    }

    while (v353);
  }

  v427 = 0u;
  v428 = 0u;
  v425 = 0u;
  v426 = 0u;
  v356 = *(v5 + 22);
  v357 = [v356 countByEnumeratingWithState:&v425 objects:v716 count:16];
  if (v357)
  {
    v358 = v357;
    v359 = *v426;
    do
    {
      for (i61 = 0; i61 != v358; ++i61)
      {
        if (*v426 != v359)
        {
          objc_enumerationMutation(v356);
        }

        [(VCPProtoAssetAnalysis *)self addImageCaptionResults:*(*(&v425 + 1) + 8 * i61)];
      }

      v358 = [v356 countByEnumeratingWithState:&v425 objects:v716 count:16];
    }

    while (v358);
  }

  v423 = 0u;
  v424 = 0u;
  v421 = 0u;
  v422 = 0u;
  v361 = *(v5 + 86);
  v362 = [v361 countByEnumeratingWithState:&v421 objects:v715 count:16];
  if (v362)
  {
    v363 = v362;
    v364 = *v422;
    do
    {
      for (i62 = 0; i62 != v363; ++i62)
      {
        if (*v422 != v364)
        {
          objc_enumerationMutation(v361);
        }

        [(VCPProtoAssetAnalysis *)self addVideoCaptionResults:*(*(&v421 + 1) + 8 * i62)];
      }

      v363 = [v361 countByEnumeratingWithState:&v421 objects:v715 count:16];
    }

    while (v363);
  }

  v419 = 0u;
  v420 = 0u;
  v417 = 0u;
  v418 = 0u;
  v366 = *(v5 + 85);
  v367 = [v366 countByEnumeratingWithState:&v417 objects:v714 count:16];
  if (v367)
  {
    v368 = v367;
    v369 = *v418;
    do
    {
      for (i63 = 0; i63 != v368; ++i63)
      {
        if (*v418 != v369)
        {
          objc_enumerationMutation(v366);
        }

        [(VCPProtoAssetAnalysis *)self addVideoCaptionPreferenceResults:*(*(&v417 + 1) + 8 * i63)];
      }

      v368 = [v366 countByEnumeratingWithState:&v417 objects:v714 count:16];
    }

    while (v368);
  }

  v415 = 0u;
  v416 = 0u;
  v413 = 0u;
  v414 = 0u;
  v371 = *(v5 + 90);
  v372 = [v371 countByEnumeratingWithState:&v413 objects:v713 count:16];
  if (v372)
  {
    v373 = v372;
    v374 = *v414;
    do
    {
      for (i64 = 0; i64 != v373; ++i64)
      {
        if (*v414 != v374)
        {
          objc_enumerationMutation(v371);
        }

        [(VCPProtoAssetAnalysis *)self addVideoSegmentCaptionResults:*(*(&v413 + 1) + 8 * i64)];
      }

      v373 = [v371 countByEnumeratingWithState:&v413 objects:v713 count:16];
    }

    while (v373);
  }

  v411 = 0u;
  v412 = 0u;
  v409 = 0u;
  v410 = 0u;
  v376 = *(v5 + 44);
  v377 = [v376 countByEnumeratingWithState:&v409 objects:v712 count:16];
  if (v377)
  {
    v378 = v377;
    v379 = *v410;
    do
    {
      for (i65 = 0; i65 != v378; ++i65)
      {
        if (*v410 != v379)
        {
          objc_enumerationMutation(v376);
        }

        [(VCPProtoAssetAnalysis *)self addMovieAnimalResults:*(*(&v409 + 1) + 8 * i65)];
      }

      v378 = [v376 countByEnumeratingWithState:&v409 objects:v712 count:16];
    }

    while (v378);
  }

  v407 = 0u;
  v408 = 0u;
  v405 = 0u;
  v406 = 0u;
  v381 = *(v5 + 45);
  v382 = [v381 countByEnumeratingWithState:&v405 objects:v711 count:16];
  if (v382)
  {
    v383 = v382;
    v384 = *v406;
    do
    {
      for (i66 = 0; i66 != v383; ++i66)
      {
        if (*v406 != v384)
        {
          objc_enumerationMutation(v381);
        }

        [(VCPProtoAssetAnalysis *)self addMovieAnimalprintResults:*(*(&v405 + 1) + 8 * i66)];
      }

      v383 = [v381 countByEnumeratingWithState:&v405 objects:v711 count:16];
    }

    while (v383);
  }

  v386 = *(v5 + 736);
  if ((v386 & 8) != 0)
  {
    self->_imageEmbeddingVersion = *(v5 + 50);
    *&self->_has |= 8u;
    v386 = *(v5 + 736);
  }

  if ((v386 & 0x10) != 0)
  {
    self->_videoEmbeddingVersion = *(v5 + 176);
    *&self->_has |= 0x10u;
  }

  v403 = 0u;
  v404 = 0u;
  v401 = 0u;
  v402 = 0u;
  v387 = *(v5 + 89);
  v388 = [v387 countByEnumeratingWithState:&v401 objects:v710 count:16];
  if (v388)
  {
    v389 = v388;
    v390 = *v402;
    do
    {
      for (i67 = 0; i67 != v389; ++i67)
      {
        if (*v402 != v390)
        {
          objc_enumerationMutation(v387);
        }

        [(VCPProtoAssetAnalysis *)self addVideoSceneThumbnailResults:*(*(&v401 + 1) + 8 * i67)];
      }

      v389 = [v387 countByEnumeratingWithState:&v401 objects:v710 count:16];
    }

    while (v389);
  }

  v399 = 0u;
  v400 = 0u;
  v397 = 0u;
  v398 = 0u;
  v392 = *(v5 + 91);
  v393 = [v392 countByEnumeratingWithState:&v397 objects:v709 count:16];
  if (v393)
  {
    v394 = v393;
    v395 = *v398;
    do
    {
      for (i68 = 0; i68 != v394; ++i68)
      {
        if (*v398 != v395)
        {
          objc_enumerationMutation(v392);
        }

        [(VCPProtoAssetAnalysis *)self addVideoThumbnailResults:*(*(&v397 + 1) + 8 * i68), v397];
      }

      v394 = [v392 countByEnumeratingWithState:&v397 objects:v709 count:16];
    }

    while (v394);
  }
}

- (void)setImageEmbeddingResultsFromVSKAsset:(id)asset imageEmbeddingVersion:(signed __int16)version
{
  versionCopy = version;
  assetCopy = asset;
  v6 = [VCPProtoEmbeddingResult resultsFromVSKAsset:?];
  [(VCPProtoAssetAnalysis *)self setImageEmbeddingResults:v6];

  imageEmbeddingResults = [(VCPProtoAssetAnalysis *)self imageEmbeddingResults];
  if ([imageEmbeddingResults count])
  {
    v8 = versionCopy;
  }

  else
  {
    v8 = 0;
  }

  [(VCPProtoAssetAnalysis *)self setImageEmbeddingVersion:v8];
}

- (id)imageEmbeddingVSKAssetWithLocalIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([(VCPProtoAssetAnalysis *)self hasImageEmbeddingVersion]&& [(VCPProtoAssetAnalysis *)self imageEmbeddingVersion]< 73)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412802;
      v11 = identifierCopy;
      v12 = 1024;
      imageEmbeddingVersion = [(VCPProtoAssetAnalysis *)self imageEmbeddingVersion];
      v14 = 1024;
      v15 = 73;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VCPProtoAssetAnalysis->VSKAsset][%@] Image embedding version %d < forward compatible version %d", &v10, 0x18u);
    }

    v5 = 0;
  }

  else
  {
    imageEmbeddingResults = [(VCPProtoAssetAnalysis *)self imageEmbeddingResults];
    v5 = [VCPProtoEmbeddingResult imageEmbeddingVSKAssetFromResults:imageEmbeddingResults localIdentifier:identifierCopy];

    hasImageEmbeddingVersion = [(VCPProtoAssetAnalysis *)self hasImageEmbeddingVersion];
    if (v5)
    {
      v8 = hasImageEmbeddingVersion;
    }

    else
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      [(VCPProtoAssetAnalysis *)self setImageEmbeddingVersion:70];
    }
  }

  return v5;
}

- (id)videoEmbeddingVSKAssetWithLocalIdentifier:(id)identifier mediaAnalysisResults:(id)results
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  resultsCopy = results;
  if ([(VCPProtoAssetAnalysis *)self hasVideoEmbeddingVersion]&& [(VCPProtoAssetAnalysis *)self videoEmbeddingVersion]< 73)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      v13 = identifierCopy;
      v14 = 1024;
      videoEmbeddingVersion = [(VCPProtoAssetAnalysis *)self videoEmbeddingVersion];
      v16 = 1024;
      v17 = 73;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VCPProtoAssetAnalysis->VSKAsset][%@] Video embedding version %d < forward compatible version %d", &v12, 0x18u);
    }

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E69DF5F8] mad_videoAssetWithLocalIdentifier:identifierCopy mediaAnalysisResults:resultsCopy error:0];
    hasVideoEmbeddingVersion = [(VCPProtoAssetAnalysis *)self hasVideoEmbeddingVersion];
    if (v8)
    {
      v10 = hasVideoEmbeddingVersion;
    }

    else
    {
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      [(VCPProtoAssetAnalysis *)self setVideoEmbeddingVersion:70];
    }
  }

  return v8;
}

- (void)persistToPhotosAsset:(id)asset
{
  assetCopy = asset;
  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    v4 = [MEMORY[0x1E6978640] changeRequestForAsset:assetCopy];
    if ([(VCPProtoAssetAnalysis *)self imageEmbeddingVersion]>= 73)
    {
      [v4 setImageEmbeddingVersion:{-[VCPProtoAssetAnalysis imageEmbeddingVersion](self, "imageEmbeddingVersion")}];
    }

    if ([(VCPProtoAssetAnalysis *)self videoEmbeddingVersion]>= 73)
    {
      [v4 setVideoEmbeddingVersion:{-[VCPProtoAssetAnalysis videoEmbeddingVersion](self, "videoEmbeddingVersion")}];
    }
  }
}

- (BOOL)setAttributesFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20 = [dictionaryCopy objectForKeyedSubscript:@"version"];
  v5 = [dictionaryCopy objectForKeyedSubscript:@"performedAnalysisTypes"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"flags"];
  v19 = [dictionaryCopy objectForKeyedSubscript:@"statsFlags"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"dateAnalyzed"];
  v18 = [dictionaryCopy objectForKeyedSubscript:@"quality"];
  v8 = [dictionaryCopy objectForKeyedSubscript:@"dateModified"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"masterFingerprint"];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"adjustedFingerprint"];
  if (v20)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v14 = v11 || v5 == 0 || v6 == 0 || v8 == 0;
  v15 = !v14;
  if (v14)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[LegacyDict->Proto] Invalid attribute: no version/date/types/flags/modificationDate", buf, 2u);
    }
  }

  else
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
    if (_os_feature_enabled_impl())
    {
      unsignedIntegerValue &= 0xFFFFFFFFBFBFFFF3;
    }

    -[VCPProtoAssetAnalysis setVersion:](self, "setVersion:", [v20 unsignedIntValue]);
    [(VCPProtoAssetAnalysis *)self setTypesWide:unsignedIntegerValue];
    -[VCPProtoAssetAnalysis setFlags:](self, "setFlags:", [v6 unsignedIntValue]);
    [v7 timeIntervalSinceReferenceDate];
    [(VCPProtoAssetAnalysis *)self setDate:?];
    [v18 doubleValue];
    [(VCPProtoAssetAnalysis *)self setQuality:?];
    -[VCPProtoAssetAnalysis setStatsFlags:](self, "setStatsFlags:", [v19 unsignedLongValue]);
    [v8 timeIntervalSinceReferenceDate];
    [(VCPProtoAssetAnalysis *)self setAssetModificationDate:?];
    [(VCPProtoAssetAnalysis *)self setAssetMasterFingerprint:v9];
    [(VCPProtoAssetAnalysis *)self setAssetAdjustedFingerprint:v10];
  }

  return v15;
}

+ (id)faceResultKeys
{
  v4[11] = *MEMORY[0x1E69E9840];
  v4[0] = @"imageFaceResults";
  v4[1] = @"movieFaceResults";
  v4[2] = @"movieFaceprintResults";
  v4[3] = @"imageHumanPoseResults";
  v4[4] = @"movieHumanPoseResults";
  v4[5] = @"movieHumanActionResults";
  v4[6] = @"livePhotoHumanActionClassificationResults";
  v4[7] = @"movieTorsoResults";
  v4[8] = @"movieHumanActionResults";
  v4[9] = @"movieHumanActionClassificationResults";
  v4[10] = @"filesystemMovieHumanActionClassificationResults";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:11];

  return v2;
}

- (BOOL)setResults:(id)results withClass:(Class)class forPropertyKey:(id)key
{
  v35 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  keyCopy = key;
  if (_os_feature_enabled_impl())
  {
    v9 = +[VCPProtoAssetAnalysis faceResultKeys];
    v10 = [v9 containsObject:keyCopy];

    if (v10)
    {
      goto LABEL_16;
    }
  }

  if (resultsCopy && (objc_opt_respondsToSelector() & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138412546;
      v32 = keyCopy;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[LegacyDict->Proto] Failed to set property %@ due to invalid type for results (should be NSArray, is %@)", buf, 0x16u);
    }

    v18 = 0;
    goto LABEL_29;
  }

  if (![resultsCopy count])
  {
LABEL_16:
    v18 = 1;
    goto LABEL_29;
  }

  array = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = resultsCopy;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = *v27;
LABEL_8:
    v15 = 0;
    while (1)
    {
      if (*v27 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v16 = *(*(&v26 + 1) + 8 * v15);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        break;
      }

      v17 = [(objc_class *)class resultFromLegacyDictionary:v16];
      if (!v17)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v23 = NSStringFromClass(class);
          *buf = 138412546;
          v32 = keyCopy;
          v33 = 2112;
          v34 = v23;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[LegacyDict->Proto] Failed to set property %@ due to nil %@", buf, 0x16u);
        }

LABEL_27:

        v18 = 0;
        goto LABEL_28;
      }

      [array addObject:v17];

      if (v13 == ++v15)
      {
        v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v13)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138412546;
      v32 = keyCopy;
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[LegacyDict->Proto] Failed to set property %@ due to invalid type for result entry (should be NSDictionary, is %@)", buf, 0x16u);
    }

    goto LABEL_27;
  }

LABEL_15:

  [(VCPProtoAssetAnalysis *)self setValue:array forKey:keyCopy];
  v18 = 1;
LABEL_28:

LABEL_29:
  return v18;
}

- (BOOL)setImageAnalysisFromLegacyDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"metadataRanges"];
  v5 = [v4 objectForKeyedSubscript:@"BlurResults"];
  v6 = [(VCPProtoAssetAnalysis *)self setResults:v5 withClass:objc_opt_class() forPropertyKey:@"imageBlurResults"];

  if (v6
    && ([v4 objectForKeyedSubscript:@"CompositionResults"], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v7, objc_opt_class(), @"imageCompositionResults"), v7, v8)
    && ([v4 objectForKeyedSubscript:@"ExposureResults"], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v9, objc_opt_class(), @"imageExposureResults"), v9, v10)
    && ([v4 objectForKeyedSubscript:@"FaceResults"], v11 = objc_claimAutoreleasedReturnValue(), v12 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v11, objc_opt_class(), @"imageFaceResults"), v11, v12)
    && ([v4 objectForKeyedSubscript:@"FeatureVectorResults"], v13 = objc_claimAutoreleasedReturnValue(), v14 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v13, objc_opt_class(), @"imageFeatureResults"), v13, v14)
    && ([v4 objectForKeyedSubscript:@"JunkResults"], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v15, objc_opt_class(), @"imageJunkResults"), v15, v16)
    && ([v4 objectForKeyedSubscript:@"PetsResults"], v17 = objc_claimAutoreleasedReturnValue(), v18 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v17, objc_opt_class(), @"imagePetsResults"), v17, v18)
    && ([v4 objectForKeyedSubscript:@"PetsFaceResults"], v19 = objc_claimAutoreleasedReturnValue(), v20 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v19, objc_opt_class(), @"imagePetsFaceResults"), v19, v20)
    && ([v4 objectForKeyedSubscript:@"SaliencyResults"], v21 = objc_claimAutoreleasedReturnValue(), v22 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v21, objc_opt_class(), @"imageSaliencyResults"), v21, v22)
    && ([v4 objectForKeyedSubscript:@"SceneprintResults"], v23 = objc_claimAutoreleasedReturnValue(), v24 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v23, objc_opt_class(), @"imageSceneprintResults"), v23, v24)
    && ([v4 objectForKeyedSubscript:@"ShotTypeResults"], v25 = objc_claimAutoreleasedReturnValue(), v26 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v25, objc_opt_class(), @"imageShotTypeResults"), v25, v26)
    && ([v4 objectForKeyedSubscript:@"HumanPoseResults"], v27 = objc_claimAutoreleasedReturnValue(), v28 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v27, objc_opt_class(), @"imageHumanPoseResults"), v27, v28)
    && ([v4 objectForKeyedSubscript:@"MiCaImageCaptionResults"], v29 = objc_claimAutoreleasedReturnValue(), v30 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v29, objc_opt_class(), @"imageCaptionResults"), v29, v30)
    && ([v4 objectForKeyedSubscript:@"IrisRecommendResults"], v31 = objc_claimAutoreleasedReturnValue(), v32 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v31, objc_opt_class(), @"livePhotoRecommendationResults"), v31, v32)
    && ([v4 objectForKeyedSubscript:@"IrisSharpnessResults"], v33 = objc_claimAutoreleasedReturnValue(), v34 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v33, objc_opt_class(), @"livePhotoSharpnessResults"), v33, v34)
    && ([v4 objectForKeyedSubscript:@"HumanActionClassificationResults"], v35 = objc_claimAutoreleasedReturnValue(), v36 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v35, objc_opt_class(), @"livePhotoHumanActionClassificationResults"), v35, v36)
    && ([v4 objectForKeyedSubscript:@"LivePhotoEffectsResults"], v37 = objc_claimAutoreleasedReturnValue(), v38 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v37, objc_opt_class(), @"livePhotoEffectsResults"), v37, v38)
    && ([v4 objectForKeyedSubscript:@"KeyFrameResults"], v39 = objc_claimAutoreleasedReturnValue(), v40 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v39, objc_opt_class(), @"livePhotoKeyFrameResults"), v39, v40)
    && ([v4 objectForKeyedSubscript:@"KeyFrameStillResults"], v41 = objc_claimAutoreleasedReturnValue(), v42 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v41, objc_opt_class(), @"livePhotoKeyFrameStillResults"), v41, v42)
    && ([v4 objectForKeyedSubscript:@"SettlingEffectsGatingResults"], v43 = objc_claimAutoreleasedReturnValue(), v44 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v43, objc_opt_class(), @"livePhotoSettlingEffectGatingResults"), v43, v44)
    && ([v4 objectForKeyedSubscript:@"CameraMotionResults"], v45 = objc_claimAutoreleasedReturnValue(), v46 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v45, objc_opt_class(), @"movieCameraMotionResults"), v45, v46)
    && ([v4 objectForKeyedSubscript:@"FineSubjectMotionResults"], v47 = objc_claimAutoreleasedReturnValue(), v48 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v47, objc_opt_class(), @"movieFineSubjectMotionResults"), v47, v48)
    && ([v4 objectForKeyedSubscript:@"InterestingnessResults"], v49 = objc_claimAutoreleasedReturnValue(), v50 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v49, objc_opt_class(), @"movieInterestingnessResults"), v49, v50)
    && ([v4 objectForKeyedSubscript:@"MovingObjectsResults"], v51 = objc_claimAutoreleasedReturnValue(), v52 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v51, objc_opt_class(), @"movieMovingObjectResults"), v51, v52)
    && ([v4 objectForKeyedSubscript:@"MusicResults"], v53 = objc_claimAutoreleasedReturnValue(), v54 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v53, objc_opt_class(), @"movieMusicResults"), v53, v54)
    && ([v4 objectForKeyedSubscript:@"ObstructionResults"], v55 = objc_claimAutoreleasedReturnValue(), v56 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v55, objc_opt_class(), @"movieObstructionResults"), v55, v56)
    && ([v4 objectForKeyedSubscript:@"OrientationResults"], v57 = objc_claimAutoreleasedReturnValue(), v58 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v57, objc_opt_class(), @"movieOrientationResults"), v57, v58)
    && ([v4 objectForKeyedSubscript:@"QualityResults"], v59 = objc_claimAutoreleasedReturnValue(), v60 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v59, objc_opt_class(), @"movieQualityResults"), v59, v60)
    && ([v4 objectForKeyedSubscript:@"SceneResults"], v61 = objc_claimAutoreleasedReturnValue(), v62 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v61, objc_opt_class(), @"movieSceneResults"), v61, v62)
    && ([v4 objectForKeyedSubscript:@"SubjectMotionResults"], v63 = objc_claimAutoreleasedReturnValue(), v64 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v63, objc_opt_class(), @"movieSubjectMotionResults"), v63, v64)
    && ([v4 objectForKeyedSubscript:@"SubtleMotionResults"], v65 = objc_claimAutoreleasedReturnValue(), v66 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v65, objc_opt_class(), @"movieSubtleMotionResults"), v65, v66)
    && ([v4 objectForKeyedSubscript:@"UtteranceResults"], v67 = objc_claimAutoreleasedReturnValue(), v68 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v67, objc_opt_class(), @"movieUtteranceResults"), v67, v68)
    && ([v4 objectForKeyedSubscript:@"VoiceResults"], v69 = objc_claimAutoreleasedReturnValue(), v70 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v69, objc_opt_class(), @"movieVoiceResults"), v69, v70)
    && ([v4 objectForKeyedSubscript:@"MovieSummaryResults"], v71 = objc_claimAutoreleasedReturnValue(), v72 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v71, objc_opt_class(), @"movieSummaryResults"), v71, v72)
    && ([v4 objectForKeyedSubscript:@"AnimatedStickerResults"], v73 = objc_claimAutoreleasedReturnValue(), v74 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v73, objc_opt_class(), @"animatedStickerResults"), v73, v74)
    && ([v4 objectForKeyedSubscript:@"MovieHighlightScoreResults"], v75 = objc_claimAutoreleasedReturnValue(), v76 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v75, objc_opt_class(), @"movieHighlightScoreResults"), v75, v76)
    && ([v4 objectForKeyedSubscript:@"MovieHighlightResults"], v77 = objc_claimAutoreleasedReturnValue(), v78 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v77, objc_opt_class(), @"movieHighlightResults"), v77, v78)
    && ([v4 objectForKeyedSubscript:@"ApplauseResults"], v79 = objc_claimAutoreleasedReturnValue(), v80 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v79, objc_opt_class(), @"movieApplauseResults"), v79, v80)
    && ([v4 objectForKeyedSubscript:@"AudioQualityResults"], v81 = objc_claimAutoreleasedReturnValue(), v82 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v81, objc_opt_class(), @"movieAudioQualityResults"), v81, v82)
    && ([v4 objectForKeyedSubscript:@"BabbleResults"], v83 = objc_claimAutoreleasedReturnValue(), v84 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v83, objc_opt_class(), @"movieBabbleResults"), v83, v84)
    && ([v4 objectForKeyedSubscript:@"CheeringResults"], v85 = objc_claimAutoreleasedReturnValue(), v86 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v85, objc_opt_class(), @"movieCheeringResults"), v85, v86)
    && ([v4 objectForKeyedSubscript:@"LaughterResults"], v87 = objc_claimAutoreleasedReturnValue(), v88 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v87, objc_opt_class(), @"movieLaughterResults"), v87, v88)
    && ([v4 objectForKeyedSubscript:@"HumanActionResults"], v89 = objc_claimAutoreleasedReturnValue(), v90 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v89, objc_opt_class(), @"movieHumanActionResults"), v89, v90)
    && ([v4 objectForKeyedSubscript:@"LoudnessResults"], v91 = objc_claimAutoreleasedReturnValue(), v92 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v91, objc_opt_class(), @"movieLoudnessResults"), v91, v92)
    && ([v4 objectForKeyedSubscript:@"VideoStabilizationResults"], v93 = objc_claimAutoreleasedReturnValue(), v94 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v93, objc_opt_class(), @"movieStabilizationResults"), v93, v94)
    && ([v4 objectForKeyedSubscript:@"SafetyResults"], v95 = objc_claimAutoreleasedReturnValue(), v96 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v95, objc_opt_class(), @"movieSafetyResults"), v95, v96)
    && ([v4 objectForKeyedSubscript:@"SummarizedEmbeddingResults"], v97 = objc_claimAutoreleasedReturnValue(), v98 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v97, objc_opt_class(), @"summarizedEmbeddingResults"), v97, v98)
    && ([v4 objectForKeyedSubscript:@"AudioFusedVideoEmbeddingResults"], v99 = objc_claimAutoreleasedReturnValue(), v100 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v99, objc_opt_class(), @"audioFusedVideoEmbeddingResults"), v99, v100)
    && ([v4 objectForKeyedSubscript:@"VideoEmbeddingResults"], v101 = objc_claimAutoreleasedReturnValue(), v102 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v101, objc_opt_class(), @"videoEmbeddingResults"), v101, v102)
    && ([v4 objectForKeyedSubscript:@"MiCaVideoCaptionResults"], v103 = objc_claimAutoreleasedReturnValue(), v104 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v103, objc_opt_class(), @"videoCaptionResults"), v103, v104))
  {
    v105 = [v4 objectForKeyedSubscript:@"VideoCaptionPreferenceResults"];
    v106 = [(VCPProtoAssetAnalysis *)self setResults:v105 withClass:objc_opt_class() forPropertyKey:@"videoCaptionPreferenceResults"];
  }

  else
  {
    v106 = 0;
  }

  return v106;
}

- (BOOL)setMovieAnalysisFromLegacyDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"metadataRanges"];
  v5 = [v4 objectForKeyedSubscript:@"ActivityLevelResults"];
  v6 = [(VCPProtoAssetAnalysis *)self setResults:v5 withClass:objc_opt_class() forPropertyKey:@"movieActivityLevelResults"];

  if (v6
    && ([v4 objectForKeyedSubscript:@"AnimalResults"], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v7, objc_opt_class(), @"movieAnimalResults"), v7, v8)
    && ([v4 objectForKeyedSubscript:@"AnimalPrintResults"], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v9, objc_opt_class(), @"movieAnimalprintResults"), v9, v10)
    && ([v4 objectForKeyedSubscript:@"AudioQualityResults"], v11 = objc_claimAutoreleasedReturnValue(), v12 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v11, objc_opt_class(), @"movieAudioQualityResults"), v11, v12)
    && ([v4 objectForKeyedSubscript:@"CameraMotionResults"], v13 = objc_claimAutoreleasedReturnValue(), v14 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v13, objc_opt_class(), @"movieCameraMotionResults"), v13, v14)
    && ([v4 objectForKeyedSubscript:@"ClassificationResults"], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v15, objc_opt_class(), @"movieClassificationResults"), v15, v16)
    && ([v4 objectForKeyedSubscript:@"FaceResults"], v17 = objc_claimAutoreleasedReturnValue(), v18 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v17, objc_opt_class(), @"movieFaceResults"), v17, v18)
    && ([v4 objectForKeyedSubscript:@"FacePrintResults"], v19 = objc_claimAutoreleasedReturnValue(), v20 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v19, objc_opt_class(), @"movieFaceprintResults"), v19, v20)
    && ([v4 objectForKeyedSubscript:@"FeatureVectorResults"], v21 = objc_claimAutoreleasedReturnValue(), v22 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v21, objc_opt_class(), @"movieFeatureResults"), v21, v22)
    && ([v4 objectForKeyedSubscript:@"FineSubjectMotionResults"], v23 = objc_claimAutoreleasedReturnValue(), v24 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v23, objc_opt_class(), @"movieFineSubjectMotionResults"), v23, v24)
    && ([v4 objectForKeyedSubscript:@"InterestingnessResults"], v25 = objc_claimAutoreleasedReturnValue(), v26 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v25, objc_opt_class(), @"movieInterestingnessResults"), v25, v26)
    && ([v4 objectForKeyedSubscript:@"KeyFrameResults"], v27 = objc_claimAutoreleasedReturnValue(), v28 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v27, objc_opt_class(), @"livePhotoKeyFrameResults"), v27, v28)
    && ([v4 objectForKeyedSubscript:@"MovingObjectsResults"], v29 = objc_claimAutoreleasedReturnValue(), v30 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v29, objc_opt_class(), @"movieMovingObjectResults"), v29, v30)
    && ([v4 objectForKeyedSubscript:@"MusicResults"], v31 = objc_claimAutoreleasedReturnValue(), v32 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v31, objc_opt_class(), @"movieMusicResults"), v31, v32)
    && ([v4 objectForKeyedSubscript:@"ObstructionResults"], v33 = objc_claimAutoreleasedReturnValue(), v34 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v33, objc_opt_class(), @"movieObstructionResults"), v33, v34)
    && ([v4 objectForKeyedSubscript:@"OrientationResults"], v35 = objc_claimAutoreleasedReturnValue(), v36 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v35, objc_opt_class(), @"movieOrientationResults"), v35, v36)
    && ([v4 objectForKeyedSubscript:@"PreEncodeResults"], v37 = objc_claimAutoreleasedReturnValue(), v38 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v37, objc_opt_class(), @"moviePreEncodeResults"), v37, v38)
    && ([v4 objectForKeyedSubscript:@"QualityResults"], v39 = objc_claimAutoreleasedReturnValue(), v40 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v39, objc_opt_class(), @"movieQualityResults"), v39, v40)
    && ([v4 objectForKeyedSubscript:@"SaliencyResults"], v41 = objc_claimAutoreleasedReturnValue(), v42 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v41, objc_opt_class(), @"movieSaliencyResults"), v41, v42)
    && ([v4 objectForKeyedSubscript:@"SceneResults"], v43 = objc_claimAutoreleasedReturnValue(), v44 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v43, objc_opt_class(), @"movieSceneResults"), v43, v44)
    && ([v4 objectForKeyedSubscript:@"SceneprintResults"], v45 = objc_claimAutoreleasedReturnValue(), v46 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v45, objc_opt_class(), @"movieSceneprintResults"), v45, v46)
    && ([v4 objectForKeyedSubscript:@"SubjectMotionResults"], v47 = objc_claimAutoreleasedReturnValue(), v48 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v47, objc_opt_class(), @"movieSubjectMotionResults"), v47, v48)
    && ([v4 objectForKeyedSubscript:@"SubtleMotionResults"], v49 = objc_claimAutoreleasedReturnValue(), v50 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v49, objc_opt_class(), @"movieSubtleMotionResults"), v49, v50)
    && ([v4 objectForKeyedSubscript:@"UtteranceResults"], v51 = objc_claimAutoreleasedReturnValue(), v52 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v51, objc_opt_class(), @"movieUtteranceResults"), v51, v52)
    && ([v4 objectForKeyedSubscript:@"VoiceResults"], v53 = objc_claimAutoreleasedReturnValue(), v54 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v53, objc_opt_class(), @"movieVoiceResults"), v53, v54)
    && ([v4 objectForKeyedSubscript:@"MovieSummaryResults"], v55 = objc_claimAutoreleasedReturnValue(), v56 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v55, objc_opt_class(), @"movieSummaryResults"), v55, v56)
    && ([v4 objectForKeyedSubscript:@"AnimatedStickerResults"], v57 = objc_claimAutoreleasedReturnValue(), v58 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v57, objc_opt_class(), @"animatedStickerResults"), v57, v58)
    && ([v4 objectForKeyedSubscript:@"MovieHighlightScoreResults"], v59 = objc_claimAutoreleasedReturnValue(), v60 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v59, objc_opt_class(), @"movieHighlightScoreResults"), v59, v60)
    && ([v4 objectForKeyedSubscript:@"MovieHighlightResults"], v61 = objc_claimAutoreleasedReturnValue(), v62 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v61, objc_opt_class(), @"movieHighlightResults"), v61, v62)
    && ([v4 objectForKeyedSubscript:@"HumanPoseResults"], v63 = objc_claimAutoreleasedReturnValue(), v64 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v63, objc_opt_class(), @"movieHumanPoseResults"), v63, v64)
    && ([v4 objectForKeyedSubscript:@"ApplauseResults"], v65 = objc_claimAutoreleasedReturnValue(), v66 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v65, objc_opt_class(), @"movieApplauseResults"), v65, v66)
    && ([v4 objectForKeyedSubscript:@"BabbleResults"], v67 = objc_claimAutoreleasedReturnValue(), v68 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v67, objc_opt_class(), @"movieBabbleResults"), v67, v68)
    && ([v4 objectForKeyedSubscript:@"CheeringResults"], v69 = objc_claimAutoreleasedReturnValue(), v70 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v69, objc_opt_class(), @"movieCheeringResults"), v69, v70)
    && ([v4 objectForKeyedSubscript:@"LaughterResults"], v71 = objc_claimAutoreleasedReturnValue(), v72 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v71, objc_opt_class(), @"movieLaughterResults"), v71, v72)
    && ([v4 objectForKeyedSubscript:@"HumanActionResults"], v73 = objc_claimAutoreleasedReturnValue(), v74 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v73, objc_opt_class(), @"movieHumanActionResults"), v73, v74)
    && ([v4 objectForKeyedSubscript:@"LoudnessResults"], v75 = objc_claimAutoreleasedReturnValue(), v76 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v75, objc_opt_class(), @"movieLoudnessResults"), v75, v76)
    && ([v4 objectForKeyedSubscript:@"PetsFaceResults"], v77 = objc_claimAutoreleasedReturnValue(), v78 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v77, objc_opt_class(), @"moviePetsFaceResults"), v77, v78)
    && ([v4 objectForKeyedSubscript:@"PetsResults"], v79 = objc_claimAutoreleasedReturnValue(), v80 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v79, objc_opt_class(), @"moviePetsResults"), v79, v80)
    && ([v4 objectForKeyedSubscript:@"SafetyResults"], v81 = objc_claimAutoreleasedReturnValue(), v82 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v81, objc_opt_class(), @"movieSafetyResults"), v81, v82)
    && ([v4 objectForKeyedSubscript:@"TorsoResults"], v83 = objc_claimAutoreleasedReturnValue(), v84 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v83, objc_opt_class(), @"movieTorsoResults"), v83, v84)
    && ([v4 objectForKeyedSubscript:@"HumanActionClassificationResults"], v85 = objc_claimAutoreleasedReturnValue(), v86 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v85, objc_opt_class(), @"movieHumanActionClassificationResults"), v85, v86)
    && ([v4 objectForKeyedSubscript:@"VideoEmbeddingResults"], v87 = objc_claimAutoreleasedReturnValue(), v88 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v87, objc_opt_class(), @"videoEmbeddingResults"), v87, v88)
    && ([v4 objectForKeyedSubscript:@"SummarizedEmbeddingResults"], v89 = objc_claimAutoreleasedReturnValue(), v90 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v89, objc_opt_class(), @"summarizedEmbeddingResults"), v89, v90)
    && ([v4 objectForKeyedSubscript:@"AudioFusedVideoEmbeddingResults"], v91 = objc_claimAutoreleasedReturnValue(), v92 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v91, objc_opt_class(), @"audioFusedVideoEmbeddingResults"), v91, v92)
    && ([v4 objectForKeyedSubscript:@"MiCaImageCaptionResults"], v93 = objc_claimAutoreleasedReturnValue(), v94 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v93, objc_opt_class(), @"imageCaptionResults"), v93, v94)
    && ([v4 objectForKeyedSubscript:@"MiCaVideoCaptionResults"], v95 = objc_claimAutoreleasedReturnValue(), v96 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v95, objc_opt_class(), @"videoCaptionResults"), v95, v96)
    && ([v4 objectForKeyedSubscript:@"VideoSegmentCaptionResults"], v97 = objc_claimAutoreleasedReturnValue(), v98 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v97, objc_opt_class(), @"videoSegmentCaptionResults"), v97, v98)
    && ([v4 objectForKeyedSubscript:@"VideoSceneThumbnailResults"], v99 = objc_claimAutoreleasedReturnValue(), v100 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](self, "setResults:withClass:forPropertyKey:", v99, objc_opt_class(), @"videoSceneThumbnailResults"), v99, v100))
  {
    v101 = [v4 objectForKeyedSubscript:@"VideoThumbnailResults"];
    v102 = [(VCPProtoAssetAnalysis *)self setResults:v101 withClass:objc_opt_class() forPropertyKey:@"videoThumbnailResults"];
  }

  else
  {
    v102 = 0;
  }

  return v102;
}

+ (id)imageAnalysisFromLegacyDictionary:(id)dictionary assetCloudIdentifier:(id)identifier
{
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v7 = objc_alloc_init(VCPProtoAssetAnalysis);
    [(VCPProtoAssetAnalysis *)v7 setAssetCloudIdentifier:identifierCopy];
    if ([(VCPProtoAssetAnalysis *)v7 setAttributesFromLegacyDictionary:dictionaryCopy])
    {
      if ([(VCPProtoAssetAnalysis *)v7 setImageAnalysisFromLegacyDictionary:dictionaryCopy])
      {
        v8 = v7;
LABEL_17:

        goto LABEL_18;
      }

      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_16:
        v8 = 0;
        goto LABEL_17;
      }

      v13 = 0;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "[LegacyDict->ImageProto] Invalid analysis; skipping";
      v11 = &v13;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v14 = 0;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "[LegacyDict->ImageProto] Invalid attribute; skipping";
      v11 = &v14;
    }

    _os_log_impl(&dword_1C9B70000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    goto LABEL_16;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[LegacyDict->ImageProto] No cloud identifier; skipping", buf, 2u);
  }

  v8 = 0;
LABEL_18:

  return v8;
}

+ (id)movieAnalysisFromLegacyDictionary:(id)dictionary assetCloudIdentifier:(id)identifier
{
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v7 = objc_alloc_init(VCPProtoAssetAnalysis);
    [(VCPProtoAssetAnalysis *)v7 setAssetCloudIdentifier:identifierCopy];
    if ([(VCPProtoAssetAnalysis *)v7 setAttributesFromLegacyDictionary:dictionaryCopy])
    {
      if ([(VCPProtoAssetAnalysis *)v7 setMovieAnalysisFromLegacyDictionary:dictionaryCopy])
      {
        v8 = v7;
LABEL_17:

        goto LABEL_18;
      }

      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_16:
        v8 = 0;
        goto LABEL_17;
      }

      v13 = 0;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "[LegacyDict->MovieProto] Invalid analysis; skipping";
      v11 = &v13;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v14 = 0;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "[LegacyDict->MovieProto] Invalid attribute; skipping";
      v11 = &v14;
    }

    _os_log_impl(&dword_1C9B70000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    goto LABEL_16;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[LegacyDict->MovieProto] No cloud identifier; skipping", buf, 2u);
  }

  v8 = 0;
LABEL_18:

  return v8;
}

+ (id)imageAnalysisComputeSyncPayloadFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(VCPProtoAssetAnalysis);
  if (![(VCPProtoAssetAnalysis *)v4 setAttributesFromLegacyDictionary:dictionaryCopy])
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v11 = 0;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "[LegacyDict->ImageProto] Invalid attribute; skipping";
    v8 = &v11;
    goto LABEL_10;
  }

  if ([(VCPProtoAssetAnalysis *)v4 setImageAnalysisFromLegacyDictionary:dictionaryCopy])
  {
    v5 = v4;
    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 0;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "[LegacyDict->ImageProto] Invalid analysis; skipping";
    v8 = &v10;
LABEL_10:
    _os_log_impl(&dword_1C9B70000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
  }

LABEL_11:
  v5 = 0;
LABEL_12:

  return v5;
}

+ (id)movieAnalysisComputeSyncPayloadFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(VCPProtoAssetAnalysis);
  if (![(VCPProtoAssetAnalysis *)v4 setAttributesFromLegacyDictionary:dictionaryCopy])
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v11 = 0;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "[LegacyDict->MovieProto] Invalid attribute; skipping";
    v8 = &v11;
    goto LABEL_10;
  }

  if ([(VCPProtoAssetAnalysis *)v4 setMovieAnalysisFromLegacyDictionary:dictionaryCopy])
  {
    v5 = v4;
    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 0;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "[LegacyDict->MovieProto] Invalid analysis; skipping";
    v8 = &v10;
LABEL_10:
    _os_log_impl(&dword_1C9B70000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
  }

LABEL_11:
  v5 = 0;
LABEL_12:

  return v5;
}

+ (id)filesystemMovieAnalysisFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(VCPProtoAssetAnalysis);
  v5 = [dictionaryCopy objectForKeyedSubscript:@"metadataRanges"];
  v6 = [v5 objectForKeyedSubscript:@"ClassificationResults"];
  v7 = [(VCPProtoAssetAnalysis *)v4 setResults:v6 withClass:objc_opt_class() forPropertyKey:@"filesystemMovieClassificationResults"];

  if (v7 && ([v5 objectForKeyedSubscript:@"HumanActionClassificationResults"], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](v4, "setResults:withClass:forPropertyKey:", v8, objc_opt_class(), @"filesystemMovieHumanActionClassificationResults"), v8, v9) && (objc_msgSend(v5, "objectForKeyedSubscript:", @"ApplauseResults"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](v4, "setResults:withClass:forPropertyKey:", v10, objc_opt_class(), @"filesystemMovieApplauseResults"), v10, v11) && (objc_msgSend(v5, "objectForKeyedSubscript:", @"BabbleResults"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](v4, "setResults:withClass:forPropertyKey:", v12, objc_opt_class(), @"filesystemMovieBabbleResults"), v12, v13) && (objc_msgSend(v5, "objectForKeyedSubscript:", @"CheeringResults"), v14 = objc_claimAutoreleasedReturnValue(), v15 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](v4, "setResults:withClass:forPropertyKey:", v14, objc_opt_class(), @"filesystemMovieCheeringResults"), v14, v15) && (objc_msgSend(v5, "objectForKeyedSubscript:", @"LaughterResults"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](v4, "setResults:withClass:forPropertyKey:", v16, objc_opt_class(), @"filesystemMovieLaughterResults"), v16, v17) && (objc_msgSend(v5, "objectForKeyedSubscript:", @"MusicResults"), v18 = objc_claimAutoreleasedReturnValue(), v19 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](v4, "setResults:withClass:forPropertyKey:", v18, objc_opt_class(), @"filesystemMovieMusicResults"), v18, v19) && (objc_msgSend(v5, "objectForKeyedSubscript:", @"VoiceResults"), v20 = objc_claimAutoreleasedReturnValue(), v21 = -[VCPProtoAssetAnalysis setResults:withClass:forPropertyKey:](v4, "setResults:withClass:forPropertyKey:", v20, objc_opt_class(), @"filesystemMovieVoiceResults"), v20, v21))
  {
    v22 = v4;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)exportResultsWithPropertyKey:(id)key toLegacyDictionary:(id)dictionary withKey:(id)withKey
{
  v29 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dictionaryCopy = dictionary;
  withKeyCopy = withKey;
  if (_os_feature_enabled_impl() && (+[VCPProtoAssetAnalysis faceResultKeys](VCPProtoAssetAnalysis, "faceResultKeys"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 containsObject:keyCopy], v11, (v12 & 1) != 0))
  {
    v13 = 1;
  }

  else
  {
    v14 = [(VCPProtoAssetAnalysis *)self valueForKey:keyCopy];
    if ([v14 count])
    {
      array = [MEMORY[0x1E695DF70] array];
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v17)
      {
        v18 = *v23;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v16);
            }

            exportToLegacyDictionary = [*(*(&v22 + 1) + 8 * i) exportToLegacyDictionary];
            if (!exportToLegacyDictionary)
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v27 = keyCopy;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Proto->LegacyDict] Failed to export entry from property %@", buf, 0xCu);
              }

              v13 = 0;
              goto LABEL_18;
            }

            [array addObject:exportToLegacyDictionary];
          }

          v17 = [v16 countByEnumeratingWithState:&v22 objects:v28 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      [dictionaryCopy setObject:array forKeyedSubscript:withKeyCopy];
      v13 = 1;
LABEL_18:
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

- (id)exportFilesystemAnalysisToLegacyDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"filesystemMovieClassificationResults" toLegacyDictionary:dictionary withKey:@"ClassificationResults"]&& [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"filesystemMovieHumanActionClassificationResults" toLegacyDictionary:dictionary withKey:@"HumanActionClassificationResults"]&& [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"filesystemMovieApplauseResults" toLegacyDictionary:dictionary withKey:@"ApplauseResults"]&& [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"filesystemMovieBabbleResults" toLegacyDictionary:dictionary withKey:@"BabbleResults"]&& [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"filesystemMovieCheeringResults" toLegacyDictionary:dictionary withKey:@"CheeringResults"]&& [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"filesystemMovieLaughterResults" toLegacyDictionary:dictionary withKey:@"LaughterResults"]&& [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"filesystemMovieMusicResults" toLegacyDictionary:dictionary withKey:@"MusicResults"]&& [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"filesystemMovieVoiceResults" toLegacyDictionary:dictionary withKey:@"VoiceResults"])
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCPProtoAssetAnalysis version](self, "version")}];
    [dictionary2 setObject:v5 forKeyedSubscript:@"version"];

    if ([(VCPProtoAssetAnalysis *)self hasTypesWide])
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[VCPProtoAssetAnalysis typesWide](self, "typesWide")}];
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCPProtoAssetAnalysis types](self, "types")}];
    }
    v6 = ;
    [dictionary2 setObject:v6 forKeyedSubscript:@"performedAnalysisTypes"];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCPProtoAssetAnalysis flags](self, "flags")}];
    [dictionary2 setObject:v8 forKeyedSubscript:@"flags"];

    v9 = MEMORY[0x1E695DF00];
    [(VCPProtoAssetAnalysis *)self date];
    v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
    [dictionary2 setObject:v10 forKeyedSubscript:@"dateAnalyzed"];

    v11 = MEMORY[0x1E695DF00];
    [(VCPProtoAssetAnalysis *)self assetModificationDate];
    v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
    [dictionary2 setObject:v12 forKeyedSubscript:@"dateModified"];

    if ([(VCPProtoAssetAnalysis *)self hasQuality])
    {
      v13 = MEMORY[0x1E696AD98];
      [(VCPProtoAssetAnalysis *)self quality];
      v14 = [v13 numberWithDouble:?];
      [dictionary2 setObject:v14 forKeyedSubscript:@"quality"];
    }

    if ([(VCPProtoAssetAnalysis *)self hasStatsFlags])
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[VCPProtoAssetAnalysis statsFlags](self, "statsFlags")}];
      [dictionary2 setObject:v15 forKeyedSubscript:@"statsFlags"];
    }

    if ([(VCPProtoAssetAnalysis *)self hasAssetMasterFingerprint])
    {
      assetMasterFingerprint = [(VCPProtoAssetAnalysis *)self assetMasterFingerprint];
      [dictionary2 setObject:assetMasterFingerprint forKeyedSubscript:@"masterFingerprint"];
    }

    if ([(VCPProtoAssetAnalysis *)self hasAssetAdjustedFingerprint])
    {
      assetAdjustedFingerprint = [(VCPProtoAssetAnalysis *)self assetAdjustedFingerprint];
      [dictionary2 setObject:assetAdjustedFingerprint forKeyedSubscript:@"adjustedFingerprint"];
    }

    if ([dictionary count])
    {
      [dictionary2 setObject:dictionary forKeyedSubscript:@"metadataRanges"];
    }
  }

  else
  {
    dictionary2 = 0;
  }

  return dictionary2;
}

- (id)exportToLegacyDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"imageBlurResults" toLegacyDictionary:dictionary withKey:@"BlurResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"imageCompositionResults" toLegacyDictionary:dictionary withKey:@"CompositionResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"imageExposureResults" toLegacyDictionary:dictionary withKey:@"ExposureResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"imageFaceResults" toLegacyDictionary:dictionary withKey:@"FaceResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"imageFeatureResults" toLegacyDictionary:dictionary withKey:@"FeatureVectorResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"imageJunkResults" toLegacyDictionary:dictionary withKey:@"JunkResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"imagePetsResults" toLegacyDictionary:dictionary withKey:@"PetsResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"imagePetsFaceResults" toLegacyDictionary:dictionary withKey:@"PetsFaceResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"imageSaliencyResults" toLegacyDictionary:dictionary withKey:@"SaliencyResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"imageSceneprintResults" toLegacyDictionary:dictionary withKey:@"SceneprintResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"imageShotTypeResults" toLegacyDictionary:dictionary withKey:@"ShotTypeResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"imageHumanPoseResults" toLegacyDictionary:dictionary withKey:@"HumanPoseResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"livePhotoRecommendationResults" toLegacyDictionary:dictionary withKey:@"IrisRecommendResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"livePhotoSharpnessResults" toLegacyDictionary:dictionary withKey:@"IrisSharpnessResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"livePhotoHumanActionClassificationResults" toLegacyDictionary:dictionary withKey:?]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"livePhotoEffectsResults" toLegacyDictionary:dictionary withKey:@"LivePhotoEffectsResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"livePhotoKeyFrameResults" toLegacyDictionary:dictionary withKey:@"KeyFrameResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"livePhotoKeyFrameStillResults" toLegacyDictionary:dictionary withKey:@"KeyFrameStillResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"livePhotoSettlingEffectGatingResults" toLegacyDictionary:dictionary withKey:@"SettlingEffectsGatingResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieActivityLevelResults" toLegacyDictionary:dictionary withKey:@"ActivityLevelResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieAnimalResults" toLegacyDictionary:dictionary withKey:@"AnimalResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieAnimalprintResults" toLegacyDictionary:dictionary withKey:@"AnimalPrintResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieCameraMotionResults" toLegacyDictionary:dictionary withKey:@"CameraMotionResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieClassificationResults" toLegacyDictionary:dictionary withKey:@"ClassificationResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieFaceResults" toLegacyDictionary:dictionary withKey:@"FaceResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieFaceprintResults" toLegacyDictionary:dictionary withKey:@"FacePrintResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieFeatureResults" toLegacyDictionary:dictionary withKey:@"FeatureVectorResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieFineSubjectMotionResults" toLegacyDictionary:dictionary withKey:@"FineSubjectMotionResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieInterestingnessResults" toLegacyDictionary:dictionary withKey:@"InterestingnessResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieMovingObjectResults" toLegacyDictionary:dictionary withKey:@"MovingObjectsResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieMusicResults" toLegacyDictionary:dictionary withKey:@"MusicResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieObstructionResults" toLegacyDictionary:dictionary withKey:@"ObstructionResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieOrientationResults" toLegacyDictionary:dictionary withKey:@"OrientationResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"moviePreEncodeResults" toLegacyDictionary:dictionary withKey:@"PreEncodeResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieQualityResults" toLegacyDictionary:dictionary withKey:@"QualityResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieSaliencyResults" toLegacyDictionary:dictionary withKey:@"SaliencyResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieSceneResults" toLegacyDictionary:dictionary withKey:@"SceneResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieSceneprintResults" toLegacyDictionary:dictionary withKey:@"SceneprintResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieSubjectMotionResults" toLegacyDictionary:dictionary withKey:@"SubjectMotionResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieSubtleMotionResults" toLegacyDictionary:dictionary withKey:@"SubtleMotionResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieUtteranceResults" toLegacyDictionary:dictionary withKey:@"UtteranceResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieVoiceResults" toLegacyDictionary:dictionary withKey:@"VoiceResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"animatedStickerResults" toLegacyDictionary:dictionary withKey:@"AnimatedStickerResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieSummaryResults" toLegacyDictionary:dictionary withKey:@"MovieSummaryResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieHighlightScoreResults" toLegacyDictionary:dictionary withKey:@"MovieHighlightScoreResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieHighlightResults" toLegacyDictionary:dictionary withKey:@"MovieHighlightResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieHumanPoseResults" toLegacyDictionary:dictionary withKey:@"HumanPoseResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieApplauseResults" toLegacyDictionary:dictionary withKey:@"ApplauseResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieAudioQualityResults" toLegacyDictionary:dictionary withKey:@"AudioQualityResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieBabbleResults" toLegacyDictionary:dictionary withKey:@"BabbleResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieCheeringResults" toLegacyDictionary:dictionary withKey:@"CheeringResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieLaughterResults" toLegacyDictionary:dictionary withKey:@"LaughterResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieHumanActionResults" toLegacyDictionary:dictionary withKey:@"HumanActionResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieLoudnessResults" toLegacyDictionary:dictionary withKey:@"LoudnessResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"moviePetsFaceResults" toLegacyDictionary:dictionary withKey:@"PetsFaceResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"moviePetsResults" toLegacyDictionary:dictionary withKey:@"PetsResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieStabilizationResults" toLegacyDictionary:dictionary withKey:@"VideoStabilizationResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieSafetyResults" toLegacyDictionary:dictionary withKey:@"SafetyResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieTorsoResults" toLegacyDictionary:dictionary withKey:@"TorsoResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"movieHumanActionClassificationResults" toLegacyDictionary:dictionary withKey:@"HumanActionClassificationResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"videoEmbeddingResults" toLegacyDictionary:dictionary withKey:@"VideoEmbeddingResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"summarizedEmbeddingResults" toLegacyDictionary:dictionary withKey:@"SummarizedEmbeddingResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"audioFusedVideoEmbeddingResults" toLegacyDictionary:dictionary withKey:@"AudioFusedVideoEmbeddingResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"imageCaptionResults" toLegacyDictionary:dictionary withKey:@"MiCaImageCaptionResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"videoCaptionResults" toLegacyDictionary:dictionary withKey:@"MiCaVideoCaptionResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"videoCaptionPreferenceResults" toLegacyDictionary:dictionary withKey:@"VideoCaptionPreferenceResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"videoSegmentCaptionResults" toLegacyDictionary:dictionary withKey:@"VideoSegmentCaptionResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"videoSceneThumbnailResults" toLegacyDictionary:dictionary withKey:@"VideoSceneThumbnailResults"]
    && [(VCPProtoAssetAnalysis *)self exportResultsWithPropertyKey:@"videoThumbnailResults" toLegacyDictionary:dictionary withKey:@"VideoThumbnailResults"])
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCPProtoAssetAnalysis version](self, "version")}];
    [dictionary2 setObject:v5 forKeyedSubscript:@"version"];

    if ([(VCPProtoAssetAnalysis *)self hasTypesWide])
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[VCPProtoAssetAnalysis typesWide](self, "typesWide")}];
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCPProtoAssetAnalysis types](self, "types")}];
    }
    v6 = ;
    [dictionary2 setObject:v6 forKeyedSubscript:@"performedAnalysisTypes"];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCPProtoAssetAnalysis flags](self, "flags")}];
    [dictionary2 setObject:v8 forKeyedSubscript:@"flags"];

    v9 = MEMORY[0x1E695DF00];
    [(VCPProtoAssetAnalysis *)self date];
    v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
    [dictionary2 setObject:v10 forKeyedSubscript:@"dateAnalyzed"];

    v11 = MEMORY[0x1E695DF00];
    [(VCPProtoAssetAnalysis *)self assetModificationDate];
    v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
    [dictionary2 setObject:v12 forKeyedSubscript:@"dateModified"];

    if ([(VCPProtoAssetAnalysis *)self hasQuality])
    {
      v13 = MEMORY[0x1E696AD98];
      [(VCPProtoAssetAnalysis *)self quality];
      v14 = [v13 numberWithDouble:?];
      [dictionary2 setObject:v14 forKeyedSubscript:@"quality"];
    }

    if ([(VCPProtoAssetAnalysis *)self hasStatsFlags])
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[VCPProtoAssetAnalysis statsFlags](self, "statsFlags")}];
      [dictionary2 setObject:v15 forKeyedSubscript:@"statsFlags"];
    }

    if ([(VCPProtoAssetAnalysis *)self hasAssetMasterFingerprint])
    {
      assetMasterFingerprint = [(VCPProtoAssetAnalysis *)self assetMasterFingerprint];
      [dictionary2 setObject:assetMasterFingerprint forKeyedSubscript:@"masterFingerprint"];
    }

    if ([(VCPProtoAssetAnalysis *)self hasAssetAdjustedFingerprint])
    {
      assetAdjustedFingerprint = [(VCPProtoAssetAnalysis *)self assetAdjustedFingerprint];
      [dictionary2 setObject:assetAdjustedFingerprint forKeyedSubscript:@"adjustedFingerprint"];
    }

    if ([dictionary count])
    {
      [dictionary2 setObject:dictionary forKeyedSubscript:@"metadataRanges"];
    }
  }

  else
  {
    dictionary2 = 0;
  }

  return dictionary2;
}

@end