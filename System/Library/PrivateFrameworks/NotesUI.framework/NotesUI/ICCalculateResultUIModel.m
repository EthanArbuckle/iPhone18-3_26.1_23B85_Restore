@interface ICCalculateResultUIModel
- (_NSRange)highlightRangeForTextFindingMatchRange:(_NSRange)a3;
- (id)attributedStringWithSurroundingAttributes:(id)a3 formatter:(id)a4;
- (id)labelColor;
@end

@implementation ICCalculateResultUIModel

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
    v7.super_class = ICCalculateResultUIModel;
    v4 = [(ICInlineAttachmentUIModel *)&v7 labelColor];
  }

  v5 = v4;

  return v5;
}

- (id)attributedStringWithSurroundingAttributes:(id)a3 formatter:(id)a4
{
  v38[3] = *MEMORY[0x1E69E9840];
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
    v34 = v13 + v15;
    v33 = v16 - (v13 + v15);
    v18 = *MEMORY[0x1E69DB650];
    v19 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
    }

    v22 = v21;

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
    v27 = [(ICCalculateResultUIModel *)self labelColor];
    v36[0] = v27;
    v35[1] = *v23;
    v28 = [(ICCalculateResultUIModel *)self labelColor];
    v36[1] = v28;
    v35[2] = *v25;
    v29 = [(ICCalculateResultUIModel *)self labelColor];
    v36[2] = [v29 CGColor];
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];

    [v10 addAttributes:v30 range:{v34, v33}];
    v31 = [MEMORY[0x1E696AEC0] ic_thinSpaceCharacterString];
    [v10 ic_appendString:v31];

    v17 = [v10 copy];
  }

  return v17;
}

- (_NSRange)highlightRangeForTextFindingMatchRange:(_NSRange)a3
{
  if (a3.location)
  {
    v3 = a3.location + 3;
  }

  else
  {
    v3 = 2;
  }

  v4 = a3.length > 1 && a3.location == 0;
  v5 = a3.length + v4;
  result.length = v5;
  result.location = v3;
  return result;
}

@end