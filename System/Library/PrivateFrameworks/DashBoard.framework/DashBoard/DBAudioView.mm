@interface DBAudioView
- (_TtC9DashBoard11DBAudioView)initWithCoder:(id)coder;
- (_TtC9DashBoard11DBAudioView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation DBAudioView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for DBAudioView();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(DBAudioView *)&v13 hitTest:eventCopy withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_24814FB28(0, &qword_27EE8FFC0);
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = sub_248384030();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (_TtC9DashBoard11DBAudioView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DBAudioView();
  return [(DBAudioView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9DashBoard11DBAudioView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DBAudioView();
  coderCopy = coder;
  v5 = [(DBAudioView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end