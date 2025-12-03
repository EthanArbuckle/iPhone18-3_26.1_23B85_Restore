@interface ICThumbnailConfiguration
- (CGSize)preferredSize;
- (ICThumbnailConfiguration)initWithThumbnailType:(int64_t)type associatedObject:(id)object associatedObjectIdentifier:(id)identifier associatedObjectTitle:(id)title accountIdentifier:(id)accountIdentifier cacheLevel:(int64_t)level preferredSize:(CGSize)size scale:(double)self0 appearanceInfo:(id)self1 backgroundColor:(id)self2 hasBorder:(BOOL)self3;
- (ICThumbnailConfiguration)initWithThumbnailType:(int64_t)type uniqueKey:(id)key associatedObject:(id)object associatedObjectIdentifier:(id)identifier associatedObjectTitle:(id)title accountIdentifier:(id)accountIdentifier cacheLevel:(int64_t)level preferredSize:(CGSize)self0 scale:(double)self1 appearanceInfo:(id)self2 backgroundColor:(id)self3 hasBorder:(BOOL)self4;
- (id)debugDescription;
- (id)initForAttachment:(id)attachment preferredSize:(CGSize)size scale:(double)scale appearanceInfo:(id)info;
- (id)initForAvatarWithParticipants:(id)participants preferredSize:(CGSize)size hasBorder:(BOOL)border;
- (id)initForLargeQuickNoteWidgetWithNote:(id)note appearanceInfo:(id)info traitCollection:(id)collection;
- (id)initForNoteGalleryWithNote:(id)note preferredSize:(CGSize)size traitCollection:(id)collection scale:(double)scale appearanceInfo:(id)info;
- (id)initForNoteListWithFoundAttachment:(id)attachment preferredSize:(CGSize)size scale:(double)scale appearanceInfo:(id)info;
- (id)initForNoteListWithNote:(id)note preferredSize:(CGSize)size scale:(double)scale appearanceInfo:(id)info;
- (id)initForNoteNavigationBarIconWithNote:(id)note preferredSize:(CGSize)size;
- (id)initForSharePreviewThumbnailWithNote:(id)note appearanceInfo:(id)info;
- (id)initForShareThumbnailWithNote:(id)note appearanceInfo:(id)info;
- (id)initForShortcutsWithNote:(id)note preferredSize:(CGSize)size scale:(double)scale appearanceInfo:(id)info;
- (id)initForSmallQuickNoteWidgetWithNote:(id)note appearanceInfo:(id)info traitCollection:(id)collection;
- (id)initForSystemPaperChromeLayerWithThumbnailType:(int64_t)type traitCollection:(id)collection;
- (id)initForSystemPaperChromeWithNote:(id)note appearanceInfo:(id)info;
- (id)initForSystemPaperPreviewWithNote:(id)note appearanceInfo:(id)info;
- (void)performAsCurrentAppearance:(id)appearance;
- (void)setTraitCollection:(id)collection;
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

- (ICThumbnailConfiguration)initWithThumbnailType:(int64_t)type uniqueKey:(id)key associatedObject:(id)object associatedObjectIdentifier:(id)identifier associatedObjectTitle:(id)title accountIdentifier:(id)accountIdentifier cacheLevel:(int64_t)level preferredSize:(CGSize)self0 scale:(double)self1 appearanceInfo:(id)self2 backgroundColor:(id)self3 hasBorder:(BOOL)self4
{
  height = size.height;
  width = size.width;
  keyCopy = key;
  objectCopy = object;
  identifierCopy = identifier;
  titleCopy = title;
  infoCopy = info;
  colorCopy = color;
  v32.receiver = self;
  v32.super_class = ICThumbnailConfiguration;
  v25 = [(ICThumbnailConfiguration *)&v32 init];
  if (v25)
  {
    if (scale <= 0.0)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"scale > 0.0" functionName:"-[ICThumbnailConfiguration initWithThumbnailType:uniqueKey:associatedObject:associatedObjectIdentifier:associatedObjectTitle:accountIdentifier:cacheLevel:preferredSize:scale:appearanceInfo:backgroundColor:hasBorder:]" simulateCrash:1 showAlert:0 format:@"Passing invalid scale to ICThumbnailConfiguration"];
      scale = 1.0;
    }

    v25->_thumbnailType = type;
    objc_storeStrong(&v25->_uniqueKey, key);
    objc_storeStrong(&v25->_associatedObject, object);
    objc_storeStrong(&v25->_associatedObjectIdentifier, identifier);
    objc_storeStrong(&v25->_associatedObjectTitle, title);
    v25->_cacheLevel = level;
    v25->_preferredSize.width = width;
    v25->_preferredSize.height = height;
    v25->_scale = scale;
    objc_storeStrong(&v25->_appearanceInfo, info);
    objc_storeStrong(&v25->_backgroundColor, color);
    v25->_hasBorder = border;
    currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    [(ICThumbnailConfiguration *)v25 setTraitCollection:currentTraitCollection];
  }

  return v25;
}

- (ICThumbnailConfiguration)initWithThumbnailType:(int64_t)type associatedObject:(id)object associatedObjectIdentifier:(id)identifier associatedObjectTitle:(id)title accountIdentifier:(id)accountIdentifier cacheLevel:(int64_t)level preferredSize:(CGSize)size scale:(double)self0 appearanceInfo:(id)self1 backgroundColor:(id)self2 hasBorder:(BOOL)self3
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  infoCopy = info;
  accountIdentifierCopy = accountIdentifier;
  titleCopy = title;
  identifierCopy = identifier;
  objectCopy = object;
  v28 = -[ICThumbnailKey initWithType:accountId:objectId:preferredSize:scale:appearance:]([ICThumbnailKey alloc], "initWithType:accountId:objectId:preferredSize:scale:appearance:", type, accountIdentifierCopy, identifierCopy, [infoCopy type], width, height, scale);
  LOBYTE(v31) = border;
  v29 = [(ICThumbnailConfiguration *)self initWithThumbnailType:type uniqueKey:v28 associatedObject:objectCopy associatedObjectIdentifier:identifierCopy associatedObjectTitle:titleCopy accountIdentifier:accountIdentifierCopy cacheLevel:width preferredSize:height scale:scale appearanceInfo:level backgroundColor:infoCopy hasBorder:colorCopy, v31];

  return v29;
}

- (id)initForNoteListWithNote:(id)note preferredSize:(CGSize)size scale:(double)scale appearanceInfo:(id)info
{
  height = size.height;
  width = size.width;
  infoCopy = info;
  noteCopy = note;
  identifier = [noteCopy identifier];
  title = [noteCopy title];
  account = [noteCopy account];

  identifier2 = [account identifier];
  LOBYTE(v19) = 0;
  v17 = [(ICThumbnailConfiguration *)self initWithThumbnailType:2 associatedObject:0 associatedObjectIdentifier:identifier associatedObjectTitle:title accountIdentifier:identifier2 cacheLevel:1 preferredSize:width scale:height appearanceInfo:scale backgroundColor:infoCopy hasBorder:0, v19];

  return v17;
}

- (id)initForNoteListWithFoundAttachment:(id)attachment preferredSize:(CGSize)size scale:(double)scale appearanceInfo:(id)info
{
  height = size.height;
  width = size.width;
  infoCopy = info;
  attachmentCopy = attachment;
  identifier = [attachmentCopy identifier];
  title = [attachmentCopy title];
  note = [attachmentCopy note];

  account = [note account];
  identifier2 = [account identifier];
  LOBYTE(v20) = 0;
  v18 = [(ICThumbnailConfiguration *)self initWithThumbnailType:3 associatedObject:0 associatedObjectIdentifier:identifier associatedObjectTitle:title accountIdentifier:identifier2 cacheLevel:1 preferredSize:width scale:height appearanceInfo:scale backgroundColor:infoCopy hasBorder:0, v20];

  return v18;
}

- (id)initForNoteGalleryWithNote:(id)note preferredSize:(CGSize)size traitCollection:(id)collection scale:(double)scale appearanceInfo:(id)info
{
  height = size.height;
  width = size.width;
  infoCopy = info;
  collectionCopy = collection;
  noteCopy = note;
  identifier = [noteCopy identifier];
  title = [noteCopy title];
  account = [noteCopy account];

  identifier2 = [account identifier];
  LOBYTE(v22) = 0;
  v20 = [(ICThumbnailConfiguration *)self initWithThumbnailType:1 associatedObject:0 associatedObjectIdentifier:identifier associatedObjectTitle:title accountIdentifier:identifier2 cacheLevel:1 preferredSize:width scale:height appearanceInfo:scale backgroundColor:infoCopy hasBorder:0, v22];

  [(ICThumbnailConfiguration *)v20 setTraitCollection:collectionCopy];
  return v20;
}

- (id)initForShortcutsWithNote:(id)note preferredSize:(CGSize)size scale:(double)scale appearanceInfo:(id)info
{
  height = size.height;
  width = size.width;
  infoCopy = info;
  noteCopy = note;
  identifier = [noteCopy identifier];
  title = [noteCopy title];
  account = [noteCopy account];
  identifier2 = [account identifier];
  v17 = MEMORY[0x1E69DC888];
  ic_hasLightBackground = [noteCopy ic_hasLightBackground];

  v19 = [v17 ic_notePreviewBackgroundLightContent:ic_hasLightBackground];
  LOBYTE(v22) = 0;
  v20 = [(ICThumbnailConfiguration *)self initWithThumbnailType:1 associatedObject:0 associatedObjectIdentifier:identifier associatedObjectTitle:title accountIdentifier:identifier2 cacheLevel:1 preferredSize:width scale:height appearanceInfo:scale backgroundColor:infoCopy hasBorder:v19, v22];

  if (v20)
  {
    v20->_prepareThumbnail = 1;
  }

  return v20;
}

- (id)initForAttachment:(id)attachment preferredSize:(CGSize)size scale:(double)scale appearanceInfo:(id)info
{
  height = size.height;
  width = size.width;
  infoCopy = info;
  attachmentCopy = attachment;
  identifier = [attachmentCopy identifier];
  title = [attachmentCopy title];
  note = [attachmentCopy note];

  account = [note account];
  identifier2 = [account identifier];
  LOBYTE(v20) = 0;
  v18 = [(ICThumbnailConfiguration *)self initWithThumbnailType:0 associatedObject:0 associatedObjectIdentifier:identifier associatedObjectTitle:title accountIdentifier:identifier2 cacheLevel:1 preferredSize:width scale:height appearanceInfo:scale backgroundColor:infoCopy hasBorder:0, v20];

  return v18;
}

- (id)initForShareThumbnailWithNote:(id)note appearanceInfo:(id)info
{
  noteCopy = note;
  infoCopy = info;
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
  managedObjectContext = [noteCopy managedObjectContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__ICThumbnailConfiguration_initForShareThumbnailWithNote_appearanceInfo___block_invoke;
  v13[3] = &unk_1E8469FF0;
  v15 = &v30;
  v9 = noteCopy;
  v14 = v9;
  v16 = &v24;
  v17 = &v18;
  [managedObjectContext performBlockAndWait:v13];

  LOBYTE(v12) = 0;
  v10 = [(ICThumbnailConfiguration *)self initWithThumbnailType:2 associatedObject:0 associatedObjectIdentifier:v31[5] associatedObjectTitle:v25[5] accountIdentifier:v19[5] cacheLevel:1 preferredSize:128.0 scale:128.0 appearanceInfo:2.0 backgroundColor:infoCopy hasBorder:0, v12];

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

- (id)initForSharePreviewThumbnailWithNote:(id)note appearanceInfo:(id)info
{
  infoCopy = info;
  noteCopy = note;
  identifier = [noteCopy identifier];
  title = [noteCopy title];
  account = [noteCopy account];
  identifier2 = [account identifier];
  v12 = MEMORY[0x1E69DC888];
  ic_hasLightBackground = [noteCopy ic_hasLightBackground];

  v14 = [v12 ic_notePreviewBackgroundLightContent:ic_hasLightBackground];
  LOBYTE(v17) = 0;
  v15 = [(ICThumbnailConfiguration *)self initWithThumbnailType:1 associatedObject:0 associatedObjectIdentifier:identifier associatedObjectTitle:title accountIdentifier:identifier2 cacheLevel:1 preferredSize:512.0 scale:512.0 appearanceInfo:2.0 backgroundColor:infoCopy hasBorder:v14, v17];

  return v15;
}

- (id)initForNoteNavigationBarIconWithNote:(id)note preferredSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = MEMORY[0x1E69DC888];
  noteCopy = note;
  ic_noteEditorBackgroundColor = [v7 ic_noteEditorBackgroundColor];
  identifier = [noteCopy identifier];
  title = [noteCopy title];
  account = [noteCopy account];

  identifier2 = [account identifier];
  [MEMORY[0x1E69DCEB0] ic_scale];
  v15 = v14;
  currentInfo = [MEMORY[0x1E69B7678] currentInfo];
  LOBYTE(v19) = 0;
  v17 = [(ICThumbnailConfiguration *)self initWithThumbnailType:1 associatedObject:0 associatedObjectIdentifier:identifier associatedObjectTitle:title accountIdentifier:identifier2 cacheLevel:1 preferredSize:width scale:height appearanceInfo:v15 backgroundColor:currentInfo hasBorder:ic_noteEditorBackgroundColor, v19];

  return v17;
}

- (id)initForSystemPaperChromeWithNote:(id)note appearanceInfo:(id)info
{
  infoCopy = info;
  noteCopy = note;
  identifier = [noteCopy identifier];
  title = [noteCopy title];
  account = [noteCopy account];
  identifier2 = [account identifier];
  [MEMORY[0x1E69DCEB0] ic_scale];
  v13 = v12;
  v14 = MEMORY[0x1E69DC888];
  ic_hasLightBackground = [noteCopy ic_hasLightBackground];

  v16 = [v14 ic_notePreviewBackgroundLightContent:ic_hasLightBackground];
  LOBYTE(v19) = 0;
  v17 = [(ICThumbnailConfiguration *)self initWithThumbnailType:4 associatedObject:0 associatedObjectIdentifier:identifier associatedObjectTitle:title accountIdentifier:identifier2 cacheLevel:2 preferredSize:*MEMORY[0x1E695F060] scale:*(MEMORY[0x1E695F060] + 8) appearanceInfo:v13 backgroundColor:infoCopy hasBorder:v16, v19];

  return v17;
}

- (id)initForSystemPaperChromeLayerWithThumbnailType:(int64_t)type traitCollection:(id)collection
{
  collectionCopy = collection;
  v7 = [ICThumbnailKey alloc];
  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);
  v10 = [(ICThumbnailKey *)v7 initWithType:type accountId:0 objectId:0 preferredSize:collectionCopy traitCollection:*MEMORY[0x1E695F060], v9];
  v11 = [collectionCopy userInterfaceStyle] == 2;
  [collectionCopy displayScale];
  v13 = v12;
  v14 = [MEMORY[0x1E69B7678] appearanceInfoWithType:v11];
  LOBYTE(v17) = 0;
  v15 = [(ICThumbnailConfiguration *)self initWithThumbnailType:type uniqueKey:v10 associatedObject:0 associatedObjectIdentifier:0 associatedObjectTitle:0 accountIdentifier:0 cacheLevel:v8 preferredSize:v9 scale:v13 appearanceInfo:0 backgroundColor:v14 hasBorder:0, v17];

  [(ICThumbnailConfiguration *)v15 setTraitCollection:collectionCopy];
  return v15;
}

- (id)initForLargeQuickNoteWidgetWithNote:(id)note appearanceInfo:(id)info traitCollection:(id)collection
{
  collectionCopy = collection;
  infoCopy = info;
  noteCopy = note;
  identifier = [noteCopy identifier];
  title = [noteCopy title];
  account = [noteCopy account];

  identifier2 = [account identifier];
  [MEMORY[0x1E69DCEB0] ic_scale];
  LOBYTE(v18) = 0;
  v16 = [(ICThumbnailConfiguration *)self initWithThumbnailType:10 associatedObject:0 associatedObjectIdentifier:identifier associatedObjectTitle:title accountIdentifier:identifier2 cacheLevel:2 preferredSize:350.0 scale:380.0 appearanceInfo:v15 backgroundColor:infoCopy hasBorder:0, v18];

  [(ICThumbnailConfiguration *)v16 setTraitCollection:collectionCopy];
  return v16;
}

- (id)initForSmallQuickNoteWidgetWithNote:(id)note appearanceInfo:(id)info traitCollection:(id)collection
{
  collectionCopy = collection;
  infoCopy = info;
  noteCopy = note;
  identifier = [noteCopy identifier];
  title = [noteCopy title];
  account = [noteCopy account];

  identifier2 = [account identifier];
  [MEMORY[0x1E69DCEB0] ic_scale];
  LOBYTE(v18) = 0;
  v16 = [(ICThumbnailConfiguration *)self initWithThumbnailType:11 associatedObject:0 associatedObjectIdentifier:identifier associatedObjectTitle:title accountIdentifier:identifier2 cacheLevel:2 preferredSize:150.0 scale:162.0 appearanceInfo:v15 backgroundColor:infoCopy hasBorder:0, v18];

  [(ICThumbnailConfiguration *)v16 setTraitCollection:collectionCopy];
  return v16;
}

- (id)initForSystemPaperPreviewWithNote:(id)note appearanceInfo:(id)info
{
  infoCopy = info;
  noteCopy = note;
  identifier = [noteCopy identifier];
  title = [noteCopy title];
  account = [noteCopy account];
  identifier2 = [account identifier];
  [MEMORY[0x1E69DCEB0] ic_scale];
  v13 = v12;
  v14 = MEMORY[0x1E69DC888];
  ic_hasLightBackground = [noteCopy ic_hasLightBackground];

  v16 = [v14 ic_notePreviewBackgroundLightContent:ic_hasLightBackground];
  LOBYTE(v19) = 0;
  v17 = [(ICThumbnailConfiguration *)self initWithThumbnailType:7 associatedObject:0 associatedObjectIdentifier:identifier associatedObjectTitle:title accountIdentifier:identifier2 cacheLevel:2 preferredSize:110.0 scale:121.0 appearanceInfo:v13 backgroundColor:infoCopy hasBorder:v16, v19];

  return v17;
}

- (id)initForAvatarWithParticipants:(id)participants preferredSize:(CGSize)size hasBorder:(BOOL)border
{
  height = size.height;
  width = size.width;
  participantsCopy = participants;
  v10 = [participantsCopy ic_map:&__block_literal_global_22];
  v11 = [participantsCopy ic_compactMap:&__block_literal_global_21];

  v12 = [v11 componentsJoinedByString:@"-"];

  [MEMORY[0x1E69DCEB0] ic_scale];
  v14 = v13;
  v15 = [MEMORY[0x1E69B7678] appearanceInfoWithType:0];
  LOBYTE(v18) = border;
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

- (void)setTraitCollection:(id)collection
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__ICThumbnailConfiguration_setTraitCollection___block_invoke;
  v6[3] = &unk_1E846A058;
  v6[4] = self;
  v4 = [collection traitCollectionByModifyingTraits:v6];
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

- (void)performAsCurrentAppearance:(id)appearance
{
  appearanceCopy = appearance;
  traitCollection = [(ICThumbnailConfiguration *)self traitCollection];
  [traitCollection performAsCurrentTraitCollection:appearanceCopy];
}

- (id)debugDescription
{
  uniqueKey = [(ICThumbnailConfiguration *)self uniqueKey];
  v3 = [uniqueKey description];

  return v3;
}

@end