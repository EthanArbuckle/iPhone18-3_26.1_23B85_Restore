@interface ICCalculateResultUIModel
- (_NSRange)highlightRangeForTextFindingMatchRange:(_NSRange)range;
- (id)attributedStringWithSurroundingAttributes:(id)attributes formatter:(id)formatter;
- (id)labelColor;
@end

@implementation ICCalculateResultUIModel

- (id)labelColor
{
  attachment = [(ICInlineAttachmentUIModel *)self attachment];
  if ([attachment isValidCalculateAttachment])
  {
    iCControlAccentColor = [MEMORY[0x1E69DC888] ICControlAccentColor];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ICCalculateResultUIModel;
    iCControlAccentColor = [(ICInlineAttachmentUIModel *)&v7 labelColor];
  }

  v5 = iCControlAccentColor;

  return v5;
}

- (id)attributedStringWithSurroundingAttributes:(id)attributes formatter:(id)formatter
{
  v38[3] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v6 = [objc_opt_class() filteredStyleAttributes:attributesCopy];

  v7 = objc_alloc(MEMORY[0x1E696AD40]);
  attachment = [(ICInlineAttachmentUIModel *)self attachment];
  displayText = [attachment displayText];
  v10 = [v7 initWithString:displayText attributes:v6];

  string = [v10 string];
  ic_calculateEqualsSignString = [MEMORY[0x1E696AEC0] ic_calculateEqualsSignString];
  v13 = [string rangeOfString:ic_calculateEqualsSignString];
  v15 = v14;

  v16 = [v10 length];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [v10 copy];
  }

  else
  {
    v34 = v13 + v15;
    v33 = v16 - (v13 + v15);
    v18 = *MEMORY[0x1E69DB650];
    v19 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
    v20 = v19;
    if (v19)
    {
      preferredDefaultFontColor = v19;
    }

    else
    {
      preferredDefaultFontColor = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
    }

    v22 = preferredDefaultFontColor;

    v23 = MEMORY[0x1E69B7960];
    v24 = *MEMORY[0x1E69B7960];
    v37[0] = v18;
    v37[1] = v24;
    v38[0] = v22;
    v38[1] = v22;
    v25 = MEMORY[0x1E69B75F0];
    v37[2] = *MEMORY[0x1E69B75F0];
    v38[2] = [v22 CGColor];
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];
    [v10 addAttributes:v26 range:{v13, v15}];
    v35[0] = v18;
    labelColor = [(ICCalculateResultUIModel *)self labelColor];
    v36[0] = labelColor;
    v35[1] = *v23;
    labelColor2 = [(ICCalculateResultUIModel *)self labelColor];
    v36[1] = labelColor2;
    v35[2] = *v25;
    labelColor3 = [(ICCalculateResultUIModel *)self labelColor];
    v36[2] = [labelColor3 CGColor];
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];

    [v10 addAttributes:v30 range:{v34, v33}];
    ic_thinSpaceCharacterString = [MEMORY[0x1E696AEC0] ic_thinSpaceCharacterString];
    [v10 ic_appendString:ic_thinSpaceCharacterString];

    v17 = [v10 copy];
  }

  return v17;
}

- (_NSRange)highlightRangeForTextFindingMatchRange:(_NSRange)range
{
  if (range.location)
  {
    v3 = range.location + 3;
  }

  else
  {
    v3 = 2;
  }

  v4 = range.length > 1 && range.location == 0;
  v5 = range.length + v4;
  result.length = v5;
  result.location = v3;
  return result;
}

@end