@interface TabThumbnailView.CornerButton
- (BOOL)isHighlighted;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)didReceiveHover:(id)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation TabThumbnailView.CornerButton

- (void)didReceiveHover:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [v4 state];
  if (v5 != 1)
  {
    v5 = [v4 state] == 2;
  }

  sub_18BA6E818(v5);
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = _s12CornerButtonCMa();
  return [(TabThumbnailView.CornerButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = _s12CornerButtonCMa();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(TabThumbnailView.CornerButton *)&v9 isHighlighted];
  v8.receiver = v6;
  v8.super_class = v5;
  [(TabThumbnailView.CornerButton *)&v8 setHighlighted:v3];
  sub_18BA6E570(v7);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_18BA6E9F8();
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
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