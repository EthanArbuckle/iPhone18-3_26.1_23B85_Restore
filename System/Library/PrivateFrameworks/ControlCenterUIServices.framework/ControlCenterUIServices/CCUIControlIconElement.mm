@interface CCUIControlIconElement
- (BOOL)isEqual:(id)equal;
- (CCUIControlIconElement)init;
- (CCUIControlIconElement)initWithKind:(id)kind controlType:(unint64_t)type extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier;
- (CCUIControlIconElement)initWithUniqueIdentifier:(id)identifier kind:(id)kind controlType:(unint64_t)type extensionBundleIdentifier:(id)bundleIdentifier containerBundleIdentifier:(id)containerBundleIdentifier;
- (NSString)containerBundleIdentifier;
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

@implementation CCUIControlIconElement

- (NSString)containerBundleIdentifier
{
  if (*(self + OBJC_IVAR___CCUIControlIconElement_containerBundleIdentifier + 8))
  {
    v2 = *(self + OBJC_IVAR___CCUIControlIconElement_containerBundleIdentifier);
    v3 = *(self + OBJC_IVAR___CCUIControlIconElement_containerBundleIdentifier + 8);

    v4 = sub_2442B4878();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)displayName
{
  v2 = (self + OBJC_IVAR___CCUIControlIconElement_displayName);
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

  v7 = (self + OBJC_IVAR___CCUIControlIconElement_displayName);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (int64_t)preferredGallerySizeClass
{
  v3 = OBJC_IVAR___CCUIControlIconElement_preferredGallerySizeClass;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPreferredGallerySizeClass:(int64_t)class
{
  v5 = OBJC_IVAR___CCUIControlIconElement_preferredGallerySizeClass;
  swift_beginAccess();
  *(self + v5) = class;
}

- (SBHIconGridSizeClassSet)supportedGridSizeClasses
{
  _supportedGridSizeClasses = [(CCUIControlIconElement *)self _supportedGridSizeClasses];

  return _supportedGridSizeClasses;
}

- (void)updateSupportedGridSizeClassesForAccessibilityContentSizeCategory:(BOOL)category
{
  if (category)
  {
    v4 = qword_280F722D0;
    selfCopy = self;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = &qword_280F722D8;
  }

  else
  {
    v7 = qword_280F722E8;
    selfCopy2 = self;
    if (v7 != -1)
    {
      swift_once();
    }

    v6 = &qword_280F722F0;
  }

  [(CCUIControlIconElement *)self set_supportedGridSizeClasses:*v6];
  sbh_leafIconDataSourceNotificationCenter = [objc_opt_self() sbh_leafIconDataSourceNotificationCenter];
  [sbh_leafIconDataSourceNotificationCenter postNotificationName:*MEMORY[0x277D66730] object:self];
}

- (CCUIControlIconElement)initWithKind:(id)kind controlType:(unint64_t)type extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier
{
  v8 = sub_2442B48A8();
  v10 = v9;
  v11 = sub_2442B48A8();
  v13 = v12;
  if (bundleIdentifier)
  {
    v14 = sub_2442B48A8();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  return CCUIControlIconElement.init(kind:controlType:extensionBundleIdentifier:containerBundleIdentifier:)(v8, v10, type, v11, v13, v14, v16);
}

- (CCUIControlIconElement)initWithUniqueIdentifier:(id)identifier kind:(id)kind controlType:(unint64_t)type extensionBundleIdentifier:(id)bundleIdentifier containerBundleIdentifier:(id)containerBundleIdentifier
{
  v9 = sub_2442B48A8();
  v11 = v10;
  v12 = sub_2442B48A8();
  v14 = v13;
  v15 = sub_2442B48A8();
  v17 = v16;
  if (containerBundleIdentifier)
  {
    v19 = sub_2442B48A8();
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  return CCUIControlIconElement.init(uniqueIdentifier:kind:controlType:extensionBundleIdentifier:containerBundleIdentifier:)(v9, v11, v12, v14, type, v15, v17, v19, v18);
}

- (id)icon:(id)icon displayNameForLocation:(id)location
{
  selfCopy = self;
  displayName = [(CCUIControlIconElement *)selfCopy displayName];
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
  supportedGridSizeClasses = [(CCUIControlIconElement *)self supportedGridSizeClasses];

  return supportedGridSizeClasses;
}

- (id)copyWithUniqueIdentifier
{
  selfCopy = self;
  v3 = CCUIControlIconElement.copyWithUniqueIdentifier()();

  return v3;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = CCUIControlIconElement.hash.getter();

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

  v6 = CCUIControlIconElement.isEqual(_:)(v8);

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
  CCUIControlIconElement.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_2442B4C58();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  selfCopy = self;
  CCUIControlIconElement.appendDescription(to:)(streamCopy);
}

- (void)set_supportedGridSizeClasses:(id)classes
{
  v4 = *(self + OBJC_IVAR___CCUIControlIconElement__supportedGridSizeClasses);
  *(self + OBJC_IVAR___CCUIControlIconElement__supportedGridSizeClasses) = classes;
  classesCopy = classes;
}

- (CCUIControlIconElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)sbh_galleryItemIdentifier
{
  selfCopy = self;
  sub_2442B4B58();

  v3 = [(CCUIControlIconElement *)selfCopy uniqueIdentifier:0xD00000000000001ELL];
  v4 = sub_2442B48A8();
  v6 = v5;

  MEMORY[0x245D5DD10](v4, v6);

  v7 = sub_2442B4878();

  return v7;
}

- (NSString)sbh_appName
{
  selfCopy = self;
  CCUIControlIconElement.sbh_appName.getter();
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
  displayName = [(CCUIControlIconElement *)selfCopy displayName];
  if (!displayName)
  {
    displayName = [(CCUIControlIconElement *)selfCopy kind];
  }

  v4 = displayName;
  sub_2442B48A8();

  v5 = sub_2442B4878();

  return v5;
}

@end