@interface _HUPocketButton
- (CGSize)intrinsicContentSize;
- (_HUPocketButton)initWithFrame:(CGRect)frame highlightedAlpha:(double)alpha highlightedTextAlpha:(double)textAlpha;
@end

@implementation _HUPocketButton

- (_HUPocketButton)initWithFrame:(CGRect)frame highlightedAlpha:(double)alpha highlightedTextAlpha:(double)textAlpha
{
  v12.receiver = self;
  v12.super_class = _HUPocketButton;
  textAlpha = [(HUColoredButton *)&v12 initWithFrame:frame.origin.x highlightedAlpha:frame.origin.y highlightedTextAlpha:frame.size.width, frame.size.height, alpha, textAlpha];
  v7 = textAlpha;
  if (textAlpha)
  {
    LODWORD(v6) = 1148846080;
    [(_HUPocketButton *)textAlpha setContentCompressionResistancePriority:1 forAxis:v6];
    LODWORD(v8) = 1148846080;
    [(_HUPocketButton *)v7 setContentCompressionResistancePriority:0 forAxis:v8];
    LODWORD(v9) = 1132068864;
    [(_HUPocketButton *)v7 setContentHuggingPriority:1 forAxis:v9];
    LODWORD(v10) = 1132068864;
    [(_HUPocketButton *)v7 setContentHuggingPriority:0 forAxis:v10];
  }

  return v7;
}

- (CGSize)intrinsicContentSize
{
  v2 = 512.0;
  v3 = 50.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end