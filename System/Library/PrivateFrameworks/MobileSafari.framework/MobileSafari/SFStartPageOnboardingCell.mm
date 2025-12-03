@interface SFStartPageOnboardingCell
+ (NSString)reuseIdentifier;
- (SFStartPageOnboardingCellConfiguration)configuration;
- (_TtP12MobileSafari33SFStartPageOnboardingCellDelegate_)startPageOnboardingCellDelegate;
- (void)didTapCloseButton;
- (void)didTapOnboardingButton;
- (void)prepareForReuse;
- (void)setConfiguration:(id)configuration;
- (void)showPrivacyPrompt;
@end

@implementation SFStartPageOnboardingCell

+ (NSString)reuseIdentifier
{
  v2 = sub_18BC20B98();

  return v2;
}

- (SFStartPageOnboardingCellConfiguration)configuration
{
  v3 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_configuration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setConfiguration:(id)configuration
{
  v5 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_configuration;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = configuration;
  configurationCopy = configuration;
  selfCopy = self;

  sub_18BACD23C();
  sub_18BACC3D4();
}

- (_TtP12MobileSafari33SFStartPageOnboardingCellDelegate_)startPageOnboardingCellDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SFStartPageOnboardingCell();
  v2 = v5.receiver;
  [(SFStartPageOnboardingCell *)&v5 prepareForReuse];
  v3 = sub_18BACB5F4();
  [v3 removeAllGestureRecognizers];

  v4 = *&v2[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___descriptionLabel];
  [v4 setUserInteractionEnabled_];
}

- (void)showPrivacyPrompt
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong showPrivacyPrompt];
    swift_unknownObjectRelease();
  }
}

- (void)didTapOnboardingButton
{
  selfCopy = self;
  sub_18BACDE78();
}

- (void)didTapCloseButton
{
  selfCopy = self;
  sub_18BACDECC();
}

@end