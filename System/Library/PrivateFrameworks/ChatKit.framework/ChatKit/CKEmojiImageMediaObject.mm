@interface CKEmojiImageMediaObject
- (BOOL)hasGenmojiBundleID;
- (NSString)stickerDetailsSubtitleText;
- (NSString)stickerDetailsTitleText;
- (id)attachmentSummary:(unint64_t)summary;
- (id)inProcessGenerateAdaptiveImageGlyph;
- (id)outOfProcessGenerateAdaptiveImageGlyph;
- (id)stickerDetailsPreview;
- (id)strikeImageAtPreviewSize:(double)size scaleFactor:(double)factor;
@end

@implementation CKEmojiImageMediaObject

- (id)attachmentSummary:(unint64_t)summary
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Stickers" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  summary = [v4 localizedStringWithFormat:v6, summary];

  return summary;
}

- (id)inProcessGenerateAdaptiveImageGlyph
{
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CKEmojiImageMediaObject inProcessGenerateAdaptiveImageGlyph];
  }

  data = [(CKMediaObject *)self data];
  if (data)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DB780]) initWithImageContent:data];
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

  fileURL = [(CKMediaObject *)self fileURL];
  senderContext = [(CKMediaObject(Display) *)self senderContext];
  v6 = [MEMORY[0x1E69A7ED0] generateEmojiImageAssetFromSourceURL:fileURL senderContext:senderContext];
  v7 = v6;
  if (v6)
  {
    imageData = [v6 imageData];
    if ([imageData length])
    {
      v9 = [objc_alloc(MEMORY[0x1E69DB780]) initWithImageContent:imageData];
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
    imageData = IMLogHandleForCategory();
    if (os_log_type_enabled(imageData, OS_LOG_TYPE_ERROR))
    {
      [CKEmojiImageMediaObject outOfProcessGenerateAdaptiveImageGlyph];
    }

    v11 = 0;
  }

  return v11;
}

- (id)strikeImageAtPreviewSize:(double)size scaleFactor:(double)factor
{
  adaptiveImageGlyph = [(CKMediaObject *)self adaptiveImageGlyph];
  v7 = adaptiveImageGlyph;
  if (adaptiveImageGlyph)
  {
    v11[0] = 0;
    v11[1] = 0;
    v10[0] = 0;
    v10[1] = 0;
    v8 = [adaptiveImageGlyph imageForProposedSize:v11 scaleFactor:v10 imageOffset:size imageSize:{size, factor}];
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
  transfer = [(CKMediaObject *)self transfer];
  v3 = [CKStickerDetailViewController localizedAppNameForStickerDetailsFromFileTransfer:transfer];

  return v3;
}

- (NSString)stickerDetailsSubtitleText
{
  if ([(CKEmojiImageMediaObject *)self hasGenmojiBundleID])
  {
    transfer = [(CKMediaObject *)self transfer];
    [transfer adaptiveImageGlyphContentDescription];
  }

  else
  {
    transfer = [(CKImageMediaObject *)self sticker];
    [transfer accessibilityLabel];
  }
  v4 = ;

  return v4;
}

- (BOOL)hasGenmojiBundleID
{
  transfer = [(CKMediaObject *)self transfer];
  v3 = [CKStickerDetailViewController isGenmojiBundleIDFromFileTransfer:transfer];

  return v3;
}

- (id)stickerDetailsPreview
{
  adaptiveImageGlyph = [(CKMediaObject *)self adaptiveImageGlyph];
  if (adaptiveImageGlyph)
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    [v3 previewMaxWidth];
    v5 = v4;

    v9[0] = 0;
    v9[1] = 0;
    v8[0] = 0;
    v8[1] = 0;
    v6 = [adaptiveImageGlyph imageForProposedSize:v9 scaleFactor:v8 imageOffset:v5 imageSize:{v5, 3.0}];
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