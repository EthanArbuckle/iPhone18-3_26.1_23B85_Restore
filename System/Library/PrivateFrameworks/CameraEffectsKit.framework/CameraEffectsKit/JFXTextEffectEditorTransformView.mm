@interface JFXTextEffectEditorTransformView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (JFXTextEffectEditorTransformView)initWithFrame:(CGRect)frame textView:(id)view;
@end

@implementation JFXTextEffectEditorTransformView

- (JFXTextEffectEditorTransformView)initWithFrame:(CGRect)frame textView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v18.receiver = self;
  v18.super_class = JFXTextEffectEditorTransformView;
  height = [(JFXTextEffectEditorTransformView *)&v18 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    v13 = *MEMORY[0x277CBF348];
    v14 = *(MEMORY[0x277CBF348] + 8);
    layer = [(JFXTextEffectEditorTransformView *)height layer];
    [layer setAnchorPoint:{v13, v14}];

    layer2 = [(JFXTextEffectEditorTransformView *)v12 layer];
    [layer2 setGeometryFlipped:1];

    [(JFXTextEffectEditorTransformView *)v12 setClipsToBounds:0];
    objc_storeStrong(&v12->_textView, view);
  }

  return v12;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  textView = [(JFXTextEffectEditorTransformView *)self textView];
  [(JFXTextEffectEditorTransformView *)self convertPoint:textView toView:x, y];
  v10 = v9;
  v12 = v11;

  textView2 = [(JFXTextEffectEditorTransformView *)self textView];
  LOBYTE(textView) = [textView2 pointInside:eventCopy withEvent:{v10, v12}];

  return textView;
}

@end