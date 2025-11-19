@interface HUDashboardContext
+ (id)categoryDashboardForAccessoryTypeGroup:(id)a3 home:(id)a4 room:(id)a5;
+ (id)homeDashboardForHome:(id)a3;
+ (id)roomDashboardForRoom:(id)a3 home:(id)a4;
- (BOOL)allowsAdding;
- (BOOL)allowsAnnounce;
- (BOOL)allowsEditing;
- (BOOL)allowsEnergyIndicator;
- (BOOL)allowsHomeNavigation;
- (BOOL)includePredictedScenes;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldCreateModule:(Class)a3;
- (BOOL)shouldDelayItemUpdatesForViewVisibility;
- (BOOL)shouldHideAccessoryRepresentable:(id)a3;
- (BOOL)shouldHideEmptySections;
- (BOOL)shouldHideForGuests;
- (BOOL)shouldHideHomeKitObject:(id)a3;
- (BOOL)shouldHidePlaceholderService;
- (BOOL)shouldHideStatusItemClass:(Class)a3;
- (BOOL)shouldIncludeRoomInAccessoryNames;
- (HFAccessoryTypeGroup)accessoryTypeGroup;
- (HUDashboardContext)init;
- (NSString)description;
- (NSString)overrideDashboardTitle;
- (UIColor)overrideNavigationBarTintColor;
- (int64_t)accessoryGroupingStyle;
- (int64_t)backgroundStyle;
- (int64_t)cameraPresentationStyle;
- (int64_t)filterPresentationStyle;
- (int64_t)maximumNumberOfItemsInSectionWithIdentifier:(id)a3;
- (int64_t)scenePresentationStyle;
- (unint64_t)accessoryLikeItemObjectLevel;
- (void)setAccessoryGroupingStyle:(int64_t)a3;
- (void)setAccessoryLikeItemObjectLevel:(unint64_t)a3;
- (void)setAllowsAdding:(BOOL)a3;
- (void)setAllowsAnnounce:(BOOL)a3;
- (void)setAllowsEditing:(BOOL)a3;
- (void)setAllowsEnergyIndicator:(BOOL)a3;
- (void)setAllowsHomeNavigation:(BOOL)a3;
- (void)setBackgroundStyle:(int64_t)a3;
- (void)setCameraPresentationStyle:(int64_t)a3;
- (void)setFilterPresentationStyle:(int64_t)a3;
- (void)setIncludePredictedScenes:(BOOL)a3;
- (void)setOverrideDashboardTitle:(id)a3;
- (void)setOverrideNavigationBarTintColor:(id)a3;
- (void)setScenePresentationStyle:(int64_t)a3;
- (void)setShouldDelayItemUpdatesForViewVisibility:(BOOL)a3;
- (void)setShouldHideEmptySections:(BOOL)a3;
- (void)setShouldHideForGuests:(BOOL)a3;
- (void)setShouldHidePlaceholderService:(BOOL)a3;
- (void)setShouldIncludeRoomInAccessoryNames:(BOOL)a3;
@end

@implementation HUDashboardContext

+ (id)homeDashboardForHome:(id)a3
{
  v3 = a3;
  v4 = sub_20CFED888(v3);

  return v4;
}

+ (id)roomDashboardForRoom:(id)a3 home:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_20CFED69C(v5, v6);

  return v7;
}

+ (id)categoryDashboardForAccessoryTypeGroup:(id)a3 home:(id)a4 room:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_20CFEDCCC(v7, v8, a5);

  return v10;
}

- (HUDashboardContext)init
{
  *(self + OBJC_IVAR___HUDashboardContext_overrideNavigationBarTintColor) = 0;
  v2 = (self + OBJC_IVAR___HUDashboardContext_overrideDashboardTitle);
  *v2 = 0;
  v2[1] = 0;
  result = sub_20D568A58();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  sub_20CFE8034();

  v3 = sub_20D5677F8();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_20D568628();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_20CFE828C(v8);

  sub_20CEF928C(v8, &qword_27C81BF00);
  return v6 & 1;
}

- (HFAccessoryTypeGroup)accessoryTypeGroup
{
  if (*(self + OBJC_IVAR___HUDashboardContext_type + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(self + OBJC_IVAR___HUDashboardContext_type);
  }

  return v3;
}

- (int64_t)accessoryGroupingStyle
{
  v3 = OBJC_IVAR___HUDashboardContext_accessoryGroupingStyle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAccessoryGroupingStyle:(int64_t)a3
{
  v5 = OBJC_IVAR___HUDashboardContext_accessoryGroupingStyle;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unint64_t)accessoryLikeItemObjectLevel
{
  v3 = OBJC_IVAR___HUDashboardContext_accessoryLikeItemObjectLevel;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAccessoryLikeItemObjectLevel:(unint64_t)a3
{
  v5 = OBJC_IVAR___HUDashboardContext_accessoryLikeItemObjectLevel;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsAdding
{
  v3 = OBJC_IVAR___HUDashboardContext_allowsAdding;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsAdding:(BOOL)a3
{
  v5 = OBJC_IVAR___HUDashboardContext_allowsAdding;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsAnnounce
{
  v3 = OBJC_IVAR___HUDashboardContext_allowsAnnounce;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsAnnounce:(BOOL)a3
{
  v5 = OBJC_IVAR___HUDashboardContext_allowsAnnounce;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsEditing
{
  v3 = OBJC_IVAR___HUDashboardContext_allowsEditing;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsEditing:(BOOL)a3
{
  v5 = OBJC_IVAR___HUDashboardContext_allowsEditing;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsEnergyIndicator
{
  v3 = OBJC_IVAR___HUDashboardContext_allowsEnergyIndicator;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsEnergyIndicator:(BOOL)a3
{
  v5 = OBJC_IVAR___HUDashboardContext_allowsEnergyIndicator;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsHomeNavigation
{
  v3 = OBJC_IVAR___HUDashboardContext_allowsHomeNavigation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsHomeNavigation:(BOOL)a3
{
  v5 = OBJC_IVAR___HUDashboardContext_allowsHomeNavigation;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)includePredictedScenes
{
  v3 = OBJC_IVAR___HUDashboardContext_includePredictedScenes;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIncludePredictedScenes:(BOOL)a3
{
  v5 = OBJC_IVAR___HUDashboardContext_includePredictedScenes;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)backgroundStyle
{
  v3 = OBJC_IVAR___HUDashboardContext_backgroundStyle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBackgroundStyle:(int64_t)a3
{
  v5 = OBJC_IVAR___HUDashboardContext_backgroundStyle;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (UIColor)overrideNavigationBarTintColor
{
  v3 = OBJC_IVAR___HUDashboardContext_overrideNavigationBarTintColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setOverrideNavigationBarTintColor:(id)a3
{
  v5 = OBJC_IVAR___HUDashboardContext_overrideNavigationBarTintColor;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (int64_t)scenePresentationStyle
{
  v3 = OBJC_IVAR___HUDashboardContext_scenePresentationStyle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setScenePresentationStyle:(int64_t)a3
{
  v5 = OBJC_IVAR___HUDashboardContext_scenePresentationStyle;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)cameraPresentationStyle
{
  v3 = OBJC_IVAR___HUDashboardContext_cameraPresentationStyle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCameraPresentationStyle:(int64_t)a3
{
  v5 = OBJC_IVAR___HUDashboardContext_cameraPresentationStyle;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)filterPresentationStyle
{
  v3 = OBJC_IVAR___HUDashboardContext_filterPresentationStyle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFilterPresentationStyle:(int64_t)a3
{
  v5 = OBJC_IVAR___HUDashboardContext_filterPresentationStyle;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSString)overrideDashboardTitle
{
  v2 = self + OBJC_IVAR___HUDashboardContext_overrideDashboardTitle;
  swift_beginAccess();
  if (*(v2 + 1))
  {
    sub_20D5663C8();
    v3 = sub_20D5677F8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOverrideDashboardTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_20D567838();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___HUDashboardContext_overrideDashboardTitle);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (BOOL)shouldDelayItemUpdatesForViewVisibility
{
  v3 = OBJC_IVAR___HUDashboardContext_shouldDelayItemUpdatesForViewVisibility;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldDelayItemUpdatesForViewVisibility:(BOOL)a3
{
  v5 = OBJC_IVAR___HUDashboardContext_shouldDelayItemUpdatesForViewVisibility;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)shouldHideEmptySections
{
  v3 = OBJC_IVAR___HUDashboardContext_shouldHideEmptySections;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldHideEmptySections:(BOOL)a3
{
  v5 = OBJC_IVAR___HUDashboardContext_shouldHideEmptySections;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)shouldHidePlaceholderService
{
  v3 = OBJC_IVAR___HUDashboardContext_shouldHidePlaceholderService;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldHidePlaceholderService:(BOOL)a3
{
  v5 = OBJC_IVAR___HUDashboardContext_shouldHidePlaceholderService;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)shouldHideForGuests
{
  v3 = OBJC_IVAR___HUDashboardContext_shouldHideForGuests;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldHideForGuests:(BOOL)a3
{
  v5 = OBJC_IVAR___HUDashboardContext_shouldHideForGuests;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)shouldIncludeRoomInAccessoryNames
{
  v3 = OBJC_IVAR___HUDashboardContext_shouldIncludeRoomInAccessoryNames;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldIncludeRoomInAccessoryNames:(BOOL)a3
{
  v5 = OBJC_IVAR___HUDashboardContext_shouldIncludeRoomInAccessoryNames;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)shouldHideAccessoryRepresentable:(id)a3
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_20CFECCC8(a3, v5);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (BOOL)shouldHideHomeKitObject:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_20CFECE24(a3, v5);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (BOOL)shouldHideStatusItemClass:(Class)a3
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v5 = self;
  sub_20CFEA938(ObjCClassMetadata);
  LOBYTE(ObjCClassMetadata) = v6;

  return ObjCClassMetadata & 1;
}

- (BOOL)shouldCreateModule:(Class)a3
{
  swift_getObjCClassMetadata();
  sub_20CECF940(0, &unk_28111FED8);
  if (!swift_dynamicCastMetatype())
  {
    return 1;
  }

  if (*(self + OBJC_IVAR___HUDashboardContext_type + 8) < 2u || *(self + OBJC_IVAR___HUDashboardContext_type))
  {
    return 0;
  }

  return [objc_opt_self() isHomeControlService] ^ 1;
}

- (int64_t)maximumNumberOfItemsInSectionWithIdentifier:(id)a3
{
  v4 = sub_20D567838();
  v6 = v5;
  if (sub_20D567838() == v4 && v7 == v6)
  {
    v11 = self;
  }

  else
  {
    v9 = sub_20D568BF8();
    v10 = self;

    if ((v9 & 1) == 0)
    {

LABEL_11:

      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (!*(self + OBJC_IVAR___HUDashboardContext_type + 8) || *(self + OBJC_IVAR___HUDashboardContext_type + 8) == 1)
  {

    goto LABEL_11;
  }

  v13 = *(self + OBJC_IVAR___HUDashboardContext_type);

  if (v13)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

@end