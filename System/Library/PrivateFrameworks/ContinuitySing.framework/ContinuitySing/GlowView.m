@interface GlowView
- (_TtC14ContinuitySing8GlowView)initWithCoder:(id)a3;
- (_TtC14ContinuitySing8GlowView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation GlowView

- (_TtC14ContinuitySing8GlowView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_24424E518(x, y, width, height);

  return v7;
}

- (_TtC14ContinuitySing8GlowView)initWithCoder:(id)a3
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_244257E28();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for GlowView();
  v3 = self;
  [(GlowView *)&v13 layoutSubviews];
  v4 = *(&v3->super.super.super.isa + OBJC_IVAR____TtC14ContinuitySing8GlowView_micaPlayer);
  v5 = *MEMORY[0x277CDA708];
  v6 = sub_24424F3C4();
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v4) + 0xD0))(v5, v6 & 1);
  v9 = (*((*v7 & v3->super.super.super.isa) + 0x58))(v8);
  if (v9)
  {
    v10 = v9;
    v11 = sub_24424F3C4();
    v12 = sub_24424F3C4();
    sub_24424F3CC(v5, v11 & 1, v12 & 1);
  }

  else
  {
  }
}

@end