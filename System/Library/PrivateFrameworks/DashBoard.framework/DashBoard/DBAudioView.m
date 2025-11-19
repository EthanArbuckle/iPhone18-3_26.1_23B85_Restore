@interface DBAudioView
- (_TtC9DashBoard11DBAudioView)initWithCoder:(id)a3;
- (_TtC9DashBoard11DBAudioView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation DBAudioView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for DBAudioView();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(DBAudioView *)&v13 hitTest:v8 withEvent:x, y];
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

- (_TtC9DashBoard11DBAudioView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DBAudioView();
  return [(DBAudioView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9DashBoard11DBAudioView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DBAudioView();
  v4 = a3;
  v5 = [(DBAudioView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end