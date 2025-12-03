@interface ICLinkUIModel
- (_NSRange)highlightRangeForTextFindingMatchRange:(_NSRange)range;
- (id)attributedStringWithSurroundingAttributes:(id)attributes formatter:(id)formatter;
- (id)highlightingAttributedString:(id)string withSurroundingAttributes:(id)attributes;
- (id)noteGlyphTextAttachmentWithSurroundingAttributes:(id)attributes;
@end

@implementation ICLinkUIModel

- (id)noteGlyphTextAttachmentWithSurroundingAttributes:(id)attributes
{
  attributesCopy = attributes;
  objc_opt_class();
  v5 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v6 = ICDynamicCast();

  objc_opt_class();
  v7 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B7940]];
  v8 = ICCheckedDynamicCast();
  [v8 floatValue];
  v10 = v9;

  objc_opt_class();
  v11 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB650]];

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
  labelColor = [(ICLinkUIModel *)self labelColor];
  preferredDefaultFontColor = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
  v19 = [labelColor ic_colorBlendedWithColor:preferredDefaultFontColor fraction:fabs(v10)];

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

- (id)attributedStringWithSurroundingAttributes:(id)attributes formatter:(id)formatter
{
  v29[1] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v7 = [(ICLinkUIModel *)self noteGlyphTextAttachmentWithSurroundingAttributes:attributesCopy];
  v8 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v7];
  [v6 appendAttributedString:v8];

  v9 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
  if ([v9 style] != 4)
  {
    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    ic_thinSpaceCharacterString = [MEMORY[0x1E696AEC0] ic_thinSpaceCharacterString];
    v12 = [v10 initWithString:ic_thinSpaceCharacterString];
    [v6 appendAttributedString:v12];
  }

  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  attachment = [(ICInlineAttachmentUIModel *)self attachment];
  displayText = [attachment displayText];
  v28 = *MEMORY[0x1E69DB758];
  v29[0] = &unk_1F4FC4080;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v17 = [v13 initWithString:displayText attributes:v16];
  [v6 appendAttributedString:v17];

  v18 = [objc_opt_class() filteredStyleAttributes:attributesCopy];
  v19 = [v18 mutableCopy];

  labelColor = [(ICLinkUIModel *)self labelColor];
  [v19 setObject:labelColor forKeyedSubscript:*MEMORY[0x1E69DB650]];

  labelColor2 = [(ICLinkUIModel *)self labelColor];
  [v19 setObject:labelColor2 forKeyedSubscript:*MEMORY[0x1E69B7960]];

  labelColor3 = [(ICLinkUIModel *)self labelColor];
  cGColor = [labelColor3 CGColor];
  [v19 setObject:cGColor forKeyedSubscript:*MEMORY[0x1E69B75F0]];

  ic_range = [v6 ic_range];
  [v6 addAttributes:v19 range:{ic_range, v25}];
  v26 = [v6 copy];

  return v26;
}

- (id)highlightingAttributedString:(id)string withSurroundingAttributes:(id)attributes
{
  v13.receiver = self;
  v13.super_class = ICLinkUIModel;
  attributesCopy = attributes;
  v7 = [(ICInlineAttachmentUIModel *)&v13 highlightingAttributedString:string withSurroundingAttributes:attributesCopy];
  v8 = [v7 mutableCopy];

  v9 = [(ICLinkUIModel *)self noteGlyphTextAttachmentWithSurroundingAttributes:attributesCopy];

  v10 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v9];
  [v8 replaceCharactersInRange:0 withAttributedString:{1, v10}];

  v11 = [v8 copy];

  return v11;
}

- (_NSRange)highlightRangeForTextFindingMatchRange:(_NSRange)range
{
  length = range.length;
  v4 = range.location + 2;
  result.length = length;
  result.location = v4;
  return result;
}

@end