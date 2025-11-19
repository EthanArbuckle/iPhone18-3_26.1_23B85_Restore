@interface CenteringCurvedTextView
- (_TtC19ComplicationDisplay23CenteringCurvedTextView)initWithCoder:(id)a3;
- (_TtC19ComplicationDisplay23CenteringCurvedTextView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CenteringCurvedTextView

- (_TtC19ComplicationDisplay23CenteringCurvedTextView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_circleCenter);
  *v8 = 0;
  v8[1] = 0;
  v9 = [objc_allocWithZone(MEMORY[0x277CFA768]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_curvedLabelView) = v9;
  v12.receiver = self;
  v12.super_class = type metadata accessor for CenteringCurvedTextView();
  v10 = [(CenteringCurvedTextView *)&v12 initWithFrame:x, y, width, height];
  [(CenteringCurvedTextView *)v10 addSubview:*(&v10->super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_curvedLabelView)];
  return v10;
}

- (_TtC19ComplicationDisplay23CenteringCurvedTextView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_circleCenter);
  type metadata accessor for CenteringCurvedTextView();
  *v3 = 0;
  v3[1] = 0;
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)layoutSubviews
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_243DA7BC0;
  *(v5 + 24) = v4;
  v8[4] = sub_243DA7BC8;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_243DA5F3C;
  v8[3] = &block_descriptor_33;
  v6 = _Block_copy(v8);
  v7 = self;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

@end