@interface ICCalculateGraphExpressionUIModel
- (_NSRange)highlightRangeForTextFindingMatchRange:(_NSRange)range;
- (id)attributedStringWithSurroundingAttributes:(id)attributes formatter:(id)formatter;
- (id)labelColor;
@end

@implementation ICCalculateGraphExpressionUIModel

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
    v7.super_class = ICCalculateGraphExpressionUIModel;
    iCControlAccentColor = [(ICInlineAttachmentUIModel *)&v7 labelColor];
  }

  v5 = iCControlAccentColor;

  return v5;
}

- (id)attributedStringWithSurroundingAttributes:(id)attributes formatter:(id)formatter
{
  v34[3] = *MEMORY[0x1E69E9840];
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
    v18 = v16 - v15;
    v33[0] = *MEMORY[0x1E69DB650];
    v19 = v33[0];
    labelColor = [(ICCalculateGraphExpressionUIModel *)self labelColor];
    v34[0] = labelColor;
    v33[1] = *MEMORY[0x1E69B7960];
    labelColor2 = [(ICCalculateGraphExpressionUIModel *)self labelColor];
    v34[1] = labelColor2;
    v33[2] = *MEMORY[0x1E69B75F0];
    labelColor3 = [(ICCalculateGraphExpressionUIModel *)self labelColor];
    v34[2] = [labelColor3 CGColor];
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];

    [v10 addAttributes:v23 range:{0, v18}];
    v24 = [v6 objectForKeyedSubscript:v19];
    v25 = v24;
    if (v24)
    {
      preferredDefaultFontColor = v24;
    }

    else
    {
      preferredDefaultFontColor = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
    }

    v27 = preferredDefaultFontColor;

    v28 = *MEMORY[0x1E69B7960];
    v31[0] = v19;
    v31[1] = v28;
    v32[0] = v27;
    v32[1] = v27;
    v31[2] = *MEMORY[0x1E69B75F0];
    v32[2] = [v27 CGColor];
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];
    [v10 addAttributes:v29 range:{v13, v15}];
    v17 = [v10 copy];
  }

  return v17;
}

- (_NSRange)highlightRangeForTextFindingMatchRange:(_NSRange)range
{
  length = 4;
  v4 = range.length + 3;
  if (range.length != 2)
  {
    length = range.length + 3;
  }

  if (range.length <= 1)
  {
    length = range.length;
  }

  v5 = range.location + 3;
  v6 = 4;
  if (range.length != 2)
  {
    v6 = range.length + 3;
  }

  if (range.length <= 1)
  {
    v6 = range.length;
  }

  if (!range.location)
  {
    v5 = 1;
    v4 = v6;
  }

  if (range.location == 1)
  {
    v7 = 3;
  }

  else
  {
    v7 = v5;
  }

  if (range.location == 1)
  {
    v8 = length;
  }

  else
  {
    v8 = v4;
  }

  result.length = v8;
  result.location = v7;
  return result;
}

@end