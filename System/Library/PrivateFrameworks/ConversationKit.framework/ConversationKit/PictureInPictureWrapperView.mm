@interface PictureInPictureWrapperView
- (UIEdgeInsets)_touchInsets;
- (void)_setTouchInsets:(UIEdgeInsets)a3;
- (void)addSubview:(id)a3;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
@end

@implementation PictureInPictureWrapperView

- (UIEdgeInsets)_touchInsets
{
  v2 = self;
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

- (void)_setTouchInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = self;
  PictureInPictureWrapperView._touchInsets.setter(top, left, bottom, right);
}

- (void)layoutSubviews
{
  v2 = self;
  PictureInPictureWrapperView.layoutSubviews()();
}

- (void)addSubview:(id)a3
{
  v4 = a3;
  v5 = self;
  PictureInPictureWrapperView.addSubview(_:)(v4);
}

- (void)didMoveToSuperview
{
  v2 = self;
  PictureInPictureWrapperView._touchInsets.didset();
}

@end