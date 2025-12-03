@interface RoutePickerContainerView
- (_TtC13MediaControls24RoutePickerContainerView)initWithCoder:(id)coder;
- (_TtC13MediaControls24RoutePickerContainerView)initWithFrame:(CGRect)frame;
@end

@implementation RoutePickerContainerView

- (_TtC13MediaControls24RoutePickerContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RoutePickerContainerView();
  return [(RoutePickerContainerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC13MediaControls24RoutePickerContainerView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RoutePickerContainerView();
  coderCopy = coder;
  v5 = [(RoutePickerContainerView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end