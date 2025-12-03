@interface ICTextContainer
- (BOOL)isSimpleRectangularTextContainer;
- (CGRect)lineFragmentRectForProposedRect:(CGRect)rect atIndex:(unint64_t)index writingDirection:(int64_t)direction remainingRect:(CGRect *)remainingRect;
@end

@implementation ICTextContainer

- (CGRect)lineFragmentRectForProposedRect:(CGRect)rect atIndex:(unint64_t)index writingDirection:(int64_t)direction remainingRect:(CGRect *)remainingRect
{
  v35.receiver = self;
  v35.super_class = ICTextContainer;
  [(ICTextContainer *)&v35 lineFragmentRectForProposedRect:index atIndex:direction writingDirection:remainingRect remainingRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  objc_opt_class();
  layoutManager = [(ICTextContainer *)self layoutManager];
  v17 = ICDynamicCast();

  if (v17)
  {
    textStorage = [v17 textStorage];
    v19 = [textStorage length];

    if (v19 >= index)
    {
      textView = [v17 textView];
      textStorage2 = [v17 textStorage];
      v22 = [textStorage2 length];

      if (v22 == index)
      {
        if (!textView)
        {
          v25 = 0;
LABEL_16:

          goto LABEL_17;
        }

        typingAttributes = [textView typingAttributes];
        v24 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
      }

      else
      {
        typingAttributes = [v17 textStorage];
        v24 = [typingAttributes attribute:*MEMORY[0x1E69B7600] atIndex:index effectiveRange:0];
      }

      v25 = v24;

      if (v25 && [v25 isList])
      {
        layoutWritingDirection = [v25 layoutWritingDirection];
        if (layoutWritingDirection == -1)
        {
          layoutWritingDirection = [MEMORY[0x1E69DB7D0] defaultWritingDirectionForLanguage:0];
        }

        layoutManager2 = [(ICTextContainer *)self layoutManager];
        textStorage3 = [layoutManager2 textStorage];
        [ICTextController indentForStyle:v25 range:index attributedString:0 textView:textStorage3, textView];
        v30 = v29;

        if (layoutWritingDirection)
        {
          v13 = v13 - v30;
        }

        else
        {
          v9 = v9 + v30;
          v13 = v13 - v30;
          if ([v25 isBlockQuote])
          {
            v9 = v9 + 16.0;
            v13 = v13 + 16.0;
          }
        }
      }

      goto LABEL_16;
    }
  }

LABEL_17:

  v31 = v9;
  v32 = v11;
  v33 = v13;
  v34 = v15;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (BOOL)isSimpleRectangularTextContainer
{
  exclusionPaths = [(ICTextContainer *)self exclusionPaths];
  if ([exclusionPaths count] || -[ICTextContainer maximumNumberOfLines](self, "maximumNumberOfLines"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(ICTextContainer *)self inPreviewMode];
  }

  return v4;
}

@end