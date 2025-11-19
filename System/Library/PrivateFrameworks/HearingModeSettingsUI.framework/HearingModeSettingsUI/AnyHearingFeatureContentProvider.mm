@interface AnyHearingFeatureContentProvider
- (BOOL)featureFlag;
- (BOOL)isProductOfDifferentColors;
- (HPMHeadphoneDevice)headphoneDevice;
- (NSBundle)videoAirPodAdjustBundle;
- (NSBundle)videoAirPodLeftRightBundle;
- (NSDictionary)getAssetsDictionary;
- (NSString)welcomeControllerDeviceSymbol;
- (UIImage)faultcheckFailedImage;
- (UIImage)faultcheckUnknownImage;
- (UIImage)fitNoiseLeft;
- (UIImage)fitNoiseRight;
- (UIImage)occlusionLeftImage;
- (UIImage)occlusionRightImage;
- (_TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider)init;
- (_TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider)initWithDevice:(id)a3;
- (id)fitWelcomeControllerWithBluetoothDevice:(id)a3 contentProvider:(id)a4;
- (id)leftImageWithIsDark:(BOOL)a3;
- (id)rightImageWithIsDark:(BOOL)a3;
- (void)setHeadphoneDevice:(id)a3;
@end

@implementation AnyHearingFeatureContentProvider

- (HPMHeadphoneDevice)headphoneDevice
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_headphoneDevice;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHeadphoneDevice:(id)a3
{
  v5 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_headphoneDevice;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider)initWithDevice:(id)a3
{
  v4 = a3;
  v5 = sub_251FC5C94(a3);

  return v5;
}

- (UIImage)faultcheckUnknownImage
{
  v2 = self;
  v3 = AnyHearingFeatureContentProvider.faultcheckUnknownImage.getter();

  return v3;
}

- (UIImage)faultcheckFailedImage
{
  v2 = self;
  v3 = AnyHearingFeatureContentProvider.faultcheckFailedImage.getter();

  return v3;
}

- (UIImage)occlusionLeftImage
{
  v2 = self;
  v3 = AnyHearingFeatureContentProvider.occlusionLeftImage.getter();

  return v3;
}

- (UIImage)occlusionRightImage
{
  v2 = self;
  v3 = AnyHearingFeatureContentProvider.occlusionRightImage.getter();

  return v3;
}

- (UIImage)fitNoiseLeft
{
  v2 = self;
  v3 = AnyHearingFeatureContentProvider.fitNoiseLeft.getter();

  return v3;
}

- (UIImage)fitNoiseRight
{
  v2 = self;
  v3 = AnyHearingFeatureContentProvider.fitNoiseRight.getter();

  return v3;
}

- (NSBundle)videoAirPodAdjustBundle
{
  v2 = self;
  v3 = AnyHearingFeatureContentProvider.videoAirPodAdjustBundle.getter();

  return v3;
}

- (NSBundle)videoAirPodLeftRightBundle
{
  v2 = self;
  v3 = AnyHearingFeatureContentProvider.videoAirPodLeftRightBundle.getter();

  return v3;
}

- (NSString)welcomeControllerDeviceSymbol
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(self + v3, v8, &qword_27F4C68B0, &qword_2520071A0);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v4 = self;
    sub_252003CA0();
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    v5 = self;
    sub_251FC6470(v8, &qword_27F4C68B0, &qword_2520071A0);
  }

  v6 = sub_2520046B0();

  return v6;
}

- (BOOL)isProductOfDifferentColors
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(self + v3, v7, &qword_27F4C68B0, &qword_2520071A0);
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v4 = self;
    v5 = sub_252003C90();

    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    sub_251FC6470(v7, &qword_27F4C68B0, &qword_2520071A0);
    v5 = 0;
  }

  return v5 & 1;
}

- (NSDictionary)getAssetsDictionary
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(self + v3, v8, &qword_27F4C68B0, &qword_2520071A0);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v4 = self;
    sub_252003C00();
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    v5 = self;
    sub_251FC6470(v8, &qword_27F4C68B0, &qword_2520071A0);
    sub_251FC6164(MEMORY[0x277D84F90]);
  }

  v6 = sub_252004600();

  return v6;
}

- (id)leftImageWithIsDark:(BOOL)a3
{
  v4 = self;
  v5.super.isa = AnyHearingFeatureContentProvider.leftImage(isDark:)(a3).super.isa;

  return v5.super.isa;
}

- (id)rightImageWithIsDark:(BOOL)a3
{
  v4 = self;
  v5.super.isa = AnyHearingFeatureContentProvider.rightImage(isDark:)(a3).super.isa;

  return v5.super.isa;
}

- (id)fitWelcomeControllerWithBluetoothDevice:(id)a3 contentProvider:(id)a4
{
  v6 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(self + v6, v11, &qword_27F4C68B0, &qword_2520071A0);
  if (v12)
  {
    __swift_project_boxed_opaque_existential_1(v11, v12);
    swift_unknownObjectRetain();
    v7 = a4;
    v8 = self;
    v9 = sub_252003C30();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    sub_251FC6470(v11, &qword_27F4C68B0, &qword_2520071A0);
    v9 = 0;
  }

  return v9;
}

- (BOOL)featureFlag
{
  sub_252003F10();
  v2 = sub_252003EF0();
  v3 = sub_252003ED0();

  return v3 & 1;
}

- (_TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end