@interface HRTimelineHeaderView
+ (NSString)reuseIdentifier;
- (BOOL)floating;
- (BOOL)separatorViewHidden;
- (CGSize)sizeThatFits:(CGSize)fits;
- (HRTimelineHeaderView)initWithReuseIdentifier:(id)identifier;
- (HRTimelineHeaderViewDelegate)delegate;
- (void)applyStyleFromNavigationBar:(id)bar;
- (void)applyTitle:(id)title subtitle:(id)subtitle;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setFloating:(BOOL)floating;
- (void)setSeparatorViewHidden:(BOOL)hidden;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HRTimelineHeaderView

+ (NSString)reuseIdentifier
{
  swift_getObjCClassMetadata();
  sub_1D10D6114();
  v2 = sub_1D139012C();

  return v2;
}

- (HRTimelineHeaderViewDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)separatorViewHidden
{
  v3 = OBJC_IVAR___HRTimelineHeaderView_separatorViewHidden;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSeparatorViewHidden:(BOOL)hidden
{
  v5 = OBJC_IVAR___HRTimelineHeaderView_separatorViewHidden;
  swift_beginAccess();
  *(self + v5) = hidden;
  selfCopy = self;
  v7 = sub_1D1108680();
  [v7 setHidden_];
}

- (HRTimelineHeaderView)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = sub_1D139016C();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return TimelineHeaderView.init(reuseIdentifier:)(v3, v4);
}

- (void)applyTitle:(id)title subtitle:(id)subtitle
{
  v5 = sub_1D139016C();
  v7 = v6;
  v8 = sub_1D139016C();
  v10 = v9;
  selfCopy = self;
  sub_1D1108B44(v5, v7, v8, v10);
}

- (void)applyStyleFromNavigationBar:(id)bar
{
  selfCopy = self;
  barCopy = bar;
  v6 = sub_1D11085D0();
  if (barCopy && (v7 = [barCopy _backdropViewLayerGroupName]) != 0)
  {
    v8 = v7;
    sub_1D139016C();

    v10 = sub_1D139012C();

    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;
  [v6 _setGroupName_];
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1D1108E34();
}

- (BOOL)floating
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TimelineHeaderView();
  return [(HRTimelineHeaderView *)&v3 floating];
}

- (void)setFloating:(BOOL)floating
{
  floatingCopy = floating;
  v5 = type metadata accessor for TimelineHeaderView();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  floating = [(HRTimelineHeaderView *)&v9 floating];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(HRTimelineHeaderView *)&v8 setFloating:floatingCopy];
  sub_1D1109018(floating);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D11091D0();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  [(HRTimelineHeaderView *)selfCopy layoutMargins];
  v6 = width - v5;
  [(HRTimelineHeaderView *)selfCopy layoutMargins];
  v8 = v6 - v7;
  v9 = sub_1D1108450();
  [v9 sizeThatFits_];
  v11 = v10;

  v12 = sub_1D1108470();
  [v12 sizeThatFits_];
  v14 = v13;

  v15 = v11 + 12.0 + v14 + 12.0;
  v16 = width;
  result.height = v15;
  result.width = v16;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1D11096B4(change);
}

@end