@interface ICTTTextController
+ (id)preferredFontForICTTTextStyle:(unsigned int)style;
- (ICTTTextController)init;
- (id)bodyAttributesWithContentSizeCategory:(id)category;
- (id)captionAttributesWithContentSizeCategory:(id)category;
- (id)checklistAttributesWithContentSizeCategory:(id)category;
- (id)copyAttribute:(id)attribute fromAttributes:(id)attributes toAttributes:(id)toAttributes;
- (id)copyNSParagraphStylefromAttributes:(id)attributes toAttributes:(id)toAttributes;
- (id)defaultListAttributesWithContentSizeCategory:(id)category;
- (id)defaultParagraphStyleWithWritingDirection:(int64_t)direction;
- (id)defaultTypingAttributesForEmptyDocument;
- (id)fixedWidthAttributesWithContentSizeCategory:(id)category;
- (id)headingAttributesWithContentSizeCategory:(id)category;
- (id)indentsForIndividualParagraphHeadIndentsInAttributedString:(id)string;
- (id)modelForStyleAttributes:(id)attributes filterAttributes:(BOOL)filterAttributes pasteboardAttributedString:(id)string;
- (id)preferredAttributesForICTTTextStyle:(unsigned int)style;
- (id)referenceAttributesForLocation:(unint64_t)location textStorage:(id)storage currentParagraphStart:(unint64_t)start;
- (id)removeAttribute:(id)attribute ifInconsistentAtLocation:(unint64_t)location inTextStorage:(id)storage forNewTypingAttributes:(id)attributes;
- (id)strippedTypingAttributesAtStartOfParagraph:(id)paragraph atTheEndOfDocument:(BOOL)document isTyping:(BOOL)typing;
- (id)styleForModelAttributes:(id)attributes contentSizeCategory:(id)category;
- (id)subheadingAttributesWithContentSizeCategory:(id)category;
- (id)titleAttributesWithContentSizeCategory:(id)category;
- (id)typingAttributesForRange:(_NSRange)range forSelectionChange:(BOOL)change forSettingTextStyle:(BOOL)style currentTypingAttributes:(id)attributes inTextStorage:(id)storage;
- (id)writingToolsIgnoredRangesForTextStorage:(id)storage inEnclosingRange:(_NSRange)range note:(id)note;
- (unint64_t)defaultTabIntervalInAttributedString:(id)string;
- (void)addBIToStyle:(id)style;
- (void)guessFontSizeThresholdsForTTStylesInAttributedString:(id)string;
- (void)prepareIndentInformationInAttributedString:(id)string;
- (void)resetGuessedFontSizes;
- (void)resetIndentInformation;
- (void)styleFontInAttributedString:(id)string inRange:(_NSRange)range contentSizeCategory:(id)category;
- (void)styleFontInTextStorage:(id)storage inRange:(_NSRange)range;
- (void)styleText:(id)text inExactRange:(_NSRange)range fixModelAttributes:(BOOL)attributes;
- (void)styleText:(id)text inRange:(_NSRange)range fixModelAttributes:(BOOL)attributes;
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

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v2->_showsEditorDebugTooltips = [standardUserDefaults BOOLForKey:kICShowEditorDebugTooltips];

    [(ICTTTextController *)v2 resetGuessedFontSizes];
  }

  return v2;
}

- (void)resetGuessedFontSizes
{
  [(ICTTTextController *)self setBodyStyleFontSizeThreshold:16.0];

  [(ICTTTextController *)self setHeadingStyleFontSizeThreshold:19.0];
}

- (id)defaultParagraphStyleWithWritingDirection:(int64_t)direction
{
  ic_mutableDefaultParagraphStyle = [MEMORY[0x1E69DB7D0] ic_mutableDefaultParagraphStyle];
  [ic_mutableDefaultParagraphStyle setLineHeightMultiple:1.2];
  [ic_mutableDefaultParagraphStyle setBaseWritingDirection:direction];
  v5 = [ic_mutableDefaultParagraphStyle copy];

  return v5;
}

- (id)titleAttributesWithContentSizeCategory:(id)category
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB7D0];
  categoryCopy = category;
  ic_mutableDefaultParagraphStyle = [v4 ic_mutableDefaultParagraphStyle];
  v7 = [MEMORY[0x1E69DB878] ic_preferredFontForTitleTextWithContentSizeCategory:categoryCopy isForPrint:-[ICTTTextController isForPrint](self isReducedSize:{"isForPrint"), -[ICTTTextController isForSiri](self, "isForSiri")}];

  [ic_mutableDefaultParagraphStyle setParagraphSpacing:3.0];
  [ic_mutableDefaultParagraphStyle setParagraphSpacingBefore:0.0];
  [ic_mutableDefaultParagraphStyle setLineHeightMultiple:1.0];
  [ic_mutableDefaultParagraphStyle setLineSpacing:1.0];
  v11[0] = *MEMORY[0x1E69DB688];
  v8 = [ic_mutableDefaultParagraphStyle copy];
  v11[1] = *MEMORY[0x1E69DB648];
  v12[0] = v8;
  v12[1] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (id)headingAttributesWithContentSizeCategory:(id)category
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB7D0];
  categoryCopy = category;
  ic_mutableDefaultParagraphStyle = [v4 ic_mutableDefaultParagraphStyle];
  [ic_mutableDefaultParagraphStyle setParagraphSpacing:4.0];
  [ic_mutableDefaultParagraphStyle setParagraphSpacingBefore:0.0];
  [ic_mutableDefaultParagraphStyle setLineHeightMultiple:1.0];
  v11[0] = *MEMORY[0x1E69DB688];
  v7 = [ic_mutableDefaultParagraphStyle copy];
  v12[0] = v7;
  v11[1] = *MEMORY[0x1E69DB648];
  v8 = [MEMORY[0x1E69DB878] ic_preferredFontForHeadingTextWithContentSizeCategory:categoryCopy isForPrint:{-[ICTTTextController isForPrint](self, "isForPrint")}];

  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (id)subheadingAttributesWithContentSizeCategory:(id)category
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB7D0];
  categoryCopy = category;
  ic_mutableDefaultParagraphStyle = [v4 ic_mutableDefaultParagraphStyle];
  [ic_mutableDefaultParagraphStyle setLineHeightMultiple:1.0];
  [ic_mutableDefaultParagraphStyle setLineSpacing:4.0];
  v11[0] = *MEMORY[0x1E69DB688];
  v7 = [ic_mutableDefaultParagraphStyle copy];
  v12[0] = v7;
  v11[1] = *MEMORY[0x1E69DB648];
  v8 = [MEMORY[0x1E69DB878] ic_preferredFontForSubheadingTextWithContentSizeCategory:categoryCopy isForPrint:{-[ICTTTextController isForPrint](self, "isForPrint")}];

  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (id)captionAttributesWithContentSizeCategory:(id)category
{
  v12[2] = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  ic_mutableDefaultParagraphStyle = [MEMORY[0x1E69DB7D0] ic_mutableDefaultParagraphStyle];
  [ic_mutableDefaultParagraphStyle setAlignment:1];
  if (categoryCopy)
  {
    v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:categoryCopy];
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10] compatibleWithTraitCollection:v5];
    ic_fontWithSingleLineA = [v6 ic_fontWithSingleLineA];
  }

  else
  {
    v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
    ic_fontWithSingleLineA = [v5 ic_fontWithSingleLineA];
  }

  v11[0] = *MEMORY[0x1E69DB688];
  v8 = [ic_mutableDefaultParagraphStyle copy];
  v11[1] = *MEMORY[0x1E69DB648];
  v12[0] = v8;
  v12[1] = ic_fontWithSingleLineA;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (id)bodyAttributesWithContentSizeCategory:(id)category
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB7D0];
  categoryCopy = category;
  ic_mutableDefaultParagraphStyle = [v4 ic_mutableDefaultParagraphStyle];
  [objc_opt_class() bodyParagraphSpacing];
  [ic_mutableDefaultParagraphStyle setParagraphSpacing:?];
  [objc_opt_class() bodyParagraphSpacingBefore];
  [ic_mutableDefaultParagraphStyle setParagraphSpacingBefore:?];
  [ic_mutableDefaultParagraphStyle setLineHeightMultiple:1.0];
  [ic_mutableDefaultParagraphStyle setLineSpacing:4.0];
  v11[0] = *MEMORY[0x1E69DB688];
  v7 = [ic_mutableDefaultParagraphStyle copy];
  v12[0] = v7;
  v11[1] = *MEMORY[0x1E69DB648];
  v8 = [MEMORY[0x1E69DB878] ic_preferredFontForBodyTextWithContentSizeCategory:categoryCopy isForPrint:{-[ICTTTextController isForPrint](self, "isForPrint")}];

  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (id)defaultListAttributesWithContentSizeCategory:(id)category
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB7D0];
  categoryCopy = category;
  ic_mutableDefaultParagraphStyle = [v4 ic_mutableDefaultParagraphStyle];
  [ic_mutableDefaultParagraphStyle setParagraphSpacing:0.0];
  [ic_mutableDefaultParagraphStyle setParagraphSpacingBefore:0.0];
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v8 = 4.0;
  if (IsTextKit2Enabled)
  {
    v8 = 2.0;
  }

  [ic_mutableDefaultParagraphStyle setLineSpacing:v8];
  [ic_mutableDefaultParagraphStyle setLineHeightMultiple:1.0];
  v13[0] = *MEMORY[0x1E69DB688];
  v9 = [ic_mutableDefaultParagraphStyle copy];
  v14[0] = v9;
  v13[1] = *MEMORY[0x1E69DB648];
  v10 = [MEMORY[0x1E69DB878] ic_preferredFontForBodyTextWithContentSizeCategory:categoryCopy isForPrint:{-[ICTTTextController isForPrint](self, "isForPrint")}];

  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v11;
}

- (id)checklistAttributesWithContentSizeCategory:(id)category
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB7D0];
  categoryCopy = category;
  ic_mutableDefaultParagraphStyle = [v4 ic_mutableDefaultParagraphStyle];
  [ic_mutableDefaultParagraphStyle setParagraphSpacing:5.0];
  [ic_mutableDefaultParagraphStyle setParagraphSpacingBefore:5.0];
  [ic_mutableDefaultParagraphStyle setLineHeightMultiple:1.0];
  v11[0] = *MEMORY[0x1E69DB688];
  v7 = [ic_mutableDefaultParagraphStyle copy];
  v12[0] = v7;
  v11[1] = *MEMORY[0x1E69DB648];
  v8 = [MEMORY[0x1E69DB878] ic_preferredFontForBodyTextWithContentSizeCategory:categoryCopy isForPrint:{-[ICTTTextController isForPrint](self, "isForPrint")}];

  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (id)fixedWidthAttributesWithContentSizeCategory:(id)category
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DB7D0];
  categoryCopy = category;
  ic_mutableDefaultParagraphStyle = [v3 ic_mutableDefaultParagraphStyle];
  v6 = [MEMORY[0x1E69DB878] ic_preferredFontForFixedWidthTextWithContentSizeCategory:categoryCopy];

  [ic_mutableDefaultParagraphStyle setLineSpacing:2.0];
  v10[0] = *MEMORY[0x1E69DB688];
  v7 = [ic_mutableDefaultParagraphStyle copy];
  v10[1] = *MEMORY[0x1E69DB648];
  v11[0] = v7;
  v11[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

- (id)typingAttributesForRange:(_NSRange)range forSelectionChange:(BOOL)change forSettingTextStyle:(BOOL)style currentTypingAttributes:(id)attributes inTextStorage:(id)storage
{
  styleCopy = style;
  length = range.length;
  location = range.location;
  attributesCopy = attributes;
  storageCopy = storage;
  v15 = [storageCopy length];
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
  v20 = [storageCopy logicalRangeForLocation:v17.location];
  v22 = v21;
  if ([storageCopy convertAttributes])
  {
    [(ICTTTextController *)self modelForStyleAttributes:attributesCopy filterAttributes:0];
    v23 = storageCopy;
    v24 = styleCopy;
    v26 = v25 = self;
    v27 = [(ICTTTextController *)v25 styleForModelAttributes:v26];

    self = v25;
    styleCopy = v24;
    storageCopy = v23;
    v18 = v17.location;
    v19 = v17.length;
    attributesCopy = v27;
  }

  v65 = 0;
  v66 = 0;
  string = [storageCopy string];
  [string getParagraphStart:0 end:&v66 contentsEnd:0 forRange:{0, 0}];

  string2 = [storageCopy string];
  [string2 getParagraphStart:&v65 end:0 contentsEnd:0 forRange:{v18, v19}];

  v30 = v66;
  v31 = v20 + v22;
  if (v66 >= v31)
  {
    v30 = v31;
  }

  v66 = v30;
  if (!change && !styleCopy)
  {
    if (!v22)
    {
      objc_opt_class();
      v32 = MEMORY[0x1E69B7600];
      v33 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
      v34 = ICDynamicCast();
      isList = [v34 isList];

      if (isList)
      {
        v36 = [attributesCopy mutableCopy];
        [v36 removeObjectForKey:*v32];
        v37 = attributesCopy;
        goto LABEL_21;
      }
    }

    goto LABEL_23;
  }

  if (!v18 && !v19 && !v30)
  {
    v38 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B7600]];

    if (v38)
    {
      goto LABEL_23;
    }

    [(ICTTTextController *)self defaultTypingAttributesForEmptyDocument];
    attributesCopy = v37 = attributesCopy;
    goto LABEL_22;
  }

  if (v19)
  {
    v37 = [storageCopy attributesAtIndex:v18 effectiveRange:0];
    v39 = [(ICTTTextController *)self styleForModelAttributes:v37];
    v40 = [v39 mutableCopy];

    v41 = [(ICTTTextController *)self removeAttribute:*MEMORY[0x1E69DB670] ifInconsistentAtLocation:v18 inTextStorage:storageCopy forNewTypingAttributes:v40];

    if (!v41)
    {
LABEL_22:

      goto LABEL_23;
    }

    v42 = [(ICTTTextController *)self copyNSParagraphStylefromAttributes:v37 toAttributes:v41];

    v36 = v42;
LABEL_21:
    attributesCopy = v36;
    goto LABEL_22;
  }

  v50 = v65;
  if (!styleCopy && v18 == v65)
  {
    objc_opt_class();
    v51 = ICDynamicCast();
    v52 = -[ICTTTextController strippedTypingAttributesAtStartOfParagraph:atTheEndOfDocument:isTyping:](self, "strippedTypingAttributesAtStartOfParagraph:atTheEndOfDocument:isTyping:", attributesCopy, v18 == v31, [v51 isTypingOrMarkingText]);

    attributesCopy = v52;
  }

  if (v18 <= v31)
  {
    objc_opt_class();
    v53 = ICDynamicCast();
    isTypingOrMarkingText = [v53 isTypingOrMarkingText];

    if (isTypingOrMarkingText)
    {
      if (v18 >= v31)
      {
        v37 = 0;
        goto LABEL_22;
      }

      v37 = [storageCopy attributesAtIndex:v18 effectiveRange:0];
      v55 = [attributesCopy mutableCopy];
      v56 = [(ICTTTextController *)self copyAttribute:*MEMORY[0x1E69B7600] fromAttributes:v37 toAttributes:v55];
      goto LABEL_46;
    }

    v57 = [(ICTTTextController *)self referenceAttributesForLocation:v18 textStorage:storageCopy currentParagraphStart:v65];
    v58 = v57;
    if (v18 == v50)
    {
      if (styleCopy)
      {
        v59 = MEMORY[0x1E69B7600];
        v60 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
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

    v56 = [(ICTTTextController *)self removeAttribute:*MEMORY[0x1E69DB670] ifInconsistentAtLocation:v18 inTextStorage:storageCopy forNewTypingAttributes:v55];
LABEL_46:
    v63 = v56;

    if (!v63)
    {
      goto LABEL_22;
    }

    v64 = [(ICTTTextController *)self copyNSParagraphStylefromAttributes:v37 toAttributes:v63];

    v58 = v64;
    attributesCopy = v58;
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
  allKeys = [attributesCopy allKeys];
  v46 = [v44 setWithArray:allKeys];
  LODWORD(v43) = [v43 intersectsSet:v46];

  if (v43)
  {
    v47 = [attributesCopy mutableCopy];
    allObjects = [typingAttributesForRange_forSelectionChange_forSettingTextStyle_currentTypingAttributes_inTextStorage__stripTypingAttributeKeys allObjects];
    [v47 removeObjectsForKeys:allObjects];

    attributesCopy = v47;
  }

  return attributesCopy;
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
    headingAttributes = [(ICTTTextController *)self headingAttributes];
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
    headingAttributes = ;
  }

  v6 = headingAttributes;
  v7 = [headingAttributes mutableCopy];
  [v7 setObject:v4 forKey:*MEMORY[0x1E69B7600]];
  zoomController = [(ICTTTextController *)self zoomController];
  v9 = [zoomController zoomFontInAttributes:v7];

  v10 = [v9 copy];

  return v10;
}

- (id)strippedTypingAttributesAtStartOfParagraph:(id)paragraph atTheEndOfDocument:(BOOL)document isTyping:(BOOL)typing
{
  documentCopy = document;
  paragraphCopy = paragraph;
  v9 = [paragraphCopy mutableCopy];
  [v9 removeObjectForKey:*MEMORY[0x1E69DB670]];
  if (documentCopy)
  {
    v10 = MEMORY[0x1E69B7600];
    v11 = [paragraphCopy objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
    v12 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:3];
    v13 = [v12 mutableCopy];

    [v13 setIndent:{objc_msgSend(v11, "indent")}];
    v14 = [v13 copy];
    [v9 setObject:v14 forKey:*v10];

    [v9 removeObjectForKey:*MEMORY[0x1E69DB688]];
    if (!typing)
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

- (id)copyAttribute:(id)attribute fromAttributes:(id)attributes toAttributes:(id)toAttributes
{
  attributeCopy = attribute;
  attributesCopy = attributes;
  toAttributesCopy = toAttributes;
  v10 = [attributesCopy objectForKeyedSubscript:attributeCopy];

  if (v10)
  {
    v11 = [attributesCopy objectForKeyedSubscript:attributeCopy];
    [toAttributesCopy setObject:v11 forKeyedSubscript:attributeCopy];
  }

  else
  {
    [toAttributesCopy removeObjectForKey:attributeCopy];
  }

  return toAttributesCopy;
}

- (id)copyNSParagraphStylefromAttributes:(id)attributes toAttributes:(id)toAttributes
{
  attributesCopy = attributes;
  toAttributesCopy = toAttributes;
  v7 = *MEMORY[0x1E69DB688];
  v8 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB688]];

  if (v8)
  {
    v9 = [attributesCopy objectForKeyedSubscript:v7];
    v10 = [v9 mutableCopy];

    v11 = MEMORY[0x1E69B7600];
    v12 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
    if (!v12 || (v13 = v12, objc_opt_class(), [attributesCopy objectForKeyedSubscript:*v11], v14 = objc_claimAutoreleasedReturnValue(), ICDynamicCast(), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "style"), v15, v14, v13, v16 == 3))
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
    [toAttributesCopy setObject:v23 forKeyedSubscript:v7];
  }

  else
  {
    [toAttributesCopy removeObjectForKey:v7];
  }

  return toAttributesCopy;
}

- (id)referenceAttributesForLocation:(unint64_t)location textStorage:(id)storage currentParagraphStart:(unint64_t)start
{
  storageCopy = storage;
  v8 = storageCopy;
  if (location != start || [storageCopy length] <= location)
  {
    if (location <= 1)
    {
      locationCopy = 1;
    }

    else
    {
      locationCopy = location;
    }

    location = locationCopy - 1;
  }

  v10 = [v8 attributesAtIndex:location effectiveRange:0];

  return v10;
}

- (id)removeAttribute:(id)attribute ifInconsistentAtLocation:(unint64_t)location inTextStorage:(id)storage forNewTypingAttributes:(id)attributes
{
  attributeCopy = attribute;
  storageCopy = storage;
  attributesCopy = attributes;
  if ([storageCopy length] <= location || (location <= 1 ? (v12 = 1) : (v12 = location), objc_msgSend(storageCopy, "attribute:atIndex:effectiveRange:", attributeCopy, v12 - 1, 0), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(storageCopy, "attribute:atIndex:effectiveRange:", attributeCopy, location, 0), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14 != v13))
  {
    [attributesCopy removeObjectForKey:attributeCopy];
  }

  return attributesCopy;
}

- (void)addBIToStyle:(id)style
{
  styleCopy = style;
  v3 = [styleCopy objectForKeyedSubscript:*MEMORY[0x1E69B75E8]];
  v4 = v3;
  if (v3)
  {
    intValue = [v3 intValue];
    v6 = *MEMORY[0x1E69DB648];
    v7 = [styleCopy objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
    v8 = [MEMORY[0x1E69B7890] convertFont:v7 toBold:intValue & 1 toItalic:(intValue >> 1) & 1];
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
      [styleCopy setObject:v8 forKeyedSubscript:v6];
    }
  }
}

- (id)styleForModelAttributes:(id)attributes contentSizeCategory:(id)category
{
  v132 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  categoryCopy = category;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  allowedAttributesForStyle = [MEMORY[0x1E69B7898] allowedAttributesForStyle];
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v8 = attributesCopy;
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
        if ([allowedAttributesForStyle containsObject:v14])
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

  v21 = [MEMORY[0x1E69DB878] ic_preferredFontForBodyTextWithContentSizeCategory:categoryCopy isForPrint:{-[ICTTTextController isForPrint](self, "isForPrint")}];
  v123 = *MEMORY[0x1E69DB648];
  [v6 setObject:v21 forKeyedSubscript:?];

  v22 = MEMORY[0x1E69B7600];
  v23 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
  if (!v23)
  {
    bodyAttributes = [(ICTTTextController *)self bodyAttributes];
    [v6 addEntriesFromDictionary:bodyAttributes];

    [(ICTTTextController *)self addBIToStyle:v6];
    v28 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:3];
    [v6 setObject:v28 forKeyedSubscript:*v22];

    v24 = [v6 objectForKeyedSubscript:*v22];
    alignment = 4;
    writingDirection = -1;
    goto LABEL_39;
  }

  v24 = v23;
  style = [v23 style];
  if (style > 4)
  {
    if ((style - 100) >= 3)
    {
      if (style == 5)
      {
        captionAttributes = [(ICTTTextController *)self captionAttributes];
        goto LABEL_34;
      }

      if (style != 103)
      {
        goto LABEL_35;
      }

      captionAttributes = [(ICTTTextController *)self checklistAttributesWithContentSizeCategory:categoryCopy];
    }

    else
    {
      captionAttributes = [(ICTTTextController *)self defaultListAttributesWithContentSizeCategory:categoryCopy];
    }

LABEL_34:
    v29 = captionAttributes;
    [v6 addEntriesFromDictionary:captionAttributes];

    goto LABEL_35;
  }

  if (style > 1)
  {
    if (style == 2)
    {
      captionAttributes = [(ICTTTextController *)self subheadingAttributesWithContentSizeCategory:categoryCopy];
    }

    else
    {
      if (style == 3)
      {
        [(ICTTTextController *)self bodyAttributesWithContentSizeCategory:categoryCopy];
      }

      else
      {
        [(ICTTTextController *)self fixedWidthAttributesWithContentSizeCategory:categoryCopy];
      }
      captionAttributes = ;
    }

    goto LABEL_34;
  }

  if (!style)
  {
    captionAttributes = [(ICTTTextController *)self titleAttributesWithContentSizeCategory:categoryCopy];
    goto LABEL_34;
  }

  if (style == 1)
  {
    captionAttributes = [(ICTTTextController *)self headingAttributesWithContentSizeCategory:categoryCopy];
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

  writingDirection = [v24 writingDirection];
  alignment = [v24 alignment];

LABEL_39:
  if ([(ICTTTextController *)self keepNSTextTableAttributes])
  {
    v36 = *MEMORY[0x1E69DB688];
    v37 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];
    textBlocks = [v37 textBlocks];
    v39 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_27];
    v40 = [textBlocks filteredArrayUsingPredicate:v39];

    if ([v40 count])
    {
      v41 = [v126 objectForKeyedSubscript:v36];
      if (v41)
      {
        [v126 objectForKeyedSubscript:v36];
        v43 = v42 = v24;
        ic_mutableDefaultParagraphStyle = [v43 mutableCopy];

        v24 = v42;
      }

      else
      {
        ic_mutableDefaultParagraphStyle = [MEMORY[0x1E69DB7D0] ic_mutableDefaultParagraphStyle];
      }

      [ic_mutableDefaultParagraphStyle setTextBlocks:v40];
      v45 = [ic_mutableDefaultParagraphStyle copy];
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

    selfCopy2 = self;
  }

  else
  {
    v60 = *MEMORY[0x1E69DB6B8];
    v61 = [v126 objectForKeyedSubscript:*MEMORY[0x1E69DB6B8]];

    selfCopy2 = self;
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
        tintColor = [MEMORY[0x1E69DC888] tintColor];
        goto LABEL_65;
      }
    }
  }

  v66 = [v126 objectForKeyedSubscript:*MEMORY[0x1E69B7948]];

  if (v66)
  {
    tintColor = [MEMORY[0x1E69DC888] ICHashtagUnconfirmedColor];
LABEL_65:
    v74 = tintColor;
    [v126 setObject:tintColor forKeyedSubscript:*v63];

    goto LABEL_66;
  }

  v68 = [v126 objectForKeyedSubscript:*MEMORY[0x1E69B7958]];

  if (v68)
  {
    tintColor = [MEMORY[0x1E69DC888] ICMentionUnconfirmedColor];
    goto LABEL_65;
  }

  v73 = [v126 objectForKeyedSubscript:*MEMORY[0x1E69B7910]];

  if (v73)
  {
    tintColor = [MEMORY[0x1E69DC888] ICLinkAcceleratorUnconfirmedColor];
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
    tintColor = ;
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
      tintColor = ICColorForEmphasisColorType();
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
      v88 = [v86 nativeFontForStyle:objc_msgSend(v24 contentSizeCategory:"style") isForPrint:{categoryCopy, -[ICTTTextController isForPrint](selfCopy2, "isForPrint")}];
      [v126 setObject:v88 forKeyedSubscript:v123];

      [(ICTTTextController *)selfCopy2 addBIToStyle:v126];
    }
  }

  v89 = MEMORY[0x1E69B7610];
  v90 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B7610]];
  if (v90)
  {
    v91 = [v8 objectForKeyedSubscript:*v89];
    integerValue = [v91 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v93 = [v126 objectForKeyedSubscript:v123];
  [v93 pointSize];
  v95 = v94;

  if (v86 || !integerValue)
  {
    if (!integerValue)
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

  v101 = [MEMORY[0x1E696AD98] numberWithDouble:round(integerValue * 0.2 * v95)];
  [v126 setObject:v101 forKeyedSubscript:*MEMORY[0x1E69DB610]];

LABEL_83:
  v102 = *MEMORY[0x1E69DB5F8];
  v103 = [v126 objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];

  if (v103)
  {
    v104 = [v126 objectForKeyedSubscript:v102];
    if ([v104 conformsToProtocol:&unk_1F4FC5D80] && (objc_msgSend(MEMORY[0x1E69B7888], "isInlineAttachment:", v104) & 1) == 0)
    {
      ic_mutableDefaultParagraphStyle2 = [MEMORY[0x1E69DB7D0] ic_mutableDefaultParagraphStyle];
      [objc_opt_class() attachmentParagraphSpacing];
      [ic_mutableDefaultParagraphStyle2 setParagraphSpacing:?];
      [objc_opt_class() attachmentParagraphSpacingBefore];
      [ic_mutableDefaultParagraphStyle2 setParagraphSpacingBefore:?];
      [ic_mutableDefaultParagraphStyle2 setBaseWritingDirection:writingDirection];
      [ic_mutableDefaultParagraphStyle2 setAlignment:alignment];
      v106 = [ic_mutableDefaultParagraphStyle2 copy];
      [v126 setObject:v106 forKeyedSubscript:*MEMORY[0x1E69DB688]];

      v47 = v126;
    }
  }

  zoomController = [(ICTTTextController *)selfCopy2 zoomController];

  if (!zoomController)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((self.zoomController) != nil)" functionName:"-[ICTTTextController styleForModelAttributes:contentSizeCategory:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.zoomController"}];
  }

  zoomController2 = [(ICTTTextController *)selfCopy2 zoomController];
  v109 = [zoomController2 zoomFontInAttributes:v47];

  if ([(ICTTTextController *)selfCopy2 disableSingleLineA])
  {
    v110 = [v109 objectForKey:v123];

    if (v110)
    {
      v111 = [v109 objectForKeyedSubscript:v123];
      ic_fontWithoutSingleLineA = [v111 ic_fontWithoutSingleLineA];
      [v109 setObject:ic_fontWithoutSingleLineA forKeyedSubscript:v123];
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

- (void)guessFontSizeThresholdsForTTStylesInAttributedString:(id)string
{
  v48 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  [(ICTTTextController *)self resetGuessedFontSizes];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__84;
  v45 = __Block_byref_object_dispose__84;
  array = [MEMORY[0x1E695DF70] array];
  string = [stringCopy string];
  v6 = [stringCopy length];
  v7 = *MEMORY[0x1E69DB688];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __75__ICTTTextController_guessFontSizeThresholdsForTTStylesInAttributedString___block_invoke;
  v37[3] = &unk_1E846A5D8;
  v32 = string;
  v38 = v32;
  v8 = stringCopy;
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
        integerValue = [v22 integerValue];

        v24 = [v21 objectAtIndexedSubscript:1];
        [v24 doubleValue];
        v26 = v25;

        if (integerValue > v11)
        {
          v11 = integerValue;
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

        if (integerValue < 3)
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

- (unint64_t)defaultTabIntervalInAttributedString:(id)string
{
  stringCopy = string;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  ic_range = [stringCopy ic_range];
  v5 = *MEMORY[0x1E69DB688];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__ICTTTextController_defaultTabIntervalInAttributedString___block_invoke;
  v9[3] = &unk_1E846E768;
  v9[4] = &v10;
  [stringCopy enumerateAttribute:v5 inRange:ic_range options:v6 usingBlock:{0, v9}];
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

- (id)indentsForIndividualParagraphHeadIndentsInAttributedString:(id)string
{
  v30 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__84;
  v27 = __Block_byref_object_dispose__84;
  v28 = [MEMORY[0x1E695DFA8] set];
  ic_range = [stringCopy ic_range];
  v5 = *MEMORY[0x1E69DB688];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __81__ICTTTextController_indentsForIndividualParagraphHeadIndentsInAttributedString___block_invoke;
  v22[3] = &unk_1E846E768;
  v22[4] = &v23;
  [stringCopy enumerateAttribute:v5 inRange:ic_range options:v6 usingBlock:{0, v22}];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allObjects = [v24[5] allObjects];
  v9 = [allObjects sortedArrayUsingSelector:sel_compare_];

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
        [dictionary setObject:v15 forKeyedSubscript:v14];

        ++v11;
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v29 count:16];
    }

    while (v10);
  }

  v16 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];

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

- (void)prepareIndentInformationInAttributedString:(id)string
{
  stringCopy = string;
  [(ICTTTextController *)self setDefaultTabInterval:[(ICTTTextController *)self defaultTabIntervalInAttributedString:?]];
  if (![(ICTTTextController *)self defaultTabInterval])
  {
    v4 = [(ICTTTextController *)self indentsForIndividualParagraphHeadIndentsInAttributedString:stringCopy];
    [(ICTTTextController *)self setIndentForHeadIndent:v4];
  }
}

- (void)resetIndentInformation
{
  [(ICTTTextController *)self setDefaultTabInterval:0];

  [(ICTTTextController *)self setIndentForHeadIndent:0];
}

- (id)modelForStyleAttributes:(id)attributes filterAttributes:(BOOL)filterAttributes pasteboardAttributedString:(id)string
{
  filterAttributesCopy = filterAttributes;
  attributesCopy = attributes;
  stringCopy = string;
  zoomController = [(ICTTTextController *)self zoomController];
  [zoomController zoomFactor];
  v12 = v11;

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v155 = *MEMORY[0x1E69DB648];
  v14 = [attributesCopy objectForKeyedSubscript:?];
  v15 = v14;
  v16 = MEMORY[0x1E69B7600];
  if (filterAttributesCopy && v14)
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
  v22 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B75E8]];

  if (v22)
  {
    v23 = [attributesCopy objectForKeyedSubscript:*v21];
    v24 = *v21;
LABEL_18:
    [v13 setObject:v23 forKeyedSubscript:v24];
  }

LABEL_19:
  CopyWithAlpha = *MEMORY[0x1E69DB758];
  v34 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB758]];
  if (v34)
  {
    v35 = v34;
    CopyWithAlpha = [attributesCopy objectForKeyedSubscript:CopyWithAlpha];
    integerValue = [CopyWithAlpha integerValue];

    if (integerValue)
    {
      [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69B7620]];
    }
  }

  v37 = *MEMORY[0x1E69DB6B8];
  v38 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB6B8]];
  if (v38)
  {
    v39 = v38;
    CopyWithAlpha = [attributesCopy objectForKeyedSubscript:v37];
    integerValue2 = [CopyWithAlpha integerValue];

    if (integerValue2)
    {
      [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69B7608]];
    }
  }

  v41 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB6F8]];

  v42 = MEMORY[0x1E69B75D8];
  if (v41)
  {
    v43 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB6F0]];
    CopyWithAlpha = ICEmphasisColorTypeForNSTextHighlightColorScheme();

    v44 = [MEMORY[0x1E696AD98] numberWithInteger:CopyWithAlpha];
  }

  else
  {
    v45 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B75D8]];

    if (!v45)
    {
      goto LABEL_30;
    }

    v44 = [attributesCopy objectForKeyedSubscript:*v42];
  }

  v46 = v44;
  [v13 setObject:v44 forKeyedSubscript:*v42];

LABEL_30:
  if (!filterAttributesCopy)
  {
    v47 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
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

  v49 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E6999A70]];
  selfCopy = self;
  if (!v49 || ([attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B7970]], (CopyWithAlpha = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v50 = *MEMORY[0x1E69DB670];
    v51 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB670]];

    if (v49)
    {
    }

    if (v51)
    {
      v52 = [attributesCopy objectForKeyedSubscript:v50];
      [v13 setObject:v52 forKeyedSubscript:v50];

      v53 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
      [v53 CGColor];
      tintColor = [MEMORY[0x1E69DC888] tintColor];
      [tintColor CGColor];
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
  v57 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B7610]];

  if (v57)
  {
    v58 = [attributesCopy objectForKeyedSubscript:*v56];
    [v13 setObject:v58 forKeyedSubscript:*v56];
  }

  v59 = *MEMORY[0x1E69DB778];
  v60 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB778]];

  v61 = selfCopy;
  v62 = MEMORY[0x1E69B7600];
  if (v60)
  {
    v63 = [attributesCopy objectForKeyedSubscript:v59];
    [v13 setObject:v63 forKeyedSubscript:v59];
  }

  v64 = *MEMORY[0x1E69DB5F8];
  v65 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];

  if (v65)
  {
    v66 = [attributesCopy objectForKeyedSubscript:v64];
    [v13 setObject:v66 forKeyedSubscript:v64];
  }

  v67 = *MEMORY[0x1E69DB5F0];
  v68 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB5F0]];

  if (v68)
  {
    v69 = [attributesCopy objectForKeyedSubscript:v67];
    [v13 setObject:v69 forKeyedSubscript:v67];
  }

  v70 = MEMORY[0x1E69B75F8];
  v71 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B75F8]];

  if (v71)
  {
    v72 = [attributesCopy objectForKeyedSubscript:*v70];
    [v13 setObject:v72 forKeyedSubscript:*v70];
  }

  v156 = stringCopy;
  v73 = [attributesCopy objectForKeyedSubscript:*v62];

  if (v73)
  {
    v74 = [attributesCopy objectForKeyedSubscript:*v62];
    [v13 setObject:v74 forKeyedSubscript:*v62];
  }

  v75 = *MEMORY[0x1E69DB688];
  v76 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB688]];

  v159 = v15;
  if (v76)
  {
    v77 = [attributesCopy objectForKeyedSubscript:v75];
    v78 = [attributesCopy objectForKeyedSubscript:*v62];
    todo = [v78 mutableCopy];

    textLists = [v77 textLists];
    if ([textLists count])
    {
      isList = [todo isList];

      if ((isList & 1) == 0)
      {
        textLists2 = [v77 textLists];
        lastObject = [textLists2 lastObject];

        v84 = lastObject;
        markerFormat = [lastObject markerFormat];
        if ([markerFormat containsString:@"{hyphen}"])
        {
          v86 = MEMORY[0x1E69B78B8];
          v87 = 101;
        }

        else
        {
          if ([markerFormat containsString:@"{decimal}"])
          {
            v88 = [MEMORY[0x1E69B78B8] paragraphStyleNamed:102];

            if ([v84 startingItemNumber] < 1)
            {
              startingItemNumber = 0;
            }

            else
            {
              startingItemNumber = [v84 startingItemNumber];
            }

            [v88 setStartingItemNumber:startingItemNumber];
            goto LABEL_87;
          }

          if ([markerFormat containsString:@"{check}"] & 1) != 0 || (objc_msgSend(v84, "markerTextAttachment"), v154 = v84, v103 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v103, v84 = v154, (isKindOfClass))
          {
            v88 = [MEMORY[0x1E69B78B8] paragraphStyleNamed:103];

            v105 = [attributesCopy objectForKeyedSubscript:v37];

            if (!v105)
            {
              goto LABEL_87;
            }

            todo = [v88 todo];
            [todo todoWithDone:1];
            v107 = v106 = v84;
            [v88 setTodo:v107];

            v84 = v106;
LABEL_61:

LABEL_87:
            textLists3 = [v77 textLists];
            [v88 setIndent:{objc_msgSend(textLists3, "count") - 1}];

            [v88 setNeedsListCleanup:1];
            todo = v88;
            v61 = selfCopy;
LABEL_88:
            v62 = MEMORY[0x1E69B7600];
            if (todo)
            {
              [todo setAlignment:{objc_msgSend(v77, "alignment")}];
              [todo setWritingDirection:{objc_msgSend(v77, "baseWritingDirection")}];
              v111 = [todo copy];
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
              parentIntent = [v93 parentIntent];

              v93 = parentIntent;
            }

            while (parentIntent);
          }

          [v94 setBlockQuoteLevel:v95];
          v93 = 0;
          todo = v94;
          v61 = selfCopy;
        }
      }
    }

    else
    {
      if ([(ICTTTextController *)selfCopy defaultTabInterval])
      {
        [v77 headIndent];
        unsignedIntegerValue = vcvtpd_u64_f64(fabs(v90 / [(ICTTTextController *)selfCopy defaultTabInterval]));
      }

      else
      {
        indentForHeadIndent = [(ICTTTextController *)selfCopy indentForHeadIndent];

        if (indentForHeadIndent)
        {
          indentForHeadIndent2 = [(ICTTTextController *)selfCopy indentForHeadIndent];
          v100 = MEMORY[0x1E696AD98];
          [v77 headIndent];
          v101 = [v100 numberWithDouble:?];
          v102 = [indentForHeadIndent2 objectForKeyedSubscript:v101];
          unsignedIntegerValue = [v102 unsignedIntegerValue];

          v61 = selfCopy;
        }

        else
        {
          v108 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
          {
            [ICTTTextController modelForStyleAttributes:v108 filterAttributes:? pasteboardAttributedString:?];
          }

          unsignedIntegerValue = 0;
        }
      }

      v109 = [MEMORY[0x1E69B78B8] paragraphStyleNamed:3];

      [v109 setIndent:unsignedIntegerValue];
      todo = v109;
    }

    goto LABEL_88;
  }

LABEL_91:
  v112 = [attributesCopy objectForKeyedSubscript:v75];
  v113 = [v13 objectForKeyedSubscript:*v62];
  v114 = v113;
  if (filterAttributesCopy && v112)
  {
    if (v113)
    {
      alignment = [v113 alignment];
      if (alignment == *MEMORY[0x1E69B7638])
      {
LABEL_102:
        writingDirection = [v114 writingDirection];
        if (writingDirection == [v112 baseWritingDirection])
        {
          goto LABEL_110;
        }

        v121 = [v114 mutableCopy];
LABEL_106:
        v122 = v121;

        [v122 setWritingDirection:{objc_msgSend(v112, "baseWritingDirection")}];
        alignment2 = [v122 alignment];
        if (alignment2 == *MEMORY[0x1E69B7640] || (v124 = [v122 alignment], v124 == *MEMORY[0x1E69B7648]))
        {
          [v122 setAlignment:*MEMORY[0x1E69B7638]];
        }

        v125 = [v122 copy];
        [v13 setObject:v125 forKeyedSubscript:*v62];

LABEL_110:
        if (filterAttributesCopy)
        {
          goto LABEL_147;
        }

        goto LABEL_111;
      }

      v116 = [v114 mutableCopy];
    }

    else
    {
      alignment3 = [v112 alignment];
      if (alignment3 == *MEMORY[0x1E69B7638])
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
  if (filterAttributesCopy)
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
    fontName = [v127 fontName];
    fontName2 = [v15 fontName];
    v135 = [fontName isEqualToString:fontName2];

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
      integerValue3 = [v145 integerValue];

      v147 = objc_alloc(MEMORY[0x1E69B7890]);
      if (v135)
      {
        fontName3 = 0;
      }

      else
      {
        fontName3 = [v159 fontName];
      }

      v149 = 0.0;
      if (v137 != v138)
      {
        [v159 pointSize];
        v149 = v150 / v12;
      }

      v151 = [v147 initWithName:fontName3 size:integerValue3 hints:v149];
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

    style = [v114 style];
    if (style == 2)
    {
      ic_preferredFontForSubheadingText = [MEMORY[0x1E69DB878] ic_preferredFontForSubheadingText];
    }

    else if (style == 1)
    {
      ic_preferredFontForSubheadingText = [MEMORY[0x1E69DB878] ic_preferredFontForHeadingText];
    }

    else
    {
      if (style)
      {
        [MEMORY[0x1E69DB878] ic_preferredFontForBodyText];
      }

      else
      {
        [MEMORY[0x1E69DB878] ic_preferredFontForTitleText];
      }
      ic_preferredFontForSubheadingText = ;
    }

    v141 = ic_preferredFontForSubheadingText;
    v163 = 0;
    v162 = 0;
    v161 = 0;
    v160 = 0;
    [MEMORY[0x1E69B7890] font:v15 isBold:&v163 isItalic:&v162 isMonospace:&v161];
    [MEMORY[0x1E69B7890] font:v141 isBold:&v162 + 1 isItalic:&v161 + 1 isMonospace:&v160];
    familyName = [v15 familyName];
    familyName2 = [v127 familyName];
    if ([familyName isEqualToString:familyName2] && v163 == HIBYTE(v162))
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

- (void)styleFontInTextStorage:(id)storage inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  [storageCopy beginEditing];
  [(ICTTTextController *)self styleFontInAttributedString:storageCopy inRange:location contentSizeCategory:length, 0];
  [storageCopy endEditing];
}

- (void)styleFontInAttributedString:(id)string inRange:(_NSRange)range contentSizeCategory:(id)category
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  categoryCopy = category;
  v15 = 0;
  v16 = 0;
  if (location < location + length)
  {
    v11 = location;
    do
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [stringCopy attributesAtIndex:v11 longestEffectiveRange:&v15 inRange:{location, length}];
      v14 = [(ICTTTextController *)self styleForModelAttributes:v13 contentSizeCategory:categoryCopy];
      [stringCopy setAttributes:v14 range:{v15, v16}];

      v11 = v16 + v15;
      objc_autoreleasePoolPop(v12);
    }

    while (v11 < location + length);
  }
}

- (void)styleText:(id)text inRange:(_NSRange)range fixModelAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  length = range.length;
  location = range.location;
  textCopy = text;
  if ([textCopy length])
  {
    if (location >= [textCopy length])
    {
      length = 0;
      location = [textCopy length] - 1;
    }

    string = [textCopy string];
    v10 = [string paragraphRangeForRange:{location, length}];
    v12 = v11;

    v13 = length + location;
    if (v13 == v10 + v12 && v13 < [textCopy length])
    {
      string2 = [textCopy string];
      v15 = [string2 paragraphRangeForRange:{v13, 0}];
      v17 = v16;

      v21.location = v10;
      v21.length = v12;
      v22.location = v15;
      v22.length = v17;
      v18 = NSUnionRange(v21, v22);
      v10 = v18.location;
      v12 = v18.length;
    }

    [(ICTTTextController *)self styleText:textCopy inExactRange:v10 fixModelAttributes:v12, attributesCopy];
  }
}

- (void)styleText:(id)text inExactRange:(_NSRange)range fixModelAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  length = range.length;
  location = range.location;
  v26[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  v28.location = [textCopy ic_range];
  v28.length = v10;
  v27.location = location;
  v27.length = length;
  v11 = NSIntersectionRange(v27, v28);
  if (v11.length)
  {
    if (attributesCopy)
    {
      [textCopy setDisableUndoCoalesceBreaking:1];
      [(ICTTTextController *)self fixModelAttributesInTextStorage:textCopy inRange:v11.location, v11.length];
      [textCopy setDisableUndoCoalesceBreaking:0];
    }

    [textCopy beginTemporaryAttributeEditing];
    v12 = *MEMORY[0x1E69DB688];
    v13 = [textCopy attribute:*MEMORY[0x1E69DB688] atIndex:v11.location effectiveRange:0];
    v14 = v13;
    if (v13)
    {
      baseWritingDirection = [v13 baseWritingDirection];
    }

    else
    {
      baseWritingDirection = -1;
    }

    v16 = [(ICTTTextController *)self defaultParagraphStyleWithWritingDirection:baseWritingDirection];
    v25 = v12;
    v26[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    [textCopy addAttributes:v17 range:{v11.location, v11.length}];

    [(ICTTTextController *)self styleFontInTextStorage:textCopy inRange:v11.location, v11.length];
    [(ICTTTextController *)self styleListsAndIndentsInAttributedString:textCopy inRange:v11.location, v11.length];
    v18 = *MEMORY[0x1E69DB670];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __64__ICTTTextController_styleText_inExactRange_fixModelAttributes___block_invoke;
    v23 = &unk_1E846E790;
    v19 = textCopy;
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

- (id)writingToolsIgnoredRangesForTextStorage:(id)storage inEnclosingRange:(_NSRange)range note:(id)note
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  noteCopy = note;
  array = [MEMORY[0x1E695DF70] array];
  calculateDocumentController = [noteCopy calculateDocumentController];
  if (calculateDocumentController)
  {
    v12 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      calculateDocumentController2 = [noteCopy calculateDocumentController];
      expressionsIndexSet = [calculateDocumentController2 expressionsIndexSet];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __84__ICTTTextController_writingToolsIgnoredRangesForTextStorage_inEnclosingRange_note___block_invoke;
      v26[3] = &unk_1E846E7B8;
      v27 = array;
      [expressionsIndexSet enumerateRangesInRange:location options:length usingBlock:{0, v26}];
    }
  }

  textStorage = [noteCopy textStorage];
  v17 = *MEMORY[0x1E69B7600];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __84__ICTTTextController_writingToolsIgnoredRangesForTextStorage_inEnclosingRange_note___block_invoke_2;
  v24 = &unk_1E846C2A0;
  v25 = array;
  v18 = array;
  [textStorage enumerateAttribute:v17 inRange:location options:length usingBlock:{0, &v21}];

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

+ (id)preferredFontForICTTTextStyle:(unsigned int)style
{
  ic_preferredFontForFixedWidthText = 0;
  if (style > 3)
  {
    if (style <= 100)
    {
      if (style == 4)
      {
        ic_preferredFontForFixedWidthText = [MEMORY[0x1E69DB878] ic_preferredFontForFixedWidthText];
        goto LABEL_16;
      }

      if (style != 100)
      {
        goto LABEL_16;
      }
    }

    else if (style != 101 && style != 102 && style != 103)
    {
      goto LABEL_16;
    }

LABEL_15:
    ic_preferredFontForFixedWidthText = [MEMORY[0x1E69DB878] ic_preferredFontForBodyText];
    goto LABEL_16;
  }

  if (style > 1)
  {
    if (style == 2)
    {
      ic_preferredFontForFixedWidthText = [MEMORY[0x1E69DB878] ic_preferredFontForSubheadingText];
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (style)
  {
    if (style == 1)
    {
      ic_preferredFontForFixedWidthText = [MEMORY[0x1E69DB878] ic_preferredFontForHeadingText];
    }
  }

  else
  {
    ic_preferredFontForFixedWidthText = [MEMORY[0x1E69DB878] ic_preferredFontForTitleText];
  }

LABEL_16:

  return ic_preferredFontForFixedWidthText;
}

- (id)preferredAttributesForICTTTextStyle:(unsigned int)style
{
  fixedWidthAttributes = 0;
  if (style > 3)
  {
    if (style <= 100)
    {
      if (style == 4)
      {
        fixedWidthAttributes = [(ICTTTextController *)self fixedWidthAttributes];
        goto LABEL_20;
      }

      if (style != 100)
      {
        goto LABEL_20;
      }
    }

    else if (style != 101 && style != 102)
    {
      if (style == 103)
      {
        fixedWidthAttributes = [(ICTTTextController *)self checklistAttributes];
      }

      goto LABEL_20;
    }

    fixedWidthAttributes = [(ICTTTextController *)self defaultListAttributes];
    goto LABEL_20;
  }

  if (style > 1)
  {
    if (style == 2)
    {
      [(ICTTTextController *)self subheadingAttributes];
    }

    else
    {
      [(ICTTTextController *)self bodyAttributes];
    }
    fixedWidthAttributes = ;
  }

  else if (style)
  {
    if (style == 1)
    {
      fixedWidthAttributes = [(ICTTTextController *)self headingAttributes];
    }
  }

  else
  {
    fixedWidthAttributes = [(ICTTTextController *)self titleAttributes];
  }

LABEL_20:

  return fixedWidthAttributes;
}

@end