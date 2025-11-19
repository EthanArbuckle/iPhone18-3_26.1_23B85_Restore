@interface PHMediaProcessingAlgorithmVersionProvider
@end

@implementation PHMediaProcessingAlgorithmVersionProvider

void __102__PHMediaProcessingAlgorithmVersionProvider_MediaAnalysis__mad_sharedVersionProviderWithPhotoLibrary___block_invoke(uint64_t a1)
{
  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    v2 = 75;
  }

  else
  {
    v2 = 0;
  }

  if (+[VCPVideoCaptionAnalyzer mode]== 1)
  {
    v3 = VCPPhotosCaptionProcessingVersion;
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_alloc(*(a1 + 40));
  v5 = VCPPhotosSceneProcessingVersionInternal();
  HIDWORD(v9) = v2;
  WORD1(v9) = v3;
  LOWORD(v9) = 75;
  LOWORD(v8) = VCPPhotosPECProcessingVersion;
  v6 = [v4 initWithSceneAnalysisVersion:v5 faceAnalysisVersion:objc_msgSend(*(a1 + 32) characterRecognitionAlgorithmVersion:"mad_faceProcessingInternalVersion") visualSearchAlgorithmVersion:VCPPhotosOCRProcessingVersion stickerConfidenceAlgorithmVersion:VCPPhotosVisualSearchAlgorithmVersion() vaAnalysisVersion:1 vaLocationAnalysisVersion:v8 mediaAnalysisVersion:75 mediaAnalysisImageVersion:v9 captionGenerationVersion:? imageEmbeddingVersion:? videoEmbeddingVersion:?];
  v7 = +[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedVersionProviderWithPhotoLibrary:]::instance;
  +[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedVersionProviderWithPhotoLibrary:]::instance = v6;
}

void __116__PHMediaProcessingAlgorithmVersionProvider_MediaAnalysis__mad_sharedImageEmbeddingVersionProviderWithPhotoLibrary___block_invoke(uint64_t a1)
{
  LOWORD(v3) = 0;
  v1 = [objc_alloc(*(a1 + 32)) initWithSceneAnalysisVersion:0 faceAnalysisVersion:0 characterRecognitionAlgorithmVersion:0 visualSearchAlgorithmVersion:0 stickerConfidenceAlgorithmVersion:0 vaAnalysisVersion:0 vaLocationAnalysisVersion:v3 mediaAnalysisVersion:0 mediaAnalysisImageVersion:0x4B00000000 captionGenerationVersion:? imageEmbeddingVersion:? videoEmbeddingVersion:?];
  v2 = +[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedImageEmbeddingVersionProviderWithPhotoLibrary:]::instance;
  +[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedImageEmbeddingVersionProviderWithPhotoLibrary:]::instance = v1;
}

void __116__PHMediaProcessingAlgorithmVersionProvider_MediaAnalysis__mad_sharedVideoEmbeddingVersionProviderWithPhotoLibrary___block_invoke(uint64_t a1)
{
  LOWORD(v3) = 0;
  v1 = [objc_alloc(*(a1 + 32)) initWithSceneAnalysisVersion:0 faceAnalysisVersion:0 characterRecognitionAlgorithmVersion:0 visualSearchAlgorithmVersion:0 stickerConfidenceAlgorithmVersion:0 vaAnalysisVersion:0 vaLocationAnalysisVersion:v3 mediaAnalysisVersion:0 mediaAnalysisImageVersion:0x4B000000000000 captionGenerationVersion:? imageEmbeddingVersion:? videoEmbeddingVersion:?];
  v2 = +[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedVideoEmbeddingVersionProviderWithPhotoLibrary:]::instance;
  +[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedVideoEmbeddingVersionProviderWithPhotoLibrary:]::instance = v1;
}

@end