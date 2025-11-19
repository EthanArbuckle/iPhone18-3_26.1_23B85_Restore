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
- (_TtC13HearingModeUI32AnyHearingFeatureContentProvider)init;
- (_TtC13HearingModeUI32AnyHearingFeatureContentProvider)initWithDevice:(id)a3;
- (id)fitWelcomeControllerWithBluetoothDevice:(id)a3 contentProvider:(id)a4;
- (id)leftImageWithIsDark:(BOOL)a3;
- (id)rightImageWithIsDark:(BOOL)a3;
- (unsigned)defaultFiltersID;
- (unsigned)deviceColor;
- (void)setHeadphoneDevice:(id)a3;
@end

@implementation AnyHearingFeatureContentProvider

- (HPMHeadphoneDevice)headphoneDevice
{
  v3 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_headphoneDevice;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHeadphoneDevice:(id)a3
{
  v5 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_headphoneDevice;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC13HearingModeUI32AnyHearingFeatureContentProvider)initWithDevice:(id)a3
{
  v4 = a3;
  v5 = sub_25203E340(a3);

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
  v3 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(self + v3, v11, &qword_27F4C9A10, &qword_2520677F0);
  v4 = v12;
  if (v12)
  {
    v5 = v13;
    __swift_project_boxed_opaque_existential_0(v11, v12);
    v6 = *(v5 + 136);
    v7 = self;
    v6(v4, v5);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v8 = self;
    sub_252039F34(v11, &qword_27F4C9A10, &qword_2520677F0);
  }

  v9 = sub_2520646F4();

  return v9;
}

- (BOOL)isProductOfDifferentColors
{
  v3 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(self + v3, v10, &qword_27F4C9A10, &qword_2520677F0);
  v4 = v11;
  if (v11)
  {
    v5 = v12;
    __swift_project_boxed_opaque_existential_0(v10, v11);
    v6 = *(v5 + 144);
    v7 = self;
    v8 = v6(v4, v5);

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_252039F34(v10, &qword_27F4C9A10, &qword_2520677F0);
    v8 = 0;
  }

  return v8 & 1;
}

- (unsigned)defaultFiltersID
{
  v3 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(self + v3, v10, &qword_27F4C9A10, &qword_2520677F0);
  v4 = v11;
  if (v11)
  {
    v5 = v12;
    __swift_project_boxed_opaque_existential_0(v10, v11);
    v6 = *(v5 + 152);
    v7 = self;
    v8 = v6(v4, v5);

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_252039F34(v10, &qword_27F4C9A10, &qword_2520677F0);
    return 0;
  }

  return v8;
}

- (NSDictionary)getAssetsDictionary
{
  v3 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(self + v3, v11, &qword_27F4C9A10, &qword_2520677F0);
  v4 = v12;
  if (v12)
  {
    v5 = v13;
    __swift_project_boxed_opaque_existential_0(v11, v12);
    v6 = *(v5 + 160);
    v7 = self;
    v6(v4, v5);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v8 = self;
    sub_252039F34(v11, &qword_27F4C9A10, &qword_2520677F0);
    sub_25203E7DC(MEMORY[0x277D84F90]);
  }

  v9 = sub_252064654();

  return v9;
}

- (unsigned)deviceColor
{
  v3 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(self + v3, v10, &qword_27F4C9A10, &qword_2520677F0);
  v4 = v11;
  if (v11)
  {
    v5 = v12;
    __swift_project_boxed_opaque_existential_0(v10, v11);
    v6 = *(v5 + 168);
    v7 = self;
    v8 = v6(v4, v5);

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_252039F34(v10, &qword_27F4C9A10, &qword_2520677F0);
    return 0;
  }

  return v8;
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
  v7 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(self + v7, v15, &qword_27F4C9A10, &qword_2520677F0);
  v8 = v16;
  if (v16)
  {
    v9 = v17;
    __swift_project_boxed_opaque_existential_0(v15, v16);
    v10 = *(v9 + 208);
    swift_unknownObjectRetain();
    v11 = a4;
    v12 = self;
    v13 = v10(a3, v11, v8, v9);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    sub_252039F34(v15, &qword_27F4C9A10, &qword_2520677F0);
    v13 = 0;
  }

  return v13;
}

- (BOOL)featureFlag
{
  sub_2520640D4();
  v2 = sub_2520640C4();
  v3 = sub_2520640A4();

  return v3 & 1;
}

- (_TtC13HearingModeUI32AnyHearingFeatureContentProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end