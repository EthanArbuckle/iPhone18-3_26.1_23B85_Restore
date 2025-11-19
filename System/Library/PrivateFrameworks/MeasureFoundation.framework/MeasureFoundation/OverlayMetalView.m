@interface OverlayMetalView
- (_TtC17MeasureFoundation16OverlayMetalView)initWithFrame:(CGRect)a3 device:(id)a4;
- (void)didSwipeWithSender:(id)a3;
- (void)drawInMTKView:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation OverlayMetalView

- (_TtC17MeasureFoundation16OverlayMetalView)initWithFrame:(CGRect)a3 device:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectRetain();
  return sub_2583A1A14(a4, x, y, width, height);
}

- (void)drawInMTKView:(id)a3
{
  v4 = a3;
  v5 = self;
  OverlayMetalView.draw(in:)(v4);
}

- (void)didSwipeWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2583A2A74(v4);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v9 = sub_258428660();
    v11 = v10;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v16, 0, sizeof(v16));
    v14 = a5;
    v15 = self;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v9 = 0;
  v11 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v12 = a5;
  v13 = self;
  sub_258428E20();
  swift_unknownObjectRelease();
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_2583A3EE8(&qword_27F927DB0, type metadata accessor for NSKeyValueChangeKey);
    sub_258428510();
  }

LABEL_7:
  _s17MeasureFoundation16OverlayMetalViewC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeyg6ChangeI0aypGSgSvSgtF_0(v9, v11);

  sub_2583A3D90(v16);
}

@end