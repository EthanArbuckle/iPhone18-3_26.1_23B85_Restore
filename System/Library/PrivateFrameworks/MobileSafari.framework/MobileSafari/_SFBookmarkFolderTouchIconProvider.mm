@interface _SFBookmarkFolderTouchIconProvider
- (BOOL)canHandleRequest:(id)request;
- (_SFBookmarkFolderTouchIconProvider)init;
- (id)configurationForRequest:(id)request;
- (id)folderUUIDForRequest:(id)request;
- (id)subrequestsForRequest:(id)request maximumNumberOfSubrequests:(unint64_t)subrequests;
- (void)_folderContentsDidChange:(id)change;
@end

@implementation _SFBookmarkFolderTouchIconProvider

- (_SFBookmarkFolderTouchIconProvider)init
{
  v13.receiver = self;
  v13.super_class = _SFBookmarkFolderTouchIconProvider;
  v2 = [(WBSBookmarkFolderTouchIconProvider *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.Safari._SFBookmarkFolderTouchIconProvider.internalQueue.%p", v2];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    bookmarkCollectionAccessQueue = v2->_bookmarkCollectionAccessQueue;
    v2->_bookmarkCollectionAccessQueue = v4;

    v6 = v2->_bookmarkCollectionAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42___SFBookmarkFolderTouchIconProvider_init__block_invoke;
    block[3] = &unk_1E721B360;
    v7 = v2;
    v12 = v7;
    dispatch_async(v6, block);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__folderContentsDidChange_ name:*MEMORY[0x1E69E2120] object:0];

    v9 = v7;
  }

  return v2;
}

- (BOOL)canHandleRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bookmark = [requestCopy bookmark];
    isFolder = [bookmark isFolder];
  }

  else
  {
    isFolder = 0;
  }

  return isFolder;
}

- (id)folderUUIDForRequest:(id)request
{
  bookmark = [request bookmark];
  uUID = [bookmark UUID];

  return uUID;
}

- (id)subrequestsForRequest:(id)request maximumNumberOfSubrequests:(unint64_t)subrequests
{
  bookmark = [request bookmark];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  bookmarkCollectionAccessQueue = self->_bookmarkCollectionAccessQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87___SFBookmarkFolderTouchIconProvider_subrequestsForRequest_maximumNumberOfSubrequests___block_invoke;
  v11[3] = &unk_1E721BD30;
  v11[4] = self;
  v12 = bookmark;
  v13 = &v15;
  subrequestsCopy = subrequests;
  v8 = bookmark;
  dispatch_sync(bookmarkCollectionAccessQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (id)configurationForRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy folderIconStyle] == 1)
  {
    v5 = [objc_alloc(MEMORY[0x1E69C9770]) initFor2x2LayoutWithOuterMarginScaleFactor:0.125];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _SFBookmarkFolderTouchIconProvider;
    v5 = [(WBSBookmarkFolderTouchIconProvider *)&v8 configurationForRequest:requestCopy];
  }

  v6 = v5;

  return v6;
}

- (void)_folderContentsDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  bookmarkCollectionAccessQueue = self->_bookmarkCollectionAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63___SFBookmarkFolderTouchIconProvider__folderContentsDidChange___block_invoke;
  block[3] = &unk_1E721C220;
  objc_copyWeak(&v9, &location);
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(bookmarkCollectionAccessQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

@end