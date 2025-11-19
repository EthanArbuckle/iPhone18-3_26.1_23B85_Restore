@interface CKEmojiImageMediaObject
- (BOOL)hasGenmojiBundleID;
- (NSString)stickerDetailsSubtitleText;
- (NSString)stickerDetailsTitleText;
- (id)attachmentSummary:(unint64_t)a3;
- (id)inProcessGenerateAdaptiveImageGlyph;
- (id)outOfProcessGenerateAdaptiveImageGlyph;
- (id)stickerDetailsPreview;
- (id)strikeImageAtPreviewSize:(double)a3 scaleFactor:(double)a4;
@end

@implementation CKEmojiImageMediaObject

- (id)attachmentSummary:(unint64_t)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Stickers" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  v7 = [v4 localizedStringWithFormat:v6, a3];

  return v7;
}

- (id)inProcessGenerateAdaptiveImageGlyph
{
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CKEmojiImageMediaObject inProcessGenerateAdaptiveImageGlyph];
  }

  v4 = [(CKMediaObject *)self data];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DB780]) initWithImageContent:v4];
    v6 = v5;
    if (v5)
    {
      v6 = v5;
      v7 = v6;
    }

    else
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CKEmojiImageMediaObject inProcessGenerateAdaptiveImageGlyph];
      }

      v7 = 0;
    }
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CKEmojiImageMediaObject inProcessGenerateAdaptiveImageGlyph];
    }

    v7 = 0;
  }

  return v7;
}

- (id)outOfProcessGenerateAdaptiveImageGlyph
{
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CKEmojiImageMediaObject outOfProcessGenerateAdaptiveImageGlyph];
  }

  v4 = [(CKMediaObject *)self fileURL];
  v5 = [(CKMediaObject(Display) *)self senderContext];
  v6 = [MEMORY[0x1E69A7ED0] generateEmojiImageAssetFromSourceURL:v4 senderContext:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 imageData];
    if ([v8 length])
    {
      v9 = [objc_alloc(MEMORY[0x1E69DB780]) initWithImageContent:v8];
      v10 = v9;
      if (v9)
      {
        v10 = v9;
        v11 = v10;
      }

      else
      {
        v12 = IMLogHandleForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [CKEmojiImageMediaObject outOfProcessGenerateAdaptiveImageGlyph];
        }

        v11 = 0;
      }
    }

    else
    {
      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CKEmojiImageMediaObject outOfProcessGenerateAdaptiveImageGlyph];
      }

      v11 = 0;
    }
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CKEmojiImageMediaObject outOfProcessGenerateAdaptiveImageGlyph];
    }

    v11 = 0;
  }

  return v11;
}

- (id)strikeImageAtPreviewSize:(double)a3 scaleFactor:(double)a4
{
  v6 = [(CKMediaObject *)self adaptiveImageGlyph];
  v7 = v6;
  if (v6)
  {
    v11[0] = 0;
    v11[1] = 0;
    v10[0] = 0;
    v10[1] = 0;
    v8 = [v6 imageForProposedSize:v11 scaleFactor:v10 imageOffset:a3 imageSize:{a3, a4}];
    if (v8)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v8];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)stickerDetailsTitleText
{
  v2 = [(CKMediaObject *)self transfer];
  v3 = [CKStickerDetailViewController localizedAppNameForStickerDetailsFromFileTransfer:v2];

  return v3;
}

- (NSString)stickerDetailsSubtitleText
{
  if ([(CKEmojiImageMediaObject *)self hasGenmojiBundleID])
  {
    v3 = [(CKMediaObject *)self transfer];
    [v3 adaptiveImageGlyphContentDescription];
  }

  else
  {
    v3 = [(CKImageMediaObject *)self sticker];
    [v3 accessibilityLabel];
  }
  v4 = ;

  return v4;
}

- (BOOL)hasGenmojiBundleID
{
  v2 = [(CKMediaObject *)self transfer];
  v3 = [CKStickerDetailViewController isGenmojiBundleIDFromFileTransfer:v2];

  return v3;
}

- (id)stickerDetailsPreview
{
  v2 = [(CKMediaObject *)self adaptiveImageGlyph];
  if (v2)
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    [v3 previewMaxWidth];
    v5 = v4;

    v9[0] = 0;
    v9[1] = 0;
    v8[0] = 0;
    v8[1] = 0;
    v6 = [v2 imageForProposedSize:v9 scaleFactor:v8 imageOffset:v5 imageSize:{v5, 3.0}];
    if (v6)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v6];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end