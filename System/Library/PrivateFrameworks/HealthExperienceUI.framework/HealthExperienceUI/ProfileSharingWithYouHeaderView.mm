@interface ProfileSharingWithYouHeaderView
- (_TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ProfileSharingWithYouHeaderView

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for ProfileSharingWithYouHeaderView();
  changeCopy = change;
  v5 = v8.receiver;
  [(ProfileSharingWithYouHeaderView *)&v8 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  sub_1BA197D34();
}

- (_TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end