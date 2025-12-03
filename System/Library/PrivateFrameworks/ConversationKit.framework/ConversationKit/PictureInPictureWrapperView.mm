@interface PictureInPictureWrapperView
- (UIEdgeInsets)_touchInsets;
- (void)_setTouchInsets:(UIEdgeInsets)insets;
- (void)addSubview:(id)subview;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
@end

@implementation PictureInPictureWrapperView

- (UIEdgeInsets)_touchInsets
{
  selfCopy = self;
  PictureInPictureWrapperView._touchInsets.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)_setTouchInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  selfCopy = self;
  PictureInPictureWrapperView._touchInsets.setter(top, left, bottom, right);
}

- (void)layoutSubviews
{
  selfCopy = self;
  PictureInPictureWrapperView.layoutSubviews()();
}

- (void)addSubview:(id)subview
{
  subviewCopy = subview;
  selfCopy = self;
  PictureInPictureWrapperView.addSubview(_:)(subviewCopy);
}

- (void)didMoveToSuperview
{
  selfCopy = self;
  PictureInPictureWrapperView._touchInsets.didset();
}

@end