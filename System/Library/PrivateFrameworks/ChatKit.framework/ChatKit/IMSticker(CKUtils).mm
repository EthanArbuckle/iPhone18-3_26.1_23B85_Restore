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
  v8 = [v6 identifier];
  v33 = [v6 representations];
  v9 = [v6 effectType];
  v10 = [v6 externalURI];
  v29 = [v6 name];
  v11 = [v6 accessibilityLabel];
  v12 = [v6 accessibilityName];
  v32 = [v6 searchText];
  if (objc_opt_respondsToSelector())
  {
    v31 = [v6 sanitizedPrompt];
  }

  else
  {
    v31 = 0;
  }

  v30 = [v6 metadata];
  v34 = [v6 attributionInfo];
  v13 = [v34 objectForKeyedSubscript:*MEMORY[0x1E69A6FB0]];
  if (v13)
  {
    v14 = v13;
    v15 = a1;
    v16 = +[CKBalloonPluginManager sharedInstance];
    v17 = [v16 pluginForIdentifier:v14];
    if (v17)
    {

      a1 = v15;
      goto LABEL_18;
    }

    v34 = 0;
    a1 = v15;
  }

  v18 = [v6 _ck_stickerType];
  v14 = 0;
  if (v18 > 2)
  {
    switch(v18)
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
    if (v18 > 2)
    {
      goto LABEL_18;
    }

    v19 = MEMORY[0x1E69A68F8];
  }

  v14 = *v19;
LABEL_18:
  v20 = [a1 initWithStickerIdentifier:v8 stickerPackID:v14 representations:v33 effectType:v9 initialFrameIndex:0 externalURI:v10 stickerName:v29 accessibilityLabel:v11 accessibilityName:v12 searchText:v32 sanitizedPrompt:v31 metadata:v30];
  [v20 setAttributionInfo:v34];
  if (v7)
  {
    [MEMORY[0x1E69A82C0] saveAdaptiveImageGlyphToTemporaryFile:v7];
    v21 = v28 = v8;
    v22 = [v21 copy];
    [v20 setFileURL:v22];

    [v20 setRepresentations:0];
    v23 = [v7 contentIdentifier];
    v24 = [v23 copy];
    [v20 setAdaptiveImageGlyphContentIdentifier:v24];

    v25 = [v7 contentDescription];
    v26 = [v25 copy];
    [v20 setAdaptiveImageGlyphContentDescription:v26];

    [v20 setCachedAdaptiveImageGlyphForSkippingPreviewGenerationOnly:v7];
    v8 = v28;
  }

  return v20;
}

- (id)uiSticker
{
  v2 = [a1 stickerGUID];
  v3 = [a1 representations];
  v28 = [a1 stickerEffectType];
  v4 = [a1 externalURI];
  v5 = [a1 attributionInfo];
  v6 = [a1 stickerName];
  v7 = [a1 accessibilityLabel];
  v8 = [a1 accessibilityName];
  v9 = [a1 searchText];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [a1 adaptiveImageGlyphContentDescription];
  }

  v12 = v11;

  v29 = [a1 sanitizedPrompt];
  v13 = [a1 metadata];
  if (![v3 count])
  {
    v14 = [a1 fileURL];
    v15 = [MEMORY[0x193AF5EC0](@"MSSticker" @"Messages")];
    v16 = v3;
    v17 = v12;
    v18 = v8;
    v19 = v7;
    v20 = v6;
    v21 = v5;
    v22 = v4;
    v23 = v2;
    v24 = v15;

    v25 = v24;
    v2 = v23;
    v4 = v22;
    v5 = v21;
    v6 = v20;
    v7 = v19;
    v8 = v18;
    v12 = v17;
    v3 = v25;
  }

  v26 = objc_opt_new();
  [v26 setIdentifier:v2];
  [v26 setRepresentations:v3];
  [v26 setAttributionInfo:v5];
  [v26 setEffectType:v28];
  [v26 setName:v6];
  [v26 setExternalURI:v4];
  [v26 setSearchText:v12];
  if (objc_opt_respondsToSelector())
  {
    [v26 setSanitizedPrompt:v29];
  }

  [v26 setAccessibilityName:v8];
  [v26 setAccessibilityLabel:v7];
  [v26 setMetadata:v13];

  return v26;
}

+ (id)stickerWithMSMessageMediaPayload:()CKUtils
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a3;
    v4 = [v3 attributionInfo];
    v5 = *MEMORY[0x1E69A6FB0];
    v6 = [v4 objectForKey:*MEMORY[0x1E69A6FB0]];

    if (v6)
    {
      if ([v6 containsString:@"com.apple.messages.MSMessageExtensionBalloonPlugin:"])
      {
        v7 = [v6 componentsSeparatedByString:@":"];
        v8 = [v7 lastObject];

        v6 = v8;
      }

      v9 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v6 allowPlaceholder:0 error:0];
      v10 = [v9 teamIdentifier];
      v11 = v10;
      v12 = @"0000000000";
      if (v10)
      {
        v12 = v10;
      }

      v13 = v12;

      v14 = IMBalloonExtensionIDWithTeamAndSuffix();

      v15 = [MEMORY[0x1E69A5AD0] sharedInstance];
      v16 = [v15 balloonPluginForBundleID:v14];

      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v16 identifier];
        v25 = 138412290;
        v26 = v18;
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

    v20 = [v16 identifier];
    v21 = v20;
    v22 = &stru_1F04268F8;
    if (v20)
    {
      v22 = v20;
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
  v2 = [a1 fileURL];
  v3 = [v2 path];

  if (v3)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [a1 fileURL];
    v6 = [v5 path];
    v7 = [v4 imageWithContentsOfFile:v6];
LABEL_5:

    goto LABEL_6;
  }

  v8 = [a1 representations];
  v9 = [v8 firstObject];
  v10 = [v9 data];

  if (v10)
  {
    v11 = MEMORY[0x1E69DCAB8];
    v5 = [a1 representations];
    v6 = [v5 firstObject];
    v12 = [v6 data];
    v7 = [v11 imageWithData:v12];

    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (CKImageData)imageData
{
  v2 = [a1 fileURL];
  v3 = [v2 path];

  if (v3)
  {
    v4 = [CKImageData alloc];
    v5 = [a1 fileURL];
    v6 = [(CKImageData *)v4 initWithURL:v5];
LABEL_5:

    goto LABEL_6;
  }

  v7 = [a1 representations];
  v8 = [v7 firstObject];
  v9 = [v8 data];

  if (v9)
  {
    v10 = [CKImageData alloc];
    v5 = [a1 representations];
    v11 = [v5 firstObject];
    v12 = [v11 data];
    v6 = [(CKImageData *)v10 initWithData:v12];

    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

+ (double)calculatePreviewScaleWithTargetSize:()CKUtils imageData:
{
  v7 = a5;
  v8 = [v7 image];

  if (v8)
  {
    [v7 ptSize];
    v10 = v9;
    v12 = v11;
    v13 = [v7 image];
    [v13 scale];
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

      v37 = a1 / v39;
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
  v11 = [v5 mediaObject];
  v12 = [v11 transfer];
  v13 = [v12 attributionInfo];
  v14 = [v13 objectForKey:*MEMORY[0x1E69A6F98]];

  v15 = [v5 stickerPackGUID];

  v16 = IMStickersExtensionIdentifier();
  if ([v15 containsString:v16])
  {
    v17 = [v11 sticker];
    v18 = [v17 externalURI];
    if ([v18 hasPrefix:@"sticker:///emoji/"])
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
  if (a1 > 430.0)
  {
    v19 = 224.0;
  }

  v20 = 4.0;
  if (a1 > 430.0)
  {
    v20 = 8.0;
  }

  v21 = (a1 + -32.0 - v19) / v20 * width;
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
  v6 = [a1 imageData];
  [v5 calculatePreviewScaleWithTargetSize:v6 imageData:{a2, a3}];
  v8 = v7;

  return v8;
}

- (void)stickerViewForStickerChatItem:()CKUtils snapshotEffectView:completion:
{
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v11 = [v10 isClingEnabled];

  if (v11)
  {
    if (a4)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __82__IMSticker_CKUtils__stickerViewForStickerChatItem_snapshotEffectView_completion___block_invoke;
      v13[3] = &unk_1E72EFCB0;
      v13[4] = a1;
      v14 = v9;
      [a1 stickerEffectViewSnapshotForStickerChatItem:v8 completion:v13];
    }

    else
    {
      v12 = [a1 stickerEffectViewForStickerChatItem:v8];
      (*(v9 + 2))(v9, v12);
    }
  }
}

- (id)stickerEffectViewForStickerChatItem:()CKUtils
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isClingEnabled];

  if (v6)
  {
    v7 = [v4 mediaObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [v8 stickerEffectType];
      if ([v8 needsAnimation] & 1) != 0 || (IMStickerEffectTypeShouldAvoidEffectView())
      {
        v10 = 0;
      }

      else
      {
        v11 = MTLCreateSystemDefaultDevice();
        v10 = [objc_alloc(MEMORY[0x1E69DFA08]) initWithDevice:v11];
        [v10 setContentMode:1];
        v12 = [v10 layer];
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
        [v12 setTransform:v21];

        v17 = [v10 layer];
        [v17 removeAllAnimations];

        v18 = [a1 image];
        [v10 setImage:v18];

        v19 = [MEMORY[0x1E69DFA00] effectWithType:v9];
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
  v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v9 = [v8 isClingEnabled];

  if (v9)
  {
    v10 = [a1 stickerEffectViewForStickerChatItem:v6];
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
  v4 = [v3 itemProvider];
  if ([v4 hasItemConformingToTypeIdentifier:@"com.apple.sticker.mediaPayload"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 itemProvider];
    v5 = [v6 hasItemConformingToTypeIdentifier:@"com.apple.sticker"];
  }

  return v5;
}

+ (BOOL)dragItemIsRepositioningSticker:()CKUtils
{
  v3 = a3;
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isStickerRepositioningEnabled];

  if (v5 && ([v3 localObject], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0) && objc_msgSend(MEMORY[0x1E69A82C0], "dragItemIsSticker:", v3))
  {
    v8 = [v3 localObject];
    v9 = [v8 objectForKey:@"kStickerIsRepositioningKey"];
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
  v3 = [a3 items];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([MEMORY[0x1E69A82C0] dragItemIsRepositioningSticker:*(*(&v8 + 1) + 8 * i)])
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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