@interface TabThumbnailView.CornerButton
- (BOOL)isHighlighted;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)didReceiveHover:(id)hover;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation TabThumbnailView.CornerButton

- (void)didReceiveHover:(id)hover
{
  hoverCopy = hover;
  selfCopy = self;
  state = [hoverCopy state];
  if (state != 1)
  {
    state = [hoverCopy state] == 2;
  }

  sub_18BA6E818(state);
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = _s12CornerButtonCMa();
  return [(TabThumbnailView.CornerButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5 = _s12CornerButtonCMa();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHighlighted = [(TabThumbnailView.CornerButton *)&v9 isHighlighted];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(TabThumbnailView.CornerButton *)&v8 setHighlighted:highlightedCopy];
  sub_18BA6E570(isHighlighted);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_18BA6E9F8();
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_menu);
  if (v4)
  {
    sub_18B7B0AC0(0, &unk_1EA9D4F70);
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v4;
    v7 = sub_18B9C1AC8(0, 0, 0, sub_18BA6F860, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end