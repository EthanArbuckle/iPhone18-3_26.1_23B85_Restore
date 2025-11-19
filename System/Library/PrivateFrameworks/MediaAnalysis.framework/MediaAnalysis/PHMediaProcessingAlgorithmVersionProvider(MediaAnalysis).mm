@interface PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis)
+ (id)mad_sharedImageEmbeddingVersionProviderWithPhotoLibrary:()MediaAnalysis;
+ (id)mad_sharedVideoEmbeddingVersionProviderWithPhotoLibrary:()MediaAnalysis;
+ (uint64_t)mad_sharedVersionProviderWithPhotoLibrary:()MediaAnalysis;
@end

@implementation PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis)

+ (uint64_t)mad_sharedVersionProviderWithPhotoLibrary:()MediaAnalysis
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102__PHMediaProcessingAlgorithmVersionProvider_MediaAnalysis__mad_sharedVersionProviderWithPhotoLibrary___block_invoke;
  v10[3] = &unk_1E834C440;
  v11 = v4;
  v12 = a1;
  v5 = +[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedVersionProviderWithPhotoLibrary:]::once;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&+[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedVersionProviderWithPhotoLibrary:]::once, v10);
  }

  v7 = +[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedVersionProviderWithPhotoLibrary:]::instance;
  v8 = +[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedVersionProviderWithPhotoLibrary:]::instance;

  return v7;
}

+ (id)mad_sharedImageEmbeddingVersionProviderWithPhotoLibrary:()MediaAnalysis
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __116__PHMediaProcessingAlgorithmVersionProvider_MediaAnalysis__mad_sharedImageEmbeddingVersionProviderWithPhotoLibrary___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedImageEmbeddingVersionProviderWithPhotoLibrary:]::once != -1)
  {
    dispatch_once(&+[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedImageEmbeddingVersionProviderWithPhotoLibrary:]::once, block);
  }

  v1 = +[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedImageEmbeddingVersionProviderWithPhotoLibrary:]::instance;

  return v1;
}

+ (id)mad_sharedVideoEmbeddingVersionProviderWithPhotoLibrary:()MediaAnalysis
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __116__PHMediaProcessingAlgorithmVersionProvider_MediaAnalysis__mad_sharedVideoEmbeddingVersionProviderWithPhotoLibrary___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedVideoEmbeddingVersionProviderWithPhotoLibrary:]::once != -1)
  {
    dispatch_once(&+[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedVideoEmbeddingVersionProviderWithPhotoLibrary:]::once, block);
  }

  v1 = +[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedVideoEmbeddingVersionProviderWithPhotoLibrary:]::instance;

  return v1;
}

@end