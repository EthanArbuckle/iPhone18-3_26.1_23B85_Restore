@interface MusicKit_SoftLinking_MPMediaDownloadManager
+ (void)cancelAllDownloads;
@end

@implementation MusicKit_SoftLinking_MPMediaDownloadManager

+ (void)cancelAllDownloads
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPMediaDownloadManagerClass_softClass;
  v10 = getMPMediaDownloadManagerClass_softClass;
  if (!getMPMediaDownloadManagerClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getMPMediaDownloadManagerClass_block_invoke;
    v6[3] = &unk_1E84C3838;
    v6[4] = &v7;
    __getMPMediaDownloadManagerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [v2 sharedManager];
  v5 = [v4 allMediaDownloadLibraryIdentifiers];
  [v4 cancelDownloads:v5];
}

@end