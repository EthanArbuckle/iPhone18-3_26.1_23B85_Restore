@interface CCUISControlsGalleryConfiguration
- (CCUISControlsGalleryConfiguration)init;
- (id)copyWithZone:(void *)zone;
@end

@implementation CCUISControlsGalleryConfiguration

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_2442A7F7C(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_2442B4C58();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (CCUISControlsGalleryConfiguration)init
{
  *(self + OBJC_IVAR___CCUISControlsGalleryConfiguration___allowedControlSizes) = 0;
  *(self + OBJC_IVAR___CCUISControlsGalleryConfiguration_disallowedControlIdentities) = 0;
  *(self + OBJC_IVAR___CCUISControlsGalleryConfiguration_disallowedExtensionIdentities) = 0;
  *(self + OBJC_IVAR___CCUISControlsGalleryConfiguration_suggestedControls) = 0;
  v3.receiver = self;
  v3.super_class = CCUISControlsGalleryConfiguration;
  return [(CCUISControlsGalleryConfiguration *)&v3 init];
}

@end