@interface RoutePickerItemSlider
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (void)layoutSubviews;
- (void)longGestureDidChangeWithSender:(id)a3;
- (void)panGestureDidChangeWithSender:(id)a3;
@end

@implementation RoutePickerItemSlider

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for RoutePickerItemSlider();
  v2 = v4.receiver;
  [(RoutePickerItemSlider *)&v4 layoutSubviews];
  sub_1A220BA04();
  [v2 bounds];
  CGRectGetHeight(v5);
  v3 = *&v2[OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_trackView];
  [v2 effectiveUserInterfaceLayoutDirection];
  [v2 bounds];
  sub_1A22E6BB8();
  [v3 setFrame_];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1A220B1A0(v4);

  return self & 1;
}

- (void)panGestureDidChangeWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A220B6C0(v4);
}

- (void)longGestureDidChangeWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A220B7DC(v4);
}

@end