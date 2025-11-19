@interface HRTimelineHeaderView
+ (NSString)reuseIdentifier;
- (BOOL)floating;
- (BOOL)separatorViewHidden;
- (CGSize)sizeThatFits:(CGSize)a3;
- (HRTimelineHeaderView)initWithReuseIdentifier:(id)a3;
- (HRTimelineHeaderViewDelegate)delegate;
- (void)applyStyleFromNavigationBar:(id)a3;
- (void)applyTitle:(id)a3 subtitle:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setFloating:(BOOL)a3;
- (void)setSeparatorViewHidden:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)setSeparatorViewHidden:(BOOL)a3
{
  v5 = OBJC_IVAR___HRTimelineHeaderView_separatorViewHidden;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self;
  v7 = sub_1D1108680();
  [v7 setHidden_];
}

- (HRTimelineHeaderView)initWithReuseIdentifier:(id)a3
{
  if (a3)
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

- (void)applyTitle:(id)a3 subtitle:(id)a4
{
  v5 = sub_1D139016C();
  v7 = v6;
  v8 = sub_1D139016C();
  v10 = v9;
  v11 = self;
  sub_1D1108B44(v5, v7, v8, v10);
}

- (void)applyStyleFromNavigationBar:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = sub_1D11085D0();
  if (v5 && (v7 = [v5 _backdropViewLayerGroupName]) != 0)
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
  v2 = self;
  sub_1D1108E34();
}

- (BOOL)floating
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TimelineHeaderView();
  return [(HRTimelineHeaderView *)&v3 floating];
}

- (void)setFloating:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for TimelineHeaderView();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(HRTimelineHeaderView *)&v9 floating];
  v8.receiver = v6;
  v8.super_class = v5;
  [(HRTimelineHeaderView *)&v8 setFloating:v3];
  sub_1D1109018(v7);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D11091D0();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  [(HRTimelineHeaderView *)v4 layoutMargins];
  v6 = width - v5;
  [(HRTimelineHeaderView *)v4 layoutMargins];
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

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D11096B4(a3);
}

@end