@interface TabOverview.ItemView
- (_TtCC12MobileSafari11TabOverview8ItemView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation TabOverview.ItemView

- (_TtCC12MobileSafari11TabOverview8ItemView)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari11TabOverview8ItemView_closeHandler);
  *v4 = CGRectMake;
  v4[1] = 0;
  v5 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari11TabOverview8ItemView_unpinHandler);
  *v5 = CGRectMake;
  v5[1] = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for TabOverview.ItemView();
  v6 = a3;
  v7 = [(SFFluidTabOverviewReusableView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for TabOverview.ItemView();
  v2 = v11.receiver;
  [(TabOverview.ItemView *)&v11 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView];
  type metadata accessor for TabOverviewItemView();
  v4 = swift_dynamicCastClassUnconditional();
  v5 = v3;
  [v2 bounds];
  [v4 setBounds_];
  [v2 bounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  MidX = CGRectGetMidX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  [v4 setCenter_];
}

@end