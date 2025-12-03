@interface ScrollingCapsuleCollectionView.CapsuleView
- (BOOL)isSelected;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)didReceiveHover:(id)hover;
- (void)didReceiveTap;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected;
- (void)updateShadowOpacity;
@end

@implementation ScrollingCapsuleCollectionView.CapsuleView

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = _s11CapsuleViewCMa();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isSelected = [(ScrollingCapsuleCollectionView.CapsuleView *)&v9 isSelected];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(ScrollingCapsuleCollectionView.CapsuleView *)&v8 setSelected:selectedCopy];
  if (isSelected != [(ScrollingCapsuleCollectionView.CapsuleView *)selfCopy isSelected])
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
  selfCopy = self;
  sub_18B812940();
}

- (void)didReceiveTap
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_tapHandler);
  if (v2)
  {
    selfCopy = self;
    sub_18B824D48(v2);
    v2(selfCopy);

    sub_18B7E0A10(v2);
  }
}

- (void)didReceiveHover:(id)hover
{
  hoverCopy = hover;
  selfCopy = self;
  state = [hoverCopy state];
  if (state != 1)
  {
    state = [hoverCopy state] == 2;
  }

  sub_18BAAA8C0(state);
}

- (void)updateShadowOpacity
{
  selfCopy = self;
  sub_18BAAAEB8();
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = sub_18BAAB274();

  return v7;
}

@end