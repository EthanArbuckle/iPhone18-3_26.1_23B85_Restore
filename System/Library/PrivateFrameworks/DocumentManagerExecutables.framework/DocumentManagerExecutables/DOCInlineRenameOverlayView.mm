@interface DOCInlineRenameOverlayView
- (_TtC26DocumentManagerExecutables26DOCInlineRenameOverlayView)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables26DOCInlineRenameOverlayView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation DOCInlineRenameOverlayView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  DOCInlineRenameOverlayView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (_TtC26DocumentManagerExecutables26DOCInlineRenameOverlayView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCInlineRenameOverlayView();
  return [(DOCInlineRenameOverlayView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC26DocumentManagerExecutables26DOCInlineRenameOverlayView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCInlineRenameOverlayView();
  v5 = a3;
  v6 = [(DOCInlineRenameOverlayView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end