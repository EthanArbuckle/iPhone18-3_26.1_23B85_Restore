@interface ProfileSharingWithYouHeaderView
- (_TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView)initWithFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ProfileSharingWithYouHeaderView

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for ProfileSharingWithYouHeaderView();
  v4 = a3;
  v5 = v8.receiver;
  [(ProfileSharingWithYouHeaderView *)&v8 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  sub_1BA197D34();
}

- (_TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end