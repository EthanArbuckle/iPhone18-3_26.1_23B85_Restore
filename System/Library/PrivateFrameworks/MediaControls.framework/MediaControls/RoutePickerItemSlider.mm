@interface RoutePickerItemSlider
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (void)layoutSubviews;
- (void)longGestureDidChangeWithSender:(id)sender;
- (void)panGestureDidChangeWithSender:(id)sender;
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_1A220B1A0(beginCopy);

  return self & 1;
}

- (void)panGestureDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1A220B6C0(senderCopy);
}

- (void)longGestureDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1A220B7DC(senderCopy);
}

@end