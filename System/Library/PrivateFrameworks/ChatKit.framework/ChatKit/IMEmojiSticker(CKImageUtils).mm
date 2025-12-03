@interface IMEmojiSticker(CKImageUtils)
- (CKEmojiStickerLabel)stickerView;
- (id)generateImage;
- (id)generateImageForFontSize:()CKImageUtils imageGenerationScale:;
- (id)image;
- (uint64_t)prepareToSend;
- (uint64_t)writeGeneratedImageToFileURL:()CKImageUtils error:;
- (uint64_t)writeGeneratedImageToFileURL:()CKImageUtils fontSize:imageGenerationScale:error:;
- (void)prepareToSend;
@end

@implementation IMEmojiSticker(CKImageUtils)

- (id)generateImageForFontSize:()CKImageUtils imageGenerationScale:
{
  emojiString = [self emojiString];
  v6 = [emojiString __ck_generateImageForFontSize:a2 imageGenerationScale:a3];

  return v6;
}

- (id)generateImage
{
  emojiString = [self emojiString];
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 emojiStickerImageGenerationFontSize];
  v4 = v3;
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 stickerScreenScale];
  v7 = [emojiString __ck_generateImageForFontSize:v4 imageGenerationScale:v6];

  return v7;
}

- (uint64_t)writeGeneratedImageToFileURL:()CKImageUtils error:
{
  v6 = a3;
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 emojiStickerImageGenerationFontSize];
  v9 = v8;
  v10 = +[CKUIBehavior sharedBehaviors];
  [v10 stickerScreenScale];
  v12 = [self writeGeneratedImageToFileURL:v6 fontSize:a4 imageGenerationScale:v9 error:v11];

  return v12;
}

- (uint64_t)writeGeneratedImageToFileURL:()CKImageUtils fontSize:imageGenerationScale:error:
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a5;
  if (v10)
  {
    v11 = [self generateImageForFontSize:a2 imageGenerationScale:a3];
    v12 = v11;
    if (v11)
    {
      v19 = 0;
      v13 = [v11 __ck_writePNGToURL:v10 error:&v19];
      v14 = v19;
      v15 = v14;
      if (v13)
      {
        v16 = IMLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218754;
          v21 = a2;
          v22 = 2048;
          v23 = a3;
          v24 = 2112;
          v25 = v10;
          v26 = 2112;
          selfCopy = self;
          _os_log_debug_impl(&dword_19020E000, v16, OS_LOG_TYPE_DEBUG, "Wrote image (size: %ld, scale: %ld) to %@ for sticker: %@", buf, 0x2Au);
        }
      }

      else
      {
        if (a6)
        {
          v17 = v14;
          *a6 = v15;
        }

        v16 = IMLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 134219010;
          v21 = a2;
          v22 = 2048;
          v23 = a3;
          v24 = 2112;
          v25 = v10;
          v26 = 2112;
          selfCopy = v15;
          v28 = 2112;
          selfCopy2 = self;
          _os_log_error_impl(&dword_19020E000, v16, OS_LOG_TYPE_ERROR, "Writing image (size: %ld, scale: %ld) to %@ FAILED with error: %@ for sticker: %@", buf, 0x34u);
        }
      }
    }

    else
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [IMEmojiSticker(CKImageUtils) writeGeneratedImageToFileURL:fontSize:imageGenerationScale:error:];
      }

      v13 = 0;
    }
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [IMEmojiSticker(CKImageUtils) writeGeneratedImageToFileURL:fontSize:imageGenerationScale:error:];
    }

    v13 = 0;
  }

  return v13;
}

- (uint64_t)prepareToSend
{
  fileURL = [self fileURL];
  v8 = 0;
  v3 = [self writeGeneratedImageToFileURL:fileURL error:&v8];
  v4 = v8;

  v5 = IMLogHandleForCategory();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [IMEmojiSticker(CKImageUtils) prepareToSend];
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [IMEmojiSticker(CKImageUtils) prepareToSend];
  }

  return v3;
}

- (id)image
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  fileURL = [self fileURL];
  path = [fileURL path];
  v5 = [defaultManager fileExistsAtPath:path];

  if ((v5 & 1) == 0)
  {
    [self prepareToSend];
  }

  v8.receiver = self;
  v8.super_class = &off_1F06BC468;
  v6 = objc_msgSendSuper2(&v8, sel_image);

  return v6;
}

- (CKEmojiStickerLabel)stickerView
{
  v2 = [CKEmojiStickerLabel alloc];
  v3 = [(CKEmojiStickerLabel *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  emojiString = [self emojiString];
  [(CKEmojiStickerLabel *)v3 setText:emojiString];

  [(CKEmojiStickerLabel *)v3 sizeToFit];

  return v3;
}

- (void)writeGeneratedImageToFileURL:()CKImageUtils fontSize:imageGenerationScale:error:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_19020E000, v0, OS_LOG_TYPE_ERROR, "Failed to generate image for emoji sticker: %@", v1, 0xCu);
}

- (void)writeGeneratedImageToFileURL:()CKImageUtils fontSize:imageGenerationScale:error:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_19020E000, v0, OS_LOG_TYPE_ERROR, "Can't write image to nil url for emoji sticker: %@", v1, 0xCu);
}

- (void)prepareToSend
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_19020E000, v0, OS_LOG_TYPE_DEBUG, "Preparing to send succeeded for Emoji Sticker: %@", v1, 0xCu);
}

@end