@interface CKTextMessagePartChatItem
- (BOOL)_textContainsIMTextEffect;
- (BOOL)_translationSecondaryTextContainsIMTextEffect;
- (BOOL)allowsMentions;
- (BOOL)containsExcessiveLineHeightCharacters;
- (BOOL)containsHyperlink;
- (BOOL)isRecentForTextEffectCoordinationWithinTimeInterval:(double)interval;
- (BOOL)isShowingEditHistory;
- (BOOL)mentionsMe:(id)me;
- (BOOL)showMoneyResults;
- (BOOL)showTranslationAlternateText;
- (Class)balloonViewClass;
- (Class)impactBalloonViewClass;
- (NSArray)emojiImageMediaObjectsInMessagePartText;
- (NSAttributedString)fallbackCorruptText;
- (NSAttributedString)subject;
- (NSAttributedString)text;
- (NSAttributedString)translationSecondaryText;
- (NSOrderedSet)transferGUIDsInMessagePartText;
- (UIEdgeInsets)stickerReactionInsets;
- (double)ageForTextEffectCoordination;
- (id)_attributedTextWithTextColor:(id)color;
- (id)_fallbackCorruptMessageTextWithTextColor:(id)color;
- (id)_time;
- (id)bodyTextFont;
- (id)bodyTranslationSecondaryTextFont;
- (id)compositionWithContext:(id)context;
- (id)dragItemProvider;
- (id)loadAlternateTranscriptText;
- (id)loadTranscriptText;
- (id)meMentionsTextColor;
- (id)mediaObjectForTransferGUID:(id)d;
- (id)mediaObjectsInMessagePartText;
- (id)rtfDocumentItemsWithFormatString:(id)string selectedTextRange:(_NSRange)range;
- (id)sizeCacheUniquenessValue;
- (id)time;
- (int64_t)bigEmojiStyle;
- (void)unloadSize;
@end

@implementation CKTextMessagePartChatItem

- (id)loadTranscriptText
{
  bigEmojiStyle = [(CKTextMessagePartChatItem *)self bigEmojiStyle];
  if ((bigEmojiStyle - 1) < 3)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    theme = [v4 theme];
    transcriptBigEmojiColor = [theme transcriptBigEmojiColor];
LABEL_5:
    v7 = transcriptBigEmojiColor;

    goto LABEL_6;
  }

  if (!bigEmojiStyle)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    theme = [v4 theme];
    transcriptBigEmojiColor = [theme balloonTextColorInPrintingPathForColorType:{-[CKMessagePartChatItem color](self, "color")}];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:
  if ([(CKMessagePartChatItem *)self isCorrupt])
  {
    [(CKTextMessagePartChatItem *)self _fallbackCorruptMessageTextWithTextColor:v7];
  }

  else
  {
    [(CKTextMessagePartChatItem *)self _attributedTextWithTextColor:v7];
  }
  v8 = ;

  return v8;
}

- (id)loadAlternateTranscriptText
{
  v47[4] = *MEMORY[0x1E69E9840];
  translationSecondaryText = [(CKTextMessagePartChatItem *)self translationSecondaryText];
  v4 = [translationSecondaryText mutableCopy];

  bodyTranslationSecondaryTextFont = [(CKTextMessagePartChatItem *)self bodyTranslationSecondaryTextFont];
  if (v4)
  {
    v6 = [v4 length];
    v7 = *MEMORY[0x1E69DB648];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __56__CKTextMessagePartChatItem_loadAlternateTranscriptText__block_invoke;
    v41[3] = &unk_1E72F11F0;
    v8 = v4;
    v42 = v8;
    v43 = bodyTranslationSecondaryTextFont;
    selfCopy = self;
    [v8 enumerateAttribute:v7 inRange:0 options:v6 usingBlock:{0, v41}];
    translationSecondaryText2 = [(CKTextMessagePartChatItem *)self translationSecondaryText];
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

    if (isExpressiveTextEnabled)
    {
      v28 = bodyTranslationSecondaryTextFont;
      v29 = v4;
      v12 = *MEMORY[0x1E69A7CF8];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __56__CKTextMessagePartChatItem_loadAlternateTranscriptText__block_invoke_2;
      v39[3] = &unk_1E72EF890;
      v31 = v8;
      v40 = v31;
      [translationSecondaryText2 enumerateAttribute:v12 inRange:0 options:v6 usingBlock:{0, v39}];
      v13 = *MEMORY[0x1E69A7CF0];
      v46[0] = *MEMORY[0x1E69A7D00];
      v46[1] = v13;
      v47[0] = &unk_1F04E7BD8;
      v47[1] = &unk_1F04E7BF0;
      v14 = *MEMORY[0x1E69A7D08];
      v46[2] = *MEMORY[0x1E69A7D18];
      v46[3] = v14;
      v47[2] = &unk_1F04E7C08;
      v47[3] = &unk_1F04E7C20;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:4];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = [v15 allKeys];
      v16 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v36;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            v20 = translationSecondaryText2;
            v21 = v6;
            if (*v36 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v35 + 1) + 8 * i);
            v23 = [v15 objectForKeyedSubscript:{v22, v28, v29}];
            integerValue = [v23 integerValue];

            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = __56__CKTextMessagePartChatItem_loadAlternateTranscriptText__block_invoke_226;
            v32[3] = &unk_1E72F1218;
            v33 = v31;
            v34 = integerValue;
            translationSecondaryText2 = v20;
            v25 = v22;
            v6 = v21;
            [v20 enumerateAttribute:v25 inRange:0 options:v21 usingBlock:{0, v32}];
          }

          v17 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
        }

        while (v17);
      }

      bodyTranslationSecondaryTextFont = v28;
      v4 = v29;
    }
  }

  v26 = [v4 copy];

  return v26;
}

void __56__CKTextMessagePartChatItem_loadAlternateTranscriptText__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    [*(a1 + 32) addAttribute:*MEMORY[0x1E69DB648] value:*(a1 + 40) range:{a3, a4}];
    v8 = *(a1 + 32);
    v9 = *MEMORY[0x1E69DB650];
    v12 = +[CKUIBehavior sharedBehaviors];
    v10 = [v12 theme];
    v11 = [v10 balloonTranslationSecondaryTextColorInPrintingPathForColorType:{objc_msgSend(*(a1 + 48), "color")}];
    [v8 addAttribute:v9 value:v11 range:{a3, a4}];
  }
}

void __56__CKTextMessagePartChatItem_loadAlternateTranscriptText__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) ck_applyTextEffectType:objc_msgSend(v7 range:{"integerValue"), a3, a4}];
    }
  }
}

void __56__CKTextMessagePartChatItem_loadAlternateTranscriptText__block_invoke_226(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v10 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v10;
    if (isKindOfClass)
    {
      v9 = [v10 unsignedIntegerValue];
      v7 = v10;
      if (v9 == 1)
      {
        [*(a1 + 32) ck_addTextStyle:*(a1 + 40) options:3 range:{a3, a4}];
        v7 = v10;
      }
    }
  }
}

- (id)sizeCacheUniquenessValue
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  numberOfPreviousEdits = [iMChatItem numberOfPreviousEdits];
  string = [MEMORY[0x1E696AD60] string];
  if (numberOfPreviousEdits >= 1)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", numberOfPreviousEdits];
    [string appendString:v6];
  }

  if ([iMChatItem showTranslationAlternateText])
  {
    v12.receiver = self;
    v12.super_class = CKTextMessagePartChatItem;
    sizeCacheUniquenessValue = [(CKChatItem *)&v12 sizeCacheUniquenessValue];
    [string appendString:sizeCacheUniquenessValue];

    [string appendString:@"show-translation"];
  }

  if ([string length])
  {
    sizeCacheUniquenessValue2 = [string copy];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CKTextMessagePartChatItem;
    sizeCacheUniquenessValue2 = [(CKChatItem *)&v11 sizeCacheUniquenessValue];
  }

  v9 = sizeCacheUniquenessValue2;

  return v9;
}

- (void)unloadSize
{
  v3.receiver = self;
  v3.super_class = CKTextMessagePartChatItem;
  [(CKChatItem *)&v3 unloadSize];
  if (([(CKTextMessagePartChatItem *)self bigEmojiStyle]- 1) <= 2)
  {
    [(CKBalloonChatItem *)self setBalloonSizeAtMaxWidth:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  }
}

- (BOOL)showTranslationAlternateText
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  showTranslationAlternateText = [iMChatItem showTranslationAlternateText];

  return showTranslationAlternateText;
}

- (BOOL)showMoneyResults
{
  v3 = MEMORY[0x1E69A7FD0];
  sender = [(CKMessagePartChatItem *)self sender];
  v5 = [sender cnContactWithKeys:MEMORY[0x1E695E0F0]];
  v6 = [v3 isCNContactAKnownContact:v5];

  if (CKShouldShowSURF())
  {
    message = [(CKMessagePartChatItem *)self message];
    __ck_service = [message __ck_service];
    v9 = ([__ck_service __ck_isSMS] ^ 1) & v6;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)_fallbackCorruptMessageTextWithTextColor:(id)color
{
  colorCopy = color;
  v5 = objc_alloc(MEMORY[0x1E696AD40]);
  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"CORRUPT_MESSAGE_FALLBACK_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];
  v8 = [v5 initWithString:v7 attributes:0];

  v9 = [v8 length];
  v10 = *MEMORY[0x1E69DB648];
  bodyTextFont = [(CKTextMessagePartChatItem *)self bodyTextFont];
  [v8 addAttribute:v10 value:bodyTextFont range:{0, v9}];

  if (colorCopy)
  {
    [v8 addAttribute:*MEMORY[0x1E69DB650] value:colorCopy range:{0, v9}];
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "_fallbackCorruptMessageTextWithTextColor: textColor is nil.", v14, 2u);
    }
  }

  return v8;
}

- (id)_attributedTextWithTextColor:(id)color
{
  v181[6] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  subject = [(CKTextMessagePartChatItem *)self subject];
  string = [subject string];
  v5 = [string length];
  LODWORD(v6) = v5 != 0;
  if (!v5)
  {
    v124 = 0;
    goto LABEL_5;
  }

  v7 = objc_alloc(MEMORY[0x1E696AD40]);
  string2 = [subject string];
  v6 = [v7 initWithString:string2];

  v124 = v6;
  if (v6)
  {
    string = +[CKUIBehavior sharedBehaviors];
    balloonSubjectFont = [string balloonSubjectFont];
    [v6 addAttribute:*MEMORY[0x1E69DB648] value:balloonSubjectFont range:{0, objc_msgSend(v6, "length")}];

    LODWORD(v6) = 1;
LABEL_5:

    goto LABEL_7;
  }

  v124 = 0;
LABEL_7:
  v167 = 0;
  v168 = &v167;
  v169 = 0x2020000000;
  v170 = 0;
  containsHyperlink = [(CKTextMessagePartChatItem *)self containsHyperlink];
  v163 = 0;
  v164 = &v163;
  v165 = 0x2020000000;
  v166 = 0;
  text = [(CKTextMessagePartChatItem *)self text];
  string3 = [text string];
  v121 = v6;
  if ([string3 length])
  {
    v13 = objc_alloc(MEMORY[0x1E696AD40]);
    string4 = [text string];
    v15 = [v13 initWithString:string4];
  }

  else
  {
    v15 = 0;
  }

  v122 = +[CKUIBehavior sharedBehaviors];
  bigEmojiStyle = [(CKTextMessagePartChatItem *)self bigEmojiStyle];
  multipleBigEmojiFont = 0;
  if (bigEmojiStyle > 1)
  {
    if (bigEmojiStyle == 2)
    {
      multipleBigEmojiFont = [v122 multipleBigEmojiFont];
    }

    else if (bigEmojiStyle == 3)
    {
      multipleBigEmojiFont = [v122 singleBigAssetFont];
    }
  }

  else if (bigEmojiStyle)
  {
    if (bigEmojiStyle == 1)
    {
      multipleBigEmojiFont = [v122 singleBigEmojiFont];
    }
  }

  else
  {
    multipleBigEmojiFont = [(CKTextMessagePartChatItem *)self bodyTextFont];
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    v19 = [v15 length];
    [v15 addAttribute:*MEMORY[0x1E69DB648] value:multipleBigEmojiFont range:{0, v19}];
  }

  if (v15)
  {
    v20 = [v15 length];
    if (!containsHyperlink)
    {
      goto LABEL_52;
    }

    v158[0] = MEMORY[0x1E69E9820];
    v158[1] = 3221225472;
    v158[2] = __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke;
    v158[3] = &unk_1E72F1240;
    v161 = &v167;
    v21 = v15;
    v159 = v21;
    selfCopy = self;
    v162 = &v163;
    [text enumerateAttribute:@"DDResultAttributeName" inRange:0 options:v20 usingBlock:{0, v158}];
    *v152 = 0;
    v153 = v152;
    v154 = 0x3032000000;
    v155 = __Block_byref_object_copy__27;
    v156 = __Block_byref_object_dispose__27;
    array = [MEMORY[0x1E695DF70] array];
    v22 = *MEMORY[0x1E69A6000];
    v151[0] = MEMORY[0x1E69E9820];
    v151[1] = 3221225472;
    v151[2] = __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_253;
    v151[3] = &unk_1E72F1268;
    v151[4] = &v167;
    v151[5] = v152;
    [text enumerateAttribute:v22 inRange:0 options:v20 usingBlock:{0, v151}];
    if (*(v168 + 24) != 1)
    {
LABEL_51:
      v53 = *MEMORY[0x1E69A5FB0];
      v149[0] = MEMORY[0x1E69E9820];
      v149[1] = 3221225472;
      v149[2] = __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_257;
      v149[3] = &unk_1E72EF890;
      v150 = v21;
      [text enumerateAttribute:v53 inRange:0 options:v20 usingBlock:{0, v149}];

      _Block_object_dispose(v152, 8);
LABEL_52:
      mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
      mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
      isFeatureEnabled = [mEMORY[0x1E69A7FC8] isFeatureEnabled];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_2;
      aBlock[3] = &unk_1E72EBF70;
      v57 = mEMORY[0x1E69A5B80];
      v148 = v57;
      v58 = _Block_copy(aBlock);
      v143[0] = MEMORY[0x1E69E9820];
      v143[1] = 3221225472;
      v143[2] = __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_3;
      v143[3] = &unk_1E72F1290;
      v143[4] = self;
      v146 = isFeatureEnabled;
      v59 = v15;
      v144 = v59;
      v145 = multipleBigEmojiFont;
      [text __im_enumerateAdaptiveImageGlyphFileTransfersUsingFileTransferProvider:v58 block:v143];
      if ([(CKTextMessagePartChatItem *)self allowsMentions])
      {
        v60 = *MEMORY[0x1E69A70F8];
        v141[0] = MEMORY[0x1E69E9820];
        v141[1] = 3221225472;
        v141[2] = __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_270;
        v141[3] = &unk_1E72EF890;
        v142 = v59;
        [text enumerateAttribute:v60 inRange:0 options:v20 usingBlock:{0, v141}];
      }

      mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isExpressiveTextEnabled2 = [mEMORY[0x1E69A8070]2 isExpressiveTextEnabled];

      if (isExpressiveTextEnabled2)
      {
        v63 = *MEMORY[0x1E69A7CF8];
        v139[0] = MEMORY[0x1E69E9820];
        v139[1] = 3221225472;
        v139[2] = __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_2_271;
        v139[3] = &unk_1E72EF890;
        v64 = v59;
        v140 = v64;
        [text enumerateAttribute:v63 inRange:0 options:v20 usingBlock:{0, v139}];
        v65 = *MEMORY[0x1E69A7D08];
        v137[0] = MEMORY[0x1E69E9820];
        v137[1] = 3221225472;
        v137[2] = __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_3_272;
        v137[3] = &unk_1E72EF890;
        v66 = v64;
        v138 = v66;
        [text enumerateAttribute:v65 inRange:0 options:v20 usingBlock:{0, v137}];
        v67 = *MEMORY[0x1E69A7D18];
        v135[0] = MEMORY[0x1E69E9820];
        v135[1] = 3221225472;
        v135[2] = __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_4;
        v135[3] = &unk_1E72EF890;
        v68 = v66;
        v136 = v68;
        [text enumerateAttribute:v67 inRange:0 options:v20 usingBlock:{0, v135}];
        v69 = *MEMORY[0x1E69A7CF0];
        v133[0] = MEMORY[0x1E69E9820];
        v133[1] = 3221225472;
        v133[2] = __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_5;
        v133[3] = &unk_1E72EF890;
        v70 = v68;
        v134 = v70;
        [text enumerateAttribute:v69 inRange:0 options:v20 usingBlock:{0, v133}];
        v71 = *MEMORY[0x1E69A7D00];
        v131[0] = MEMORY[0x1E69E9820];
        v131[1] = 3221225472;
        v131[2] = __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_6;
        v131[3] = &unk_1E72EF890;
        v132 = v70;
        [text enumerateAttribute:v71 inRange:0 options:v20 usingBlock:{0, v131}];

        v72 = v140;
        goto LABEL_67;
      }

      v72 = +[CKUIBehavior sharedBehaviors];
      bigEmojiStyle2 = [(CKTextMessagePartChatItem *)self bigEmojiStyle];
      v74 = 0;
      if (bigEmojiStyle2 > 1)
      {
        if (bigEmojiStyle2 == 2)
        {
          multipleBigEmojiFont2 = [v72 multipleBigEmojiFont];
          goto LABEL_65;
        }

        if (bigEmojiStyle2 == 3)
        {
          multipleBigEmojiFont2 = [v72 singleBigAssetFont];
          goto LABEL_65;
        }
      }

      else
      {
        if (!bigEmojiStyle2)
        {
          multipleBigEmojiFont2 = [(CKTextMessagePartChatItem *)self bodyTextFont];
          goto LABEL_65;
        }

        if (bigEmojiStyle2 == 1)
        {
          multipleBigEmojiFont2 = [v72 singleBigEmojiFont];
LABEL_65:
          v74 = multipleBigEmojiFont2;
        }
      }

      [v59 addAttribute:*MEMORY[0x1E69DB648] value:v74 range:{0, v20}];

LABEL_67:
      mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      stewieEnabled = [mEMORY[0x1E69A8070]3 stewieEnabled];

      if (stewieEnabled)
      {
        message = [(CKMessagePartChatItem *)self message];
        subject2 = [message subject];
        isStewie = [subject2 isStewie];

        if (isStewie)
        {
          v81 = *MEMORY[0x1E69A68A8];
          v129[0] = MEMORY[0x1E69E9820];
          v129[1] = 3221225472;
          v129[2] = __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_7;
          v129[3] = &unk_1E72EF890;
          v130 = v59;
          [text enumerateAttribute:v81 inRange:0 options:v20 usingBlock:{0, v129}];
        }
      }

      goto LABEL_71;
    }

    message2 = [(CKMessagePartChatItem *)self message];
    sender = [message2 sender];
    v119 = [sender ID];

    _time = [(CKTextMessagePartChatItem *)self _time];
    guid = [message2 guid];
    v26 = guid;
    v118 = _time;
    if (_time && guid && *(v153 + 5))
    {
      v27 = MEMORY[0x1E695DFF8];
      v117 = guid;
      v28 = [MEMORY[0x1E69A7FE8] referenceURLForMessageGUID:?];
      v116 = [v27 URLWithString:v28];

      v115 = [MEMORY[0x1E69A7FE8] metadataDictionaryForMessageID:v117 senderID:v119 date:v118];
      v176 = 0;
      v177 = &v176;
      v178 = 0x2020000000;
      v29 = getkDataDetectorsReferenceDateKeySymbolLoc_ptr;
      v179 = getkDataDetectorsReferenceDateKeySymbolLoc_ptr;
      if (!getkDataDetectorsReferenceDateKeySymbolLoc_ptr)
      {
        *buf = MEMORY[0x1E69E9820];
        v172 = 3221225472;
        v173 = __getkDataDetectorsReferenceDateKeySymbolLoc_block_invoke;
        v174 = &unk_1E72EB968;
        v175 = &v176;
        v30 = DataDetectorsUILibrary();
        v31 = dlsym(v30, "kDataDetectorsReferenceDateKey");
        *(v175[1] + 24) = v31;
        getkDataDetectorsReferenceDateKeySymbolLoc_ptr = *(v175[1] + 24);
        v29 = v177[3];
      }

      _Block_object_dispose(&v176, 8);
      if (v29)
      {
        v113 = *v29;
        v181[0] = v118;
        v176 = 0;
        v177 = &v176;
        v178 = 0x2020000000;
        v32 = getkDataDetectorsSpecialURLKeySymbolLoc_ptr;
        v179 = getkDataDetectorsSpecialURLKeySymbolLoc_ptr;
        v180[0] = v113;
        if (!getkDataDetectorsSpecialURLKeySymbolLoc_ptr)
        {
          *buf = MEMORY[0x1E69E9820];
          v172 = 3221225472;
          v173 = __getkDataDetectorsSpecialURLKeySymbolLoc_block_invoke;
          v174 = &unk_1E72EB968;
          v175 = &v176;
          v33 = DataDetectorsUILibrary();
          v34 = dlsym(v33, "kDataDetectorsSpecialURLKey");
          *(v175[1] + 24) = v34;
          getkDataDetectorsSpecialURLKeySymbolLoc_ptr = *(v175[1] + 24);
          v32 = v177[3];
        }

        _Block_object_dispose(&v176, 8);
        if (v32)
        {
          v112 = *v32;
          v180[1] = v112;
          v181[1] = v116;
          v176 = 0;
          v177 = &v176;
          v178 = 0x2020000000;
          v35 = getkDataDetectorsCoreSpotlightUniqueIdentifierSymbolLoc_ptr;
          v179 = getkDataDetectorsCoreSpotlightUniqueIdentifierSymbolLoc_ptr;
          if (!getkDataDetectorsCoreSpotlightUniqueIdentifierSymbolLoc_ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            v172 = 3221225472;
            v173 = __getkDataDetectorsCoreSpotlightUniqueIdentifierSymbolLoc_block_invoke;
            v174 = &unk_1E72EB968;
            v175 = &v176;
            v36 = DataDetectorsUILibrary();
            v37 = dlsym(v36, "kDataDetectorsCoreSpotlightUniqueIdentifier");
            *(v175[1] + 24) = v37;
            getkDataDetectorsCoreSpotlightUniqueIdentifierSymbolLoc_ptr = *(v175[1] + 24);
            v35 = v177[3];
          }

          _Block_object_dispose(&v176, 8);
          if (v35)
          {
            v111 = *v35;
            v180[2] = v111;
            v181[2] = v117;
            v176 = 0;
            v177 = &v176;
            v178 = 0x2020000000;
            v38 = getkDataDetectorsIncludeMoneySymbolLoc_ptr;
            v179 = getkDataDetectorsIncludeMoneySymbolLoc_ptr;
            if (!getkDataDetectorsIncludeMoneySymbolLoc_ptr)
            {
              *buf = MEMORY[0x1E69E9820];
              v172 = 3221225472;
              v173 = __getkDataDetectorsIncludeMoneySymbolLoc_block_invoke;
              v174 = &unk_1E72EB968;
              v175 = &v176;
              v39 = DataDetectorsUILibrary();
              v40 = dlsym(v39, "kDataDetectorsIncludeMoney");
              *(v175[1] + 24) = v40;
              getkDataDetectorsIncludeMoneySymbolLoc_ptr = *(v175[1] + 24);
              v38 = v177[3];
            }

            _Block_object_dispose(&v176, 8);
            if (v38)
            {
              v41 = *v38;
              v180[3] = v41;
              v114 = [MEMORY[0x1E696AD98] numberWithBool:*(v164 + 24)];
              v181[3] = v114;
              v176 = 0;
              v177 = &v176;
              v178 = 0x2020000000;
              v42 = getkDataDetectorsCustomActionRangesKeySymbolLoc_ptr;
              v179 = getkDataDetectorsCustomActionRangesKeySymbolLoc_ptr;
              if (!getkDataDetectorsCustomActionRangesKeySymbolLoc_ptr)
              {
                *buf = MEMORY[0x1E69E9820];
                v172 = 3221225472;
                v173 = __getkDataDetectorsCustomActionRangesKeySymbolLoc_block_invoke;
                v174 = &unk_1E72EB968;
                v175 = &v176;
                v43 = DataDetectorsUILibrary();
                v44 = dlsym(v43, "kDataDetectorsCustomActionRangesKey");
                *(v175[1] + 24) = v44;
                getkDataDetectorsCustomActionRangesKeySymbolLoc_ptr = *(v175[1] + 24);
                v42 = v177[3];
              }

              _Block_object_dispose(&v176, 8);
              if (v42)
              {
                v45 = *v42;
                v180[4] = v45;
                v46 = [*(v153 + 5) copy];
                v110 = v41;
                v181[4] = v46;
                v176 = 0;
                v177 = &v176;
                v178 = 0x2020000000;
                v47 = getkDataDetectorsCoreRecentsMetadataDictionaryKeySymbolLoc_ptr;
                v179 = getkDataDetectorsCoreRecentsMetadataDictionaryKeySymbolLoc_ptr;
                if (!getkDataDetectorsCoreRecentsMetadataDictionaryKeySymbolLoc_ptr)
                {
                  *buf = MEMORY[0x1E69E9820];
                  v172 = 3221225472;
                  v173 = __getkDataDetectorsCoreRecentsMetadataDictionaryKeySymbolLoc_block_invoke;
                  v174 = &unk_1E72EB968;
                  v175 = &v176;
                  v48 = DataDetectorsUILibrary();
                  v49 = dlsym(v48, "kDataDetectorsCoreRecentsMetadataDictionaryKey");
                  *(v175[1] + 24) = v49;
                  getkDataDetectorsCoreRecentsMetadataDictionaryKeySymbolLoc_ptr = *(v175[1] + 24);
                  v47 = v177[3];
                }

                _Block_object_dispose(&v176, 8);
                if (v47)
                {
                  v50 = *v47;
                  v180[5] = v50;
                  v181[5] = v115;
                  v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v181 forKeys:v180 count:6];

                  [v21 dd_makeLinksForResultsInAttributesOfType:-1 context:v51];
                  v26 = v117;
LABEL_50:

                  goto LABEL_51;
                }

                currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                v109 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDataDetectorsCoreRecentsMetadataDictionaryKey(void)"];
                [currentHandler handleFailureInFunction:v109 file:@"CKTextMessagePartChatItem.m" lineNumber:75 description:{@"%s", dlerror()}];
              }

              else
              {
                currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
                v107 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDataDetectorsCustomActionRangesKey(void)"];
                [currentHandler2 handleFailureInFunction:v107 file:@"CKTextMessagePartChatItem.m" lineNumber:73 description:{@"%s", dlerror()}];
              }
            }

            else
            {
              currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
              v105 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDataDetectorsIncludeMoney(void)"];
              [currentHandler3 handleFailureInFunction:v105 file:@"CKTextMessagePartChatItem.m" lineNumber:71 description:{@"%s", dlerror()}];
            }
          }

          else
          {
            currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
            v103 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDataDetectorsCoreSpotlightUniqueIdentifier(void)"];
            [currentHandler4 handleFailureInFunction:v103 file:@"CKTextMessagePartChatItem.m" lineNumber:69 description:{@"%s", dlerror()}];
          }
        }

        else
        {
          currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
          v101 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDataDetectorsSpecialURLKey(void)"];
          [currentHandler5 handleFailureInFunction:v101 file:@"CKTextMessagePartChatItem.m" lineNumber:67 description:{@"%s", dlerror()}];
        }
      }

      else
      {
        currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
        v99 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDataDetectorsReferenceDateKey(void)"];
        [currentHandler6 handleFailureInFunction:v99 file:@"CKTextMessagePartChatItem.m" lineNumber:65 description:{@"%s", dlerror()}];
      }

      __break(1u);
    }

    if (IMOSLoggingEnabled())
    {
      v52 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v52, OS_LOG_TYPE_INFO, "Transcript cal data detectors failed to get time off IMMessage. Please file a bug on Messages.", buf, 2u);
      }
    }

    goto LABEL_50;
  }

LABEL_71:
  v82 = +[CKUIBehavior sharedBehaviors];
  hyphenatesTextContent = [v82 hyphenatesTextContent];

  if (hyphenatesTextContent)
  {
    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v85 = [defaultParagraphStyle mutableCopy];

    LODWORD(v86) = 1.0;
    [v85 setHyphenationFactor:v86];
    v87 = [v15 length];
    [v15 addAttribute:*MEMORY[0x1E69DB688] value:v85 range:{0, v87}];
  }

  v88 = v121 ^ 1;
  if (!v15)
  {
    v88 = 1;
  }

  if (v88)
  {
    v92 = v124;
    if (!v121)
    {
      v92 = v15;
    }

    v89 = v92;
  }

  else
  {
    v89 = v124;
    [v89 replaceCharactersInRange:objc_msgSend(v89 withString:{"length"), 0, @"\n"}];
    if (*(v168 + 24) == 1)
    {
      v90 = [v89 dd_attributedStringByAppendingAttributedString:v15];
      v91 = [v90 mutableCopy];

      v89 = v91;
    }

    else
    {
      [v89 appendAttributedString:v15];
    }
  }

  if (colorCopy)
  {
    v93 = [v89 length];
    [v89 addAttribute:*MEMORY[0x1E69DB650] value:colorCopy range:{0, v93}];
  }

  else if (IMOSLoggingEnabled())
  {
    v94 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
    {
      *v152 = 0;
      _os_log_impl(&dword_19020E000, v94, OS_LOG_TYPE_INFO, "_attributedTextWithTextColor: textColor is nil.", v152, 2u);
    }
  }

  if ([(CKTextMessagePartChatItem *)self allowsMentions])
  {
    v95 = [v89 length];
    v96 = *MEMORY[0x1E69A70F8];
    v127[0] = MEMORY[0x1E69E9820];
    v127[1] = 3221225472;
    v127[2] = __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_277;
    v127[3] = &unk_1E72F12B8;
    v127[4] = self;
    v128 = v89;
    [v128 enumerateAttribute:v96 inRange:0 options:v95 usingBlock:{0, v127}];
  }

  _Block_object_dispose(&v163, 8);
  _Block_object_dispose(&v167, 8);

  return v89;
}

void __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v12 = v7;
    [*(a1 + 32) addAttribute:@"DDResultAttributeName" value:v7 range:{a3, a4}];
    v8 = objc_opt_respondsToSelector();
    v7 = v12;
    if (v8)
    {
      v9 = [v12 type];
      v10 = [v9 isEqualToString:@"Money"];

      v7 = v12;
      if (v10)
      {
        v11 = [*(a1 + 40) showMoneyResults];
        v7 = v12;
        if (v11)
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }
      }
    }
  }
}

void __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_253(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v2 = *(*(*(a1 + 40) + 8) + 40);
    v3 = [MEMORY[0x1E696B098] valueWithRange:?];
    [v2 addObject:v3];
  }
}

uint64_t __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_257(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return [*(result + 32) addAttribute:*MEMORY[0x1E69DB670] value:a2 range:{a3, a4}];
  }

  return result;
}

void __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [v7 guid];
  v9 = [*(a1 + 32) mediaObjectForTransferGUID:v8];
  if (!v9)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CKMessageEditingView *)v8 adaptiveImageGlyphForTransferGUID:v10];
    }
  }

  v11 = [v9 adaptiveImageGlyph];
  v12 = v11;
  if (*(a1 + 56) != 1)
  {
    if (!v11)
    {
      goto LABEL_12;
    }

LABEL_11:
    [*(a1 + 40) addAttribute:*MEMORY[0x1E69DB5F0] value:v12 range:{a3, a4}];
    goto LABEL_17;
  }

  v13 = [v7 commSafetySensitive];
  if (v12 && v13 != 1)
  {
    goto LABEL_11;
  }

  if (v13 == 1)
  {
LABEL_14:
    v14 = [*(a1 + 40) attributesAtIndex:a3 effectiveRange:0];
    v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\uFFFD" attributes:v14];
    [*(a1 + 40) replaceCharactersInRange:a3 withAttributedString:{a4, v15}];
    v16 = [*(a1 + 48) ck_lastResortFont];
    if (v16)
    {
      [*(a1 + 40) addAttribute:*MEMORY[0x1E69DB648] value:v16 range:{a3, a4}];
    }

    [CKCommSafetyAnalytics recordObscuredViewShownWithContentType:1 subcontentType:1 identifier:v8];

    goto LABEL_17;
  }

LABEL_12:
  if (([MEMORY[0x1E69A8078] genmojiFileTransferShouldDisplayAsPermanentlyFailed:v7] & 1) != 0 || +[CKMediaObject genmojiShouldAppearAsFailedForMediaObject:](CKMediaObject, "genmojiShouldAppearAsFailedForMediaObject:", v9))
  {
    goto LABEL_14;
  }

  v17 = IMLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_3_cold_2(v17);
  }

LABEL_17:
}

uint64_t __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_270(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return [*(result + 32) addAttribute:*MEMORY[0x1E69A70F8] value:a2 range:{a3, a4}];
  }

  return result;
}

void __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_2_271(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) ck_applyTextEffectType:objc_msgSend(v7 range:{"integerValue"), a3, a4}];
    }
  }
}

void __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_3_272(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v10 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v10;
    if (isKindOfClass)
    {
      v9 = [v10 unsignedIntegerValue];
      v7 = v10;
      if (v9 == 1)
      {
        [*(a1 + 32) ck_addTextStyle:8 options:3 range:{a3, a4}];
        v7 = v10;
      }
    }
  }
}

void __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v10 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v10;
    if (isKindOfClass)
    {
      v9 = [v10 unsignedIntegerValue];
      v7 = v10;
      if (v9 == 1)
      {
        [*(a1 + 32) ck_addTextStyle:4 options:3 range:{a3, a4}];
        v7 = v10;
      }
    }
  }
}

void __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v10 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v10;
    if (isKindOfClass)
    {
      v9 = [v10 unsignedIntegerValue];
      v7 = v10;
      if (v9 == 1)
      {
        [*(a1 + 32) ck_addTextStyle:1 options:3 range:{a3, a4}];
        v7 = v10;
      }
    }
  }
}

void __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v10 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v10;
    if (isKindOfClass)
    {
      v9 = [v10 unsignedIntegerValue];
      v7 = v10;
      if (v9 == 1)
      {
        [*(a1 + 32) ck_addTextStyle:2 options:3 range:{a3, a4}];
        v7 = v10;
      }
    }
  }
}

void __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *MEMORY[0x1E69DB648];
    v9 = +[CKUIBehavior sharedBehaviors];
    v8 = [v9 balloonSubjectFont];
    [v6 addAttribute:v7 value:v8 range:{a3, a4}];
  }
}

void __58__CKTextMessagePartChatItem__attributedTextWithTextColor___block_invoke_277(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v14 = v7;
    if (([*(a1 + 32) isFromMe] & 1) == 0 && objc_msgSend(*(a1 + 32), "mentionsMe:", v14))
    {
      v8 = *MEMORY[0x1E69DB650];
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) meMentionsTextColor];
      [v9 addAttribute:v8 value:v10 range:{a3, a4}];
    }

    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [*(a1 + 32) bodyTextFont];
    v13 = [v11 mentionTranscriptFontFromOrignalFont:v12];

    [*(a1 + 40) addAttribute:*MEMORY[0x1E69DB648] value:v13 range:{a3, a4}];
    v7 = v14;
  }
}

- (NSOrderedSet)transferGUIDsInMessagePartText
{
  text = [(CKTextMessagePartChatItem *)self text];
  v3 = text;
  if (text)
  {
    [text __im_transferGUIDsInAttributedString];
  }

  else
  {
    [MEMORY[0x1E695DFB8] orderedSet];
  }
  v4 = ;

  return v4;
}

- (id)mediaObjectForTransferGUID:(id)d
{
  dCopy = d;
  iMChatItem = [(CKChatItem *)self IMChatItem];
  chatContext = [iMChatItem chatContext];
  message = [iMChatItem message];
  v8 = +[CKMediaObjectManager sharedInstance];
  v9 = [v8 mediaObjectWithTransferGUID:dCopy imMessage:message chatContext:chatContext];
  if (v9)
  {
    time = [iMChatItem time];
    if (time)
    {
      [v9 setTime:time];
    }

    v11 = v9;
  }

  else
  {
    time = IMLogHandleForCategory();
    if (os_log_type_enabled(time, OS_LOG_TYPE_ERROR))
    {
      [(CKTextMessagePartChatItem *)dCopy mediaObjectForTransferGUID:time];
    }
  }

  return v9;
}

- (id)mediaObjectsInMessagePartText
{
  v24 = *MEMORY[0x1E69E9840];
  transferGUIDsInMessagePartText = [(CKTextMessagePartChatItem *)self transferGUIDsInMessagePartText];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = transferGUIDsInMessagePartText;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    *&v7 = 138412290;
    v16 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(CKTextMessagePartChatItem *)self mediaObjectForTransferGUID:v11, v16, v17];
        if (v12)
        {
          [v4 addObject:v12];
        }

        else
        {
          v13 = IMLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            v22 = v11;
            _os_log_error_impl(&dword_19020E000, v13, OS_LOG_TYPE_ERROR, "No media object for transfer guid %@ found in message part text", buf, 0xCu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = [v4 copy];

  return v14;
}

- (NSArray)emojiImageMediaObjectsInMessagePartText
{
  v17 = *MEMORY[0x1E69E9840];
  mediaObjectsInMessagePartText = [(CKTextMessagePartChatItem *)self mediaObjectsInMessagePartText];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = mediaObjectsInMessagePartText;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:{v9, v12}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (BOOL)mentionsMe:(id)me
{
  v3 = MEMORY[0x1E69A5A80];
  meCopy = me;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance metionedHandleMatchesMeCard:meCopy];

  return v6;
}

- (BOOL)allowsMentions
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  if ([iMChatItem isBusiness])
  {
    platformSupportsMentioning = 0;
  }

  else
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    platformSupportsMentioning = [v4 platformSupportsMentioning];
  }

  return platformSupportsMentioning;
}

- (id)bodyTextFont
{
  v2 = +[CKUIBehavior sharedBehaviors];
  balloonTextFont = [v2 balloonTextFont];

  return balloonTextFont;
}

- (id)bodyTranslationSecondaryTextFont
{
  v2 = +[CKUIBehavior sharedBehaviors];
  balloonTranslationSecondaryTextFont = [v2 balloonTranslationSecondaryTextFont];

  return balloonTranslationSecondaryTextFont;
}

- (id)meMentionsTextColor
{
  v2 = +[CKUIBehavior sharedBehaviors];
  theme = [v2 theme];
  meMentionTextColor = [theme meMentionTextColor];

  return meMentionTextColor;
}

- (BOOL)isShowingEditHistory
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isShowingEditHistory = [iMChatItem isShowingEditHistory];

  return isShowingEditHistory;
}

- (id)time
{
  if ([(CKTextMessagePartChatItem *)self isShowingEditHistory])
  {
    iMChatItem = [(CKChatItem *)self IMChatItem];
    lastEditDateForMessagePart = [iMChatItem lastEditDateForMessagePart];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CKTextMessagePartChatItem;
    lastEditDateForMessagePart = [(CKMessagePartChatItem *)&v6 time];
  }

  return lastEditDateForMessagePart;
}

- (UIEdgeInsets)stickerReactionInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 balloonMaskAlignmentRectInsetsWithTailShape:0];
  v4 = v3;
  v6 = v5;

  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 stickerReactionTextBalloonAdditionalVerticalPadding];
  v9 = v8;

  v10 = -(v4 + v9);
  v11 = -(v6 + v9);
  v12 = 0.0;
  v13 = 0.0;
  result.right = v13;
  result.bottom = v11;
  result.left = v12;
  result.top = v10;
  return result;
}

- (Class)balloonViewClass
{
  if (![(CKMessagePartChatItem *)self isCorrupt]&& ![(CKTextMessagePartChatItem *)self shouldUseBigEmojiStyleBalloonViewClass])
  {
    [(CKTextMessagePartChatItem *)self containsHyperlink];
  }

  v3 = objc_opt_class();

  return v3;
}

- (Class)impactBalloonViewClass
{
  if ([(CKTextMessagePartChatItem *)self shouldUseBigEmojiStyleBalloonViewClass]|| [(CKTextMessagePartChatItem *)self containsHyperlink])
  {
    v5.receiver = self;
    v5.super_class = CKTextMessagePartChatItem;
    impactBalloonViewClass = [(CKBalloonChatItem *)&v5 impactBalloonViewClass];
  }

  else
  {
    impactBalloonViewClass = objc_opt_class();
  }

  return impactBalloonViewClass;
}

- (id)dragItemProvider
{
  dragItemProvider = self->_dragItemProvider;
  if (!dragItemProvider)
  {
    transcriptText = [(CKChatItem *)self transcriptText];
    v5 = transcriptText;
    if (transcriptText)
    {
      ck_attributedStringByRemovingUnsupportedCompositionAttributes = [transcriptText ck_attributedStringByRemovingUnsupportedCompositionAttributes];
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 0;
      v7 = [ck_attributedStringByRemovingUnsupportedCompositionAttributes length];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __45__CKTextMessagePartChatItem_dragItemProvider__block_invoke;
      v28[3] = &unk_1E72F12E0;
      v28[4] = &v29;
      [ck_attributedStringByRemovingUnsupportedCompositionAttributes enumerateAttributesInRange:0 options:v7 usingBlock:0, v28];
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isAutomaticIncomingTranslationEnabled = [mEMORY[0x1E69A8070] isAutomaticIncomingTranslationEnabled];

      if (isAutomaticIncomingTranslationEnabled)
      {
        translationSecondaryText = [(CKTextMessagePartChatItem *)self translationSecondaryText];
        if (translationSecondaryText && [(CKTextMessagePartChatItem *)self showTranslationAlternateText])
        {
          ck_attributedStringByRemovingUnsupportedCompositionAttributes2 = [translationSecondaryText ck_attributedStringByRemovingUnsupportedCompositionAttributes];
          *buf = 0;
          v25 = buf;
          v26 = 0x2020000000;
          v27 = 0;
          v12 = [ck_attributedStringByRemovingUnsupportedCompositionAttributes2 length];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __45__CKTextMessagePartChatItem_dragItemProvider__block_invoke_2;
          v23[3] = &unk_1E72F12E0;
          v23[4] = buf;
          [ck_attributedStringByRemovingUnsupportedCompositionAttributes2 enumerateAttributesInRange:0 options:v12 usingBlock:{0, v23}];
          if (v25[24] == 1)
          {
            v13 = *(v30 + 24);
          }

          else
          {
            v13 = 0;
          }

          *(v30 + 24) = v13 & 1;
          v14 = [ck_attributedStringByRemovingUnsupportedCompositionAttributes2 mutableCopy];
          v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n\n"];
          [v14 appendAttributedString:v15];

          [v14 appendAttributedString:ck_attributedStringByRemovingUnsupportedCompositionAttributes];
          v16 = [v14 copy];

          _Block_object_dispose(buf, 8);
          ck_attributedStringByRemovingUnsupportedCompositionAttributes = v16;
        }
      }

      if (v30[3])
      {
        v17 = off_1E72E4860;
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Based on the content of the message, we do not need to serialize the copied item as an attributed string. Using plain string serialization only.", buf, 2u);
          }
        }

        v17 = off_1E72E54B0;
      }

      v19 = [objc_alloc(*v17) initWithAttributedString:ck_attributedStringByRemovingUnsupportedCompositionAttributes];
      v20 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v19];
      v21 = self->_dragItemProvider;
      self->_dragItemProvider = v20;

      _Block_object_dispose(&v29, 8);
    }

    else
    {
      ck_attributedStringByRemovingUnsupportedCompositionAttributes = IMLogHandleForCategory();
      if (os_log_type_enabled(ck_attributedStringByRemovingUnsupportedCompositionAttributes, OS_LOG_TYPE_ERROR))
      {
        [(CKTextMessagePartChatItem *)ck_attributedStringByRemovingUnsupportedCompositionAttributes dragItemProvider];
      }
    }

    dragItemProvider = self->_dragItemProvider;
  }

  return dragItemProvider;
}

uint64_t __45__CKTextMessagePartChatItem_dragItemProvider__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  *a5 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __45__CKTextMessagePartChatItem_dragItemProvider__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  *a5 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

- (id)rtfDocumentItemsWithFormatString:(id)string selectedTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v18[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  transcriptText = [(CKChatItem *)self transcriptText];
  ck_attributedStringByRemovingUnsupportedCompositionAttributes = [transcriptText ck_attributedStringByRemovingUnsupportedCompositionAttributes];
  if (length)
  {
    v10 = [transcriptText attributedSubstringFromRange:{location, length}];

    ck_attributedStringByRemovingUnsupportedCompositionAttributes = v10;
  }

  if (stringCopy)
  {
    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    v12 = MEMORY[0x1E696AEC0];
    string = [ck_attributedStringByRemovingUnsupportedCompositionAttributes string];
    v14 = [v12 stringWithValidatedFormat:stringCopy validFormatSpecifiers:@"%@" error:0, string];
    v15 = [v11 initWithString:v14];
  }

  else
  {
    v15 = ck_attributedStringByRemovingUnsupportedCompositionAttributes;
  }

  v18[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

  return v16;
}

- (id)_time
{
  notification = [(CKChatItem *)self notification];

  if (notification)
  {
    notification2 = [(CKChatItem *)self notification];
    date = [notification2 date];
LABEL_3:
    time = date;

    goto LABEL_5;
  }

  message = [(CKMessagePartChatItem *)self message];
  time = [message time];

  if (!time)
  {
    notification2 = [(CKChatItem *)self IMChatItem];
    date = [notification2 time];
    goto LABEL_3;
  }

LABEL_5:

  return time;
}

- (NSAttributedString)text
{
  notification = [(CKChatItem *)self notification];
  request = [notification request];
  content = [request content];
  body = [content body];

  if (body)
  {
    text = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:body];
  }

  else
  {
    iMChatItem = [(CKChatItem *)self IMChatItem];
    text = [iMChatItem text];
  }

  return text;
}

- (NSAttributedString)translationSecondaryText
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  translationSecondaryText = [iMChatItem translationSecondaryText];

  return translationSecondaryText;
}

- (NSAttributedString)fallbackCorruptText
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  fallbackCorruptText = [iMChatItem fallbackCorruptText];

  return fallbackCorruptText;
}

- (NSAttributedString)subject
{
  notification = [(CKChatItem *)self notification];
  if (notification)
  {
    subject = 0;
  }

  else
  {
    iMChatItem = [(CKChatItem *)self IMChatItem];
    subject = [iMChatItem subject];
  }

  return subject;
}

- (BOOL)containsHyperlink
{
  notification = [(CKChatItem *)self notification];

  if (notification)
  {
    return 0;
  }

  iMChatItem = [(CKChatItem *)self IMChatItem];
  if ([iMChatItem shouldDisplayRichLink])
  {
    message = [(CKMessagePartChatItem *)self message];
    if ([message hasDataDetectorResults])
    {
      allowsMentions = 1;
    }

    else
    {
      message2 = [(CKMessagePartChatItem *)self message];
      if ([message2 hasMention])
      {
        allowsMentions = [(CKTextMessagePartChatItem *)self allowsMentions];
      }

      else
      {
        allowsMentions = 0;
      }
    }
  }

  else
  {
    allowsMentions = 0;
  }

  return allowsMentions;
}

- (BOOL)containsExcessiveLineHeightCharacters
{
  text = [(CKTextMessagePartChatItem *)self text];
  string = [text string];

  if ([string length])
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [string rangeOfCharacterFromSet:{objc_msgSend(v4, "systemUIFontExcessiveLineHeightCharacterSet")}] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)bigEmojiStyle
{
  if (!self->_hasCachedBigEmojiStyle)
  {
    subject = [(CKTextMessagePartChatItem *)self subject];
    v4 = [subject length];

    if (v4)
    {
      self->_bigEmojiStyle = 0;
    }

    else
    {
      text = [(CKTextMessagePartChatItem *)self text];
      self->_bigEmojiStyle = [text __ck_bigEmojiStyle];
    }

    self->_hasCachedBigEmojiStyle = 1;
  }

  return self->_bigEmojiStyle;
}

- (BOOL)_textContainsIMTextEffect
{
  text = [(CKTextMessagePartChatItem *)self text];
  ck_containsIMTextEffect = [text ck_containsIMTextEffect];

  return ck_containsIMTextEffect;
}

- (BOOL)_translationSecondaryTextContainsIMTextEffect
{
  translationSecondaryText = [(CKTextMessagePartChatItem *)self translationSecondaryText];
  if ([translationSecondaryText ck_containsIMTextEffect])
  {
    showTranslationAlternateText = [(CKTextMessagePartChatItem *)self showTranslationAlternateText];
  }

  else
  {
    showTranslationAlternateText = 0;
  }

  return showTranslationAlternateText;
}

- (double)ageForTextEffectCoordination
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  [iMChatItem ageForTextEffectCoordination];
  v4 = v3;

  return v4;
}

- (BOOL)isRecentForTextEffectCoordinationWithinTimeInterval:(double)interval
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  v5 = [iMChatItem isRecentForTextEffectCoordinationWithinTimeInterval:interval];

  return v5;
}

- (id)compositionWithContext:(id)context
{
  text = [(CKTextMessagePartChatItem *)self text];
  ck_attributedStringByRemovingUnsupportedCompositionAttributes = [text ck_attributedStringByRemovingUnsupportedCompositionAttributes];

  subject = [(CKTextMessagePartChatItem *)self subject];
  string = [subject string];
  if ([string length])
  {
    v8 = objc_alloc(MEMORY[0x1E696AAB0]);
    subject2 = [(CKTextMessagePartChatItem *)self subject];
    string2 = [subject2 string];
    v11 = [v8 initWithString:string2];
  }

  else
  {
    v11 = 0;
  }

  v12 = [[CKComposition alloc] initWithText:ck_attributedStringByRemovingUnsupportedCompositionAttributes subject:v11];

  return v12;
}

- (void)mediaObjectForTransferGUID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Could not find media object for transfer guid: %@", &v2, 0xCu);
}

@end