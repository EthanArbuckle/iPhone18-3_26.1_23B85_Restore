@interface ICInlineAttachmentUIModel
+ (id)attributesForInlineAttachmentUIModel;
+ (id)filteredStyleAttributes:(id)a3;
- (ICInlineAttachment)attachment;
- (ICInlineAttachmentUIModel)initWithAttachment:(id)a3;
- (_NSRange)highlightRangeForTextFindingMatchRange:(_NSRange)a3;
- (id)attributedStringWithSurroundingAttributes:(id)a3 formatter:(id)a4;
- (id)highlightingAttributedString:(id)a3 withRegexMatches:(id)a4;
- (id)highlightingAttributedString:(id)a3 withSurroundingAttributes:(id)a4;
@end

@implementation ICInlineAttachmentUIModel

- (ICInlineAttachmentUIModel)initWithAttachment:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICInlineAttachmentUIModel;
  v5 = [(ICInlineAttachmentUIModel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attachment, v4);
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

+ (id)filteredStyleAttributes:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [a1 attributesForInlineAttachmentUIModel];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v4 objectForKeyedSubscript:v12];
        if (v13)
        {
          v14 = v13;
          v15 = [v12 isEqualToString:v10];

          if ((v15 & 1) == 0)
          {
            v16 = [v4 objectForKeyedSubscript:v12];
            [v5 setObject:v16 forKeyedSubscript:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v17 = [v5 copy];

  return v17;
}

- (id)attributedStringWithSurroundingAttributes:(id)a3 formatter:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICInlineAttachmentUIModel *)self attachment];
  v9 = [v8 displayText];
  v10 = v9;
  v11 = &stru_1F4F94F00;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  if (v6)
  {
    v13 = [(ICInlineAttachmentUIModel *)self attachment];
    v14 = v6[2](v6, v12, [v13 attachmentType]);

    v12 = v14;
  }

  v15 = [(ICInlineAttachmentUIModel *)self labelColor];
  v16 = [objc_opt_class() filteredStyleAttributes:v7];

  v17 = [v16 mutableCopy];
  [v17 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69DB650]];
  [v17 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69B7960]];
  v18 = [v15 CGColor];
  [v17 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69B75F0]];
  v19 = objc_alloc(MEMORY[0x1E696AAB0]);
  v20 = [v17 copy];
  v21 = [v19 initWithString:v12 attributes:v20];

  return v21;
}

- (id)highlightingAttributedString:(id)a3 withSurroundingAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69B7940]];
  v9 = ICCheckedDynamicCast();
  [v9 floatValue];
  v11 = v10;

  objc_opt_class();
  v12 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];

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

  v16 = [v6 mutableCopy];
  v17 = *MEMORY[0x1E69B7960];
  v18 = [v16 ic_range];
  v20 = v19;
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __84__ICInlineAttachmentUIModel_highlightingAttributedString_withSurroundingAttributes___block_invoke;
  v27 = &unk_1E846E070;
  v30 = v11;
  v31 = v14;
  v28 = self;
  v29 = v16;
  v21 = v16;
  [v21 enumerateAttribute:v17 inRange:v18 options:v20 usingBlock:{0, &v24}];
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

- (id)highlightingAttributedString:(id)a3 withRegexMatches:(id)a4
{
  v5 = MEMORY[0x1E69DC888];
  v6 = a4;
  v7 = a3;
  v8 = [v5 ICFindInNoteHighlightColor];
  v9 = [v7 ic_attributedStringByHighlightingRegexFinderMatches:v6 withHighlightColor:v8 attributeName:*MEMORY[0x1E69DB600]];

  return v9;
}

- (_NSRange)highlightRangeForTextFindingMatchRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
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