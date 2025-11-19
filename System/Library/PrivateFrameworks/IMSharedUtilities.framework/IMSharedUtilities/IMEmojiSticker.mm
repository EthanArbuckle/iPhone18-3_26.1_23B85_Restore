@interface IMEmojiSticker
+ (id)stickerPackID;
+ (id)tempFileURLForStickerID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (IMEmojiSticker)initWithEmojiString:(id)a3 stickerID:(id)a4 stickerPackID:(id)a5 fileURL:(id)a6 accessibilityLabel:(id)a7 moodCategory:(id)a8 stickerName:(id)a9 textToSpeechName:(id)a10;
- (IMEmojiSticker)initWithEmojiString:(id)a3 stickerPackID:(id)a4 fileURL:(id)a5 moodCategory:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)tapbackEquivalent;
@end

@implementation IMEmojiSticker

+ (id)stickerPackID
{
  v2 = IMStickersExtensionIdentifier();
  v3 = IMBalloonExtensionIDWithSuffix(v2);

  return v3;
}

- (IMEmojiSticker)initWithEmojiString:(id)a3 stickerID:(id)a4 stickerPackID:(id)a5 fileURL:(id)a6 accessibilityLabel:(id)a7 moodCategory:(id)a8 stickerName:(id)a9 textToSpeechName:(id)a10
{
  v16 = a3;
  v21.receiver = self;
  v21.super_class = IMEmojiSticker;
  v17 = [(IMSticker *)&v21 initWithStickerID:a4 stickerPackID:a5 fileURL:a6 accessibilityLabel:a7 accessibilityName:0 searchText:0 sanitizedPrompt:0 moodCategory:a8 stickerName:a9 textToSpeechName:a10];
  if (v17)
  {
    v18 = [v16 copy];
    emojiString = v17->_emojiString;
    v17->_emojiString = v18;
  }

  return v17;
}

- (IMEmojiSticker)initWithEmojiString:(id)a3 stickerPackID:(id)a4 fileURL:(id)a5 moodCategory:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v14 = [v10 __im_emojiStickerID];
    if (!v12)
    {
      v12 = [IMEmojiSticker tempFileURLForStickerID:v14];
    }

    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = sub_1A8601E98;
    v44 = sub_1A8602140;
    v45 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_1A8601E98;
    v38 = sub_1A8602140;
    v39 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_1A8601E98;
    v32 = sub_1A8602140;
    v33 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_1A8601E98;
    v26 = sub_1A8602140;
    v27 = 0;
    v15 = [MEMORY[0x1E695DF58] currentLocale];
    [v15 localeIdentifier];
    CEMCreateEmojiLocaleData();

    [v10 length];
    v21 = MEMORY[0x1E69E9820];
    CEMEnumerateEmojiTokensInStringWithLocaleAndBlock();
    v16 = v23[5];
    if (v16)
    {
      if (!v41[5])
      {
        objc_storeStrong(v41 + 5, v16);
      }

      if (!v35[5])
      {
        objc_storeStrong(v35 + 5, v41[5]);
      }

      if (!v29[5])
      {
        objc_storeStrong(v29 + 5, v35[5]);
      }

      v17 = v23[5];
      v18 = [v17 __im_emojiStickerID];
      self = [(IMEmojiSticker *)self initWithEmojiString:v17 stickerID:v18 stickerPackID:v11 fileURL:v12 accessibilityLabel:v29[5] moodCategory:v13 stickerName:v41[5] textToSpeechName:v35[5], v21, 3221225472, sub_1A864DB98, &unk_1E78276D8, &v22, &v34, &v40, &v28];
      v19 = self;
    }

    else
    {
      v18 = IMLogHandleForCategory("IMEmojiSticker");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C1510(v10, v18);
      }

      v19 = 0;
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v28, 8);

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v14 = IMLogHandleForCategory("IMEmojiSticker");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C1588(v14);
    }

    v19 = 0;
  }

  return v19;
}

+ (id)tempFileURLForStickerID:(id)a3
{
  v3 = a3;
  v4 = IMSafeTemporaryDirectory();
  v5 = [v4 path];
  v6 = [v5 stringByAppendingPathComponent:v3];

  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMEmojiSticker;
  if ([(IMSticker *)&v9 isEqual:v4])
  {
    v5 = [(IMEmojiSticker *)self emojiString];
    v6 = [v4 emojiString];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(IMEmojiSticker *)self emojiString];
  v6 = [(IMSticker *)self stickerGUID];
  v7 = [(IMSticker *)self stickerPackGUID];
  v8 = [(IMSticker *)self fileURL];
  v9 = [(IMSticker *)self accessibilityLabel];
  v10 = [(IMSticker *)self moodCategory];
  v11 = [(IMSticker *)self stickerName];
  v12 = [(IMSticker *)self textToSpeechName];
  v13 = [v4 initWithEmojiString:v5 stickerID:v6 stickerPackID:v7 fileURL:v8 accessibilityLabel:v9 moodCategory:v10 stickerName:v11 textToSpeechName:v12];

  return v13;
}

- (id)description
{
  v3 = [(IMSticker *)self fileURL];
  v4 = @"NO";
  if (v3)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [(IMSticker *)self fileURL];
    v7 = [v6 path];
    if ([v5 fileExistsAtPath:v7])
    {
      v4 = @"YES";
    }

    v19 = v4;
  }

  else
  {
    v19 = @"NO";
  }

  v20 = MEMORY[0x1E696AEC0];
  v18 = [(IMEmojiSticker *)self emojiString];
  v8 = [(IMSticker *)self stickerName];
  v9 = [(IMSticker *)self stickerGUID];
  v10 = [(IMSticker *)self stickerPackGUID];
  v11 = [(IMSticker *)self fileURL];
  v12 = [(IMSticker *)self accessibilityLabel];
  v13 = [(IMSticker *)self moodCategory];
  v14 = [(IMSticker *)self attributionInfo];
  v15 = [(IMSticker *)self ballonBundleID];
  v16 = [(IMSticker *)self textToSpeechName];
  v21 = [v20 stringWithFormat:@"<IMEmojiSticker: %@, Name: %@, guid %@, packID %@, fileURL %@, fileExists: %@, accessibilityLabel %@, moodCategory %@, attributionInfo: %@, balloonBundleID: %@, textToSpeechName: %@, self %p>", v18, v8, v9, v10, v11, v19, v12, v13, v14, v15, v16, self];

  return v21;
}

- (id)tapbackEquivalent
{
  v2 = [(IMEmojiSticker *)self emojiString];
  v3 = [[IMEmojiTapback alloc] initWithEmoji:v2 isRemoved:0];

  return v3;
}

@end