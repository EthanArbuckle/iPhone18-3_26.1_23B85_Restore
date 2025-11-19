@interface ICTTTextController
+ (id)preferredFontForICTTTextStyle:(unsigned int)a3;
- (ICTTTextController)init;
- (id)bodyAttributesWithContentSizeCategory:(id)a3;
- (id)captionAttributesWithContentSizeCategory:(id)a3;
- (id)checklistAttributesWithContentSizeCategory:(id)a3;
- (id)copyAttribute:(id)a3 fromAttributes:(id)a4 toAttributes:(id)a5;
- (id)copyNSParagraphStylefromAttributes:(id)a3 toAttributes:(id)a4;
- (id)defaultListAttributesWithContentSizeCategory:(id)a3;
- (id)defaultParagraphStyleWithWritingDirection:(int64_t)a3;
- (id)defaultTypingAttributesForEmptyDocument;
- (id)fixedWidthAttributesWithContentSizeCategory:(id)a3;
- (id)headingAttributesWithContentSizeCategory:(id)a3;
- (id)indentsForIndividualParagraphHeadIndentsInAttributedString:(id)a3;
- (id)modelForStyleAttributes:(id)a3 filterAttributes:(BOOL)a4 pasteboardAttributedString:(id)a5;
- (id)preferredAttributesForICTTTextStyle:(unsigned int)a3;
- (id)referenceAttributesForLocation:(unint64_t)a3 textStorage:(id)a4 currentParagraphStart:(unint64_t)a5;
- (id)removeAttribute:(id)a3 ifInconsistentAtLocation:(unint64_t)a4 inTextStorage:(id)a5 forNewTypingAttributes:(id)a6;
- (id)strippedTypingAttributesAtStartOfParagraph:(id)a3 atTheEndOfDocument:(BOOL)a4 isTyping:(BOOL)a5;
- (id)styleForModelAttributes:(id)a3 contentSizeCategory:(id)a4;
- (id)subheadingAttributesWithContentSizeCategory:(id)a3;
- (id)titleAttributesWithContentSizeCategory:(id)a3;
- (id)typingAttributesForRange:(_NSRange)a3 forSelectionChange:(BOOL)a4 forSettingTextStyle:(BOOL)a5 currentTypingAttributes:(id)a6 inTextStorage:(id)a7;
- (id)writingToolsIgnoredRangesForTextStorage:(id)a3 inEnclosingRange:(_NSRange)a4 note:(id)a5;
- (unint64_t)defaultTabIntervalInAttributedString:(id)a3;
- (void)addBIToStyle:(id)a3;
- (void)guessFontSizeThresholdsForTTStylesInAttributedString:(id)a3;
- (void)prepareIndentInformationInAttributedString:(id)a3;
- (void)resetGuessedFontSizes;
- (void)resetIndentInformation;
- (void)styleFontInAttributedString:(id)a3 inRange:(_NSRange)a4 contentSizeCategory:(id)a5;
- (void)styleFontInTextStorage:(id)a3 inRange:(_NSRange)a4;
- (void)styleText:(id)a3 inExactRange:(_NSRange)a4 fixModelAttributes:(BOOL)a5;
- (void)styleText:(id)a3 inRange:(_NSRange)a4 fixModelAttributes:(BOOL)a5;
@end

@implementation ICTTTextController

- (ICTTTextController)init
{
  v7.receiver = self;
  v7.super_class = ICTTTextController;
  v2 = [(ICTTTextController *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(ICZoomController);
    zoomController = v2->_zoomController;
    v2->_zoomController = &v3->super;

    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2->_showsEditorDebugTooltips = [v5 BOOLForKey:kICShowEditorDebugTooltips];

    [(ICTTTextController *)v2 resetGuessedFontSizes];
  }

  return v2;
}

- (void)resetGuessedFontSizes
{
  [(ICTTTextController *)self setBodyStyleFontSizeThreshold:16.0];

  [(ICTTTextController *)self setHeadingStyleFontSizeThreshold:19.0];
}

- (id)defaultParagraphStyleWithWritingDirection:(int64_t)a3
{
  v4 = [MEMORY[0x1E69DB7D0] ic_mutableDefaultParagraphStyle];
  [v4 setLineHeightMultiple:1.2];
  [v4 setBaseWritingDirection:a3];
  v5 = [v4 copy];

  return v5;
}

- (id)titleAttributesWithContentSizeCategory:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB7D0];
  v5 = a3;
  v6 = [v4 ic_mutableDefaultParagraphStyle];
  v7 = [MEMORY[0x1E69DB878] ic_preferredFontForTitleTextWithContentSizeCategory:v5 isForPrint:-[ICTTTextController isForPrint](self isReducedSize:{"isForPrint"), -[ICTTTextController isForSiri](self, "isForSiri")}];

  [v6 setParagraphSpacing:3.0];
  [v6 setParagraphSpacingBefore:0.0];
  [v6 setLineHeightMultiple:1.0];
  [v6 setLineSpacing:1.0];
  v11[0] = *MEMORY[0x1E69DB688];
  v8 = [v6 copy];
  v11[1] = *MEMORY[0x1E69DB648];
  v12[0] = v8;
  v12[1] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (id)headingAttributesWithContentSizeCategory:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB7D0];
  v5 = a3;
  v6 = [v4 ic_mutableDefaultParagraphStyle];
  [v6 setParagraphSpacing:4.0];
  [v6 setParagraphSpacingBefore:0.0];
  [v6 setLineHeightMultiple:1.0];
  v11[0] = *MEMORY[0x1E69DB688];
  v7 = [v6 copy];
  v12[0] = v7;
  v11[1] = *MEMORY[0x1E69DB648];
  v8 = [MEMORY[0x1E69DB878] ic_preferredFontForHeadingTextWithContentSizeCategory:v5 isForPrint:{-[ICTTTextController isForPrint](self, "isForPrint")}];

  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (id)subheadingAttributesWithContentSizeCategory:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB7D0];
  v5 = a3;
  v6 = [v4 ic_mutableDefaultParagraphStyle];
  [v6 setLineHeightMultiple:1.0];
  [v6 setLineSpacing:4.0];
  v11[0] = *MEMORY[0x1E69DB688];
  v7 = [v6 copy];
  v12[0] = v7;
  v11[1] = *MEMORY[0x1E69DB648];
  v8 = [MEMORY[0x1E69DB878] ic_preferredFontForSubheadingTextWithContentSizeCategory:v5 isForPrint:{-[ICTTTextController isForPrint](self, "isForPrint")}];

  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (id)captionAttributesWithContentSizeCategory:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69DB7D0] ic_mutableDefaultParagraphStyle];
  [v4 setAlignment:1];
  if (v3)
  {
    v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v3];
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10] compatibleWithTraitCollection:v5];
    v7 = [v6 ic_fontWithSingleLineA];
  }

  else
  {
    v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
    v7 = [v5 ic_fontWithSingleLineA];
  }

  v11[0] = *MEMORY[0x1E69DB688];
  v8 = [v4 copy];
  v11[1] = *MEMORY[0x1E69DB648];
  v12[0] = v8;
  v12[1] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (id)bodyAttributesWithContentSizeCategory:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB7D0];
  v5 = a3;
  v6 = [v4 ic_mutableDefaultParagraphStyle];
  [objc_opt_class() bodyParagraphSpacing];
  [v6 setParagraphSpacing:?];
  [objc_opt_class() bodyParagraphSpacingBefore];
  [v6 setParagraphSpacingBefore:?];
  [v6 setLineHeightMultiple:1.0];
  [v6 setLineSpacing:4.0];
  v11[0] = *MEMORY[0x1E69DB688];
  v7 = [v6 copy];
  v12[0] = v7;
  v11[1] = *MEMORY[0x1E69DB648];
  v8 = [MEMORY[0x1E69DB878] ic_preferredFontForBodyTextWithContentSizeCategory:v5 isForPrint:{-[ICTTTextController isForPrint](self, "isForPrint")}];

  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (id)defaultListAttributesWithContentSizeCategory:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB7D0];
  v5 = a3;
  v6 = [v4 ic_mutableDefaultParagraphStyle];
  [v6 setParagraphSpacing:0.0];
  [v6 setParagraphSpacingBefore:0.0];
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v8 = 4.0;
  if (IsTextKit2Enabled)
  {
    v8 = 2.0;
  }

  [v6 setLineSpacing:v8];
  [v6 setLineHeightMultiple:1.0];
  v13[0] = *MEMORY[0x1E69DB688];
  v9 = [v6 copy];
  v14[0] = v9;
  v13[1] = *MEMORY[0x1E69DB648];
  v10 = [MEMORY[0x1E69DB878] ic_preferredFontForBodyTextWithContentSizeCategory:v5 isForPrint:{-[ICTTTextController isForPrint](self, "isForPrint")}];

  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v11;
}

- (id)checklistAttributesWithContentSizeCategory:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB7D0];
  v5 = a3;
  v6 = [v4 ic_mutableDefaultParagraphStyle];
  [v6 setParagraphSpacing:5.0];
  [v6 setParagraphSpacingBefore:5.0];
  [v6 setLineHeightMultiple:1.0];
  v11[0] = *MEMORY[0x1E69DB688];
  v7 = [v6 copy];
  v12[0] = v7;
  v11[1] = *MEMORY[0x1E69DB648];
  v8 = [MEMORY[0x1E69DB878] ic_preferredFontForBodyTextWithContentSizeCategory:v5 isForPrint:{-[ICTTTextController isForPrint](self, "isForPrint")}];

  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (id)fixedWidthAttributesWithContentSizeCategory:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DB7D0];
  v4 = a3;
  v5 = [v3 ic_mutableDefaultParagraphStyle];
  v6 = [MEMORY[0x1E69DB878] ic_preferredFontForFixedWidthTextWithContentSizeCategory:v4];

  [v5 setLineSpacing:2.0];
  v10[0] = *MEMORY[0x1E69DB688];
  v7 = [v5 copy];
  v10[1] = *MEMORY[0x1E69DB648];
  v11[0] = v7;
  v11[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

- (id)typingAttributesForRange:(_NSRange)a3 forSelectionChange:(BOOL)a4 forSettingTextStyle:(BOOL)a5 currentTypingAttributes:(id)a6 inTextStorage:(id)a7
{
  v8 = a5;
  length = a3.length;
  location = a3.location;
  v13 = a6;
  v14 = a7;
  v15 = [v14 length];
  if (length)
  {
    v16.length = v15;
  }

  else
  {
    v16.length = v15 + 1;
  }

  v68.location = location;
  v68.length = length;
  v16.location = 0;
  v17 = NSIntersectionRange(v68, v16);
  v18 = v17.location;
  v19 = v17.length;
  v20 = [v14 logicalRangeForLocation:v17.location];
  v22 = v21;
  if ([v14 convertAttributes])
  {
    [(ICTTTextController *)self modelForStyleAttributes:v13 filterAttributes:0];
    v23 = v14;
    v24 = v8;
    v26 = v25 = self;
    v27 = [(ICTTTextController *)v25 styleForModelAttributes:v26];

    self = v25;
    v8 = v24;
    v14 = v23;
    v18 = v17.location;
    v19 = v17.length;
    v13 = v27;
  }

  v65 = 0;
  v66 = 0;
  v28 = [v14 string];
  [v28 getParagraphStart:0 end:&v66 contentsEnd:0 forRange:{0, 0}];

  v29 = [v14 string];
  [v29 getParagraphStart:&v65 end:0 contentsEnd:0 forRange:{v18, v19}];

  v30 = v66;
  v31 = v20 + v22;
  if (v66 >= v31)
  {
    v30 = v31;
  }

  v66 = v30;
  if (!a4 && !v8)
  {
    if (!v22)
    {
      objc_opt_class();
      v32 = MEMORY[0x1E69B7600];
      v33 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
      v34 = ICDynamicCast();
      v35 = [v34 isList];

      if (v35)
      {
        v36 = [v13 mutableCopy];
        [v36 removeObjectForKey:*v32];
        v37 = v13;
        goto LABEL_21;
      }
    }

    goto LABEL_23;
  }

  if (!v18 && !v19 && !v30)
  {
    v38 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];

    if (v38)
    {
      goto LABEL_23;
    }

    [(ICTTTextController *)self defaultTypingAttributesForEmptyDocument];
    v13 = v37 = v13;
    goto LABEL_22;
  }

  if (v19)
  {
    v37 = [v14 attributesAtIndex:v18 effectiveRange:0];
    v39 = [(ICTTTextController *)self styleForModelAttributes:v37];
    v40 = [v39 mutableCopy];

    v41 = [(ICTTTextController *)self removeAttribute:*MEMORY[0x1E69DB670] ifInconsistentAtLocation:v18 inTextStorage:v14 forNewTypingAttributes:v40];

    if (!v41)
    {
LABEL_22:

      goto LABEL_23;
    }

    v42 = [(ICTTTextController *)self copyNSParagraphStylefromAttributes:v37 toAttributes:v41];

    v36 = v42;
LABEL_21:
    v13 = v36;
    goto LABEL_22;
  }

  v50 = v65;
  if (!v8 && v18 == v65)
  {
    objc_opt_class();
    v51 = ICDynamicCast();
    v52 = -[ICTTTextController strippedTypingAttributesAtStartOfParagraph:atTheEndOfDocument:isTyping:](self, "strippedTypingAttributesAtStartOfParagraph:atTheEndOfDocument:isTyping:", v13, v18 == v31, [v51 isTypingOrMarkingText]);

    v13 = v52;
  }

  if (v18 <= v31)
  {
    objc_opt_class();
    v53 = ICDynamicCast();
    v54 = [v53 isTypingOrMarkingText];

    if (v54)
    {
      if (v18 >= v31)
      {
        v37 = 0;
        goto LABEL_22;
      }

      v37 = [v14 attributesAtIndex:v18 effectiveRange:0];
      v55 = [v13 mutableCopy];
      v56 = [(ICTTTextController *)self copyAttribute:*MEMORY[0x1E69B7600] fromAttributes:v37 toAttributes:v55];
      goto LABEL_46;
    }

    v57 = [(ICTTTextController *)self referenceAttributesForLocation:v18 textStorage:v14 currentParagraphStart:v65];
    v58 = v57;
    if (v18 == v50)
    {
      if (v8)
      {
        v59 = MEMORY[0x1E69B7600];
        v60 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
        v61 = [v58 mutableCopy];
        v37 = v61;
        if (v60)
        {
          [v61 setObject:v60 forKeyedSubscript:*v59];
        }

        goto LABEL_44;
      }

      if (v18 == v31)
      {
        v37 = 0;
        goto LABEL_48;
      }
    }

    v37 = v57;
LABEL_44:
    if (!v37)
    {
      goto LABEL_22;
    }

    v62 = [(ICTTTextController *)self styleForModelAttributes:v37];
    v55 = [v62 mutableCopy];

    v56 = [(ICTTTextController *)self removeAttribute:*MEMORY[0x1E69DB670] ifInconsistentAtLocation:v18 inTextStorage:v14 forNewTypingAttributes:v55];
LABEL_46:
    v63 = v56;

    if (!v63)
    {
      goto LABEL_22;
    }

    v64 = [(ICTTTextController *)self copyNSParagraphStylefromAttributes:v37 toAttributes:v63];

    v58 = v64;
    v13 = v58;
LABEL_48:

    goto LABEL_22;
  }

LABEL_23:
  if (typingAttributesForRange_forSelectionChange_forSettingTextStyle_currentTypingAttributes_inTextStorage__onceToken != -1)
  {
    [ICTTTextController typingAttributesForRange:forSelectionChange:forSettingTextStyle:currentTypingAttributes:inTextStorage:];
  }

  v43 = typingAttributesForRange_forSelectionChange_forSettingTextStyle_currentTypingAttributes_inTextStorage__stripTypingAttributeKeys;
  v44 = MEMORY[0x1E695DFD8];
  v45 = [v13 allKeys];
  v46 = [v44 setWithArray:v45];
  LODWORD(v43) = [v43 intersectsSet:v46];

  if (v43)
  {
    v47 = [v13 mutableCopy];
    v48 = [typingAttributesForRange_forSelectionChange_forSettingTextStyle_currentTypingAttributes_inTextStorage__stripTypingAttributeKeys allObjects];
    [v47 removeObjectsForKeys:v48];

    v13 = v47;
  }

  return v13;
}

void __124__ICTTTextController_typingAttributesForRange_forSelectionChange_forSettingTextStyle_currentTypingAttributes_inTextStorage___block_invoke()
{
  v8[9] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E69DB5F0];
  v8[0] = *MEMORY[0x1E69DB5F8];
  v8[1] = v1;
  v2 = *MEMORY[0x1E69DB6D0];
  v8[2] = *MEMORY[0x1E69DB600];
  v8[3] = v2;
  v3 = *MEMORY[0x1E69B7928];
  v8[4] = *MEMORY[0x1E69B7920];
  v8[5] = v3;
  v4 = *MEMORY[0x1E69B7958];
  v8[6] = *MEMORY[0x1E69B7948];
  v8[7] = v4;
  v8[8] = *MEMORY[0x1E69B7910];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:9];
  v6 = [v0 setWithArray:v5];
  v7 = typingAttributesForRange_forSelectionChange_forSettingTextStyle_currentTypingAttributes_inTextStorage__stripTypingAttributeKeys;
  typingAttributesForRange_forSelectionChange_forSettingTextStyle_currentTypingAttributes_inTextStorage__stripTypingAttributeKeys = v6;
}

- (id)defaultTypingAttributesForEmptyDocument
{
  v3 = +[ICTextStyle noteDefaultNamedStyle];
  v4 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:v3];
  if (v3 == 1)
  {
    v5 = [(ICTTTextController *)self headingAttributes];
  }

  else
  {
    if (v3)
    {
      [(ICTTTextController *)self bodyAttributes];
    }

    else
    {
      [(ICTTTextController *)self titleAttributes];
    }
    v5 = ;
  }

  v6 = v5;
  v7 = [v5 mutableCopy];
  [v7 setObject:v4 forKey:*MEMORY[0x1E69B7600]];
  v8 = [(ICTTTextController *)self zoomController];
  v9 = [v8 zoomFontInAttributes:v7];

  v10 = [v9 copy];

  return v10;
}

- (id)strippedTypingAttributesAtStartOfParagraph:(id)a3 atTheEndOfDocument:(BOOL)a4 isTyping:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [v8 mutableCopy];
  [v9 removeObjectForKey:*MEMORY[0x1E69DB670]];
  if (v6)
  {
    v10 = MEMORY[0x1E69B7600];
    v11 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
    v12 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:3];
    v13 = [v12 mutableCopy];

    [v13 setIndent:{objc_msgSend(v11, "indent")}];
    v14 = [v13 copy];
    [v9 setObject:v14 forKey:*v10];

    [v9 removeObjectForKey:*MEMORY[0x1E69DB688]];
    if (!a5)
    {
      [v9 removeObjectForKey:*MEMORY[0x1E69B75E0]];
      [v9 removeObjectForKey:*MEMORY[0x1E69DB648]];
      [v9 removeObjectForKey:*MEMORY[0x1E69B75E8]];
      [v9 removeObjectForKey:*MEMORY[0x1E69DB6B8]];
      [v9 removeObjectForKey:*MEMORY[0x1E69DB758]];
      [v9 removeObjectForKey:*MEMORY[0x1E69B7608]];
      [v9 removeObjectForKey:*MEMORY[0x1E69B7620]];
    }
  }

  v15 = [(ICTTTextController *)self styleForModelAttributes:v9];

  return v15;
}

- (id)copyAttribute:(id)a3 fromAttributes:(id)a4 toAttributes:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:v7];
    [v9 setObject:v11 forKeyedSubscript:v7];
  }

  else
  {
    [v9 removeObjectForKey:v7];
  }

  return v9;
}

- (id)copyNSParagraphStylefromAttributes:(id)a3 toAttributes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E69DB688];
  v8 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:v7];
    v10 = [v9 mutableCopy];

    v11 = MEMORY[0x1E69B7600];
    v12 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
    if (!v12 || (v13 = v12, objc_opt_class(), [v5 objectForKeyedSubscript:*v11], v14 = objc_claimAutoreleasedReturnValue(), ICDynamicCast(), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "style"), v15, v14, v13, v16 == 3))
    {
      [v10 paragraphSpacing];
      v18 = v17;
      [objc_opt_class() attachmentParagraphSpacing];
      if (v18 == v19)
      {
        [v10 paragraphSpacingBefore];
        v21 = v20;
        [objc_opt_class() attachmentParagraphSpacingBefore];
        if (v21 == v22)
        {
          [objc_opt_class() bodyParagraphSpacing];
          [v10 setParagraphSpacing:?];
          [objc_opt_class() bodyParagraphSpacingBefore];
          [v10 setParagraphSpacingBefore:?];
        }
      }
    }

    v23 = [v10 copy];
    [v6 setObject:v23 forKeyedSubscript:v7];
  }

  else
  {
    [v6 removeObjectForKey:v7];
  }

  return v6;
}

- (id)referenceAttributesForLocation:(unint64_t)a3 textStorage:(id)a4 currentParagraphStart:(unint64_t)a5
{
  v7 = a4;
  v8 = v7;
  if (a3 != a5 || [v7 length] <= a3)
  {
    if (a3 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = a3;
    }

    a3 = v9 - 1;
  }

  v10 = [v8 attributesAtIndex:a3 effectiveRange:0];

  return v10;
}

- (id)removeAttribute:(id)a3 ifInconsistentAtLocation:(unint64_t)a4 inTextStorage:(id)a5 forNewTypingAttributes:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if ([v10 length] <= a4 || (a4 <= 1 ? (v12 = 1) : (v12 = a4), objc_msgSend(v10, "attribute:atIndex:effectiveRange:", v9, v12 - 1, 0), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "attribute:atIndex:effectiveRange:", v9, a4, 0), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14 != v13))
  {
    [v11 removeObjectForKey:v9];
  }

  return v11;
}

- (void)addBIToStyle:(id)a3
{
  v11 = a3;
  v3 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69B75E8]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
    v6 = *MEMORY[0x1E69DB648];
    v7 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
    v8 = [MEMORY[0x1E69B7890] convertFont:v7 toBold:v5 & 1 toItalic:(v5 >> 1) & 1];
    v9 = v8;
    if (v8)
    {
      v10 = v8 == v7;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      [v11 setObject:v8 forKeyedSubscript:v6];
    }
  }
}

- (id)styleForModelAttributes:(id)a3 contentSizeCategory:(id)a4
{
  v132 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v125 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [MEMORY[0x1E69B7898] allowedAttributesForStyle];
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v127 objects:v131 count:16];
  v126 = v6;
  if (v9)
  {
    v10 = v9;
    v11 = *v128;
    v12 = *MEMORY[0x1E69DB688];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v128 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v127 + 1) + 8 * i);
        if ([v7 containsObject:v14])
        {
          if ([v14 isEqualToString:v12] && (objc_msgSend(v8, "objectForKeyedSubscript:", v14), v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, (isKindOfClass & 1) != 0))
          {
            v17 = [v8 objectForKeyedSubscript:v14];
            v18 = *MEMORY[0x1E69B7600];
            v6 = v126;
            v19 = v126;
            v20 = v17;
          }

          else
          {
            v17 = [v8 objectForKeyedSubscript:v14];
            v6 = v126;
            v19 = v126;
            v20 = v17;
            v18 = v14;
          }

          [v19 setObject:v20 forKeyedSubscript:v18];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v127 objects:v131 count:16];
    }

    while (v10);
  }

  v21 = [MEMORY[0x1E69DB878] ic_preferredFontForBodyTextWithContentSizeCategory:v125 isForPrint:{-[ICTTTextController isForPrint](self, "isForPrint")}];
  v123 = *MEMORY[0x1E69DB648];
  [v6 setObject:v21 forKeyedSubscript:?];

  v22 = MEMORY[0x1E69B7600];
  v23 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
  if (!v23)
  {
    v27 = [(ICTTTextController *)self bodyAttributes];
    [v6 addEntriesFromDictionary:v27];

    [(ICTTTextController *)self addBIToStyle:v6];
    v28 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:3];
    [v6 setObject:v28 forKeyedSubscript:*v22];

    v24 = [v6 objectForKeyedSubscript:*v22];
    v121 = 4;
    v122 = -1;
    goto LABEL_39;
  }

  v24 = v23;
  v25 = [v23 style];
  if (v25 > 4)
  {
    if ((v25 - 100) >= 3)
    {
      if (v25 == 5)
      {
        v26 = [(ICTTTextController *)self captionAttributes];
        goto LABEL_34;
      }

      if (v25 != 103)
      {
        goto LABEL_35;
      }

      v26 = [(ICTTTextController *)self checklistAttributesWithContentSizeCategory:v125];
    }

    else
    {
      v26 = [(ICTTTextController *)self defaultListAttributesWithContentSizeCategory:v125];
    }

LABEL_34:
    v29 = v26;
    [v6 addEntriesFromDictionary:v26];

    goto LABEL_35;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = [(ICTTTextController *)self subheadingAttributesWithContentSizeCategory:v125];
    }

    else
    {
      if (v25 == 3)
      {
        [(ICTTTextController *)self bodyAttributesWithContentSizeCategory:v125];
      }

      else
      {
        [(ICTTTextController *)self fixedWidthAttributesWithContentSizeCategory:v125];
      }
      v26 = ;
    }

    goto LABEL_34;
  }

  if (!v25)
  {
    v26 = [(ICTTTextController *)self titleAttributesWithContentSizeCategory:v125];
    goto LABEL_34;
  }

  if (v25 == 1)
  {
    v26 = [(ICTTTextController *)self headingAttributesWithContentSizeCategory:v125];
    goto LABEL_34;
  }

LABEL_35:
  [(ICTTTextController *)self addBIToStyle:v6];
  v30 = *MEMORY[0x1E69DB688];
  v31 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];
  if (v31)
  {
    v32 = [v6 objectForKeyedSubscript:v30];
    v33 = v6;
    v34 = [v32 mutableCopy];
  }

  else
  {
    [MEMORY[0x1E69DB7D0] ic_mutableDefaultParagraphStyle];
    v34 = v33 = v6;
  }

  [v34 setAlignment:{objc_msgSend(v24, "alignment")}];
  [v34 setBaseWritingDirection:{objc_msgSend(v24, "writingDirection")}];
  v35 = [v34 copy];
  [v33 setObject:v35 forKeyedSubscript:v30];

  v122 = [v24 writingDirection];
  v121 = [v24 alignment];

LABEL_39:
  if ([(ICTTTextController *)self keepNSTextTableAttributes])
  {
    v36 = *MEMORY[0x1E69DB688];
    v37 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];
    v38 = [v37 textBlocks];
    v39 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_27];
    v40 = [v38 filteredArrayUsingPredicate:v39];

    if ([v40 count])
    {
      v41 = [v126 objectForKeyedSubscript:v36];
      if (v41)
      {
        [v126 objectForKeyedSubscript:v36];
        v43 = v42 = v24;
        v44 = [v43 mutableCopy];

        v24 = v42;
      }

      else
      {
        v44 = [MEMORY[0x1E69DB7D0] ic_mutableDefaultParagraphStyle];
      }

      [v44 setTextBlocks:v40];
      v45 = [v44 copy];
      [v126 setObject:v45 forKeyedSubscript:v36];
    }
  }

  v46 = MEMORY[0x1E69B7620];
  v47 = v126;
  v48 = [v126 objectForKeyedSubscript:*MEMORY[0x1E69B7620]];

  v49 = MEMORY[0x1E69DB758];
  if (v48)
  {
    v50 = [v126 objectForKeyedSubscript:*v46];
    [v126 setObject:v50 forKeyedSubscript:*v49];
  }

  else
  {
    v51 = *MEMORY[0x1E69DB758];
    v52 = [v126 objectForKeyedSubscript:*MEMORY[0x1E69DB758]];

    if (v52)
    {
      [v126 removeObjectForKey:v51];
    }
  }

  v53 = MEMORY[0x1E69B7608];
  v54 = [v126 objectForKeyedSubscript:*MEMORY[0x1E69B7608]];

  v55 = MEMORY[0x1E69DB6B8];
  if (v54)
  {
    v56 = MEMORY[0x1E696AD98];
    v57 = [v126 objectForKeyedSubscript:*v53];
    v58 = [v56 numberWithInteger:{objc_msgSend(v57, "BOOLValue")}];
    [v126 setObject:v58 forKeyedSubscript:*v55];

    v59 = self;
  }

  else
  {
    v60 = *MEMORY[0x1E69DB6B8];
    v61 = [v126 objectForKeyedSubscript:*MEMORY[0x1E69DB6B8]];

    v59 = self;
    if (v61)
    {
      [v126 removeObjectForKey:v60];
    }
  }

  v62 = [v126 objectForKeyedSubscript:*MEMORY[0x1E69DB670]];
  v63 = MEMORY[0x1E69DB650];
  if (v62)
  {
    v64 = v62;
    v65 = [v126 objectForKeyedSubscript:*MEMORY[0x1E69B75D8]];

    if (!v65)
    {
      v69 = *MEMORY[0x1E6999A70];
      v70 = [v126 objectForKeyedSubscript:*MEMORY[0x1E6999A70]];

      if (!v70 || (objc_opt_class(), [v126 objectForKeyedSubscript:v69], v71 = objc_claimAutoreleasedReturnValue(), ICDynamicCast(), v72 = objc_claimAutoreleasedReturnValue(), v71, objc_msgSend(v72, "coreResult"), LOBYTE(v71) = DDShouldUseLightLinksForResult(), v72, (v71 & 1) == 0))
      {
        v67 = [MEMORY[0x1E69DC888] tintColor];
        goto LABEL_65;
      }
    }
  }

  v66 = [v126 objectForKeyedSubscript:*MEMORY[0x1E69B7948]];

  if (v66)
  {
    v67 = [MEMORY[0x1E69DC888] ICHashtagUnconfirmedColor];
LABEL_65:
    v74 = v67;
    [v126 setObject:v67 forKeyedSubscript:*v63];

    goto LABEL_66;
  }

  v68 = [v126 objectForKeyedSubscript:*MEMORY[0x1E69B7958]];

  if (v68)
  {
    v67 = [MEMORY[0x1E69DC888] ICMentionUnconfirmedColor];
    goto LABEL_65;
  }

  v73 = [v126 objectForKeyedSubscript:*MEMORY[0x1E69B7910]];

  if (v73)
  {
    v67 = [MEMORY[0x1E69DC888] ICLinkAcceleratorUnconfirmedColor];
    goto LABEL_65;
  }

  v114 = MEMORY[0x1E69B75D8];
  v115 = [v126 objectForKeyedSubscript:*MEMORY[0x1E69B75D8]];

  if (!v115)
  {
    v118 = MEMORY[0x1E69B75F0];
    v119 = [v126 objectForKeyedSubscript:*MEMORY[0x1E69B75F0]];

    if (v119)
    {
      v120 = [v126 objectForKeyedSubscript:*v118];

      [MEMORY[0x1E69DC888] colorWithCGColor:v120];
    }

    else
    {
      [MEMORY[0x1E69DC888] preferredDefaultFontColor];
    }
    v67 = ;
    goto LABEL_65;
  }

  if (ICInternalSettingsIsEmphasisEnabled())
  {
    [v126 setObject:*MEMORY[0x1E69DB700] forKeyedSubscript:*MEMORY[0x1E69DB6F8]];
    v116 = [v8 objectForKeyedSubscript:*v114];
    [v116 intValue];

    ICEmphasisColorTypeForTag();
    v117 = ICNSTextHighlightColorSchemeForEmphasisColorType();
    [v126 setObject:v117 forKeyedSubscript:*MEMORY[0x1E69DB6F0]];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v67 = ICColorForEmphasisColorType();
      goto LABEL_65;
    }
  }

LABEL_66:
  v75 = [v126 objectForKeyedSubscript:*v63];
  [v126 setObject:v75 forKeyedSubscript:*MEMORY[0x1E69B7960]];

  v76 = *MEMORY[0x1E69DB600];
  v77 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DB600]];

  if (v77)
  {
    v78 = [v8 objectForKeyedSubscript:v76];
    [v126 setObject:v78 forKeyedSubscript:v76];
  }

  v79 = *MEMORY[0x1E69B7928];
  v80 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B7928]];

  if (v80)
  {
    v81 = [v8 objectForKeyedSubscript:v79];
    [v126 setObject:v81 forKeyedSubscript:v79];
  }

  v82 = MEMORY[0x1E69B7920];
  v83 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B7920]];

  if (v83)
  {
    v84 = [v8 objectForKeyedSubscript:*v82];
    [v126 setObject:v84 forKeyedSubscript:*v82];
  }

  v85 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B75E0]];
  v86 = v85;
  if (v85)
  {
    [v85 pointSize];
    if (v87 != INFINITY)
    {
      v88 = [v86 nativeFontForStyle:objc_msgSend(v24 contentSizeCategory:"style") isForPrint:{v125, -[ICTTTextController isForPrint](v59, "isForPrint")}];
      [v126 setObject:v88 forKeyedSubscript:v123];

      [(ICTTTextController *)v59 addBIToStyle:v126];
    }
  }

  v89 = MEMORY[0x1E69B7610];
  v90 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B7610]];
  if (v90)
  {
    v91 = [v8 objectForKeyedSubscript:*v89];
    v92 = [v91 integerValue];
  }

  else
  {
    v92 = 0;
  }

  v93 = [v126 objectForKeyedSubscript:v123];
  [v93 pointSize];
  v95 = v94;

  if (v86 || !v92)
  {
    if (!v92)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v96 = [v126 objectForKeyedSubscript:v123];
    [v96 pointSize];
    v98 = v97;
    +[ICTTTextController superscriptScaleFactor];
    v100 = [v96 fontWithSize:v98 * v99];
    [v126 setObject:v100 forKeyedSubscript:v123];
  }

  v101 = [MEMORY[0x1E696AD98] numberWithDouble:round(v92 * 0.2 * v95)];
  [v126 setObject:v101 forKeyedSubscript:*MEMORY[0x1E69DB610]];

LABEL_83:
  v102 = *MEMORY[0x1E69DB5F8];
  v103 = [v126 objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];

  if (v103)
  {
    v104 = [v126 objectForKeyedSubscript:v102];
    if ([v104 conformsToProtocol:&unk_1F4FC5D80] && (objc_msgSend(MEMORY[0x1E69B7888], "isInlineAttachment:", v104) & 1) == 0)
    {
      v105 = [MEMORY[0x1E69DB7D0] ic_mutableDefaultParagraphStyle];
      [objc_opt_class() attachmentParagraphSpacing];
      [v105 setParagraphSpacing:?];
      [objc_opt_class() attachmentParagraphSpacingBefore];
      [v105 setParagraphSpacingBefore:?];
      [v105 setBaseWritingDirection:v122];
      [v105 setAlignment:v121];
      v106 = [v105 copy];
      [v126 setObject:v106 forKeyedSubscript:*MEMORY[0x1E69DB688]];

      v47 = v126;
    }
  }

  v107 = [(ICTTTextController *)v59 zoomController];

  if (!v107)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((self.zoomController) != nil)" functionName:"-[ICTTTextController styleForModelAttributes:contentSizeCategory:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.zoomController"}];
  }

  v108 = [(ICTTTextController *)v59 zoomController];
  v109 = [v108 zoomFontInAttributes:v47];

  if ([(ICTTTextController *)v59 disableSingleLineA])
  {
    v110 = [v109 objectForKey:v123];

    if (v110)
    {
      v111 = [v109 objectForKeyedSubscript:v123];
      v112 = [v111 ic_fontWithoutSingleLineA];
      [v109 setObject:v112 forKeyedSubscript:v123];
    }
  }

  return v109;
}

uint64_t __66__ICTTTextController_styleForModelAttributes_contentSizeCategory___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)guessFontSizeThresholdsForTTStylesInAttributedString:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(ICTTTextController *)self resetGuessedFontSizes];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__84;
  v45 = __Block_byref_object_dispose__84;
  v46 = [MEMORY[0x1E695DF70] array];
  v5 = [v4 string];
  v6 = [v4 length];
  v7 = *MEMORY[0x1E69DB688];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __75__ICTTTextController_guessFontSizeThresholdsForTTStylesInAttributedString___block_invoke;
  v37[3] = &unk_1E846A5D8;
  v32 = v5;
  v38 = v32;
  v8 = v4;
  v39 = v8;
  v40 = &v41;
  [v8 enumerateAttribute:v7 inRange:0 options:v6 usingBlock:{0, v37}];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = v42[5];
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v47 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v34;
    v13 = 0.0;
    v14 = 1.79769313e308;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    do
    {
      v19 = 0;
      v20 = v17;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v21 = *(*(&v33 + 1) + 8 * v19);
        v22 = [v21 objectAtIndexedSubscript:0];
        v23 = [v22 integerValue];

        v24 = [v21 objectAtIndexedSubscript:1];
        [v24 doubleValue];
        v26 = v25;

        if (v23 > v11)
        {
          v11 = v23;
          v13 = v26;
        }

        if (v26 > v15)
        {
          v27 = v26;
        }

        else
        {
          v27 = v15;
        }

        if (v26 <= v16)
        {
          v28 = v16;
        }

        else
        {
          v27 = v16;
          v28 = v26;
        }

        if (v23 < 3)
        {
          v15 = v27;
          v16 = v28;
        }

        if (v26 <= v20)
        {
          v17 = v20;
        }

        else
        {
          v17 = v26;
        }

        if (v26 > v20)
        {
          v18 = v20;
        }

        if (v26 < v14)
        {
          v14 = v26;
        }

        ++v19;
        v20 = v17;
      }

      while (v10 != v19);
      v10 = [v9 countByEnumeratingWithState:&v33 objects:v47 count:16];
    }

    while (v10);
  }

  else
  {
    v13 = 0.0;
    v14 = 1.79769313e308;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
  }

  [(ICTTTextController *)self bodyStyleFontSizeThreshold];
  v30 = v13 <= v29;
  v31 = v13;
  if (!v30 || (v31 = v14, v13 == 0.0))
  {
    [(ICTTTextController *)self setBodyStyleFontSizeThreshold:v31];
  }

  if (v15 > v13 || (v15 = v16, v16 > v13) || (v15 = v18, v18 > v13) || (v15 = v17, v17 >= v13))
  {
    [(ICTTTextController *)self setHeadingStyleFontSizeThreshold:v15];
  }

  _Block_object_dispose(&v41, 8);
}

void __75__ICTTTextController_guessFontSizeThresholdsForTTStylesInAttributedString___block_invoke(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v18 = a2;
  v7 = a3 + a4;
  if (a3 < a3 + a4)
  {
    v19 = *MEMORY[0x1E696A550];
    v20 = *MEMORY[0x1E69DB648];
    do
    {
      v8 = objc_autoreleasePoolPush();
      v10 = [*(a1 + 32) paragraphRangeForRange:{a3, 0}];
      v11 = v9;
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0x4030000000000000;
      if (v9 >= 0x1A)
      {
        v30 = (fmin((v9 / 0x64), 3.0) + 1.0);
        v12 = *(a1 + 32);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __75__ICTTTextController_guessFontSizeThresholdsForTTStylesInAttributedString___block_invoke_2;
        v22[3] = &unk_1E846E718;
        v22[4] = &v27;
        [v12 enumerateLinguisticTagsInRange:v10 scheme:v9 options:v19 orthography:0 usingBlock:{0, v22}];
      }

      v13 = *(a1 + 40);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __75__ICTTTextController_guessFontSizeThresholdsForTTStylesInAttributedString___block_invoke_3;
      v21[3] = &unk_1E846E740;
      v21[4] = &v23;
      [v13 enumerateAttribute:v20 inRange:v10 options:v11 usingBlock:{0, v21}];
      v14 = *(*(*(a1 + 48) + 8) + 40);
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v28[3]];
      v31[0] = v15;
      v16 = [MEMORY[0x1E696AD98] numberWithDouble:v24[3]];
      v31[1] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
      [v14 addObject:v17];

      _Block_object_dispose(&v23, 8);
      _Block_object_dispose(&v27, 8);
      objc_autoreleasePoolPop(v8);
      a3 = v10 + v11;
    }

    while (a3 < v7);
  }
}

uint64_t __75__ICTTTextController_guessFontSizeThresholdsForTTStylesInAttributedString___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (*MEMORY[0x1E696A520] == a2)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

uint64_t __75__ICTTTextController_guessFontSizeThresholdsForTTStylesInAttributedString___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 pointSize];
  if (v3 >= v5)
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

- (unint64_t)defaultTabIntervalInAttributedString:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [v3 ic_range];
  v5 = *MEMORY[0x1E69DB688];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__ICTTTextController_defaultTabIntervalInAttributedString___block_invoke;
  v9[3] = &unk_1E846E768;
  v9[4] = &v10;
  [v3 enumerateAttribute:v5 inRange:v4 options:v6 usingBlock:{0, v9}];
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __59__ICTTTextController_defaultTabIntervalInAttributedString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  [v9 defaultTabInterval];
  if (v7 != 0.0)
  {
    [v9 defaultTabInterval];
    *(*(*(a1 + 32) + 8) + 24) = v8;
    *a5 = 1;
  }
}

- (id)indentsForIndividualParagraphHeadIndentsInAttributedString:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__84;
  v27 = __Block_byref_object_dispose__84;
  v28 = [MEMORY[0x1E695DFA8] set];
  v4 = [v3 ic_range];
  v5 = *MEMORY[0x1E69DB688];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __81__ICTTTextController_indentsForIndividualParagraphHeadIndentsInAttributedString___block_invoke;
  v22[3] = &unk_1E846E768;
  v22[4] = &v23;
  [v3 enumerateAttribute:v5 inRange:v4 options:v6 usingBlock:{0, v22}];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v24[5] allObjects];
  v9 = [v8 sortedArrayUsingSelector:sel_compare_];

  v10 = [v9 countByEnumeratingWithState:&v18 objects:v29 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
        [v7 setObject:v15 forKeyedSubscript:v14];

        ++v11;
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v29 count:16];
    }

    while (v10);
  }

  v16 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v7];

  _Block_object_dispose(&v23, 8);

  return v16;
}

void __81__ICTTTextController_indentsForIndividualParagraphHeadIndentsInAttributedString___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = MEMORY[0x1E696AD98];
  [a2 headIndent];
  v4 = [v3 numberWithDouble:?];
  [v2 addObject:v4];
}

- (void)prepareIndentInformationInAttributedString:(id)a3
{
  v5 = a3;
  [(ICTTTextController *)self setDefaultTabInterval:[(ICTTTextController *)self defaultTabIntervalInAttributedString:?]];
  if (![(ICTTTextController *)self defaultTabInterval])
  {
    v4 = [(ICTTTextController *)self indentsForIndividualParagraphHeadIndentsInAttributedString:v5];
    [(ICTTTextController *)self setIndentForHeadIndent:v4];
  }
}

- (void)resetIndentInformation
{
  [(ICTTTextController *)self setDefaultTabInterval:0];

  [(ICTTTextController *)self setIndentForHeadIndent:0];
}

- (id)modelForStyleAttributes:(id)a3 filterAttributes:(BOOL)a4 pasteboardAttributedString:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(ICTTTextController *)self zoomController];
  [v10 zoomFactor];
  v12 = v11;

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v155 = *MEMORY[0x1E69DB648];
  v14 = [v8 objectForKeyedSubscript:?];
  v15 = v14;
  v16 = MEMORY[0x1E69B7600];
  if (v6 && v14)
  {
    [v14 pointSize];
    v18 = v17;
    [(ICTTTextController *)self headingStyleFontSizeThreshold];
    if (v18 <= v12 * v19)
    {
      [v15 pointSize];
      v26 = v25;
      [(ICTTTextController *)self bodyStyleFontSizeThreshold];
      if (v26 <= v12 * v27)
      {
        goto LABEL_11;
      }

      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    v28 = [MEMORY[0x1E69B78B8] paragraphStyleNamed:v20];
    [v28 setNeedsParagraphCleanup:1];
    v29 = [v28 copy];
    [v13 setObject:v29 forKeyedSubscript:*v16];

LABEL_11:
    v165 = 0;
    v164 = 0;
    [MEMORY[0x1E69B7890] font:v15 isBold:&v165 + 1 isItalic:&v165 isMonospace:&v164];
    if (v165)
    {
      v30 = 2;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30 | HIBYTE(v165);
    if (v164 == 1)
    {
      v32 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:4];
      [v13 setObject:v32 forKeyedSubscript:*v16];
    }

    if (v31)
    {
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v31];
      v24 = *MEMORY[0x1E69B75E8];
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (v14)
  {
    goto LABEL_11;
  }

  v21 = MEMORY[0x1E69B75E8];
  v22 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B75E8]];

  if (v22)
  {
    v23 = [v8 objectForKeyedSubscript:*v21];
    v24 = *v21;
LABEL_18:
    [v13 setObject:v23 forKeyedSubscript:v24];
  }

LABEL_19:
  CopyWithAlpha = *MEMORY[0x1E69DB758];
  v34 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DB758]];
  if (v34)
  {
    v35 = v34;
    CopyWithAlpha = [v8 objectForKeyedSubscript:CopyWithAlpha];
    v36 = [CopyWithAlpha integerValue];

    if (v36)
    {
      [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69B7620]];
    }
  }

  v37 = *MEMORY[0x1E69DB6B8];
  v38 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DB6B8]];
  if (v38)
  {
    v39 = v38;
    CopyWithAlpha = [v8 objectForKeyedSubscript:v37];
    v40 = [CopyWithAlpha integerValue];

    if (v40)
    {
      [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69B7608]];
    }
  }

  v41 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DB6F8]];

  v42 = MEMORY[0x1E69B75D8];
  if (v41)
  {
    v43 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DB6F0]];
    CopyWithAlpha = ICEmphasisColorTypeForNSTextHighlightColorScheme();

    v44 = [MEMORY[0x1E696AD98] numberWithInteger:CopyWithAlpha];
  }

  else
  {
    v45 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B75D8]];

    if (!v45)
    {
      goto LABEL_30;
    }

    v44 = [v8 objectForKeyedSubscript:*v42];
  }

  v46 = v44;
  [v13 setObject:v44 forKeyedSubscript:*v42];

LABEL_30:
  if (!v6)
  {
    v47 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
    if (v47)
    {
      CopyWithAlpha = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
      v48 = [v47 isEqual:CopyWithAlpha];

      if ((v48 & 1) == 0)
      {
        CopyWithAlpha = CGColorCreateCopyWithAlpha([v47 CGColor], 1.0);
        [v13 setObject:CopyWithAlpha forKeyedSubscript:*MEMORY[0x1E69B75F0]];
        CGColorRelease(CopyWithAlpha);
      }
    }
  }

  v49 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6999A70]];
  v157 = self;
  if (!v49 || ([v8 objectForKeyedSubscript:*MEMORY[0x1E69B7970]], (CopyWithAlpha = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v50 = *MEMORY[0x1E69DB670];
    v51 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DB670]];

    if (v49)
    {
    }

    if (v51)
    {
      v52 = [v8 objectForKeyedSubscript:v50];
      [v13 setObject:v52 forKeyedSubscript:v50];

      v53 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
      [v53 CGColor];
      v54 = [MEMORY[0x1E69DC888] tintColor];
      [v54 CGColor];
      v55 = ICCGColorEquivalentToColor();

      if (v55)
      {
        [v13 setObject:0 forKeyedSubscript:*MEMORY[0x1E69B75F0]];
      }
    }
  }

  else
  {
  }

  v56 = MEMORY[0x1E69B7610];
  v57 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B7610]];

  if (v57)
  {
    v58 = [v8 objectForKeyedSubscript:*v56];
    [v13 setObject:v58 forKeyedSubscript:*v56];
  }

  v59 = *MEMORY[0x1E69DB778];
  v60 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DB778]];

  v61 = v157;
  v62 = MEMORY[0x1E69B7600];
  if (v60)
  {
    v63 = [v8 objectForKeyedSubscript:v59];
    [v13 setObject:v63 forKeyedSubscript:v59];
  }

  v64 = *MEMORY[0x1E69DB5F8];
  v65 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];

  if (v65)
  {
    v66 = [v8 objectForKeyedSubscript:v64];
    [v13 setObject:v66 forKeyedSubscript:v64];
  }

  v67 = *MEMORY[0x1E69DB5F0];
  v68 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DB5F0]];

  if (v68)
  {
    v69 = [v8 objectForKeyedSubscript:v67];
    [v13 setObject:v69 forKeyedSubscript:v67];
  }

  v70 = MEMORY[0x1E69B75F8];
  v71 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B75F8]];

  if (v71)
  {
    v72 = [v8 objectForKeyedSubscript:*v70];
    [v13 setObject:v72 forKeyedSubscript:*v70];
  }

  v156 = v9;
  v73 = [v8 objectForKeyedSubscript:*v62];

  if (v73)
  {
    v74 = [v8 objectForKeyedSubscript:*v62];
    [v13 setObject:v74 forKeyedSubscript:*v62];
  }

  v75 = *MEMORY[0x1E69DB688];
  v76 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];

  v159 = v15;
  if (v76)
  {
    v77 = [v8 objectForKeyedSubscript:v75];
    v78 = [v8 objectForKeyedSubscript:*v62];
    v79 = [v78 mutableCopy];

    v80 = [v77 textLists];
    if ([v80 count])
    {
      v81 = [v79 isList];

      if ((v81 & 1) == 0)
      {
        v82 = [v77 textLists];
        v83 = [v82 lastObject];

        v84 = v83;
        v85 = [v83 markerFormat];
        if ([v85 containsString:@"{hyphen}"])
        {
          v86 = MEMORY[0x1E69B78B8];
          v87 = 101;
        }

        else
        {
          if ([v85 containsString:@"{decimal}"])
          {
            v88 = [MEMORY[0x1E69B78B8] paragraphStyleNamed:102];

            if ([v84 startingItemNumber] < 1)
            {
              v97 = 0;
            }

            else
            {
              v97 = [v84 startingItemNumber];
            }

            [v88 setStartingItemNumber:v97];
            goto LABEL_87;
          }

          if ([v85 containsString:@"{check}"] & 1) != 0 || (objc_msgSend(v84, "markerTextAttachment"), v154 = v84, v103 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v103, v84 = v154, (isKindOfClass))
          {
            v88 = [MEMORY[0x1E69B78B8] paragraphStyleNamed:103];

            v105 = [v8 objectForKeyedSubscript:v37];

            if (!v105)
            {
              goto LABEL_87;
            }

            v79 = [v88 todo];
            [v79 todoWithDone:1];
            v107 = v106 = v84;
            [v88 setTodo:v107];

            v84 = v106;
LABEL_61:

LABEL_87:
            v110 = [v77 textLists];
            [v88 setIndent:{objc_msgSend(v110, "count") - 1}];

            [v88 setNeedsListCleanup:1];
            v79 = v88;
            v61 = v157;
LABEL_88:
            v62 = MEMORY[0x1E69B7600];
            if (v79)
            {
              [v79 setAlignment:{objc_msgSend(v77, "alignment")}];
              [v79 setWritingDirection:{objc_msgSend(v77, "baseWritingDirection")}];
              v111 = [v79 copy];
              [v13 setObject:v111 forKeyedSubscript:*v62];
            }

            v15 = v159;
            goto LABEL_91;
          }

          v86 = MEMORY[0x1E69B78B8];
          v87 = 100;
        }

        v88 = [v86 paragraphStyleNamed:v87];
        goto LABEL_61;
      }
    }

    else
    {
    }

    [v77 headIndent];
    if (v89 <= 0.0)
    {
      if ([v156 length])
      {
        v92 = [v156 length] != 1;
        v93 = [v156 attribute:*MEMORY[0x1E696A7D0] atIndex:v92 effectiveRange:0];
        if ([v93 intentKind] == 6)
        {
          v94 = [MEMORY[0x1E69B78B8] paragraphStyleNamed:3];

          v95 = 0;
          if (v93)
          {
            do
            {
              ++v95;
              v96 = [v93 parentIntent];

              v93 = v96;
            }

            while (v96);
          }

          [v94 setBlockQuoteLevel:v95];
          v93 = 0;
          v79 = v94;
          v61 = v157;
        }
      }
    }

    else
    {
      if ([(ICTTTextController *)v157 defaultTabInterval])
      {
        [v77 headIndent];
        v91 = vcvtpd_u64_f64(fabs(v90 / [(ICTTTextController *)v157 defaultTabInterval]));
      }

      else
      {
        v98 = [(ICTTTextController *)v157 indentForHeadIndent];

        if (v98)
        {
          v99 = [(ICTTTextController *)v157 indentForHeadIndent];
          v100 = MEMORY[0x1E696AD98];
          [v77 headIndent];
          v101 = [v100 numberWithDouble:?];
          v102 = [v99 objectForKeyedSubscript:v101];
          v91 = [v102 unsignedIntegerValue];

          v61 = v157;
        }

        else
        {
          v108 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
          {
            [ICTTTextController modelForStyleAttributes:v108 filterAttributes:? pasteboardAttributedString:?];
          }

          v91 = 0;
        }
      }

      v109 = [MEMORY[0x1E69B78B8] paragraphStyleNamed:3];

      [v109 setIndent:v91];
      v79 = v109;
    }

    goto LABEL_88;
  }

LABEL_91:
  v112 = [v8 objectForKeyedSubscript:v75];
  v113 = [v13 objectForKeyedSubscript:*v62];
  v114 = v113;
  if (v6 && v112)
  {
    if (v113)
    {
      v115 = [v113 alignment];
      if (v115 == *MEMORY[0x1E69B7638])
      {
LABEL_102:
        v120 = [v114 writingDirection];
        if (v120 == [v112 baseWritingDirection])
        {
          goto LABEL_110;
        }

        v121 = [v114 mutableCopy];
LABEL_106:
        v122 = v121;

        [v122 setWritingDirection:{objc_msgSend(v112, "baseWritingDirection")}];
        v123 = [v122 alignment];
        if (v123 == *MEMORY[0x1E69B7640] || (v124 = [v122 alignment], v124 == *MEMORY[0x1E69B7648]))
        {
          [v122 setAlignment:*MEMORY[0x1E69B7638]];
        }

        v125 = [v122 copy];
        [v13 setObject:v125 forKeyedSubscript:*v62];

LABEL_110:
        if (v6)
        {
          goto LABEL_147;
        }

        goto LABEL_111;
      }

      v116 = [v114 mutableCopy];
    }

    else
    {
      v117 = [v112 alignment];
      if (v117 == *MEMORY[0x1E69B7638])
      {
        goto LABEL_104;
      }

      v116 = objc_alloc_init(MEMORY[0x1E69B78B8]);
    }

    v118 = v116;

    [v118 setAlignment:*MEMORY[0x1E69B7638]];
    v119 = [v118 copy];

    [v13 setObject:v119 forKeyedSubscript:*v62];
    v114 = v119;
    if (v119)
    {
      goto LABEL_102;
    }
  }

  else
  {
    if (!v112)
    {
      goto LABEL_110;
    }

    if (v113)
    {
      goto LABEL_102;
    }
  }

LABEL_104:
  if ([v112 baseWritingDirection] != -1)
  {
    v121 = objc_alloc_init(MEMORY[0x1E69B78B8]);
    v114 = 0;
    goto LABEL_106;
  }

  v114 = 0;
  if (v6)
  {
    goto LABEL_147;
  }

LABEL_111:
  if (v15)
  {
    v126 = [(ICTTTextController *)v61 styleForModelAttributes:v13];
    v127 = [v126 objectForKeyedSubscript:v155];
    [v15 pointSize];
    if (v128 <= 0.0 || ([v15 pointSize], v129 == INFINITY))
    {
      v130 = v127;
    }

    else
    {
      v130 = v15;
    }

    [v130 pointSize];
    v132 = v131;
    v133 = [v127 fontName];
    v134 = [v15 fontName];
    v135 = [v133 isEqualToString:v134];

    [v127 pointSize];
    v137 = round(v136);
    v138 = round(v132);
    if ((v135 & 1) != 0 || !v114)
    {
LABEL_137:
      if (v135 && v137 == v138)
      {
LABEL_146:

        v15 = v159;
        goto LABEL_147;
      }

LABEL_139:
      v145 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69B75E8]];
      v146 = [v145 integerValue];

      v147 = objc_alloc(MEMORY[0x1E69B7890]);
      if (v135)
      {
        v148 = 0;
      }

      else
      {
        v148 = [v159 fontName];
      }

      v149 = 0.0;
      if (v137 != v138)
      {
        [v159 pointSize];
        v149 = v150 / v12;
      }

      v151 = [v147 initWithName:v148 size:v146 hints:v149];
      [v13 setObject:v151 forKeyedSubscript:*MEMORY[0x1E69B75E0]];

      if ((v135 & 1) == 0)
      {
      }

      goto LABEL_146;
    }

    if (![v114 isHeader])
    {
      LOBYTE(v135) = 0;
      goto LABEL_139;
    }

    v139 = [v114 style];
    if (v139 == 2)
    {
      v140 = [MEMORY[0x1E69DB878] ic_preferredFontForSubheadingText];
    }

    else if (v139 == 1)
    {
      v140 = [MEMORY[0x1E69DB878] ic_preferredFontForHeadingText];
    }

    else
    {
      if (v139)
      {
        [MEMORY[0x1E69DB878] ic_preferredFontForBodyText];
      }

      else
      {
        [MEMORY[0x1E69DB878] ic_preferredFontForTitleText];
      }
      v140 = ;
    }

    v141 = v140;
    v163 = 0;
    v162 = 0;
    v161 = 0;
    v160 = 0;
    [MEMORY[0x1E69B7890] font:v15 isBold:&v163 isItalic:&v162 isMonospace:&v161];
    [MEMORY[0x1E69B7890] font:v141 isBold:&v162 + 1 isItalic:&v161 + 1 isMonospace:&v160];
    v142 = [v15 familyName];
    v143 = [v127 familyName];
    if ([v142 isEqualToString:v143] && v163 == HIBYTE(v162))
    {
      v158 = v162;
      v144 = HIBYTE(v161);

      if (v158 == v144)
      {
        [v13 removeObjectForKey:*MEMORY[0x1E69B75E8]];
        v135 = 1;
LABEL_136:

        goto LABEL_137;
      }
    }

    else
    {
    }

    v135 = 0;
    goto LABEL_136;
  }

LABEL_147:
  v152 = v13;

  return v13;
}

- (void)styleFontInTextStorage:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  [v7 beginEditing];
  [(ICTTTextController *)self styleFontInAttributedString:v7 inRange:location contentSizeCategory:length, 0];
  [v7 endEditing];
}

- (void)styleFontInAttributedString:(id)a3 inRange:(_NSRange)a4 contentSizeCategory:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v15 = 0;
  v16 = 0;
  if (location < location + length)
  {
    v11 = location;
    do
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [v9 attributesAtIndex:v11 longestEffectiveRange:&v15 inRange:{location, length}];
      v14 = [(ICTTTextController *)self styleForModelAttributes:v13 contentSizeCategory:v10];
      [v9 setAttributes:v14 range:{v15, v16}];

      v11 = v16 + v15;
      objc_autoreleasePoolPop(v12);
    }

    while (v11 < location + length);
  }
}

- (void)styleText:(id)a3 inRange:(_NSRange)a4 fixModelAttributes:(BOOL)a5
{
  v5 = a5;
  length = a4.length;
  location = a4.location;
  v19 = a3;
  if ([v19 length])
  {
    if (location >= [v19 length])
    {
      length = 0;
      location = [v19 length] - 1;
    }

    v9 = [v19 string];
    v10 = [v9 paragraphRangeForRange:{location, length}];
    v12 = v11;

    v13 = length + location;
    if (v13 == v10 + v12 && v13 < [v19 length])
    {
      v14 = [v19 string];
      v15 = [v14 paragraphRangeForRange:{v13, 0}];
      v17 = v16;

      v21.location = v10;
      v21.length = v12;
      v22.location = v15;
      v22.length = v17;
      v18 = NSUnionRange(v21, v22);
      v10 = v18.location;
      v12 = v18.length;
    }

    [(ICTTTextController *)self styleText:v19 inExactRange:v10 fixModelAttributes:v12, v5];
  }
}

- (void)styleText:(id)a3 inExactRange:(_NSRange)a4 fixModelAttributes:(BOOL)a5
{
  v5 = a5;
  length = a4.length;
  location = a4.location;
  v26[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v28.location = [v9 ic_range];
  v28.length = v10;
  v27.location = location;
  v27.length = length;
  v11 = NSIntersectionRange(v27, v28);
  if (v11.length)
  {
    if (v5)
    {
      [v9 setDisableUndoCoalesceBreaking:1];
      [(ICTTTextController *)self fixModelAttributesInTextStorage:v9 inRange:v11.location, v11.length];
      [v9 setDisableUndoCoalesceBreaking:0];
    }

    [v9 beginTemporaryAttributeEditing];
    v12 = *MEMORY[0x1E69DB688];
    v13 = [v9 attribute:*MEMORY[0x1E69DB688] atIndex:v11.location effectiveRange:0];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 baseWritingDirection];
    }

    else
    {
      v15 = -1;
    }

    v16 = [(ICTTTextController *)self defaultParagraphStyleWithWritingDirection:v15];
    v25 = v12;
    v26[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    [v9 addAttributes:v17 range:{v11.location, v11.length}];

    [(ICTTTextController *)self styleFontInTextStorage:v9 inRange:v11.location, v11.length];
    [(ICTTTextController *)self styleListsAndIndentsInAttributedString:v9 inRange:v11.location, v11.length];
    v18 = *MEMORY[0x1E69DB670];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __64__ICTTTextController_styleText_inExactRange_fixModelAttributes___block_invoke;
    v23 = &unk_1E846E790;
    v19 = v9;
    v24 = v19;
    [v19 enumerateAttribute:v18 inRange:v11.location options:v11.length usingBlock:{0, &v20}];
    [v19 invalidateAttributesInRange:{v11.location, v11.length, v20, v21, v22, v23}];
    [v19 endTemporaryAttributeEditing];
  }
}

void __64__ICTTTextController_styleText_inExactRange_fixModelAttributes___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  objc_opt_class();
  v7 = [*(a1 + 32) highlightsAttributedString];
  v8 = ICDynamicCast();
  v9 = v8;
  v10 = *MEMORY[0x1E69DB670];
  if (v11)
  {
    [v8 addAttribute:v10 value:v11 range:{a3, a4}];
  }

  else
  {
    [v8 removeAttribute:v10 range:{a3, a4}];
  }
}

- (id)writingToolsIgnoredRangesForTextStorage:(id)a3 inEnclosingRange:(_NSRange)a4 note:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [v9 calculateDocumentController];
  if (v11)
  {
    v12 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v14 = [v9 calculateDocumentController];
      v15 = [v14 expressionsIndexSet];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __84__ICTTTextController_writingToolsIgnoredRangesForTextStorage_inEnclosingRange_note___block_invoke;
      v26[3] = &unk_1E846E7B8;
      v27 = v10;
      [v15 enumerateRangesInRange:location options:length usingBlock:{0, v26}];
    }
  }

  v16 = [v9 textStorage];
  v17 = *MEMORY[0x1E69B7600];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __84__ICTTTextController_writingToolsIgnoredRangesForTextStorage_inEnclosingRange_note___block_invoke_2;
  v24 = &unk_1E846C2A0;
  v25 = v10;
  v18 = v10;
  [v16 enumerateAttribute:v17 inRange:location options:length usingBlock:{0, &v21}];

  v19 = [v18 copy];

  return v19;
}

void __84__ICTTTextController_writingToolsIgnoredRangesForTextStorage_inEnclosingRange_note___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E696B098] valueWithRange:{a2, a3}];
  [*(a1 + 32) addObject:v4];
}

void __84__ICTTTextController_writingToolsIgnoredRangesForTextStorage_inEnclosingRange_note___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ([a2 isBlockQuote])
  {
    v7 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
    [*(a1 + 32) addObject:v7];
  }
}

+ (id)preferredFontForICTTTextStyle:(unsigned int)a3
{
  v3 = 0;
  if (a3 > 3)
  {
    if (a3 <= 100)
    {
      if (a3 == 4)
      {
        v3 = [MEMORY[0x1E69DB878] ic_preferredFontForFixedWidthText];
        goto LABEL_16;
      }

      if (a3 != 100)
      {
        goto LABEL_16;
      }
    }

    else if (a3 != 101 && a3 != 102 && a3 != 103)
    {
      goto LABEL_16;
    }

LABEL_15:
    v3 = [MEMORY[0x1E69DB878] ic_preferredFontForBodyText];
    goto LABEL_16;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v3 = [MEMORY[0x1E69DB878] ic_preferredFontForSubheadingText];
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v3 = [MEMORY[0x1E69DB878] ic_preferredFontForHeadingText];
    }
  }

  else
  {
    v3 = [MEMORY[0x1E69DB878] ic_preferredFontForTitleText];
  }

LABEL_16:

  return v3;
}

- (id)preferredAttributesForICTTTextStyle:(unsigned int)a3
{
  v4 = 0;
  if (a3 > 3)
  {
    if (a3 <= 100)
    {
      if (a3 == 4)
      {
        v4 = [(ICTTTextController *)self fixedWidthAttributes];
        goto LABEL_20;
      }

      if (a3 != 100)
      {
        goto LABEL_20;
      }
    }

    else if (a3 != 101 && a3 != 102)
    {
      if (a3 == 103)
      {
        v4 = [(ICTTTextController *)self checklistAttributes];
      }

      goto LABEL_20;
    }

    v4 = [(ICTTTextController *)self defaultListAttributes];
    goto LABEL_20;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [(ICTTTextController *)self subheadingAttributes];
    }

    else
    {
      [(ICTTTextController *)self bodyAttributes];
    }
    v4 = ;
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v4 = [(ICTTTextController *)self headingAttributes];
    }
  }

  else
  {
    v4 = [(ICTTTextController *)self titleAttributes];
  }

LABEL_20:

  return v4;
}

@end