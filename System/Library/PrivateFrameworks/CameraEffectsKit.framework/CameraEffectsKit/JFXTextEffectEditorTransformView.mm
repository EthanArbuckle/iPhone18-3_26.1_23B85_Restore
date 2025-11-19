@interface JFXTextEffectEditorTransformView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (JFXTextEffectEditorTransformView)initWithFrame:(CGRect)a3 textView:(id)a4;
@end

@implementation JFXTextEffectEditorTransformView

- (JFXTextEffectEditorTransformView)initWithFrame:(CGRect)a3 textView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = JFXTextEffectEditorTransformView;
  v11 = [(JFXTextEffectEditorTransformView *)&v18 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    v13 = *MEMORY[0x277CBF348];
    v14 = *(MEMORY[0x277CBF348] + 8);
    v15 = [(JFXTextEffectEditorTransformView *)v11 layer];
    [v15 setAnchorPoint:{v13, v14}];

    v16 = [(JFXTextEffectEditorTransformView *)v12 layer];
    [v16 setGeometryFlipped:1];

    [(JFXTextEffectEditorTransformView *)v12 setClipsToBounds:0];
    objc_storeStrong(&v12->_textView, a4);
  }

  return v12;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(JFXTextEffectEditorTransformView *)self textView];
  [(JFXTextEffectEditorTransformView *)self convertPoint:v8 toView:x, y];
  v10 = v9;
  v12 = v11;

  v13 = [(JFXTextEffectEditorTransformView *)self textView];
  LOBYTE(v8) = [v13 pointInside:v7 withEvent:{v10, v12}];

  return v8;
}

@end