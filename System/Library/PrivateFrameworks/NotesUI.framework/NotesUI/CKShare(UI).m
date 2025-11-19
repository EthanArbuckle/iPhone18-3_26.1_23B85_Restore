@interface CKShare(UI)
+ (id)ic_fallbackThumbnail;
+ (void)ic_updateThumbnailsForObject:()UI share:completion:;
- (void)ic_updateFromObject:()UI;
- (void)ic_updateFromObject:()UI generateThumbnails:;
- (void)ic_updateThumbnailsFromObject:()UI completion:;
@end

@implementation CKShare(UI)

+ (id)ic_fallbackThumbnail
{
  if (ic_fallbackThumbnail_onceToken != -1)
  {
    +[CKShare(UI) ic_fallbackThumbnail];
  }

  v1 = ic_fallbackThumbnail_thumbnail;

  return v1;
}

- (void)ic_updateFromObject:()UI
{
  v30 = a3;
  v4 = [v30 shareType];
  [a1 setObject:v4 forKeyedSubscript:*MEMORY[0x1E695B830]];

  v5 = [v30 shareTitle];
  [a1 setObject:v5 forKeyedSubscript:*MEMORY[0x1E695B828]];

  v6 = [objc_opt_class() ic_fallbackThumbnail];
  v7 = [v6 ic_PNGData];
  [a1 setObject:v7 forKeyedSubscript:*MEMORY[0x1E695B820]];

  v8 = [v30 recordType];
  [a1 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69B75A0]];

  v9 = [v30 recordID];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E695BAB0]);
    v11 = [v30 recordID];
    v12 = [v10 initWithRecordID:v11 action:0];
    [a1 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69B7598]];
  }

  else
  {
    [a1 setObject:0 forKeyedSubscript:*MEMORY[0x1E69B7598]];
  }

  objc_opt_class();
  v13 = ICDynamicCast();
  v14 = MEMORY[0x1E695B818];
  if (v13)
  {
    v15 = __ICLocalizedFrameworkString_impl(@"Shared Note", @"Shared Note", 0, 1);
    [a1 setObject:v15 forKeyedSubscript:*v14];

    v16 = [v13 snippet];
    v17 = [a1 encryptedValues];
    [v17 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69B75B8]];

    v18 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v13, "attachmentContentInfoType")}];
    [a1 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69B75B0]];

    v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "attachmentContentInfoCount")}];
    [a1 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69B75A8]];
  }

  objc_opt_class();
  v20 = ICDynamicCast();
  if (v20)
  {
    v21 = __ICLocalizedFrameworkString_impl(@"Shared Folder", @"Shared Folder", 0, 1);
    [a1 setObject:v21 forKeyedSubscript:*v14];

    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "visibleNotesCount")}];
    [a1 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69B7578]];

    v23 = MEMORY[0x1E696AD98];
    v24 = [v20 visibleNotesIncludingChildFolders];
    v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(v24, "count")}];
    [a1 setObject:v25 forKeyedSubscript:*MEMORY[0x1E69B7580]];

    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "visibleNoteContainerChildrenCount")}];
    [a1 setObject:v26 forKeyedSubscript:*MEMORY[0x1E69B75C0]];

    v27 = MEMORY[0x1E696AD98];
    v28 = [v20 recursiveVisibleSubfolders];
    v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
    [a1 setObject:v29 forKeyedSubscript:*MEMORY[0x1E69B75C8]];
  }
}

- (void)ic_updateThumbnailsFromObject:()UI completion:
{
  v6 = a4;
  v7 = a3;
  [objc_opt_class() ic_updateThumbnailsForObject:v7 share:a1 completion:v6];
}

- (void)ic_updateFromObject:()UI generateThumbnails:
{
  v6 = a3;
  [a1 ic_updateFromObject:?];
  if (a4)
  {
    [a1 ic_updateThumbnailsFromObject:v6 completion:0];
  }
}

+ (void)ic_updateThumbnailsForObject:()UI share:completion:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E69B7678] appearanceInfoWithType:0];
  v11 = [MEMORY[0x1E69B7678] appearanceInfoWithType:1];
  v12 = dispatch_group_create();
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__29;
  v36[4] = __Block_byref_object_dispose__29;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__29;
  v34[4] = __Block_byref_object_dispose__29;
  v35 = 0;
  objc_opt_class();
  v13 = ICDynamicCast();
  v14 = &off_1D4433000;
  if (v13)
  {
    v22 = v7;
    dispatch_group_enter(v12);
    v15 = [[ICThumbnailConfiguration alloc] initForShareThumbnailWithNote:v13 appearanceInfo:v10];
    v16 = +[ICThumbnailService sharedThumbnailService];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __61__CKShare_UI__ic_updateThumbnailsForObject_share_completion___block_invoke;
    v31[3] = &unk_1E846B3F8;
    v33 = v36;
    v17 = v12;
    v32 = v17;
    [v16 thumbnailWithConfiguration:v15 completion:v31];

    dispatch_group_enter(v17);
    v18 = [[ICThumbnailConfiguration alloc] initForShareThumbnailWithNote:v13 appearanceInfo:v11];
    v19 = +[ICThumbnailService sharedThumbnailService];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __61__CKShare_UI__ic_updateThumbnailsForObject_share_completion___block_invoke_2;
    v28[3] = &unk_1E846B3F8;
    v30 = v34;
    v29 = v17;
    [v19 thumbnailWithConfiguration:v18 completion:v28];

    v7 = v22;
    v14 = &off_1D4433000;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = *(v14 + 491);
  block[2] = __61__CKShare_UI__ic_updateThumbnailsForObject_share_completion___block_invoke_3;
  block[3] = &unk_1E846B420;
  v26 = v36;
  v27 = v34;
  v24 = v8;
  v25 = v9;
  v20 = v9;
  v21 = v8;
  dispatch_group_notify(v12, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);
}

@end