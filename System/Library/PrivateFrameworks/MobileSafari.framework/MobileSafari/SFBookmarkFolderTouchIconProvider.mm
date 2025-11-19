@interface SFBookmarkFolderTouchIconProvider
@end

@implementation SFBookmarkFolderTouchIconProvider

void __42___SFBookmarkFolderTouchIconProvider_init__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E69E20C8] readonlySafariBookmarkCollectionConfiguration];
  [v5 setSkipsExternalNotifications:1];
  v2 = [objc_alloc(MEMORY[0x1E69E20F8]) initWithConfiguration:v5 checkIntegrity:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

void __87___SFBookmarkFolderTouchIconProvider_subrequestsForRequest_maximumNumberOfSubrequests___block_invoke(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v2 = [*(*(a1 + 32) + 48) listWithID:{objc_msgSend(*(a1 + 40), "identifier")}];
  v3 = [v2 bookmarkArray];
  v4 = [*(a1 + 40) managedBookmarkUUID];
  if (v4)
  {
    v5 = +[SFManagedBookmarksController sharedController];
    v6 = [v5 topLevelManagedBookmarkFolder];
    v7 = [v6 findChildBookmarkWithUUID:v4];

    v8 = [v7 directChildrenAsWebBookmarks];

    v3 = v8;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87___SFBookmarkFolderTouchIconProvider_subrequestsForRequest_maximumNumberOfSubrequests___block_invoke_2;
  v13[3] = &unk_1E721C1D0;
  v9 = *(a1 + 56);
  v13[4] = v14;
  v13[5] = v9;
  v10 = [v3 safari_mapAndFilterObjectsWithOptions:0 usingBlock:v13];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  _Block_object_dispose(v14, 8);
}

id __87___SFBookmarkFolderTouchIconProvider_subrequestsForRequest_maximumNumberOfSubrequests___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 isFolder])
  {
    v7 = 0;
  }

  else
  {
    if (++*(*(*(a1 + 32) + 8) + 24) >= *(a1 + 40))
    {
      *a4 = 1;
    }

    v7 = [SFBookmarkTouchIconRequest requestWithBookmark:v6 iconGenerationEnabled:1];
  }

  return v7;
}

void __63___SFBookmarkFolderTouchIconProvider__folderContentsDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) userInfo];
    v4 = [v3 safari_numberForKey:*MEMORY[0x1E69E2110]];
    v5 = [v4 intValue];

    v6 = [WeakRetained[6] bookmarkWithID:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 UUID];
      [WeakRetained contentOfFolderDidUpdateWithUUID:v8];
    }

    v9 = [WeakRetained allFolderUUIDs];
    v10 = [WeakRetained[6] validBookmarkUUIDsFromUUIDs:v9];
    if (v10)
    {
      v11 = [MEMORY[0x1E695DFD8] setWithArray:v10];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __63___SFBookmarkFolderTouchIconProvider__folderContentsDidChange___block_invoke_2;
      v14[3] = &unk_1E721C1F8;
      v15 = v11;
      v12 = v11;
      v13 = [v9 safari_filterObjectsUsingBlock:v14];
      [WeakRetained requestsWithFolderUUIDsDidBecomeInvalid:v13];
    }
  }
}

@end