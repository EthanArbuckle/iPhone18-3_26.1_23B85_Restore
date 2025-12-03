@interface IssueCoverViewButton
- (BOOL)isHighlighted;
- (CGRect)frame;
- (_TtC8NewsFeed20IssueCoverViewButton)initWithCoder:(id)coder;
- (_TtC8NewsFeed20IssueCoverViewButton)initWithFrame:(CGRect)frame;
- (void)setFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation IssueCoverViewButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(IssueCoverViewButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(IssueCoverViewButton *)&v9 setHighlighted:highlightedCopy];
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_1D68B1F98;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D5B6B06C;
  v8[3] = &block_descriptor_11_2;
  v7 = _Block_copy(v8);

  [v5 animateWithDuration:v7 animations:0.2];
  _Block_release(v7);
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(IssueCoverViewButton *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v7 = v9.receiver;
  [(IssueCoverViewButton *)&v9 setFrame:x, y, width, height];
  v8 = *&v7[OBJC_IVAR____TtC8NewsFeed20IssueCoverViewButton_coverView];
  [v7 bounds];
  [v8 setFrame_];
}

- (_TtC8NewsFeed20IssueCoverViewButton)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8NewsFeed20IssueCoverViewButton_onTap;
  sub_1D5BFDBB4();
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(v5) init];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (_TtC8NewsFeed20IssueCoverViewButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end