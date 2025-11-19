@interface ScrollingCapsuleCollectionView.CapsuleView
- (BOOL)isSelected;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)didReceiveHover:(id)a3;
- (void)didReceiveTap;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
- (void)updateShadowOpacity;
@end

@implementation ScrollingCapsuleCollectionView.CapsuleView

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = _s11CapsuleViewCMa();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(ScrollingCapsuleCollectionView.CapsuleView *)&v9 isSelected];
  v8.receiver = v6;
  v8.super_class = v5;
  [(ScrollingCapsuleCollectionView.CapsuleView *)&v8 setSelected:v3];
  if (v7 != [(ScrollingCapsuleCollectionView.CapsuleView *)v6 isSelected])
  {
    sub_18B8203EC();
  }
}

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = _s11CapsuleViewCMa();
  return [(ScrollingCapsuleCollectionView.CapsuleView *)&v3 isSelected];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_18B812940();
}

- (void)didReceiveTap
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_tapHandler);
  if (v2)
  {
    v3 = self;
    sub_18B824D48(v2);
    v2(v3);

    sub_18B7E0A10(v2);
  }
}

- (void)didReceiveHover:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [v4 state];
  if (v5 != 1)
  {
    v5 = [v4 state] == 2;
  }

  sub_18BAAA8C0(v5);
}

- (void)updateShadowOpacity
{
  v2 = self;
  sub_18BAAAEB8();
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_18BAAB274();

  return v7;
}

@end