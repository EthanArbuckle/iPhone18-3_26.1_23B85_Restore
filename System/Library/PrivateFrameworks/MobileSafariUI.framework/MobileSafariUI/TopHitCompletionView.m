@interface TopHitCompletionView
- (void)drawRect:(CGRect)a3;
- (void)setAttributedText:(id)a3 highlightStartIndex:(unint64_t)a4 layoutIsRTL:(BOOL)a5;
@end

@implementation TopHitCompletionView

- (void)setAttributedText:(id)a3 highlightStartIndex:(unint64_t)a4 layoutIsRTL:(BOOL)a5
{
  v8 = a3;
  v9 = v8;
  if (self->_highlightStartIndex != a4 || v8 | self->_attributedText && (v13 = v8, v10 = [v8 isEqualToAttributedString:?], v9 = v13, (v10 & 1) == 0))
  {
    v14 = v9;
    self->_highlightStartIndex = a4;
    if (self->_attributedText != v9)
    {
      v11 = [(NSAttributedString *)v9 copy];
      attributedText = self->_attributedText;
      self->_attributedText = v11;
    }

    self->_layoutIsRTL = a5;
    [(TopHitCompletionView *)self setNeedsDisplay];
    v9 = v14;
  }
}

- (void)drawRect:(CGRect)a3
{
  if (![(NSAttributedString *)self->_attributedText length:a3.origin.x])
  {
    return;
  }

  v16 = [(NSAttributedString *)self->_attributedText attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];
  [v16 lineHeight];
  [v16 descender];
  [(TopHitCompletionView *)self bounds];
  v5 = v4;
  v7 = v6;
  UIRoundToViewScale();
  v9 = v8 + v5;
  v10 = CTLineCreateWithAttributedString(self->_attributedText);
  TruncatedLine = CTLineCreateTruncatedLine(v10, v7, kCTLineTruncationStart, 0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextTranslateCTM(CurrentContext, 0.0, -v9);
  if (TruncatedLine)
  {
    layoutIsRTL = self->_layoutIsRTL;
  }

  else
  {
    layoutIsRTL = 0;
  }

  if (!layoutIsRTL || CTLineIsRightToLeft())
  {
    [(NSAttributedString *)self->_attributedText length];
  }

  v14 = CTLineCopyHighlightPathForStringRange();
  CGContextAddPath(CurrentContext, v14);
  CGContextSetFillColorWithColor(CurrentContext, [(UIColor *)self->_highlightColor CGColor]);
  CGContextFillPath(CurrentContext);
  CGPathRelease(v14);
  v15 = UIGraphicsGetCurrentContext();
  if (layoutIsRTL)
  {
    CTLineDraw(TruncatedLine, v15);
    CFRelease(v10);
LABEL_13:
    CFRelease(TruncatedLine);
    goto LABEL_14;
  }

  CTLineDraw(v10, v15);
  CFRelease(v10);
  if (TruncatedLine)
  {
    goto LABEL_13;
  }

LABEL_14:
}

@end