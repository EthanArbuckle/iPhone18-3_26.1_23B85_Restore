@interface OverlayMetalView
- (_TtC17MeasureFoundation16OverlayMetalView)initWithFrame:(CGRect)frame device:(id)device;
- (void)didSwipeWithSender:(id)sender;
- (void)drawInMTKView:(id)view;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation OverlayMetalView

- (_TtC17MeasureFoundation16OverlayMetalView)initWithFrame:(CGRect)frame device:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectRetain();
  return sub_2583A1A14(device, x, y, width, height);
}

- (void)drawInMTKView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  OverlayMetalView.draw(in:)(viewCopy);
}

- (void)didSwipeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_2583A2A74(senderCopy);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v9 = sub_258428660();
    v11 = v10;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v16, 0, sizeof(v16));
    changeCopy = change;
    selfCopy = self;
    if (!change)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v9 = 0;
  v11 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_258428E20();
  swift_unknownObjectRelease();
  if (change)
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