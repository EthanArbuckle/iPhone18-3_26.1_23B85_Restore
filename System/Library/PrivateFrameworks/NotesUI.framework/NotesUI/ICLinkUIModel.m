@interface ICLinkUIModel
- (_NSRange)highlightRangeForTextFindingMatchRange:(_NSRange)a3;
- (id)attributedStringWithSurroundingAttributes:(id)a3 formatter:(id)a4;
- (id)highlightingAttributedString:(id)a3 withSurroundingAttributes:(id)a4;
- (id)noteGlyphTextAttachmentWithSurroundingAttributes:(id)a3;
@end

@implementation ICLinkUIModel

- (id)noteGlyphTextAttachmentWithSurroundingAttributes:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v6 = ICDynamicCast();

  objc_opt_class();
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B7940]];
  v8 = ICCheckedDynamicCast();
  [v8 floatValue];
  v10 = v9;

  objc_opt_class();
  v11 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];

  v12 = ICCheckedDynamicCast();

  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v13 = fmin(v10 * 0.6 + 1.0, 1.0);
  }

  else if (v12)
  {
    [v12 alphaComponent];
    v13 = v14;
  }

  else
  {
    v13 = 1.0;
  }

  v15 = MEMORY[0x1E69DCAB8];
  [v6 pointSize];
  v16 = [v15 ic_systemImageNamed:@"note.text" pointSize:?];
  v17 = [(ICLinkUIModel *)self labelColor];
  v18 = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
  v19 = [v17 ic_colorBlendedWithColor:v18 fraction:fabs(v10)];

  [v19 alphaComponent];
  v21 = [v19 colorWithAlphaComponent:v13 * v20];

  v22 = [v16 imageWithTintColor:v21];

  v23 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v23 setImage:v22];
  [v6 capHeight];
  v25 = v24;
  [v22 size];
  v27 = (v25 - v26) * 0.5;
  [v22 size];
  v29 = v28;
  [v22 size];
  [v23 setBounds:{0.0, v27, v29, v30}];

  return v23;
}

- (id)attributedStringWithSurroundingAttributes:(id)a3 formatter:(id)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v7 = [(ICLinkUIModel *)self noteGlyphTextAttachmentWithSurroundingAttributes:v5];
  v8 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v7];
  [v6 appendAttributedString:v8];

  v9 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
  if ([v9 style] != 4)
  {
    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    v11 = [MEMORY[0x1E696AEC0] ic_thinSpaceCharacterString];
    v12 = [v10 initWithString:v11];
    [v6 appendAttributedString:v12];
  }

  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  v14 = [(ICInlineAttachmentUIModel *)self attachment];
  v15 = [v14 displayText];
  v28 = *MEMORY[0x1E69DB758];
  v29[0] = &unk_1F4FC4080;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v17 = [v13 initWithString:v15 attributes:v16];
  [v6 appendAttributedString:v17];

  v18 = [objc_opt_class() filteredStyleAttributes:v5];
  v19 = [v18 mutableCopy];

  v20 = [(ICLinkUIModel *)self labelColor];
  [v19 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69DB650]];

  v21 = [(ICLinkUIModel *)self labelColor];
  [v19 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69B7960]];

  v22 = [(ICLinkUIModel *)self labelColor];
  v23 = [v22 CGColor];
  [v19 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69B75F0]];

  v24 = [v6 ic_range];
  [v6 addAttributes:v19 range:{v24, v25}];
  v26 = [v6 copy];

  return v26;
}

- (id)highlightingAttributedString:(id)a3 withSurroundingAttributes:(id)a4
{
  v13.receiver = self;
  v13.super_class = ICLinkUIModel;
  v6 = a4;
  v7 = [(ICInlineAttachmentUIModel *)&v13 highlightingAttributedString:a3 withSurroundingAttributes:v6];
  v8 = [v7 mutableCopy];

  v9 = [(ICLinkUIModel *)self noteGlyphTextAttachmentWithSurroundingAttributes:v6];

  v10 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v9];
  [v8 replaceCharactersInRange:0 withAttributedString:{1, v10}];

  v11 = [v8 copy];

  return v11;
}

- (_NSRange)highlightRangeForTextFindingMatchRange:(_NSRange)a3
{
  length = a3.length;
  v4 = a3.location + 2;
  result.length = length;
  result.location = v4;
  return result;
}

@end