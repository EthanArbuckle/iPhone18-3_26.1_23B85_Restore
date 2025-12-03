@interface ICTextLayoutFragment
- (ICTTTextContentStorage)textContentStorage;
- (ICTextLayoutFragment)initWithTextElement:(id)element range:(id)range;
- (NSTextAttachment)textAttachment;
- (NSTextParagraph)textParagraph;
- (_NSRange)nsRangeInTextStorage:(id)storage;
- (double)leadingPadding;
- (double)marginForTop:(BOOL)top;
- (double)trailingPadding;
@end

@implementation ICTextLayoutFragment

- (ICTTTextContentStorage)textContentStorage
{
  objc_opt_class();
  textParagraph = [(ICTextLayoutFragment *)self textParagraph];
  textContentManager = [textParagraph textContentManager];
  v5 = ICDynamicCast();

  return v5;
}

- (NSTextAttachment)textAttachment
{
  textParagraph = [(ICTextLayoutFragment *)self textParagraph];
  elementRange = [textParagraph elementRange];
  v5 = elementRange;
  if (textParagraph && ([elementRange isEmpty] & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    textContentStorage = [(ICTextLayoutFragment *)self textContentStorage];
    documentRange = [textContentStorage documentRange];
    location = [documentRange location];
    location2 = [v5 location];
    v11 = [textContentStorage offsetFromLocation:location toLocation:location2];

    textStorage = [textContentStorage textStorage];
    v6 = [textStorage attribute:*MEMORY[0x277D74060] atIndex:v11 effectiveRange:0];
  }

  return v6;
}

- (double)leadingPadding
{
  textElement = [(ICTextLayoutFragment *)self textElement];
  textContentManager = [textElement textContentManager];

  v5 = [(ICTextLayoutFragment *)self nsRangeInTextStorage:textContentManager];
  attributedString = [textContentManager attributedString];
  v7 = [attributedString length];

  v8 = 0.0;
  if (v5 < v7)
  {
    attributedString2 = [textContentManager attributedString];
    v10 = [attributedString2 attribute:*MEMORY[0x277D74060] atIndex:v5 effectiveRange:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      textLayoutManager = [(ICTextLayoutFragment *)self textLayoutManager];
      v12 = ICDynamicCast();

      objc_opt_class();
      textContainer = [v12 textContainer];
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
        tk2TextView = [v14 tk2TextView];
        [tk2TextView safeAreaInsets];
        v8 = v18;
      }

      tk2TextView2 = [v14 tk2TextView];
      [tk2TextView2 textContainerInset];
      v21 = -v20;
      [v14 lineFragmentPadding];
      v8 = v8 + v21 - v22;
    }

    attributedString3 = [textContentManager attributedString];
    v12 = [attributedString3 attribute:*MEMORY[0x277D35DA8] atIndex:v5 effectiveRange:0];

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
  textElement = [(ICTextLayoutFragment *)self textElement];
  v4 = ICDynamicCast();

  return v4;
}

- (double)trailingPadding
{
  textElement = [(ICTextLayoutFragment *)self textElement];
  textContentManager = [textElement textContentManager];

  v5 = [(ICTextLayoutFragment *)self nsRangeInTextStorage:textContentManager];
  attributedString = [textContentManager attributedString];
  v7 = [attributedString length];

  v8 = 0.0;
  if (v5 < v7)
  {
    attributedString2 = [textContentManager attributedString];
    v10 = [attributedString2 attribute:*MEMORY[0x277D35DA8] atIndex:v5 effectiveRange:0];

    attributedString3 = [textContentManager attributedString];
    v12 = [attributedString3 attribute:*MEMORY[0x277D74060] atIndex:v5 effectiveRange:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      textLayoutManager = [(ICTextLayoutFragment *)self textLayoutManager];
      v14 = ICDynamicCast();

      objc_opt_class();
      textContainer = [v14 textContainer];
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
        tk2TextView = [v16 tk2TextView];
        [tk2TextView safeAreaInsets];
        v8 = v20;
      }

      if ([v10 writingDirection] == -1 && (objc_msgSend(v16, "tk2TextView"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "ic_isRTL"), v21, v22))
      {
        tk2TextView2 = [v16 tk2TextView];
        [tk2TextView2 textContainerInset];
        v25 = -v24;
        [v16 lineFragmentPadding];
        v8 = v8 + v25 - v26;
      }

      else
      {
        tk2TextView2 = [v16 tk2TextView];
        [tk2TextView2 safeAreaInsets];
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

- (ICTextLayoutFragment)initWithTextElement:(id)element range:(id)range
{
  v5.receiver = self;
  v5.super_class = ICTextLayoutFragment;
  return [(ICTextLayoutFragment *)&v5 initWithTextElement:element range:range];
}

- (double)marginForTop:(BOOL)top
{
  topCopy = top;
  textParagraph = [(ICTextLayoutFragment *)self textParagraph];
  elementRange = [textParagraph elementRange];
  v7 = 0.0;
  if (([elementRange isEmpty] & 1) == 0)
  {
    textContentStorage = [(ICTextLayoutFragment *)self textContentStorage];
    documentRange = [textContentStorage documentRange];
    location = [documentRange location];
    location2 = [elementRange location];
    v12 = [textContentStorage offsetFromLocation:location toLocation:location2];

    textAttachment = [(ICTextLayoutFragment *)self textAttachment];
    if (topCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && !v12)
    {
      v7 = *MEMORY[0x277D36640];
    }

    else
    {
      textStorage = [textContentStorage textStorage];
      v15 = [textStorage attribute:*MEMORY[0x277D35DA8] atIndex:v12 effectiveRange:0];

      if (topCopy && [v15 style] == 103 && !v12 && (-[ICTextLayoutFragment textElement](self, "textElement"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "textContentManager"), v38 = objc_claimAutoreleasedReturnValue(), v16, objc_opt_class(), objc_msgSend(v38, "textStorage"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "styler"), v18 = objc_claimAutoreleasedReturnValue(), ICDynamicCast(), v19 = objc_claimAutoreleasedReturnValue(), v18, v17, objc_msgSend(v19, "zoomController"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "zoomFactor"), v22 = v21, v20, v19, v38, v22 != 1.0))
      {
        v7 = 2.0;
      }

      else
      {
        v7 = 0.0;
        if ([v15 style] == 4)
        {
          v23 = [(ICTextLayoutFragment *)self nsRangeInTextStorage:textContentStorage];
          v25 = v24;
          attributedString = [textContentStorage attributedString];
          v27 = [attributedString length];

          if (v23 < v27)
          {
            v39 = v25;
            attributedString2 = [textContentStorage attributedString];
            v29 = [attributedString2 attribute:*MEMORY[0x277D35DA8] atIndex:v23 effectiveRange:0];

            v30 = v29;
            if ([v29 style] == 4)
            {
              v31 = 0;
              v32 = v39;
              if (topCopy)
              {
                v32 = -1;
              }

              v33 = v32 + v23;
              if ((v32 + v23) >= 0 && v33 < v27)
              {
                v34 = v30;
                attributedString3 = [textContentStorage attributedString];
                v31 = [attributedString3 attribute:*MEMORY[0x277D35DA8] atIndex:v33 effectiveRange:0];

                if (v31)
                {
                  v30 = v34;
                  if ([v31 style] == 4)
                  {
                    if ([v31 style] == 4)
                    {
                      blockQuoteLevel = [v31 blockQuoteLevel];
                      if (blockQuoteLevel == [v34 blockQuoteLevel])
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

- (_NSRange)nsRangeInTextStorage:(id)storage
{
  storageCopy = storage;
  textElement = [(ICTextLayoutFragment *)self textElement];
  textContentManager = [textElement textContentManager];
  documentRange = [storageCopy documentRange];

  location = [documentRange location];
  textElement2 = [(ICTextLayoutFragment *)self textElement];
  elementRange = [textElement2 elementRange];
  location2 = [elementRange location];
  v12 = [textContentManager offsetFromLocation:location toLocation:location2];

  textElement3 = [(ICTextLayoutFragment *)self textElement];
  textContentManager2 = [textElement3 textContentManager];
  textElement4 = [(ICTextLayoutFragment *)self textElement];
  elementRange2 = [textElement4 elementRange];
  location3 = [elementRange2 location];
  textElement5 = [(ICTextLayoutFragment *)self textElement];
  elementRange3 = [textElement5 elementRange];
  endLocation = [elementRange3 endLocation];
  v21 = [textContentManager2 offsetFromLocation:location3 toLocation:endLocation];

  v22 = v12;
  v23 = v21;
  result.length = v23;
  result.location = v22;
  return result;
}

@end