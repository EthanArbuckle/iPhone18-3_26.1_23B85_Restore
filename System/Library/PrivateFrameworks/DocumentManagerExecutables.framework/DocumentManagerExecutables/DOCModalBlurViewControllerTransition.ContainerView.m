@interface DOCModalBlurViewControllerTransition.ContainerView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation DOCModalBlurViewControllerTransition.ContainerView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for DOCModalBlurViewControllerTransition.ContainerView();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(DOCModalBlurViewControllerTransition.ContainerView *)&v13 hitTest:v8 withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = static NSObject.== infix(_:_:)();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

@end