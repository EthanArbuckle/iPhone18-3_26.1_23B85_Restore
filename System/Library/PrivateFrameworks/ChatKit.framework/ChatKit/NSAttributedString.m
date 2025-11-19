@interface NSAttributedString
@end

@implementation NSAttributedString

void __94__NSAttributedString_CKUtilities____ck_bigEmojiStyleWithSingleBigEmojiSupported_mediaObjects___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v22 = a2;
  IsSingleEmoji = CEMStringIsSingleEmoji();
  v11 = [v22 isEqualToString:*MEMORY[0x1E69A5F00]];
  if (v11)
  {
    v12 = [*(a1 + 32) __ck_hasAdaptiveImageGlyphAtIndex:a3];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v22 stringByTrimmingCharactersInSet:*(a1 + 40)];
  v14 = [v13 length];

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v15 = [*(a1 + 32) __ck_fileTransferGUIDAtIndex:a3];
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v12;
    }

    if (v16 == 1)
    {
      if (*(a1 + 48))
      {
        v17 = [*(a1 + 32) __ck_adaptiveImageGlyphAtIndex:a3];
        v18 = *(a1 + 32);
        v19 = *(a1 + 48);
        v20 = [v17 contentIdentifier];
        v15 = [v18 _fileTransferForMediaObjectInMediaObjects:v19 matchingAdaptiveGlyphContentIdentifier:v20];
      }

      else
      {
        v15 = 0;
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _fileTransferGUIDIsForGenmojiOrAnimojiSticker:v15];
  }

  if (!((IsSingleEmoji != 0) | v12 & 1))
  {
    if (v14)
    {
      v21 = v11;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_22;
    }

    *(*(*(a1 + 80) + 8) + 24) = 1;
    goto LABEL_21;
  }

  *(*(*(a1 + 64) + 8) + 24) = (IsSingleEmoji == 0) & v12;
  if (++*(*(*(a1 + 72) + 8) + 24) > *(a1 + 88))
  {
LABEL_21:
    *a7 = 1;
  }

LABEL_22:
}

void __65__NSAttributedString_TextEffects__ck_actionForIMTextStyle_range___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v7 = a2;
  if (v7)
  {
    v11 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v11;
    if (isKindOfClass)
    {
      v9 = *(*(a1 + 32) + 8);
      v10.location = *(v9 + 32);
      if (v10.location == 0x7FFFFFFFFFFFFFFFLL)
      {
        *(v9 + 32) = a3;
        *(v9 + 40) = a4;
      }

      else
      {
        v10.length = *(v9 + 40);
        v13.location = a3;
        v13.length = a4;
        *(*(*(a1 + 32) + 8) + 32) = NSUnionRange(v10, v13);
        v7 = v11;
      }
    }
  }
}

void __116__NSAttributedString_RichLinks____ck_attributedStringByApplyingRichLinkInteraction_toRichLinkItems_stringDidChange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = v7;
    if (![*(a1 + 32) containsObject:v8])
    {
LABEL_17:

      goto LABEL_18;
    }

    v9 = *(a1 + 56);
    if (v9 == 2)
    {
      v15 = [v8 urlText];
      v14 = 0;
      if (v15)
      {
LABEL_8:
        v16 = [*(*(*(a1 + 48) + 8) + 40) __ck_rangeOfRichLinkItem:v8];
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (IMOSLoggingEnabled())
          {
            v18 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = [*(a1 + 32) count];
              v24 = 134217984;
              v25 = v19;
              _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "String inconsistency! While traversing a string with {%ld} targeted rich links, the text attachment was not found in the output string.", &v24, 0xCu);
            }
          }
        }

        else
        {
          v20 = v16;
          v21 = v17;
          [*(*(*(a1 + 48) + 8) + 40) removeAttribute:*MEMORY[0x1E69DB5F8] range:{v16, v17 + v14}];
          [*(*(*(a1 + 48) + 8) + 40) replaceCharactersInRange:v20 withString:{v21 + v14, v15}];
          v22 = [(__CFString *)v15 length];
          [*(*(*(a1 + 48) + 8) + 40) addAttribute:*MEMORY[0x1E69A70A8] value:MEMORY[0x1E695E110] range:{v20, v22}];
          v23 = *(a1 + 64);
          if (v23)
          {
            *v23 = 1;
          }
        }
      }
    }

    else
    {
      if (!v9)
      {
        v10 = a3 + a4;
        v11 = v10 + 1 <= [*(a1 + 40) length];
        v12 = [*(a1 + 40) string];
        v13 = [MEMORY[0x1E696AB08] newlineCharacterSet];
        v14 = [v12 rangeOfCharacterFromSet:v13 options:12 range:{v10, v11}] != 0x7FFFFFFFFFFFFFFFLL;

        v15 = &stru_1F04268F8;
        goto LABEL_8;
      }

      v15 = 0;
    }

    goto LABEL_17;
  }

LABEL_18:
}

void __87__NSAttributedString_RichLinks__ck_attributedStringByPostProcessingURLTextForRichLinks__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = [CKEmbeddedRichLinkConfiguration richLinkConfigurationWithURL:a2];
    [*(a1 + 32) addAttribute:@"EmbeddedRichLinkConfiguration" value:v7 range:{a3, a4}];
  }
}

uint64_t __87__NSAttributedString_RichLinks__ck_attributedStringByPostProcessingURLTextForRichLinks__block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return [*(result + 32) replaceCharactersInRange:a3 withString:{a4, *MEMORY[0x1E69A5F00]}];
  }

  return result;
}

void __70__NSAttributedString_RichLinks__ck_linkPreviewTextAttachmentsInRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

uint64_t __58__NSAttributedString_RichLinks____ck_rangeOfRichLinkItem___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    if (*(result + 32) == a2)
    {
      v5 = *(*(result + 40) + 8);
      *(v5 + 32) = a3;
      *(v5 + 40) = a4;
      *a5 = 1;
    }
  }

  return result;
}

void __99__NSAttributedString_MentionsHelper__ck_textKit1_enumerateAllAutomaticConfirmedMentionsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

void __99__NSAttributedString_MentionsHelper__ck_textKit2_enumerateAllAutomaticConfirmedMentionsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

void __109__NSAttributedString_CKMessageEntryRichTextViewHelper__ck_enumerateAllMentionAnimationIdentifiersUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v12 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v12;
    if (isKindOfClass)
    {
      v9 = v12;
      if ([v9 length])
      {
        v10 = *(a1 + 32);
        v11 = [v9 copy];
        (*(v10 + 16))(v10, v11, a3, a4);
      }

      v7 = v12;
    }
  }
}

void __86__NSAttributedString_CompositionSanitizing__ck_defaultAllowedAttributesForComposition__block_invoke()
{
  v10[14] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E69DB5F0];
  v10[0] = *MEMORY[0x1E69DB5F8];
  v10[1] = v1;
  v10[2] = *MEMORY[0x1E69A6880];
  v10[3] = @"com.apple.MobileSMS.PluginPayload";
  v2 = *MEMORY[0x1E69A7CF8];
  v10[4] = @"com.apple.MobileSMS.appendedURL";
  v10[5] = v2;
  v3 = *MEMORY[0x1E69A7D00];
  v10[6] = *MEMORY[0x1E69A7CF0];
  v10[7] = v3;
  v4 = *MEMORY[0x1E69A7D08];
  v10[8] = *MEMORY[0x1E69A7D18];
  v10[9] = v4;
  v5 = *MEMORY[0x1E69DB6B8];
  v10[10] = *MEMORY[0x1E69DB758];
  v10[11] = v5;
  v6 = *MEMORY[0x1E69A70F8];
  v10[12] = *MEMORY[0x1E69DB648];
  v10[13] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:14];
  v8 = [v0 setWithArray:v7];
  v9 = ck_defaultAllowedAttributesForComposition_sAttributes;
  ck_defaultAllowedAttributesForComposition_sAttributes = v8;
}

@end