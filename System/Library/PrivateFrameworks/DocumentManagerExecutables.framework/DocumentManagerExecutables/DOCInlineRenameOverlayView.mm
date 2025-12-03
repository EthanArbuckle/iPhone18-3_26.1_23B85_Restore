@interface DOCInlineRenameOverlayView
- (_TtC26DocumentManagerExecutables26DOCInlineRenameOverlayView)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables26DOCInlineRenameOverlayView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation DOCInlineRenameOverlayView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  DOCInlineRenameOverlayView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (_TtC26DocumentManagerExecutables26DOCInlineRenameOverlayView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCInlineRenameOverlayView();
  return [(DOCInlineRenameOverlayView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC26DocumentManagerExecutables26DOCInlineRenameOverlayView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCInlineRenameOverlayView();
  coderCopy = coder;
  v6 = [(DOCInlineRenameOverlayView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end