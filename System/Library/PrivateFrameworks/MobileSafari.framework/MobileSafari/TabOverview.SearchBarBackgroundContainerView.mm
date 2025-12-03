@interface TabOverview.SearchBarBackgroundContainerView
- (_TtCC12MobileSafari11TabOverview32SearchBarBackgroundContainerView)initWithCoder:(id)coder;
- (_TtCC12MobileSafari11TabOverview32SearchBarBackgroundContainerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation TabOverview.SearchBarBackgroundContainerView

- (_TtCC12MobileSafari11TabOverview32SearchBarBackgroundContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtCC12MobileSafari11TabOverview32SearchBarBackgroundContainerView_backgroundView;
  if (qword_1EA9D2238 != -1)
  {
    swift_once();
  }

  v15[3] = xmmword_1EA9F7BB8;
  v15[4] = xmmword_1EA9F7BC8;
  v15[5] = *&qword_1EA9F7BD8;
  v15[0] = xmmword_1EA9F7B88;
  v16 = qword_1EA9F7BE8;
  v15[1] = unk_1EA9F7B98;
  v15[2] = xmmword_1EA9F7BA8;
  v9 = objc_allocWithZone(_s17BarBackgroundViewCMa());
  sub_18B9D4798(v15, v14);
  v10 = sub_18B9FA830(v15);
  sub_18B9D47F4(v15);
  *(&self->super.super.super.super.super.isa + v8) = v10;
  v13.receiver = self;
  v13.super_class = type metadata accessor for TabOverview.SearchBarBackgroundContainerView();
  height = [(SFFluidTabOverviewReusableView *)&v13 initWithFrame:x, y, width, height];
  [*(&height->super.super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView) addSubview_];
  return height;
}

- (_TtCC12MobileSafari11TabOverview32SearchBarBackgroundContainerView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtCC12MobileSafari11TabOverview32SearchBarBackgroundContainerView_backgroundView;
  if (qword_1EA9D2238 != -1)
  {
    swift_once();
  }

  v9[4] = xmmword_1EA9F7BC8;
  v9[5] = *&qword_1EA9F7BD8;
  v10 = qword_1EA9F7BE8;
  v9[0] = xmmword_1EA9F7B88;
  v9[1] = unk_1EA9F7B98;
  v9[2] = xmmword_1EA9F7BA8;
  v9[3] = xmmword_1EA9F7BB8;
  v5 = objc_allocWithZone(_s17BarBackgroundViewCMa());
  sub_18B9D4798(v9, v8);
  v6 = sub_18B9FA830(v9);
  sub_18B9D47F4(v9);
  *(&self->super.super.super.super.super.isa + v4) = v6;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TabOverview.SearchBarBackgroundContainerView();
  v2 = v7.receiver;
  [(TabOverview.SearchBarBackgroundContainerView *)&v7 layoutSubviews];
  [*&v2[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView] bounds];
  sub_18B9F952C(v3, v4, v5, v6);
}

@end