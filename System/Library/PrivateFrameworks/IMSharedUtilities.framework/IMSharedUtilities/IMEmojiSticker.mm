@interface IMEmojiSticker
+ (id)stickerPackID;
+ (id)tempFileURLForStickerID:(id)d;
- (BOOL)isEqual:(id)equal;
- (IMEmojiSticker)initWithEmojiString:(id)string stickerID:(id)d stickerPackID:(id)iD fileURL:(id)l accessibilityLabel:(id)label moodCategory:(id)category stickerName:(id)name textToSpeechName:(id)self0;
- (IMEmojiSticker)initWithEmojiString:(id)string stickerPackID:(id)d fileURL:(id)l moodCategory:(id)category;
- (id)copyWithZone:(_NSZone *)zone;
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

- (IMEmojiSticker)initWithEmojiString:(id)string stickerID:(id)d stickerPackID:(id)iD fileURL:(id)l accessibilityLabel:(id)label moodCategory:(id)category stickerName:(id)name textToSpeechName:(id)self0
{
  stringCopy = string;
  v21.receiver = self;
  v21.super_class = IMEmojiSticker;
  v17 = [(IMSticker *)&v21 initWithStickerID:d stickerPackID:iD fileURL:l accessibilityLabel:label accessibilityName:0 searchText:0 sanitizedPrompt:0 moodCategory:category stickerName:name textToSpeechName:speechName];
  if (v17)
  {
    v18 = [stringCopy copy];
    emojiString = v17->_emojiString;
    v17->_emojiString = v18;
  }

  return v17;
}

- (IMEmojiSticker)initWithEmojiString:(id)string stickerPackID:(id)d fileURL:(id)l moodCategory:(id)category
{
  stringCopy = string;
  dCopy = d;
  lCopy = l;
  categoryCopy = category;
  if (stringCopy)
  {
    __im_emojiStickerID = [stringCopy __im_emojiStickerID];
    if (!lCopy)
    {
      lCopy = [IMEmojiSticker tempFileURLForStickerID:__im_emojiStickerID];
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
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [currentLocale localeIdentifier];
    CEMCreateEmojiLocaleData();

    [stringCopy length];
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
      __im_emojiStickerID2 = [v17 __im_emojiStickerID];
      self = [(IMEmojiSticker *)self initWithEmojiString:v17 stickerID:__im_emojiStickerID2 stickerPackID:dCopy fileURL:lCopy accessibilityLabel:v29[5] moodCategory:categoryCopy stickerName:v41[5] textToSpeechName:v35[5], v21, 3221225472, sub_1A864DB98, &unk_1E78276D8, &v22, &v34, &v40, &v28];
      selfCopy = self;
    }

    else
    {
      __im_emojiStickerID2 = IMLogHandleForCategory("IMEmojiSticker");
      if (os_log_type_enabled(__im_emojiStickerID2, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C1510(stringCopy, __im_emojiStickerID2);
      }

      selfCopy = 0;
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v28, 8);

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v40, 8);
  }

  else
  {
    __im_emojiStickerID = IMLogHandleForCategory("IMEmojiSticker");
    if (os_log_type_enabled(__im_emojiStickerID, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C1588(__im_emojiStickerID);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)tempFileURLForStickerID:(id)d
{
  dCopy = d;
  v4 = IMSafeTemporaryDirectory();
  path = [v4 path];
  v6 = [path stringByAppendingPathComponent:dCopy];

  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = IMEmojiSticker;
  if ([(IMSticker *)&v9 isEqual:equalCopy])
  {
    emojiString = [(IMEmojiSticker *)self emojiString];
    emojiString2 = [equalCopy emojiString];
    v7 = [emojiString isEqualToString:emojiString2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  emojiString = [(IMEmojiSticker *)self emojiString];
  stickerGUID = [(IMSticker *)self stickerGUID];
  stickerPackGUID = [(IMSticker *)self stickerPackGUID];
  fileURL = [(IMSticker *)self fileURL];
  accessibilityLabel = [(IMSticker *)self accessibilityLabel];
  moodCategory = [(IMSticker *)self moodCategory];
  stickerName = [(IMSticker *)self stickerName];
  textToSpeechName = [(IMSticker *)self textToSpeechName];
  v13 = [v4 initWithEmojiString:emojiString stickerID:stickerGUID stickerPackID:stickerPackGUID fileURL:fileURL accessibilityLabel:accessibilityLabel moodCategory:moodCategory stickerName:stickerName textToSpeechName:textToSpeechName];

  return v13;
}

- (id)description
{
  fileURL = [(IMSticker *)self fileURL];
  v4 = @"NO";
  if (fileURL)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    fileURL2 = [(IMSticker *)self fileURL];
    path = [fileURL2 path];
    if ([defaultManager fileExistsAtPath:path])
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
  emojiString = [(IMEmojiSticker *)self emojiString];
  stickerName = [(IMSticker *)self stickerName];
  stickerGUID = [(IMSticker *)self stickerGUID];
  stickerPackGUID = [(IMSticker *)self stickerPackGUID];
  fileURL3 = [(IMSticker *)self fileURL];
  accessibilityLabel = [(IMSticker *)self accessibilityLabel];
  moodCategory = [(IMSticker *)self moodCategory];
  attributionInfo = [(IMSticker *)self attributionInfo];
  ballonBundleID = [(IMSticker *)self ballonBundleID];
  textToSpeechName = [(IMSticker *)self textToSpeechName];
  v21 = [v20 stringWithFormat:@"<IMEmojiSticker: %@, Name: %@, guid %@, packID %@, fileURL %@, fileExists: %@, accessibilityLabel %@, moodCategory %@, attributionInfo: %@, balloonBundleID: %@, textToSpeechName: %@, self %p>", emojiString, stickerName, stickerGUID, stickerPackGUID, fileURL3, v19, accessibilityLabel, moodCategory, attributionInfo, ballonBundleID, textToSpeechName, self];

  return v21;
}

- (id)tapbackEquivalent
{
  emojiString = [(IMEmojiSticker *)self emojiString];
  v3 = [[IMEmojiTapback alloc] initWithEmoji:emojiString isRemoved:0];

  return v3;
}

@end