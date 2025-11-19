@interface MusicKit_SoftLinking(MusicKitInternal_SoftLinking_MPArtworkCatalog)
+ (void)preconnectToImageServiceWithCompletionHandler:()MusicKitInternal_SoftLinking_MPArtworkCatalog;
@end

@implementation MusicKit_SoftLinking(MusicKitInternal_SoftLinking_MPArtworkCatalog)

+ (void)preconnectToImageServiceWithCompletionHandler:()MusicKitInternal_SoftLinking_MPArtworkCatalog
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v4 = getMPStoreArtworkDataSourceClass_softClass;
  v11 = getMPStoreArtworkDataSourceClass_softClass;
  if (!getMPStoreArtworkDataSourceClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getMPStoreArtworkDataSourceClass_block_invoke;
    v7[3] = &unk_1E84C3838;
    v7[4] = &v8;
    __getMPStoreArtworkDataSourceClass_block_invoke(v7);
    v4 = v9[3];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  v6 = [v4 sharedStoreArtworkDataSource];
  [v6 prewarmURLSessionWithCompletion:v3];
}

@end