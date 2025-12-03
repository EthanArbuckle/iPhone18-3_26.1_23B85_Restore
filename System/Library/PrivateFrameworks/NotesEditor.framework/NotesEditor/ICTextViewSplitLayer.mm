@interface ICTextViewSplitLayer
- (UITextView)textView;
- (void)drawInContext:(CGContext *)context;
@end

@implementation ICTextViewSplitLayer

- (void)drawInContext:(CGContext *)context
{
  UIGraphicsPushContext(context);
  textView = [(ICTextViewSplitLayer *)self textView];
  layoutManager = [textView layoutManager];
  textView2 = [(ICTextViewSplitLayer *)self textView];
  textContainer = [textView2 textContainer];
  v8 = [layoutManager glyphRangeForTextContainer:textContainer];
  v10 = v9;

  [(ICTextViewSplitLayer *)self sublayerTransform:0];
  textView3 = [(ICTextViewSplitLayer *)self textView];
  layoutManager2 = [textView3 layoutManager];
  [layoutManager2 drawGlyphsForGlyphRange:v8 atPoint:v10 updateAttachments:{0, 0.0, 0.0}];

  UIGraphicsPopContext();
}

- (UITextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

@end