@interface ICTextLayoutFragment
- (ICTTTextContentStorage)textContentStorage;
- (ICTextLayoutFragment)initWithTextElement:(id)a3 range:(id)a4;
- (NSTextAttachment)textAttachment;
- (NSTextParagraph)textParagraph;
- (_NSRange)nsRangeInTextStorage:(id)a3;
- (double)leadingPadding;
- (double)marginForTop:(BOOL)a3;
- (double)trailingPadding;
@end

@implementation ICTextLayoutFragment

- (ICTTTextContentStorage)textContentStorage
{
  objc_opt_class();
  v3 = [(ICTextLayoutFragment *)self textParagraph];
  v4 = [v3 textContentManager];
  v5 = ICDynamicCast();

  return v5;
}

- (NSTextAttachment)textAttachment
{
  v3 = [(ICTextLayoutFragment *)self textParagraph];
  v4 = [v3 elementRange];
  v5 = v4;
  if (v3 && ([v4 isEmpty] & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(ICTextLayoutFragment *)self textContentStorage];
    v8 = [v7 documentRange];
    v9 = [v8 location];
    v10 = [v5 location];
    v11 = [v7 offsetFromLocation:v9 toLocation:v10];

    v12 = [v7 textStorage];
    v6 = [v12 attribute:*MEMORY[0x277D74060] atIndex:v11 effectiveRange:0];
  }

  return v6;
}

- (double)leadingPadding
{
  v3 = [(ICTextLayoutFragment *)self textElement];
  v4 = [v3 textContentManager];

  v5 = [(ICTextLayoutFragment *)self nsRangeInTextStorage:v4];
  v6 = [v4 attributedString];
  v7 = [v6 length];

  v8 = 0.0;
  if (v5 < v7)
  {
    v9 = [v4 attributedString];
    v10 = [v9 attribute:*MEMORY[0x277D74060] atIndex:v5 effectiveRange:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v11 = [(ICTextLayoutFragment *)self textLayoutManager];
      v12 = ICDynamicCast();

      objc_opt_class();
      v13 = [v12 textContainer];
      v14 = ICDynamicCast();

      objc_opt_class();
      v15 = ICDynamicCast();
      v16 = [v15 effectiveAttachmentViewSizeForTextContainer:v14];
      if (v15 && v16 == 1)
      {

LABEL_13:
        goto LABEL_14;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = [v14 tk2TextView];
        [v17 safeAreaInsets];
        v8 = v18;
      }

      v19 = [v14 tk2TextView];
      [v19 textContainerInset];
      v21 = -v20;
      [v14 lineFragmentPadding];
      v8 = v8 + v21 - v22;
    }

    v23 = [v4 attributedString];
    v12 = [v23 attribute:*MEMORY[0x277D35DA8] atIndex:v5 effectiveRange:0];

    if ([v12 style] == 4)
    {
      v8 = ([v12 blockQuoteLevel] * 13.0) + 10.0;
    }

    else if ([v12 isBlockQuote])
    {
      v8 = [v12 blockQuoteLevel] * 12.0;
    }

    goto LABEL_13;
  }

LABEL_14:

  return v8;
}

- (NSTextParagraph)textParagraph
{
  objc_opt_class();
  v3 = [(ICTextLayoutFragment *)self textElement];
  v4 = ICDynamicCast();

  return v4;
}

- (double)trailingPadding
{
  v3 = [(ICTextLayoutFragment *)self textElement];
  v4 = [v3 textContentManager];

  v5 = [(ICTextLayoutFragment *)self nsRangeInTextStorage:v4];
  v6 = [v4 attributedString];
  v7 = [v6 length];

  v8 = 0.0;
  if (v5 < v7)
  {
    v9 = [v4 attributedString];
    v10 = [v9 attribute:*MEMORY[0x277D35DA8] atIndex:v5 effectiveRange:0];

    v11 = [v4 attributedString];
    v12 = [v11 attribute:*MEMORY[0x277D74060] atIndex:v5 effectiveRange:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v13 = [(ICTextLayoutFragment *)self textLayoutManager];
      v14 = ICDynamicCast();

      objc_opt_class();
      v15 = [v14 textContainer];
      v16 = ICDynamicCast();

      objc_opt_class();
      v17 = ICDynamicCast();
      v18 = [v17 effectiveAttachmentViewSizeForTextContainer:v16];
      if (v17 && v18 == 1)
      {

LABEL_15:
        goto LABEL_16;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = [v16 tk2TextView];
        [v19 safeAreaInsets];
        v8 = v20;
      }

      if ([v10 writingDirection] == -1 && (objc_msgSend(v16, "tk2TextView"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "ic_isRTL"), v21, v22))
      {
        v23 = [v16 tk2TextView];
        [v23 textContainerInset];
        v25 = -v24;
        [v16 lineFragmentPadding];
        v8 = v8 + v25 - v26;
      }

      else
      {
        v23 = [v16 tk2TextView];
        [v23 safeAreaInsets];
        v8 = v27;
      }
    }

    if ([v10 style] == 4)
    {
      v8 = 4.0;
    }

    goto LABEL_15;
  }

LABEL_16:

  return v8;
}

- (ICTextLayoutFragment)initWithTextElement:(id)a3 range:(id)a4
{
  v5.receiver = self;
  v5.super_class = ICTextLayoutFragment;
  return [(ICTextLayoutFragment *)&v5 initWithTextElement:a3 range:a4];
}

- (double)marginForTop:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICTextLayoutFragment *)self textParagraph];
  v6 = [v5 elementRange];
  v7 = 0.0;
  if (([v6 isEmpty] & 1) == 0)
  {
    v8 = [(ICTextLayoutFragment *)self textContentStorage];
    v9 = [v8 documentRange];
    v10 = [v9 location];
    v11 = [v6 location];
    v12 = [v8 offsetFromLocation:v10 toLocation:v11];

    v13 = [(ICTextLayoutFragment *)self textAttachment];
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && !v12)
    {
      v7 = *MEMORY[0x277D36640];
    }

    else
    {
      v14 = [v8 textStorage];
      v15 = [v14 attribute:*MEMORY[0x277D35DA8] atIndex:v12 effectiveRange:0];

      if (v3 && [v15 style] == 103 && !v12 && (-[ICTextLayoutFragment textElement](self, "textElement"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "textContentManager"), v38 = objc_claimAutoreleasedReturnValue(), v16, objc_opt_class(), objc_msgSend(v38, "textStorage"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "styler"), v18 = objc_claimAutoreleasedReturnValue(), ICDynamicCast(), v19 = objc_claimAutoreleasedReturnValue(), v18, v17, objc_msgSend(v19, "zoomController"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "zoomFactor"), v22 = v21, v20, v19, v38, v22 != 1.0))
      {
        v7 = 2.0;
      }

      else
      {
        v7 = 0.0;
        if ([v15 style] == 4)
        {
          v23 = [(ICTextLayoutFragment *)self nsRangeInTextStorage:v8];
          v25 = v24;
          v26 = [v8 attributedString];
          v27 = [v26 length];

          if (v23 < v27)
          {
            v39 = v25;
            v28 = [v8 attributedString];
            v29 = [v28 attribute:*MEMORY[0x277D35DA8] atIndex:v23 effectiveRange:0];

            v30 = v29;
            if ([v29 style] == 4)
            {
              v31 = 0;
              v32 = v39;
              if (v3)
              {
                v32 = -1;
              }

              v33 = v32 + v23;
              if ((v32 + v23) >= 0 && v33 < v27)
              {
                v34 = v30;
                v35 = [v8 attributedString];
                v31 = [v35 attribute:*MEMORY[0x277D35DA8] atIndex:v33 effectiveRange:0];

                if (v31)
                {
                  v30 = v34;
                  if ([v31 style] == 4)
                  {
                    if ([v31 style] == 4)
                    {
                      v36 = [v31 blockQuoteLevel];
                      if (v36 == [v34 blockQuoteLevel])
                      {
                        v7 = 0.0;
                      }

                      else
                      {
                        v7 = 10.0;
                      }
                    }
                  }

                  else
                  {
                    v7 = 10.0;
                  }
                }

                else
                {
                  v30 = v34;
                }
              }
            }
          }
        }
      }
    }
  }

  return v7;
}

- (_NSRange)nsRangeInTextStorage:(id)a3
{
  v4 = a3;
  v5 = [(ICTextLayoutFragment *)self textElement];
  v6 = [v5 textContentManager];
  v7 = [v4 documentRange];

  v8 = [v7 location];
  v9 = [(ICTextLayoutFragment *)self textElement];
  v10 = [v9 elementRange];
  v11 = [v10 location];
  v12 = [v6 offsetFromLocation:v8 toLocation:v11];

  v13 = [(ICTextLayoutFragment *)self textElement];
  v14 = [v13 textContentManager];
  v15 = [(ICTextLayoutFragment *)self textElement];
  v16 = [v15 elementRange];
  v17 = [v16 location];
  v18 = [(ICTextLayoutFragment *)self textElement];
  v19 = [v18 elementRange];
  v20 = [v19 endLocation];
  v21 = [v14 offsetFromLocation:v17 toLocation:v20];

  v22 = v12;
  v23 = v21;
  result.length = v23;
  result.location = v22;
  return result;
}

@end