@interface SessionActionButton
- (BOOL)isHighlighted;
- (_TtC13MediaControls19SessionActionButton)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SessionActionButton

- (_TtC13MediaControls19SessionActionButton)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC13MediaControls19SessionActionButton_action;
  v5 = sub_1A22E5BD8();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC13MediaControls19SessionActionButton_backgroundView;
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13MediaControls19SessionActionButton_visualStylingProvider) = 0;
  result = sub_1A22E7028();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for SessionActionButton();
  v2 = v6.receiver;
  [(SessionActionButton *)&v6 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC13MediaControls19SessionActionButton_backgroundView];
  [v2 bounds];
  [v3 setFrame_];
  imageView = [v2 imageView];
  if (imageView)
  {
    v5 = imageView;
    [v2 bounds];
    [v5 setFrame_];
  }
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SessionActionButton();
  return [(SessionActionButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_1A22495C4(highlighted);
}

@end