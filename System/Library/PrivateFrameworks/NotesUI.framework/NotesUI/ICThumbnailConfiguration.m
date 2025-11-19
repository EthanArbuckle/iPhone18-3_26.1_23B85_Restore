@interface ICThumbnailConfiguration
- (CGSize)preferredSize;
- (ICThumbnailConfiguration)initWithThumbnailType:(int64_t)a3 associatedObject:(id)a4 associatedObjectIdentifier:(id)a5 associatedObjectTitle:(id)a6 accountIdentifier:(id)a7 cacheLevel:(int64_t)a8 preferredSize:(CGSize)a9 scale:(double)a10 appearanceInfo:(id)a11 backgroundColor:(id)a12 hasBorder:(BOOL)a13;
- (ICThumbnailConfiguration)initWithThumbnailType:(int64_t)a3 uniqueKey:(id)a4 associatedObject:(id)a5 associatedObjectIdentifier:(id)a6 associatedObjectTitle:(id)a7 accountIdentifier:(id)a8 cacheLevel:(int64_t)a9 preferredSize:(CGSize)a10 scale:(double)a11 appearanceInfo:(id)a12 backgroundColor:(id)a13 hasBorder:(BOOL)a14;
- (id)debugDescription;
- (id)initForAttachment:(id)a3 preferredSize:(CGSize)a4 scale:(double)a5 appearanceInfo:(id)a6;
- (id)initForAvatarWithParticipants:(id)a3 preferredSize:(CGSize)a4 hasBorder:(BOOL)a5;
- (id)initForLargeQuickNoteWidgetWithNote:(id)a3 appearanceInfo:(id)a4 traitCollection:(id)a5;
- (id)initForNoteGalleryWithNote:(id)a3 preferredSize:(CGSize)a4 traitCollection:(id)a5 scale:(double)a6 appearanceInfo:(id)a7;
- (id)initForNoteListWithFoundAttachment:(id)a3 preferredSize:(CGSize)a4 scale:(double)a5 appearanceInfo:(id)a6;
- (id)initForNoteListWithNote:(id)a3 preferredSize:(CGSize)a4 scale:(double)a5 appearanceInfo:(id)a6;
- (id)initForNoteNavigationBarIconWithNote:(id)a3 preferredSize:(CGSize)a4;
- (id)initForSharePreviewThumbnailWithNote:(id)a3 appearanceInfo:(id)a4;
- (id)initForShareThumbnailWithNote:(id)a3 appearanceInfo:(id)a4;
- (id)initForShortcutsWithNote:(id)a3 preferredSize:(CGSize)a4 scale:(double)a5 appearanceInfo:(id)a6;
- (id)initForSmallQuickNoteWidgetWithNote:(id)a3 appearanceInfo:(id)a4 traitCollection:(id)a5;
- (id)initForSystemPaperChromeLayerWithThumbnailType:(int64_t)a3 traitCollection:(id)a4;
- (id)initForSystemPaperChromeWithNote:(id)a3 appearanceInfo:(id)a4;
- (id)initForSystemPaperPreviewWithNote:(id)a3 appearanceInfo:(id)a4;
- (void)performAsCurrentAppearance:(id)a3;
- (void)setTraitCollection:(id)a3;
@end

@implementation ICThumbnailConfiguration

- (CGSize)preferredSize
{
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (ICThumbnailConfiguration)initWithThumbnailType:(int64_t)a3 uniqueKey:(id)a4 associatedObject:(id)a5 associatedObjectIdentifier:(id)a6 associatedObjectTitle:(id)a7 accountIdentifier:(id)a8 cacheLevel:(int64_t)a9 preferredSize:(CGSize)a10 scale:(double)a11 appearanceInfo:(id)a12 backgroundColor:(id)a13 hasBorder:(BOOL)a14
{
  height = a10.height;
  width = a10.width;
  v23 = a4;
  v31 = a5;
  v30 = a6;
  v29 = a7;
  v28 = a12;
  v24 = a13;
  v32.receiver = self;
  v32.super_class = ICThumbnailConfiguration;
  v25 = [(ICThumbnailConfiguration *)&v32 init];
  if (v25)
  {
    if (a11 <= 0.0)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"scale > 0.0" functionName:"-[ICThumbnailConfiguration initWithThumbnailType:uniqueKey:associatedObject:associatedObjectIdentifier:associatedObjectTitle:accountIdentifier:cacheLevel:preferredSize:scale:appearanceInfo:backgroundColor:hasBorder:]" simulateCrash:1 showAlert:0 format:@"Passing invalid scale to ICThumbnailConfiguration"];
      a11 = 1.0;
    }

    v25->_thumbnailType = a3;
    objc_storeStrong(&v25->_uniqueKey, a4);
    objc_storeStrong(&v25->_associatedObject, a5);
    objc_storeStrong(&v25->_associatedObjectIdentifier, a6);
    objc_storeStrong(&v25->_associatedObjectTitle, a7);
    v25->_cacheLevel = a9;
    v25->_preferredSize.width = width;
    v25->_preferredSize.height = height;
    v25->_scale = a11;
    objc_storeStrong(&v25->_appearanceInfo, a12);
    objc_storeStrong(&v25->_backgroundColor, a13);
    v25->_hasBorder = a14;
    v26 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    [(ICThumbnailConfiguration *)v25 setTraitCollection:v26];
  }

  return v25;
}

- (ICThumbnailConfiguration)initWithThumbnailType:(int64_t)a3 associatedObject:(id)a4 associatedObjectIdentifier:(id)a5 associatedObjectTitle:(id)a6 accountIdentifier:(id)a7 cacheLevel:(int64_t)a8 preferredSize:(CGSize)a9 scale:(double)a10 appearanceInfo:(id)a11 backgroundColor:(id)a12 hasBorder:(BOOL)a13
{
  height = a9.height;
  width = a9.width;
  v22 = a12;
  v23 = a11;
  v24 = a7;
  v25 = a6;
  v26 = a5;
  v27 = a4;
  v28 = -[ICThumbnailKey initWithType:accountId:objectId:preferredSize:scale:appearance:]([ICThumbnailKey alloc], "initWithType:accountId:objectId:preferredSize:scale:appearance:", a3, v24, v26, [v23 type], width, height, a10);
  LOBYTE(v31) = a13;
  v29 = [(ICThumbnailConfiguration *)self initWithThumbnailType:a3 uniqueKey:v28 associatedObject:v27 associatedObjectIdentifier:v26 associatedObjectTitle:v25 accountIdentifier:v24 cacheLevel:width preferredSize:height scale:a10 appearanceInfo:a8 backgroundColor:v23 hasBorder:v22, v31];

  return v29;
}

- (id)initForNoteListWithNote:(id)a3 preferredSize:(CGSize)a4 scale:(double)a5 appearanceInfo:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = a3;
  v13 = [v12 identifier];
  v14 = [v12 title];
  v15 = [v12 account];

  v16 = [v15 identifier];
  LOBYTE(v19) = 0;
  v17 = [(ICThumbnailConfiguration *)self initWithThumbnailType:2 associatedObject:0 associatedObjectIdentifier:v13 associatedObjectTitle:v14 accountIdentifier:v16 cacheLevel:1 preferredSize:width scale:height appearanceInfo:a5 backgroundColor:v11 hasBorder:0, v19];

  return v17;
}

- (id)initForNoteListWithFoundAttachment:(id)a3 preferredSize:(CGSize)a4 scale:(double)a5 appearanceInfo:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = a3;
  v13 = [v12 identifier];
  v14 = [v12 title];
  v15 = [v12 note];

  v16 = [v15 account];
  v17 = [v16 identifier];
  LOBYTE(v20) = 0;
  v18 = [(ICThumbnailConfiguration *)self initWithThumbnailType:3 associatedObject:0 associatedObjectIdentifier:v13 associatedObjectTitle:v14 accountIdentifier:v17 cacheLevel:1 preferredSize:width scale:height appearanceInfo:a5 backgroundColor:v11 hasBorder:0, v20];

  return v18;
}

- (id)initForNoteGalleryWithNote:(id)a3 preferredSize:(CGSize)a4 traitCollection:(id)a5 scale:(double)a6 appearanceInfo:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a7;
  v14 = a5;
  v15 = a3;
  v16 = [v15 identifier];
  v17 = [v15 title];
  v18 = [v15 account];

  v19 = [v18 identifier];
  LOBYTE(v22) = 0;
  v20 = [(ICThumbnailConfiguration *)self initWithThumbnailType:1 associatedObject:0 associatedObjectIdentifier:v16 associatedObjectTitle:v17 accountIdentifier:v19 cacheLevel:1 preferredSize:width scale:height appearanceInfo:a6 backgroundColor:v13 hasBorder:0, v22];

  [(ICThumbnailConfiguration *)v20 setTraitCollection:v14];
  return v20;
}

- (id)initForShortcutsWithNote:(id)a3 preferredSize:(CGSize)a4 scale:(double)a5 appearanceInfo:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = a3;
  v13 = [v12 identifier];
  v14 = [v12 title];
  v15 = [v12 account];
  v16 = [v15 identifier];
  v17 = MEMORY[0x1E69DC888];
  v18 = [v12 ic_hasLightBackground];

  v19 = [v17 ic_notePreviewBackgroundLightContent:v18];
  LOBYTE(v22) = 0;
  v20 = [(ICThumbnailConfiguration *)self initWithThumbnailType:1 associatedObject:0 associatedObjectIdentifier:v13 associatedObjectTitle:v14 accountIdentifier:v16 cacheLevel:1 preferredSize:width scale:height appearanceInfo:a5 backgroundColor:v11 hasBorder:v19, v22];

  if (v20)
  {
    v20->_prepareThumbnail = 1;
  }

  return v20;
}

- (id)initForAttachment:(id)a3 preferredSize:(CGSize)a4 scale:(double)a5 appearanceInfo:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = a3;
  v13 = [v12 identifier];
  v14 = [v12 title];
  v15 = [v12 note];

  v16 = [v15 account];
  v17 = [v16 identifier];
  LOBYTE(v20) = 0;
  v18 = [(ICThumbnailConfiguration *)self initWithThumbnailType:0 associatedObject:0 associatedObjectIdentifier:v13 associatedObjectTitle:v14 accountIdentifier:v17 cacheLevel:1 preferredSize:width scale:height appearanceInfo:a5 backgroundColor:v11 hasBorder:0, v20];

  return v18;
}

- (id)initForShareThumbnailWithNote:(id)a3 appearanceInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__16;
  v34 = __Block_byref_object_dispose__16;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__16;
  v28 = __Block_byref_object_dispose__16;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__16;
  v22 = __Block_byref_object_dispose__16;
  v23 = 0;
  v8 = [v6 managedObjectContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__ICThumbnailConfiguration_initForShareThumbnailWithNote_appearanceInfo___block_invoke;
  v13[3] = &unk_1E8469FF0;
  v15 = &v30;
  v9 = v6;
  v14 = v9;
  v16 = &v24;
  v17 = &v18;
  [v8 performBlockAndWait:v13];

  LOBYTE(v12) = 0;
  v10 = [(ICThumbnailConfiguration *)self initWithThumbnailType:2 associatedObject:0 associatedObjectIdentifier:v31[5] associatedObjectTitle:v25[5] accountIdentifier:v19[5] cacheLevel:1 preferredSize:128.0 scale:128.0 appearanceInfo:2.0 backgroundColor:v7 hasBorder:0, v12];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  return v10;
}

void __73__ICThumbnailConfiguration_initForShareThumbnailWithNote_appearanceInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) title];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v11 = [*(a1 + 32) account];
  v8 = [v11 identifier];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)initForSharePreviewThumbnailWithNote:(id)a3 appearanceInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 identifier];
  v9 = [v7 title];
  v10 = [v7 account];
  v11 = [v10 identifier];
  v12 = MEMORY[0x1E69DC888];
  v13 = [v7 ic_hasLightBackground];

  v14 = [v12 ic_notePreviewBackgroundLightContent:v13];
  LOBYTE(v17) = 0;
  v15 = [(ICThumbnailConfiguration *)self initWithThumbnailType:1 associatedObject:0 associatedObjectIdentifier:v8 associatedObjectTitle:v9 accountIdentifier:v11 cacheLevel:1 preferredSize:512.0 scale:512.0 appearanceInfo:2.0 backgroundColor:v6 hasBorder:v14, v17];

  return v15;
}

- (id)initForNoteNavigationBarIconWithNote:(id)a3 preferredSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = MEMORY[0x1E69DC888];
  v8 = a3;
  v9 = [v7 ic_noteEditorBackgroundColor];
  v10 = [v8 identifier];
  v11 = [v8 title];
  v12 = [v8 account];

  v13 = [v12 identifier];
  [MEMORY[0x1E69DCEB0] ic_scale];
  v15 = v14;
  v16 = [MEMORY[0x1E69B7678] currentInfo];
  LOBYTE(v19) = 0;
  v17 = [(ICThumbnailConfiguration *)self initWithThumbnailType:1 associatedObject:0 associatedObjectIdentifier:v10 associatedObjectTitle:v11 accountIdentifier:v13 cacheLevel:1 preferredSize:width scale:height appearanceInfo:v15 backgroundColor:v16 hasBorder:v9, v19];

  return v17;
}

- (id)initForSystemPaperChromeWithNote:(id)a3 appearanceInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 identifier];
  v9 = [v7 title];
  v10 = [v7 account];
  v11 = [v10 identifier];
  [MEMORY[0x1E69DCEB0] ic_scale];
  v13 = v12;
  v14 = MEMORY[0x1E69DC888];
  v15 = [v7 ic_hasLightBackground];

  v16 = [v14 ic_notePreviewBackgroundLightContent:v15];
  LOBYTE(v19) = 0;
  v17 = [(ICThumbnailConfiguration *)self initWithThumbnailType:4 associatedObject:0 associatedObjectIdentifier:v8 associatedObjectTitle:v9 accountIdentifier:v11 cacheLevel:2 preferredSize:*MEMORY[0x1E695F060] scale:*(MEMORY[0x1E695F060] + 8) appearanceInfo:v13 backgroundColor:v6 hasBorder:v16, v19];

  return v17;
}

- (id)initForSystemPaperChromeLayerWithThumbnailType:(int64_t)a3 traitCollection:(id)a4
{
  v6 = a4;
  v7 = [ICThumbnailKey alloc];
  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);
  v10 = [(ICThumbnailKey *)v7 initWithType:a3 accountId:0 objectId:0 preferredSize:v6 traitCollection:*MEMORY[0x1E695F060], v9];
  v11 = [v6 userInterfaceStyle] == 2;
  [v6 displayScale];
  v13 = v12;
  v14 = [MEMORY[0x1E69B7678] appearanceInfoWithType:v11];
  LOBYTE(v17) = 0;
  v15 = [(ICThumbnailConfiguration *)self initWithThumbnailType:a3 uniqueKey:v10 associatedObject:0 associatedObjectIdentifier:0 associatedObjectTitle:0 accountIdentifier:0 cacheLevel:v8 preferredSize:v9 scale:v13 appearanceInfo:0 backgroundColor:v14 hasBorder:0, v17];

  [(ICThumbnailConfiguration *)v15 setTraitCollection:v6];
  return v15;
}

- (id)initForLargeQuickNoteWidgetWithNote:(id)a3 appearanceInfo:(id)a4 traitCollection:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 identifier];
  v12 = [v10 title];
  v13 = [v10 account];

  v14 = [v13 identifier];
  [MEMORY[0x1E69DCEB0] ic_scale];
  LOBYTE(v18) = 0;
  v16 = [(ICThumbnailConfiguration *)self initWithThumbnailType:10 associatedObject:0 associatedObjectIdentifier:v11 associatedObjectTitle:v12 accountIdentifier:v14 cacheLevel:2 preferredSize:350.0 scale:380.0 appearanceInfo:v15 backgroundColor:v9 hasBorder:0, v18];

  [(ICThumbnailConfiguration *)v16 setTraitCollection:v8];
  return v16;
}

- (id)initForSmallQuickNoteWidgetWithNote:(id)a3 appearanceInfo:(id)a4 traitCollection:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 identifier];
  v12 = [v10 title];
  v13 = [v10 account];

  v14 = [v13 identifier];
  [MEMORY[0x1E69DCEB0] ic_scale];
  LOBYTE(v18) = 0;
  v16 = [(ICThumbnailConfiguration *)self initWithThumbnailType:11 associatedObject:0 associatedObjectIdentifier:v11 associatedObjectTitle:v12 accountIdentifier:v14 cacheLevel:2 preferredSize:150.0 scale:162.0 appearanceInfo:v15 backgroundColor:v9 hasBorder:0, v18];

  [(ICThumbnailConfiguration *)v16 setTraitCollection:v8];
  return v16;
}

- (id)initForSystemPaperPreviewWithNote:(id)a3 appearanceInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 identifier];
  v9 = [v7 title];
  v10 = [v7 account];
  v11 = [v10 identifier];
  [MEMORY[0x1E69DCEB0] ic_scale];
  v13 = v12;
  v14 = MEMORY[0x1E69DC888];
  v15 = [v7 ic_hasLightBackground];

  v16 = [v14 ic_notePreviewBackgroundLightContent:v15];
  LOBYTE(v19) = 0;
  v17 = [(ICThumbnailConfiguration *)self initWithThumbnailType:7 associatedObject:0 associatedObjectIdentifier:v8 associatedObjectTitle:v9 accountIdentifier:v11 cacheLevel:2 preferredSize:110.0 scale:121.0 appearanceInfo:v13 backgroundColor:v6 hasBorder:v16, v19];

  return v17;
}

- (id)initForAvatarWithParticipants:(id)a3 preferredSize:(CGSize)a4 hasBorder:(BOOL)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = [v9 ic_map:&__block_literal_global_22];
  v11 = [v9 ic_compactMap:&__block_literal_global_21];

  v12 = [v11 componentsJoinedByString:@"-"];

  [MEMORY[0x1E69DCEB0] ic_scale];
  v14 = v13;
  v15 = [MEMORY[0x1E69B7678] appearanceInfoWithType:0];
  LOBYTE(v18) = a5;
  v16 = [(ICThumbnailConfiguration *)self initWithThumbnailType:8 associatedObject:v10 associatedObjectIdentifier:v12 associatedObjectTitle:0 accountIdentifier:0 cacheLevel:1 preferredSize:width scale:height appearanceInfo:v14 backgroundColor:v15 hasBorder:0, v18];

  return v16;
}

id __82__ICThumbnailConfiguration_initForAvatarWithParticipants_preferredSize_hasBorder___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 userIdentity];
  v3 = [v2 userRecordID];
  v4 = [v3 recordName];

  return v4;
}

- (void)setTraitCollection:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__ICThumbnailConfiguration_setTraitCollection___block_invoke;
  v6[3] = &unk_1E846A058;
  v6[4] = self;
  v4 = [a3 traitCollectionByModifyingTraits:v6];
  traitCollection = self->_traitCollection;
  self->_traitCollection = v4;
}

void __47__ICThumbnailConfiguration_setTraitCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 scale];
  [v4 setDisplayScale:?];
  v6 = [*(a1 + 32) appearanceInfo];
  v5 = [v6 defaultTraitCollection];
  [v4 setUserInterfaceStyle:{objc_msgSend(v5, "userInterfaceStyle")}];
}

- (void)performAsCurrentAppearance:(id)a3
{
  v4 = a3;
  v5 = [(ICThumbnailConfiguration *)self traitCollection];
  [v5 performAsCurrentTraitCollection:v4];
}

- (id)debugDescription
{
  v2 = [(ICThumbnailConfiguration *)self uniqueKey];
  v3 = [v2 description];

  return v3;
}

@end