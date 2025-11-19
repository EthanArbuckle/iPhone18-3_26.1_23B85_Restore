@interface ICTextViewSplitLayer
- (UITextView)textView;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation ICTextViewSplitLayer

- (void)drawInContext:(CGContext *)a3
{
  UIGraphicsPushContext(a3);
  v4 = [(ICTextViewSplitLayer *)self textView];
  v5 = [v4 layoutManager];
  v6 = [(ICTextViewSplitLayer *)self textView];
  v7 = [v6 textContainer];
  v8 = [v5 glyphRangeForTextContainer:v7];
  v10 = v9;

  [(ICTextViewSplitLayer *)self sublayerTransform:0];
  v11 = [(ICTextViewSplitLayer *)self textView];
  v12 = [v11 layoutManager];
  [v12 drawGlyphsForGlyphRange:v8 atPoint:v10 updateAttachments:{0, 0.0, 0.0}];

  UIGraphicsPopContext();
}

- (UITextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

@end