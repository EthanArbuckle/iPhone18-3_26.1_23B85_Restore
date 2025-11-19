@interface _HUPocketButton
- (CGSize)intrinsicContentSize;
- (_HUPocketButton)initWithFrame:(CGRect)a3 highlightedAlpha:(double)a4 highlightedTextAlpha:(double)a5;
@end

@implementation _HUPocketButton

- (_HUPocketButton)initWithFrame:(CGRect)a3 highlightedAlpha:(double)a4 highlightedTextAlpha:(double)a5
{
  v12.receiver = self;
  v12.super_class = _HUPocketButton;
  v5 = [(HUColoredButton *)&v12 initWithFrame:a3.origin.x highlightedAlpha:a3.origin.y highlightedTextAlpha:a3.size.width, a3.size.height, a4, a5];
  v7 = v5;
  if (v5)
  {
    LODWORD(v6) = 1148846080;
    [(_HUPocketButton *)v5 setContentCompressionResistancePriority:1 forAxis:v6];
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