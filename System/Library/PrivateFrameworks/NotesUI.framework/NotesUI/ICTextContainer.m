@interface ICTextContainer
- (BOOL)isSimpleRectangularTextContainer;
- (CGRect)lineFragmentRectForProposedRect:(CGRect)a3 atIndex:(unint64_t)a4 writingDirection:(int64_t)a5 remainingRect:(CGRect *)a6;
@end

@implementation ICTextContainer

- (CGRect)lineFragmentRectForProposedRect:(CGRect)a3 atIndex:(unint64_t)a4 writingDirection:(int64_t)a5 remainingRect:(CGRect *)a6
{
  v35.receiver = self;
  v35.super_class = ICTextContainer;
  [(ICTextContainer *)&v35 lineFragmentRectForProposedRect:a4 atIndex:a5 writingDirection:a6 remainingRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  objc_opt_class();
  v16 = [(ICTextContainer *)self layoutManager];
  v17 = ICDynamicCast();

  if (v17)
  {
    v18 = [v17 textStorage];
    v19 = [v18 length];

    if (v19 >= a4)
    {
      v20 = [v17 textView];
      v21 = [v17 textStorage];
      v22 = [v21 length];

      if (v22 == a4)
      {
        if (!v20)
        {
          v25 = 0;
LABEL_16:

          goto LABEL_17;
        }

        v23 = [v20 typingAttributes];
        v24 = [v23 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
      }

      else
      {
        v23 = [v17 textStorage];
        v24 = [v23 attribute:*MEMORY[0x1E69B7600] atIndex:a4 effectiveRange:0];
      }

      v25 = v24;

      if (v25 && [v25 isList])
      {
        v26 = [v25 layoutWritingDirection];
        if (v26 == -1)
        {
          v26 = [MEMORY[0x1E69DB7D0] defaultWritingDirectionForLanguage:0];
        }

        v27 = [(ICTextContainer *)self layoutManager];
        v28 = [v27 textStorage];
        [ICTextController indentForStyle:v25 range:a4 attributedString:0 textView:v28, v20];
        v30 = v29;

        if (v26)
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
  v3 = [(ICTextContainer *)self exclusionPaths];
  if ([v3 count] || -[ICTextContainer maximumNumberOfLines](self, "maximumNumberOfLines"))
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