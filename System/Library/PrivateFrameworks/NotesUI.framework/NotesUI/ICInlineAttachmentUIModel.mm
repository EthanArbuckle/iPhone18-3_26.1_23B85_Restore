@interface ICInlineAttachmentUIModel
+ (id)attributesForInlineAttachmentUIModel;
+ (id)filteredStyleAttributes:(id)attributes;
- (ICInlineAttachment)attachment;
- (ICInlineAttachmentUIModel)initWithAttachment:(id)attachment;
- (_NSRange)highlightRangeForTextFindingMatchRange:(_NSRange)range;
- (id)attributedStringWithSurroundingAttributes:(id)attributes formatter:(id)formatter;
- (id)highlightingAttributedString:(id)string withRegexMatches:(id)matches;
- (id)highlightingAttributedString:(id)string withSurroundingAttributes:(id)attributes;
@end

@implementation ICInlineAttachmentUIModel

- (ICInlineAttachmentUIModel)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v8.receiver = self;
  v8.super_class = ICInlineAttachmentUIModel;
  v5 = [(ICInlineAttachmentUIModel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attachment, attachmentCopy);
  }

  return v6;
}

+ (id)attributesForInlineAttachmentUIModel
{
  if (attributesForInlineAttachmentUIModel_onceToken != -1)
  {
    +[ICInlineAttachmentUIModel attributesForInlineAttachmentUIModel];
  }

  v3 = attributesForInlineAttachmentUIModel_attributes;

  return v3;
}

void __65__ICInlineAttachmentUIModel_attributesForInlineAttachmentUIModel__block_invoke()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69B7898] allowedAttributesForModel];
  v1 = [v0 mutableCopy];

  [v1 removeObject:*MEMORY[0x1E69B7628]];
  v2 = *MEMORY[0x1E69DB650];
  v7[0] = *MEMORY[0x1E69DB648];
  v7[1] = v2;
  v3 = *MEMORY[0x1E69DB6B8];
  v7[2] = *MEMORY[0x1E69DB758];
  v7[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  [v1 addObjectsFromArray:v4];

  v5 = [v1 copy];
  v6 = attributesForInlineAttachmentUIModel_attributes;
  attributesForInlineAttachmentUIModel_attributes = v5;
}

+ (id)filteredStyleAttributes:(id)attributes
{
  v24 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  attributesForInlineAttachmentUIModel = [self attributesForInlineAttachmentUIModel];
  v7 = [attributesForInlineAttachmentUIModel countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    v10 = *MEMORY[0x1E69DB670];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(attributesForInlineAttachmentUIModel);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [attributesCopy objectForKeyedSubscript:v12];
        if (v13)
        {
          v14 = v13;
          v15 = [v12 isEqualToString:v10];

          if ((v15 & 1) == 0)
          {
            v16 = [attributesCopy objectForKeyedSubscript:v12];
            [v5 setObject:v16 forKeyedSubscript:v12];
          }
        }
      }

      v8 = [attributesForInlineAttachmentUIModel countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v17 = [v5 copy];

  return v17;
}

- (id)attributedStringWithSurroundingAttributes:(id)attributes formatter:(id)formatter
{
  formatterCopy = formatter;
  attributesCopy = attributes;
  attachment = [(ICInlineAttachmentUIModel *)self attachment];
  displayText = [attachment displayText];
  v10 = displayText;
  v11 = &stru_1F4F94F00;
  if (displayText)
  {
    v11 = displayText;
  }

  v12 = v11;

  if (formatterCopy)
  {
    attachment2 = [(ICInlineAttachmentUIModel *)self attachment];
    v14 = formatterCopy[2](formatterCopy, v12, [attachment2 attachmentType]);

    v12 = v14;
  }

  labelColor = [(ICInlineAttachmentUIModel *)self labelColor];
  v16 = [objc_opt_class() filteredStyleAttributes:attributesCopy];

  v17 = [v16 mutableCopy];
  [v17 setObject:labelColor forKeyedSubscript:*MEMORY[0x1E69DB650]];
  [v17 setObject:labelColor forKeyedSubscript:*MEMORY[0x1E69B7960]];
  cGColor = [labelColor CGColor];
  [v17 setObject:cGColor forKeyedSubscript:*MEMORY[0x1E69B75F0]];
  v19 = objc_alloc(MEMORY[0x1E696AAB0]);
  v20 = [v17 copy];
  v21 = [v19 initWithString:v12 attributes:v20];

  return v21;
}

- (id)highlightingAttributedString:(id)string withSurroundingAttributes:(id)attributes
{
  stringCopy = string;
  attributesCopy = attributes;
  objc_opt_class();
  v8 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B7940]];
  v9 = ICCheckedDynamicCast();
  [v9 floatValue];
  v11 = v10;

  objc_opt_class();
  v12 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB650]];

  v13 = ICCheckedDynamicCast();

  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v14 = fmin(v11 * 0.6 + 1.0, 1.0);
  }

  else if (v13)
  {
    [v13 alphaComponent];
    v14 = v15;
  }

  else
  {
    v14 = 1.0;
  }

  v16 = [stringCopy mutableCopy];
  v17 = *MEMORY[0x1E69B7960];
  ic_range = [v16 ic_range];
  v20 = v19;
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __84__ICInlineAttachmentUIModel_highlightingAttributedString_withSurroundingAttributes___block_invoke;
  v27 = &unk_1E846E070;
  v30 = v11;
  v31 = v14;
  selfCopy = self;
  v29 = v16;
  v21 = v16;
  [v21 enumerateAttribute:v17 inRange:ic_range options:v20 usingBlock:{0, &v24}];
  v22 = [v21 copy];

  return v22;
}

void __84__ICInlineAttachmentUIModel_highlightingAttributedString_withSurroundingAttributes___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (!v7)
  {
    v7 = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
  }

  if (*(a1 + 48) != 0.0)
  {
    v19 = v7;
    if ([*(a1 + 32) fadesColorDuringHighlight])
    {
      v8 = [MEMORY[0x1E69DC888] tintColor];
      if (v19 == v8)
      {
        v9 = [MEMORY[0x1E69DC888] ICTintColor];

        v19 = v9;
      }

      v10 = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
      v11 = [v19 ic_colorBlendedWithColor:v10 fraction:fabs(*(a1 + 48))];

      v7 = v11;
    }

    else
    {
      v7 = v19;
    }
  }

  v20 = v7;
  if (*(a1 + 56) < 1.0)
  {
    [v7 alphaComponent];
    v13 = [v20 colorWithAlphaComponent:v12 * *(a1 + 56)];

    v20 = v13;
  }

  v14 = [*(a1 + 40) attribute:*MEMORY[0x1E69B75D8] atIndex:a3 effectiveRange:0];
  v15 = [v14 intValue];

  if (v15)
  {
    v16 = *(a1 + 40);
    v17 = *MEMORY[0x1E69DB650];
    v18 = ICColorForEmphasisColorType();
    [v16 addAttribute:v17 value:v18 range:{a3, a4}];
  }

  else
  {
    [*(a1 + 40) addAttribute:*MEMORY[0x1E69DB650] value:v20 range:{a3, a4}];
  }
}

- (id)highlightingAttributedString:(id)string withRegexMatches:(id)matches
{
  v5 = MEMORY[0x1E69DC888];
  matchesCopy = matches;
  stringCopy = string;
  iCFindInNoteHighlightColor = [v5 ICFindInNoteHighlightColor];
  v9 = [stringCopy ic_attributedStringByHighlightingRegexFinderMatches:matchesCopy withHighlightColor:iCFindInNoteHighlightColor attributeName:*MEMORY[0x1E69DB600]];

  return v9;
}

- (_NSRange)highlightRangeForTextFindingMatchRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (ICInlineAttachment)attachment
{
  WeakRetained = objc_loadWeakRetained(&self->_attachment);

  return WeakRetained;
}

@end