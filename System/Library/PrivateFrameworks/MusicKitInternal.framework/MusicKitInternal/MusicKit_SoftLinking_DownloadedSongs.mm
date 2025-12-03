@interface MusicKit_SoftLinking_DownloadedSongs
+ (void)requestDownloadedSongsForMediaLibrary:(id)library completionHandler:(id)handler;
@end

@implementation MusicKit_SoftLinking_DownloadedSongs

+ (void)requestDownloadedSongsForMediaLibrary:(id)library completionHandler:(id)handler
{
  libraryCopy = library;
  handlerCopy = handler;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v7 = getMPModelLibraryRequestClass_softClass_0;
  v19 = getMPModelLibraryRequestClass_softClass_0;
  if (!getMPModelLibraryRequestClass_softClass_0)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getMPModelLibraryRequestClass_block_invoke_0;
    v15[3] = &unk_1E84C3838;
    v15[4] = &v16;
    __getMPModelLibraryRequestClass_block_invoke_0(v15);
    v7 = v17[3];
  }

  v8 = v7;
  _Block_object_dispose(&v16, 8);
  v9 = objc_alloc_init(v7);
  _underlyingMediaLibrary = [libraryCopy _underlyingMediaLibrary];
  [v9 setMediaLibrary:_underlyingMediaLibrary];

  [v9 setLabel:@"MusicKit_DownloadedSongsRequest"];
  v11 = [MEMORY[0x1E6977628] _modelKindForModelObjectType:28];
  [v9 setItemKind:v11];

  [v9 setFilteringOptions:6];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__MusicKit_SoftLinking_DownloadedSongs_requestDownloadedSongsForMediaLibrary_completionHandler___block_invoke;
  v13[3] = &unk_1E84C38C8;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [v9 performWithResponseHandler:v13];
}

@end