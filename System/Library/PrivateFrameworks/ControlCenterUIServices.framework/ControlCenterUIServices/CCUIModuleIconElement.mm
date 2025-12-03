@interface CCUIModuleIconElement
- (BOOL)isEqual:(id)equal;
- (CCUIModuleIconElement)init;
- (CCUIModuleIconElement)initWithUniqueIdentifier:(id)identifier moduleIdentifier:(id)moduleIdentifier containerBundleIdentifier:(id)bundleIdentifier standardSupportedGridSizeClasses:(id)classes expandsGridSizeClassesForAccessibility:(BOOL)accessibility;
- (NSString)description;
- (NSString)displayName;
- (NSString)sbh_appName;
- (NSString)sbh_galleryItemIdentifier;
- (NSString)sbh_widgetName;
- (SBHIconGridSizeClassSet)supportedGridSizeClasses;
- (id)copyWithUniqueIdentifier;
- (id)copyWithZone:(void *)zone;
- (id)icon:(id)icon displayNameForLocation:(id)location;
- (id)supportedGridSizeClassesForIcon:(id)icon;
- (int64_t)hash;
- (int64_t)preferredGallerySizeClass;
- (void)appendDescriptionToStream:(id)stream;
- (void)setDisplayName:(id)name;
- (void)setPreferredGallerySizeClass:(int64_t)class;
- (void)set_supportedGridSizeClasses:(id)classes;
- (void)updateSupportedGridSizeClassesForAccessibilityContentSizeCategory:(BOOL)category;
@end

@implementation CCUIModuleIconElement

- (SBHIconGridSizeClassSet)supportedGridSizeClasses
{
  _supportedGridSizeClasses = [(CCUIModuleIconElement *)self _supportedGridSizeClasses];

  return _supportedGridSizeClasses;
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

- (void)setDisplayName:(id)name
{
  if (name)
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

- (void)setPreferredGallerySizeClass:(int64_t)class
{
  v5 = OBJC_IVAR___CCUIModuleIconElement_preferredGallerySizeClass;
  swift_beginAccess();
  *(self + v5) = class;
}

- (void)updateSupportedGridSizeClassesForAccessibilityContentSizeCategory:(BOOL)category
{
  selfCopy = self;
  sub_2442A10A0(category);
}

- (CCUIModuleIconElement)initWithUniqueIdentifier:(id)identifier moduleIdentifier:(id)moduleIdentifier containerBundleIdentifier:(id)bundleIdentifier standardSupportedGridSizeClasses:(id)classes expandsGridSizeClassesForAccessibility:(BOOL)accessibility
{
  v9 = sub_2442B48A8();
  v11 = v10;
  v12 = sub_2442B48A8();
  v14 = v13;
  v15 = sub_2442B48A8();
  v17 = v16;
  classesCopy = classes;
  v19 = sub_2442A3150(v9, v11, v12, v14, v15, v17, classesCopy, accessibility);

  return v19;
}

- (id)icon:(id)icon displayNameForLocation:(id)location
{
  selfCopy = self;
  displayName = [(CCUIModuleIconElement *)selfCopy displayName];
  if (displayName)
  {
    v6 = displayName;
    sub_2442B48A8();

    v7 = sub_2442B4878();
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (id)supportedGridSizeClassesForIcon:(id)icon
{
  supportedGridSizeClasses = [(CCUIModuleIconElement *)self supportedGridSizeClasses];

  return supportedGridSizeClasses;
}

- (id)copyWithUniqueIdentifier
{
  selfCopy = self;
  v3 = CCUIModuleIconElement.copyWithUniqueIdentifier()();

  return v3;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = CCUIModuleIconElement.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2442B4AF8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CCUIModuleIconElement.isEqual(_:)(v8);

  sub_2442A3434(v8);
  return v6 & 1;
}

- (NSString)description
{
  v3 = objc_opt_self();
  selfCopy = self;
  descriptionForRootObject_ = [v3 descriptionForRootObject_];
  if (!descriptionForRootObject_)
  {
    sub_2442B48A8();
    descriptionForRootObject_ = sub_2442B4878();
  }

  return descriptionForRootObject_;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_2442A21CC(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_2442B4C58();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  selfCopy = self;
  CCUIModuleIconElement.appendDescription(to:)(streamCopy);
}

- (void)set_supportedGridSizeClasses:(id)classes
{
  v4 = *(self + OBJC_IVAR___CCUIModuleIconElement__supportedGridSizeClasses);
  *(self + OBJC_IVAR___CCUIModuleIconElement__supportedGridSizeClasses) = classes;
  classesCopy = classes;
}

- (CCUIModuleIconElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)sbh_galleryItemIdentifier
{
  selfCopy = self;
  sub_2442B4B58();

  v3 = [(CCUIModuleIconElement *)selfCopy uniqueIdentifier:0xD00000000000001DLL];
  v4 = sub_2442B48A8();
  v6 = v5;

  MEMORY[0x245D5DD10](v4, v6);

  v7 = sub_2442B4878();

  return v7;
}

- (NSString)sbh_appName
{
  selfCopy = self;
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
  selfCopy = self;
  displayName = [(CCUIModuleIconElement *)selfCopy displayName];
  if (!displayName)
  {
    displayName = [(CCUIModuleIconElement *)selfCopy moduleIdentifier];
  }

  v4 = displayName;
  sub_2442B48A8();

  v5 = sub_2442B4878();

  return v5;
}

@end