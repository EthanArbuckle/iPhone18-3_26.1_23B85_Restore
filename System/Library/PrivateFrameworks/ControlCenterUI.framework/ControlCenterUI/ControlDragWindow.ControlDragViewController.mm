@interface ControlDragWindow.ControlDragViewController
- (_TtCC15ControlCenterUI17ControlDragWindowP33_DBABBCE4349E03AF86A0E6B1A7346F4125ControlDragViewController)initWithCoder:(id)coder;
- (_TtCC15ControlCenterUI17ControlDragWindowP33_DBABBCE4349E03AF86A0E6B1A7346F4125ControlDragViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation ControlDragWindow.ControlDragViewController

- (_TtCC15ControlCenterUI17ControlDragWindowP33_DBABBCE4349E03AF86A0E6B1A7346F4125ControlDragViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_21EAA8E00();
    bundleCopy = bundle;
    v7 = sub_21EAA8DC0();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ControlDragWindow.ControlDragViewController();
  v9 = [(ControlDragWindow.ControlDragViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtCC15ControlCenterUI17ControlDragWindowP33_DBABBCE4349E03AF86A0E6B1A7346F4125ControlDragViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ControlDragWindow.ControlDragViewController();
  coderCopy = coder;
  v5 = [(ControlDragWindow.ControlDragViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end