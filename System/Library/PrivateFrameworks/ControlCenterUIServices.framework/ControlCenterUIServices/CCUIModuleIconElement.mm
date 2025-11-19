@interface CCUIModuleIconElement
- (BOOL)isEqual:(id)a3;
- (CCUIModuleIconElement)init;
- (CCUIModuleIconElement)initWithUniqueIdentifier:(id)a3 moduleIdentifier:(id)a4 containerBundleIdentifier:(id)a5 standardSupportedGridSizeClasses:(id)a6 expandsGridSizeClassesForAccessibility:(BOOL)a7;
- (NSString)description;
- (NSString)displayName;
- (NSString)sbh_appName;
- (NSString)sbh_galleryItemIdentifier;
- (NSString)sbh_widgetName;
- (SBHIconGridSizeClassSet)supportedGridSizeClasses;
- (id)copyWithUniqueIdentifier;
- (id)copyWithZone:(void *)a3;
- (id)icon:(id)a3 displayNameForLocation:(id)a4;
- (id)supportedGridSizeClassesForIcon:(id)a3;
- (int64_t)hash;
- (int64_t)preferredGallerySizeClass;
- (void)appendDescriptionToStream:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setPreferredGallerySizeClass:(int64_t)a3;
- (void)set_supportedGridSizeClasses:(id)a3;
- (void)updateSupportedGridSizeClassesForAccessibilityContentSizeCategory:(BOOL)a3;
@end

@implementation CCUIModuleIconElement

- (SBHIconGridSizeClassSet)supportedGridSizeClasses
{
  v2 = [(CCUIModuleIconElement *)self _supportedGridSizeClasses];

  return v2;
}

- (NSString)displayName
{
  v2 = (self + OBJC_IVAR___CCUIModuleIconElement_displayName);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = sub_2442B4878();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDisplayName:(id)a3
{
  if (a3)
  {
    v4 = sub_2442B48A8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___CCUIModuleIconElement_displayName);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (int64_t)preferredGallerySizeClass
{
  v3 = OBJC_IVAR___CCUIModuleIconElement_preferredGallerySizeClass;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPreferredGallerySizeClass:(int64_t)a3
{
  v5 = OBJC_IVAR___CCUIModuleIconElement_preferredGallerySizeClass;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)updateSupportedGridSizeClassesForAccessibilityContentSizeCategory:(BOOL)a3
{
  v4 = self;
  sub_2442A10A0(a3);
}

- (CCUIModuleIconElement)initWithUniqueIdentifier:(id)a3 moduleIdentifier:(id)a4 containerBundleIdentifier:(id)a5 standardSupportedGridSizeClasses:(id)a6 expandsGridSizeClassesForAccessibility:(BOOL)a7
{
  v9 = sub_2442B48A8();
  v11 = v10;
  v12 = sub_2442B48A8();
  v14 = v13;
  v15 = sub_2442B48A8();
  v17 = v16;
  v18 = a6;
  v19 = sub_2442A3150(v9, v11, v12, v14, v15, v17, v18, a7);

  return v19;
}

- (id)icon:(id)a3 displayNameForLocation:(id)a4
{
  v4 = self;
  v5 = [(CCUIModuleIconElement *)v4 displayName];
  if (v5)
  {
    v6 = v5;
    sub_2442B48A8();

    v7 = sub_2442B4878();
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (id)supportedGridSizeClassesForIcon:(id)a3
{
  v3 = [(CCUIModuleIconElement *)self supportedGridSizeClasses];

  return v3;
}

- (id)copyWithUniqueIdentifier
{
  v2 = self;
  v3 = CCUIModuleIconElement.copyWithUniqueIdentifier()();

  return v3;
}

- (int64_t)hash
{
  v2 = self;
  v3 = CCUIModuleIconElement.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2442B4AF8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CCUIModuleIconElement.isEqual(_:)(v8);

  sub_2442A3434(v8);
  return v6 & 1;
}

- (NSString)description
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 descriptionForRootObject_];
  if (!v5)
  {
    sub_2442B48A8();
    v5 = sub_2442B4878();
  }

  return v5;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_2442A21CC(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_2442B4C58();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v5 = self;
  CCUIModuleIconElement.appendDescription(to:)(v4);
}

- (void)set_supportedGridSizeClasses:(id)a3
{
  v4 = *(self + OBJC_IVAR___CCUIModuleIconElement__supportedGridSizeClasses);
  *(self + OBJC_IVAR___CCUIModuleIconElement__supportedGridSizeClasses) = a3;
  v3 = a3;
}

- (CCUIModuleIconElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)sbh_galleryItemIdentifier
{
  v2 = self;
  sub_2442B4B58();

  v3 = [(CCUIModuleIconElement *)v2 uniqueIdentifier:0xD00000000000001DLL];
  v4 = sub_2442B48A8();
  v6 = v5;

  MEMORY[0x245D5DD10](v4, v6);

  v7 = sub_2442B4878();

  return v7;
}

- (NSString)sbh_appName
{
  v2 = self;
  CCUIModuleIconElement.sbh_appName.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_2442B4878();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)sbh_widgetName
{
  v2 = self;
  v3 = [(CCUIModuleIconElement *)v2 displayName];
  if (!v3)
  {
    v3 = [(CCUIModuleIconElement *)v2 moduleIdentifier];
  }

  v4 = v3;
  sub_2442B48A8();

  v5 = sub_2442B4878();

  return v5;
}

@end