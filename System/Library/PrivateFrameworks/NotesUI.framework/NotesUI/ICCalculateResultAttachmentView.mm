@interface ICCalculateResultAttachmentView
- (id)accessibilityCustomContent;
- (id)axValue;
- (id)calculateResultTextAttachment;
@end

@implementation ICCalculateResultAttachmentView

- (id)accessibilityCustomContent
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(ICCalculateResultAttachmentView *)self calculateResultTextAttachment];
  v5 = [v4 expression];

  if (v5 && [v5 length])
  {
    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    v7 = __ICLocalizedFrameworkString_impl(@"Expression", @"Expression", 0, 1);
    v8 = [v6 initWithString:v7];

    v13 = *MEMORY[0x1E69DD950];
    v14[0] = MEMORY[0x1E695E118];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v9];
    v11 = [MEMORY[0x1E6959558] customContentWithAttributedLabel:v8 attributedValue:v10];
    [v3 addObject:v11];
  }

  return v3;
}

- (id)axValue
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(ICCalculateResultAttachmentView *)self calculateResultTextAttachment];
  v4 = [v3 attachment];
  v5 = [v4 isValidCalculateAttachment];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E695DF70];
    v8 = __ICLocalizedFrameworkString_impl(@"Calculation error", @"Calculation error", 0, 1);
    v14[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v10 = [v7 arrayWithArray:v9];

    v11 = [(ICCalculateResultAttachmentView *)self calculateResultTextAttachment];
    v12 = [v11 localizedError];

    if ([v12 length])
    {
      [v10 addObject:v12];
    }

    v6 = [v10 componentsJoinedByString:{@", "}];
  }

  return v6;
}

- (id)calculateResultTextAttachment
{
  objc_opt_class();
  v3 = [(ICInlineAttachmentView *)self textAttachment];
  v4 = ICDynamicCast();

  return v4;
}

@end