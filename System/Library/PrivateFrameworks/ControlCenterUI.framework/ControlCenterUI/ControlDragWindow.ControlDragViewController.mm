@interface ControlDragWindow.ControlDragViewController
- (_TtCC15ControlCenterUI17ControlDragWindowP33_DBABBCE4349E03AF86A0E6B1A7346F4125ControlDragViewController)initWithCoder:(id)a3;
- (_TtCC15ControlCenterUI17ControlDragWindowP33_DBABBCE4349E03AF86A0E6B1A7346F4125ControlDragViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation ControlDragWindow.ControlDragViewController

- (_TtCC15ControlCenterUI17ControlDragWindowP33_DBABBCE4349E03AF86A0E6B1A7346F4125ControlDragViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_21EAA8E00();
    v6 = a4;
    v7 = sub_21EAA8DC0();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ControlDragWindow.ControlDragViewController();
  v9 = [(ControlDragWindow.ControlDragViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtCC15ControlCenterUI17ControlDragWindowP33_DBABBCE4349E03AF86A0E6B1A7346F4125ControlDragViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ControlDragWindow.ControlDragViewController();
  v4 = a3;
  v5 = [(ControlDragWindow.ControlDragViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end