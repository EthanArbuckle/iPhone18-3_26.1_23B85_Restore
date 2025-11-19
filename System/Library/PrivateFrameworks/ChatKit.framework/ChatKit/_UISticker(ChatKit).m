@interface _UISticker(ChatKit)
- (id)__ck_representationWithRole:()ChatKit;
- (id)_ck_plainStringEmojiText;
- (uint64_t)_ck_shouldInsertInCompositionAsAdaptiveImageGlyph;
- (uint64_t)_ck_shouldInsertInTapbackAsAdaptiveImageGlyph;
- (uint64_t)_ck_stickerType;
@end

@implementation _UISticker(ChatKit)

- (uint64_t)_ck_shouldInsertInCompositionAsAdaptiveImageGlyph
{
  if ([a1 isAnimated])
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      [_UISticker(ChatKit) _ck_shouldInsertInCompositionAsAdaptiveImageGlyph];
    }

    return 0;
  }

  else
  {
    v4 = [a1 hasLiveEffect];
    if (v4)
    {
      v5 = IMLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [_UISticker(ChatKit) _ck_shouldInsertInCompositionAsAdaptiveImageGlyph];
      }
    }

    return v4 ^ 1u;
  }
}

- (uint64_t)_ck_shouldInsertInTapbackAsAdaptiveImageGlyph
{
  if ([a1 isAnimated])
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      [_UISticker(ChatKit) _ck_shouldInsertInTapbackAsAdaptiveImageGlyph];
    }

LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  if ([a1 hasLiveEffect])
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      [_UISticker(ChatKit) _ck_shouldInsertInTapbackAsAdaptiveImageGlyph];
    }

    goto LABEL_10;
  }

  v3 = [a1 _ck_stickerType];
  if (v3 < 5)
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      [_UISticker(ChatKit) _ck_shouldInsertInTapbackAsAdaptiveImageGlyph];
    }

    goto LABEL_10;
  }

  if (v3 != 5)
  {
    return 0;
  }

  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [_UISticker(ChatKit) _ck_shouldInsertInTapbackAsAdaptiveImageGlyph];
  }

  v4 = 1;
LABEL_11:

  return v4;
}

- (uint64_t)_ck_stickerType
{
  v2 = [a1 searchText];
  v3 = [v2 length];

  if (!v3)
  {
    v5 = [a1 externalURI];
    if ([v5 length])
    {
      if ([v5 hasPrefix:@"sticker:///user/"])
      {
        v6 = [a1 __ck_representationWithRole:@"com.apple.stickers.role.stillVariant_40"];
        if (v6)
        {
          v4 = 5;
        }

        else
        {
          v4 = 1;
        }

        goto LABEL_16;
      }

      if ([v5 hasPrefix:@"sticker:///memoji/"])
      {
        v4 = 3;
LABEL_16:

        return v4;
      }

      if ([v5 hasPrefix:@"sticker:///emoji/"])
      {
        v4 = 4;
        goto LABEL_16;
      }

      if ([v5 hasPrefix:@"sticker:///third_party/"])
      {
        v4 = 2;
        goto LABEL_16;
      }
    }

    v4 = 0;
    goto LABEL_16;
  }

  return 5;
}

- (id)__ck_representationWithRole:()ChatKit
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [a1 representations];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 role];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_ck_plainStringEmojiText
{
  v1 = [a1 externalURI];
  if ([v1 hasPrefix:@"sticker:///emoji/identifier/"])
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(@"sticker:///emoji/identifier/", "length")}];
    if ([v2 length])
    {
      v3 = [MEMORY[0x1E699BAF8] emojiTokenWithString:v2 localeData:0];
      v4 = 0;
      if ([v3 isValid])
      {
        v4 = v2;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end