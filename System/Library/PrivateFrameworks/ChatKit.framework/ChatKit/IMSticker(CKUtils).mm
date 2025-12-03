@interface IMSticker(CKUtils)
+ (BOOL)dragItemIsRepositioningSticker:()CKUtils;
+ (double)calculatePreviewScaleWithTargetSize:()CKUtils imageData:;
+ (double)calculatedRecentsItemWidthFromStickersUltraExtensionForStickerChatItem:()CKUtils collectionViewWidth:;
+ (id)stickerWithMSMessageMediaPayload:()CKUtils;
+ (uint64_t)dragItemIsSticker:()CKUtils;
+ (uint64_t)dropSessionIsRepositioningSticker:()CKUtils;
- (CKImageData)imageData;
- (double)calculatePreviewScaleWithTargetSize:()CKUtils;
- (id)image;
- (id)initWithUISticker:()CKUtils adaptiveImageGlyph:;
- (id)stickerEffectViewForStickerChatItem:()CKUtils;
- (id)uiSticker;
- (void)stickerEffectViewSnapshotForStickerChatItem:()CKUtils completion:;
- (void)stickerViewForStickerChatItem:()CKUtils snapshotEffectView:completion:;
@end

@implementation IMSticker(CKUtils)

- (id)initWithUISticker:()CKUtils adaptiveImageGlyph:
{
  v6 = a3;
  v7 = a4;
  identifier = [v6 identifier];
  representations = [v6 representations];
  effectType = [v6 effectType];
  externalURI = [v6 externalURI];
  name = [v6 name];
  accessibilityLabel = [v6 accessibilityLabel];
  accessibilityName = [v6 accessibilityName];
  searchText = [v6 searchText];
  if (objc_opt_respondsToSelector())
  {
    sanitizedPrompt = [v6 sanitizedPrompt];
  }

  else
  {
    sanitizedPrompt = 0;
  }

  metadata = [v6 metadata];
  attributionInfo = [v6 attributionInfo];
  v13 = [attributionInfo objectForKeyedSubscript:*MEMORY[0x1E69A6FB0]];
  if (v13)
  {
    v14 = v13;
    selfCopy = self;
    v16 = +[CKBalloonPluginManager sharedInstance];
    v17 = [v16 pluginForIdentifier:v14];
    if (v17)
    {

      self = selfCopy;
      goto LABEL_18;
    }

    attributionInfo = 0;
    self = selfCopy;
  }

  _ck_stickerType = [v6 _ck_stickerType];
  v14 = 0;
  if (_ck_stickerType > 2)
  {
    switch(_ck_stickerType)
    {
      case 3:
        v19 = MEMORY[0x1E69A6980];
        break;
      case 4:
        v19 = MEMORY[0x1E69A69B0];
        break;
      case 5:
        v19 = MEMORY[0x1E69A69D8];
        break;
      default:
        goto LABEL_18;
    }
  }

  else
  {
    if (_ck_stickerType > 2)
    {
      goto LABEL_18;
    }

    v19 = MEMORY[0x1E69A68F8];
  }

  v14 = *v19;
LABEL_18:
  v20 = [self initWithStickerIdentifier:identifier stickerPackID:v14 representations:representations effectType:effectType initialFrameIndex:0 externalURI:externalURI stickerName:name accessibilityLabel:accessibilityLabel accessibilityName:accessibilityName searchText:searchText sanitizedPrompt:sanitizedPrompt metadata:metadata];
  [v20 setAttributionInfo:attributionInfo];
  if (v7)
  {
    [MEMORY[0x1E69A82C0] saveAdaptiveImageGlyphToTemporaryFile:v7];
    v21 = v28 = identifier;
    v22 = [v21 copy];
    [v20 setFileURL:v22];

    [v20 setRepresentations:0];
    contentIdentifier = [v7 contentIdentifier];
    v24 = [contentIdentifier copy];
    [v20 setAdaptiveImageGlyphContentIdentifier:v24];

    contentDescription = [v7 contentDescription];
    v26 = [contentDescription copy];
    [v20 setAdaptiveImageGlyphContentDescription:v26];

    [v20 setCachedAdaptiveImageGlyphForSkippingPreviewGenerationOnly:v7];
    identifier = v28;
  }

  return v20;
}

- (id)uiSticker
{
  stickerGUID = [self stickerGUID];
  representations = [self representations];
  stickerEffectType = [self stickerEffectType];
  externalURI = [self externalURI];
  attributionInfo = [self attributionInfo];
  stickerName = [self stickerName];
  accessibilityLabel = [self accessibilityLabel];
  accessibilityName = [self accessibilityName];
  searchText = [self searchText];
  v10 = searchText;
  if (searchText)
  {
    adaptiveImageGlyphContentDescription = searchText;
  }

  else
  {
    adaptiveImageGlyphContentDescription = [self adaptiveImageGlyphContentDescription];
  }

  v12 = adaptiveImageGlyphContentDescription;

  sanitizedPrompt = [self sanitizedPrompt];
  metadata = [self metadata];
  if (![representations count])
  {
    fileURL = [self fileURL];
    v15 = [MEMORY[0x193AF5EC0](@"MSSticker" @"Messages")];
    v16 = representations;
    v17 = v12;
    v18 = accessibilityName;
    v19 = accessibilityLabel;
    v20 = stickerName;
    v21 = attributionInfo;
    v22 = externalURI;
    v23 = stickerGUID;
    v24 = v15;

    v25 = v24;
    stickerGUID = v23;
    externalURI = v22;
    attributionInfo = v21;
    stickerName = v20;
    accessibilityLabel = v19;
    accessibilityName = v18;
    v12 = v17;
    representations = v25;
  }

  v26 = objc_opt_new();
  [v26 setIdentifier:stickerGUID];
  [v26 setRepresentations:representations];
  [v26 setAttributionInfo:attributionInfo];
  [v26 setEffectType:stickerEffectType];
  [v26 setName:stickerName];
  [v26 setExternalURI:externalURI];
  [v26 setSearchText:v12];
  if (objc_opt_respondsToSelector())
  {
    [v26 setSanitizedPrompt:sanitizedPrompt];
  }

  [v26 setAccessibilityName:accessibilityName];
  [v26 setAccessibilityLabel:accessibilityLabel];
  [v26 setMetadata:metadata];

  return v26;
}

+ (id)stickerWithMSMessageMediaPayload:()CKUtils
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a3;
    attributionInfo = [v3 attributionInfo];
    v5 = *MEMORY[0x1E69A6FB0];
    v6 = [attributionInfo objectForKey:*MEMORY[0x1E69A6FB0]];

    if (v6)
    {
      if ([v6 containsString:@"com.apple.messages.MSMessageExtensionBalloonPlugin:"])
      {
        v7 = [v6 componentsSeparatedByString:@":"];
        lastObject = [v7 lastObject];

        v6 = lastObject;
      }

      v9 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v6 allowPlaceholder:0 error:0];
      teamIdentifier = [v9 teamIdentifier];
      v11 = teamIdentifier;
      v12 = @"0000000000";
      if (teamIdentifier)
      {
        v12 = teamIdentifier;
      }

      v13 = v12;

      v14 = IMBalloonExtensionIDWithTeamAndSuffix();

      mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
      v16 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:v14];

      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        identifier = [v16 identifier];
        v25 = 138412290;
        v26 = identifier;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Using plugin identifier for sticker drop: %@", &v25, 0xCu);
      }
    }

    else
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(IMSticker(CKUtils) *)v5 stickerWithMSMessageMediaPayload:v9];
      }

      v16 = 0;
      v6 = 0;
    }

    identifier2 = [v16 identifier];
    v21 = identifier2;
    v22 = &stru_1F04268F8;
    if (identifier2)
    {
      v22 = identifier2;
    }

    v23 = v22;

    v19 = [v3 convertToStickerWithExtensionIdentifier:v23];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)image
{
  fileURL = [self fileURL];
  path = [fileURL path];

  if (path)
  {
    v4 = MEMORY[0x1E69DCAB8];
    fileURL2 = [self fileURL];
    path2 = [fileURL2 path];
    v7 = [v4 imageWithContentsOfFile:path2];
LABEL_5:

    goto LABEL_6;
  }

  representations = [self representations];
  firstObject = [representations firstObject];
  data = [firstObject data];

  if (data)
  {
    v11 = MEMORY[0x1E69DCAB8];
    fileURL2 = [self representations];
    path2 = [fileURL2 firstObject];
    data2 = [path2 data];
    v7 = [v11 imageWithData:data2];

    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (CKImageData)imageData
{
  fileURL = [self fileURL];
  path = [fileURL path];

  if (path)
  {
    v4 = [CKImageData alloc];
    fileURL2 = [self fileURL];
    v6 = [(CKImageData *)v4 initWithURL:fileURL2];
LABEL_5:

    goto LABEL_6;
  }

  representations = [self representations];
  firstObject = [representations firstObject];
  data = [firstObject data];

  if (data)
  {
    v10 = [CKImageData alloc];
    fileURL2 = [self representations];
    firstObject2 = [fileURL2 firstObject];
    data2 = [firstObject2 data];
    v6 = [(CKImageData *)v10 initWithData:data2];

    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

+ (double)calculatePreviewScaleWithTargetSize:()CKUtils imageData:
{
  v7 = a5;
  image = [v7 image];

  if (image)
  {
    [v7 ptSize];
    v10 = v9;
    v12 = v11;
    image2 = [v7 image];
    [image2 scale];
    v15 = v14;

    v16 = +[CKUIBehavior sharedBehaviors];
    [v16 previewMaxWidth];
    v18 = v17;

    v19 = +[CKUIBehavior sharedBehaviors];
    [v19 thumbnailFillSizeForWidth:v18 imageSize:{v10, v12}];
    v21 = v20;
    v23 = v22;

    v24 = [v7 thumbnailFillToSize:{v21, v23}];
    [v24 size];
    v26 = v25;
    v28 = v27;

    v29 = +[CKUIBehavior sharedBehaviors];
    v30 = +[CKUIBehavior sharedBehaviors];
    [v30 stickerScreenScale];
    [v29 stickerSizeScaledWithInitialSize:v26 imageScale:v28 userScale:v15 rectifiedScreenScale:1.0 maxWidth:{v31, v18}];
    v33 = v32;
    v35 = v34;

    if (v12 <= v10)
    {
      if (v33 <= 0.0)
      {
        v39 = 1.0;
      }

      else
      {
        v39 = v33;
      }

      v37 = self / v39;
    }

    else
    {
      if (v35 <= 0.0)
      {
        v36 = 1.0;
      }

      else
      {
        v36 = v35;
      }

      v37 = a2 / v36;
    }
  }

  else
  {
    v38 = IMLogHandleForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [IMSticker(CKUtils) calculatePreviewScaleWithTargetSize:v38 imageData:?];
    }

    v37 = 1.0;
  }

  return v37;
}

+ (double)calculatedRecentsItemWidthFromStickersUltraExtensionForStickerChatItem:()CKUtils collectionViewWidth:
{
  memset(&v27, 0, sizeof(v27));
  v5 = a4;
  CGAffineTransformMakeScale(&v27, 1.25, 1.25);
  v6 = MEMORY[0x193AF5EC0](@"_MSStickerDragPreviewContainerView", @"Messages");
  if (v6)
  {
    v7 = v6;
    if (objc_opt_respondsToSelector())
    {
      [v7 targetPreviewTransform];
      v27 = v26;
    }
  }

  v25 = v27;
  memset(&v26, 0, sizeof(v26));
  CGAffineTransformDecompose(&v26, &v25);
  width = v26.scale.width;
  v9 = v26.scale.width * 48.0;
  v10 = v26.scale.height * 48.0;
  mediaObject = [v5 mediaObject];
  transfer = [mediaObject transfer];
  attributionInfo = [transfer attributionInfo];
  v14 = [attributionInfo objectForKey:*MEMORY[0x1E69A6F98]];

  stickerPackGUID = [v5 stickerPackGUID];

  v16 = IMStickersExtensionIdentifier();
  if ([stickerPackGUID containsString:v16])
  {
    sticker = [mediaObject sticker];
    externalURI = [sticker externalURI];
    if ([externalURI hasPrefix:@"sticker:///emoji/"])
    {

      goto LABEL_17;
    }

    v23 = [v14 length];

    if (v23)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v19 = 96.0;
  if (self > 430.0)
  {
    v19 = 224.0;
  }

  v20 = 4.0;
  if (self > 430.0)
  {
    v20 = 8.0;
  }

  v21 = (self + -32.0 - v19) / v20 * width;
  v22 = v21 < v9;
  if (v21 < v10)
  {
    v22 = 1;
  }

  if (!v22)
  {
    v9 = v21;
  }

LABEL_17:

  return v9;
}

- (double)calculatePreviewScaleWithTargetSize:()CKUtils
{
  v5 = MEMORY[0x1E69A82C0];
  imageData = [self imageData];
  [v5 calculatePreviewScaleWithTargetSize:imageData imageData:{a2, a3}];
  v8 = v7;

  return v8;
}

- (void)stickerViewForStickerChatItem:()CKUtils snapshotEffectView:completion:
{
  v8 = a3;
  v9 = a5;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isClingEnabled = [mEMORY[0x1E69A8070] isClingEnabled];

  if (isClingEnabled)
  {
    if (a4)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __82__IMSticker_CKUtils__stickerViewForStickerChatItem_snapshotEffectView_completion___block_invoke;
      v13[3] = &unk_1E72EFCB0;
      v13[4] = self;
      v14 = v9;
      [self stickerEffectViewSnapshotForStickerChatItem:v8 completion:v13];
    }

    else
    {
      v12 = [self stickerEffectViewForStickerChatItem:v8];
      (*(v9 + 2))(v9, v12);
    }
  }
}

- (id)stickerEffectViewForStickerChatItem:()CKUtils
{
  v4 = a3;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isClingEnabled = [mEMORY[0x1E69A8070] isClingEnabled];

  if (isClingEnabled)
  {
    mediaObject = [v4 mediaObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = mediaObject;
      stickerEffectType = [v8 stickerEffectType];
      if ([v8 needsAnimation] & 1) != 0 || (IMStickerEffectTypeShouldAvoidEffectView())
      {
        v10 = 0;
      }

      else
      {
        v11 = MTLCreateSystemDefaultDevice();
        v10 = [objc_alloc(MEMORY[0x1E69DFA08]) initWithDevice:v11];
        [v10 setContentMode:1];
        layer = [v10 layer];
        v13 = *(MEMORY[0x1E69792E8] + 80);
        v21[4] = *(MEMORY[0x1E69792E8] + 64);
        v21[5] = v13;
        v14 = *(MEMORY[0x1E69792E8] + 112);
        v21[6] = *(MEMORY[0x1E69792E8] + 96);
        v21[7] = v14;
        v15 = *(MEMORY[0x1E69792E8] + 16);
        v21[0] = *MEMORY[0x1E69792E8];
        v21[1] = v15;
        v16 = *(MEMORY[0x1E69792E8] + 48);
        v21[2] = *(MEMORY[0x1E69792E8] + 32);
        v21[3] = v16;
        [layer setTransform:v21];

        layer2 = [v10 layer];
        [layer2 removeAllAnimations];

        image = [self image];
        [v10 setImage:image];

        v19 = [MEMORY[0x1E69DFA00] effectWithType:stickerEffectType];
        [v10 setEffect:v19];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)stickerEffectViewSnapshotForStickerChatItem:()CKUtils completion:
{
  v6 = a3;
  v7 = a4;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isClingEnabled = [mEMORY[0x1E69A8070] isClingEnabled];

  if (isClingEnabled)
  {
    v10 = [self stickerEffectViewForStickerChatItem:v6];
    if (v10)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __77__IMSticker_CKUtils__stickerEffectViewSnapshotForStickerChatItem_completion___block_invoke;
      v11[3] = &unk_1E72EFCD8;
      v12 = v7;
      [v10 snapshotWithCompletionHandler:v11];
    }

    else
    {
      (*(v7 + 2))(v7, 0);
    }
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [IMSticker(CKUtils) stickerEffectViewSnapshotForStickerChatItem:v10 completion:?];
    }
  }
}

+ (uint64_t)dragItemIsSticker:()CKUtils
{
  v3 = a3;
  itemProvider = [v3 itemProvider];
  if ([itemProvider hasItemConformingToTypeIdentifier:@"com.apple.sticker.mediaPayload"])
  {
    v5 = 1;
  }

  else
  {
    itemProvider2 = [v3 itemProvider];
    v5 = [itemProvider2 hasItemConformingToTypeIdentifier:@"com.apple.sticker"];
  }

  return v5;
}

+ (BOOL)dragItemIsRepositioningSticker:()CKUtils
{
  v3 = a3;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isStickerRepositioningEnabled = [mEMORY[0x1E69A8070] isStickerRepositioningEnabled];

  if (isStickerRepositioningEnabled && ([v3 localObject], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0) && objc_msgSend(MEMORY[0x1E69A82C0], "dragItemIsSticker:", v3))
  {
    localObject = [v3 localObject];
    v9 = [localObject objectForKey:@"kStickerIsRepositioningKey"];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (uint64_t)dropSessionIsRepositioningSticker:()CKUtils
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  items = [a3 items];
  v4 = [items countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(items);
        }

        if ([MEMORY[0x1E69A82C0] dragItemIsRepositioningSticker:*(*(&v8 + 1) + 8 * i)])
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [items countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (void)stickerWithMSMessageMediaPayload:()CKUtils .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Missing sticker pack bundle ID in attributionInfo for media payload. Expected attributionInfo key: %@.", &v2, 0xCu);
}

@end