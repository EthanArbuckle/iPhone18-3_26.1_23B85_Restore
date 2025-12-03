@interface NSAttributedString(CKUtilities)
- (BOOL)__ck_hasAdaptiveImageGlyphAtIndex:()CKUtilities;
- (BOOL)_fileTransferGUIDIsForGenmojiOrAnimojiSticker:()CKUtilities;
- (id)__ck_adaptiveImageGlyphAtIndex:()CKUtilities;
- (id)__ck_attributedStringByRemovingAllAttributesExcept:()CKUtilities;
- (id)__ck_attributedStringByTrimmingCharactersInSet:()CKUtilities;
- (id)__ck_fileTransferGUIDAtIndex:()CKUtilities;
- (id)_fileTransferForMediaObjectInMediaObjects:()CKUtilities matchingAdaptiveGlyphContentIdentifier:;
- (uint64_t)__ck_bigEmojiStyleWithSingleBigEmojiSupported:()CKUtilities mediaObjects:;
- (uint64_t)__ck_isOnlyAdaptiveImageGlyphs;
- (uint64_t)containsAttribute:()CKUtilities;
@end

@implementation NSAttributedString(CKUtilities)

- (uint64_t)containsAttribute:()CKUtilities
{
  v4 = a3;
  v5 = [self attribute:v4 existsInRange:{0, objc_msgSend(self, "length")}];

  return v5;
}

- (uint64_t)__ck_bigEmojiStyleWithSingleBigEmojiSupported:()CKUtilities mediaObjects:
{
  v6 = a4;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v7 = +[CKUIBehavior sharedBehaviors];
  maximumEmojiCountForMultipleBigEmojiFont = [v7 maximumEmojiCountForMultipleBigEmojiFont];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  string = [self string];
  v11 = [string length];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __94__NSAttributedString_CKUtilities____ck_bigEmojiStyleWithSingleBigEmojiSupported_mediaObjects___block_invoke;
  v16[3] = &unk_1E72EEF20;
  v16[4] = self;
  v12 = whitespaceAndNewlineCharacterSet;
  v17 = v12;
  v19 = &v28;
  v13 = v6;
  v18 = v13;
  v20 = &v24;
  v21 = &v36;
  v22 = &v32;
  v23 = maximumEmojiCountForMultipleBigEmojiFont;
  [string enumerateSubstringsInRange:0 options:v11 usingBlock:{2, v16}];
  if (v33[3])
  {
    v14 = 0;
  }

  else if (v37[3] == 1 && a3)
  {
    if (*(v25 + 24) == 1)
    {
      if (*(v29 + 24))
      {
        v14 = 1;
      }

      else
      {
        v14 = 3;
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 2 * (v37[3] - 1 < maximumEmojiCountForMultipleBigEmojiFont);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v14;
}

- (id)_fileTransferForMediaObjectInMediaObjects:()CKUtilities matchingAdaptiveGlyphContentIdentifier:
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 length])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v18 = v5;
      v9 = *v22;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          transfer = [v11 transfer];
          adaptiveImageGlyphContentIdentifier = [transfer adaptiveImageGlyphContentIdentifier];
          if ([adaptiveImageGlyphContentIdentifier length] && objc_msgSend(adaptiveImageGlyphContentIdentifier, "isEqualToString:", v6))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v8 = v11;

              goto LABEL_18;
            }

            v14 = IMLogHandleForCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              [(NSAttributedString(CKUtilities) *)&buf _fileTransferForMediaObjectInMediaObjects:v20 matchingAdaptiveGlyphContentIdentifier:v14];
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

LABEL_18:
      v5 = v18;
    }

    transfer2 = [v8 transfer];
    guid = [transfer2 guid];
  }

  else
  {
    guid = 0;
  }

  return guid;
}

- (BOOL)_fileTransferGUIDIsForGenmojiOrAnimojiSticker:()CKUtilities
{
  v3 = MEMORY[0x1E69A5B80];
  v4 = a3;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance transferForGUID:v4];

  if (v6)
  {
    stickerUserInfo = [v6 stickerUserInfo];
    v8 = [stickerUserInfo objectForKey:*MEMORY[0x1E69A7CB0]];

    v9 = ([v8 isEqualToString:*MEMORY[0x1E69A69D8]] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69A6980]) & 1) != 0 || objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69A69E8]);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)__ck_isOnlyAdaptiveImageGlyphs
{
  v2 = [self length];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  result = [self __ck_hasAdaptiveImageGlyphAtIndex:0];
  if (result)
  {
    v5 = 1;
    do
    {
      v6 = v5;
      if (v3 == v5)
      {
        break;
      }

      v7 = [self __ck_hasAdaptiveImageGlyphAtIndex:v5];
      v5 = v6 + 1;
    }

    while ((v7 & 1) != 0);
    return v6 >= v3;
  }

  return result;
}

- (BOOL)__ck_hasAdaptiveImageGlyphAtIndex:()CKUtilities
{
  v5 = [self attribute:*MEMORY[0x1E69DB5F8] atIndex:a3 effectiveRange:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 1;
  }

  else
  {
    v7 = [self attribute:*MEMORY[0x1E69DB5F0] atIndex:a3 effectiveRange:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = 1;
    }

    else
    {
      v8 = [self attribute:*MEMORY[0x1E69A5F50] atIndex:a3 effectiveRange:0];
      v6 = v8 != 0;
    }
  }

  return v6;
}

- (id)__ck_adaptiveImageGlyphAtIndex:()CKUtilities
{
  v3 = [self attribute:*MEMORY[0x1E69DB5F0] atIndex:a3 effectiveRange:0];
  objc_opt_class();
  v4 = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  return v4;
}

- (id)__ck_fileTransferGUIDAtIndex:()CKUtilities
{
  v3 = [self attribute:*MEMORY[0x1E69A5F68] atIndex:a3 effectiveRange:0];
  objc_opt_class();
  v4 = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  return v4;
}

- (id)__ck_attributedStringByRemovingAllAttributesExcept:()CKUtilities
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 __ck_removeAllAttributesExcept:v4];

  v6 = [v5 copy];

  return v6;
}

- (id)__ck_attributedStringByTrimmingCharactersInSet:()CKUtilities
{
  v4 = a3;
  string = [self string];
  for (i = 0; i < [string length]; ++i)
  {
    if (![v4 characterIsMember:{objc_msgSend(string, "characterAtIndex:", i)}])
    {
      break;
    }
  }

  v7 = [string length];
  v8 = v7 - i;
  v9 = v7 - 1;
  do
  {
    v10 = v8;
    v11 = v9;
    if (v9 < 0)
    {
      break;
    }

    v12 = [v4 characterIsMember:{objc_msgSend(string, "characterAtIndex:", v9)}];
    v8 = v10 - 1;
    v9 = v11 - 1;
  }

  while ((v12 & 1) != 0);
  if (i <= v11)
  {
    v13 = [self attributedSubstringFromRange:{i, v10}];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F04268F8];
  }

  v14 = v13;

  return v14;
}

- (void)_fileTransferForMediaObjectInMediaObjects:()CKUtilities matchingAdaptiveGlyphContentIdentifier:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "Found media object matching adaptive image glyph content identifier, but not of the correct media object class", buf, 2u);
}

@end