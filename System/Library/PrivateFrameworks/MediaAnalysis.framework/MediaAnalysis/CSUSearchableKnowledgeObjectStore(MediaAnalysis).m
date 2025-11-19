@interface CSUSearchableKnowledgeObjectStore(MediaAnalysis)
+ (id)mad_sharedStoreForPhotoLibrary:()MediaAnalysis;
@end

@implementation CSUSearchableKnowledgeObjectStore(MediaAnalysis)

+ (id)mad_sharedStoreForPhotoLibrary:()MediaAnalysis
{
  v3 = a3;
  v4 = +[MADCSUStoreManager sharedCSUStoreManager];
  v5 = [v4 sharedCSUStoreForPhotoLibrary:v3];

  return v5;
}

@end