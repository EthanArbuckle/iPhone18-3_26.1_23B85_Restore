@interface ICCalculateGraphExpressionUIModel
- (_NSRange)highlightRangeForTextFindingMatchRange:(_NSRange)a3;
- (id)attributedStringWithSurroundingAttributes:(id)a3 formatter:(id)a4;
- (id)labelColor;
@end

@implementation ICCalculateGraphExpressionUIModel

- (id)labelColor
{
  v3 = [(ICInlineAttachmentUIModel *)self attachment];
  if ([v3 isValidCalculateAttachment])
  {
    v4 = [MEMORY[0x1E69DC888] ICControlAccentColor];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ICCalculateGraphExpressionUIModel;
    v4 = [(ICInlineAttachmentUIModel *)&v7 labelColor];
  }

  v5 = v4;

  return v5;
}

- (id)attributedStringWithSurroundingAttributes:(id)a3 formatter:(id)a4
{
  v34[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [objc_opt_class() filteredStyleAttributes:v5];

  v7 = objc_alloc(MEMORY[0x1E696AD40]);
  v8 = [(ICInlineAttachmentUIModel *)self attachment];
  v9 = [v8 displayText];
  v10 = [v7 initWithString:v9 attributes:v6];

  v11 = [v10 string];
  v12 = [MEMORY[0x1E696AEC0] ic_calculateEqualsSignString];
  v13 = [v11 rangeOfString:v12];
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
    v20 = [(ICCalculateGraphExpressionUIModel *)self labelColor];
    v34[0] = v20;
    v33[1] = *MEMORY[0x1E69B7960];
    v21 = [(ICCalculateGraphExpressionUIModel *)self labelColor];
    v34[1] = v21;
    v33[2] = *MEMORY[0x1E69B75F0];
    v22 = [(ICCalculateGraphExpressionUIModel *)self labelColor];
    v34[2] = [v22 CGColor];
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];

    [v10 addAttributes:v23 range:{0, v18}];
    v24 = [v6 objectForKeyedSubscript:v19];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
    }

    v27 = v26;

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

- (_NSRange)highlightRangeForTextFindingMatchRange:(_NSRange)a3
{
  length = 4;
  v4 = a3.length + 3;
  if (a3.length != 2)
  {
    length = a3.length + 3;
  }

  if (a3.length <= 1)
  {
    length = a3.length;
  }

  v5 = a3.location + 3;
  v6 = 4;
  if (a3.length != 2)
  {
    v6 = a3.length + 3;
  }

  if (a3.length <= 1)
  {
    v6 = a3.length;
  }

  if (!a3.location)
  {
    v5 = 1;
    v4 = v6;
  }

  if (a3.location == 1)
  {
    v7 = 3;
  }

  else
  {
    v7 = v5;
  }

  if (a3.location == 1)
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