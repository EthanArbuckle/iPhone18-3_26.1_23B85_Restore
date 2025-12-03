@interface HUDashboardContext
+ (id)categoryDashboardForAccessoryTypeGroup:(id)group home:(id)home room:(id)room;
+ (id)homeDashboardForHome:(id)home;
+ (id)roomDashboardForRoom:(id)room home:(id)home;
- (BOOL)allowsAdding;
- (BOOL)allowsAnnounce;
- (BOOL)allowsEditing;
- (BOOL)allowsEnergyIndicator;
- (BOOL)allowsHomeNavigation;
- (BOOL)includePredictedScenes;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldCreateModule:(Class)module;
- (BOOL)shouldDelayItemUpdatesForViewVisibility;
- (BOOL)shouldHideAccessoryRepresentable:(id)representable;
- (BOOL)shouldHideEmptySections;
- (BOOL)shouldHideForGuests;
- (BOOL)shouldHideHomeKitObject:(id)object;
- (BOOL)shouldHidePlaceholderService;
- (BOOL)shouldHideStatusItemClass:(Class)class;
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
- (int64_t)maximumNumberOfItemsInSectionWithIdentifier:(id)identifier;
- (int64_t)scenePresentationStyle;
- (unint64_t)accessoryLikeItemObjectLevel;
- (void)setAccessoryGroupingStyle:(int64_t)style;
- (void)setAccessoryLikeItemObjectLevel:(unint64_t)level;
- (void)setAllowsAdding:(BOOL)adding;
- (void)setAllowsAnnounce:(BOOL)announce;
- (void)setAllowsEditing:(BOOL)editing;
- (void)setAllowsEnergyIndicator:(BOOL)indicator;
- (void)setAllowsHomeNavigation:(BOOL)navigation;
- (void)setBackgroundStyle:(int64_t)style;
- (void)setCameraPresentationStyle:(int64_t)style;
- (void)setFilterPresentationStyle:(int64_t)style;
- (void)setIncludePredictedScenes:(BOOL)scenes;
- (void)setOverrideDashboardTitle:(id)title;
- (void)setOverrideNavigationBarTintColor:(id)color;
- (void)setScenePresentationStyle:(int64_t)style;
- (void)setShouldDelayItemUpdatesForViewVisibility:(BOOL)visibility;
- (void)setShouldHideEmptySections:(BOOL)sections;
- (void)setShouldHideForGuests:(BOOL)guests;
- (void)setShouldHidePlaceholderService:(BOOL)service;
- (void)setShouldIncludeRoomInAccessoryNames:(BOOL)names;
@end

@implementation HUDashboardContext

+ (id)homeDashboardForHome:(id)home
{
  homeCopy = home;
  v4 = sub_20CFED888(homeCopy);

  return v4;
}

+ (id)roomDashboardForRoom:(id)room home:(id)home
{
  roomCopy = room;
  homeCopy = home;
  v7 = sub_20CFED69C(roomCopy, homeCopy);

  return v7;
}

+ (id)categoryDashboardForAccessoryTypeGroup:(id)group home:(id)home room:(id)room
{
  groupCopy = group;
  homeCopy = home;
  roomCopy = room;
  v10 = sub_20CFEDCCC(groupCopy, homeCopy, room);

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
  selfCopy = self;
  sub_20CFE8034();

  v3 = sub_20D5677F8();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_20D568628();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
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

- (void)setAccessoryGroupingStyle:(int64_t)style
{
  v5 = OBJC_IVAR___HUDashboardContext_accessoryGroupingStyle;
  swift_beginAccess();
  *(self + v5) = style;
}

- (unint64_t)accessoryLikeItemObjectLevel
{
  v3 = OBJC_IVAR___HUDashboardContext_accessoryLikeItemObjectLevel;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAccessoryLikeItemObjectLevel:(unint64_t)level
{
  v5 = OBJC_IVAR___HUDashboardContext_accessoryLikeItemObjectLevel;
  swift_beginAccess();
  *(self + v5) = level;
}

- (BOOL)allowsAdding
{
  v3 = OBJC_IVAR___HUDashboardContext_allowsAdding;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsAdding:(BOOL)adding
{
  v5 = OBJC_IVAR___HUDashboardContext_allowsAdding;
  swift_beginAccess();
  *(self + v5) = adding;
}

- (BOOL)allowsAnnounce
{
  v3 = OBJC_IVAR___HUDashboardContext_allowsAnnounce;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsAnnounce:(BOOL)announce
{
  v5 = OBJC_IVAR___HUDashboardContext_allowsAnnounce;
  swift_beginAccess();
  *(self + v5) = announce;
}

- (BOOL)allowsEditing
{
  v3 = OBJC_IVAR___HUDashboardContext_allowsEditing;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsEditing:(BOOL)editing
{
  v5 = OBJC_IVAR___HUDashboardContext_allowsEditing;
  swift_beginAccess();
  *(self + v5) = editing;
}

- (BOOL)allowsEnergyIndicator
{
  v3 = OBJC_IVAR___HUDashboardContext_allowsEnergyIndicator;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsEnergyIndicator:(BOOL)indicator
{
  v5 = OBJC_IVAR___HUDashboardContext_allowsEnergyIndicator;
  swift_beginAccess();
  *(self + v5) = indicator;
}

- (BOOL)allowsHomeNavigation
{
  v3 = OBJC_IVAR___HUDashboardContext_allowsHomeNavigation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsHomeNavigation:(BOOL)navigation
{
  v5 = OBJC_IVAR___HUDashboardContext_allowsHomeNavigation;
  swift_beginAccess();
  *(self + v5) = navigation;
}

- (BOOL)includePredictedScenes
{
  v3 = OBJC_IVAR___HUDashboardContext_includePredictedScenes;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIncludePredictedScenes:(BOOL)scenes
{
  v5 = OBJC_IVAR___HUDashboardContext_includePredictedScenes;
  swift_beginAccess();
  *(self + v5) = scenes;
}

- (int64_t)backgroundStyle
{
  v3 = OBJC_IVAR___HUDashboardContext_backgroundStyle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBackgroundStyle:(int64_t)style
{
  v5 = OBJC_IVAR___HUDashboardContext_backgroundStyle;
  swift_beginAccess();
  *(self + v5) = style;
}

- (UIColor)overrideNavigationBarTintColor
{
  v3 = OBJC_IVAR___HUDashboardContext_overrideNavigationBarTintColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setOverrideNavigationBarTintColor:(id)color
{
  v5 = OBJC_IVAR___HUDashboardContext_overrideNavigationBarTintColor;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = color;
  colorCopy = color;
}

- (int64_t)scenePresentationStyle
{
  v3 = OBJC_IVAR___HUDashboardContext_scenePresentationStyle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setScenePresentationStyle:(int64_t)style
{
  v5 = OBJC_IVAR___HUDashboardContext_scenePresentationStyle;
  swift_beginAccess();
  *(self + v5) = style;
}

- (int64_t)cameraPresentationStyle
{
  v3 = OBJC_IVAR___HUDashboardContext_cameraPresentationStyle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCameraPresentationStyle:(int64_t)style
{
  v5 = OBJC_IVAR___HUDashboardContext_cameraPresentationStyle;
  swift_beginAccess();
  *(self + v5) = style;
}

- (int64_t)filterPresentationStyle
{
  v3 = OBJC_IVAR___HUDashboardContext_filterPresentationStyle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFilterPresentationStyle:(int64_t)style
{
  v5 = OBJC_IVAR___HUDashboardContext_filterPresentationStyle;
  swift_beginAccess();
  *(self + v5) = style;
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

- (void)setOverrideDashboardTitle:(id)title
{
  if (title)
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

- (void)setShouldDelayItemUpdatesForViewVisibility:(BOOL)visibility
{
  v5 = OBJC_IVAR___HUDashboardContext_shouldDelayItemUpdatesForViewVisibility;
  swift_beginAccess();
  *(self + v5) = visibility;
}

- (BOOL)shouldHideEmptySections
{
  v3 = OBJC_IVAR___HUDashboardContext_shouldHideEmptySections;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldHideEmptySections:(BOOL)sections
{
  v5 = OBJC_IVAR___HUDashboardContext_shouldHideEmptySections;
  swift_beginAccess();
  *(self + v5) = sections;
}

- (BOOL)shouldHidePlaceholderService
{
  v3 = OBJC_IVAR___HUDashboardContext_shouldHidePlaceholderService;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldHidePlaceholderService:(BOOL)service
{
  v5 = OBJC_IVAR___HUDashboardContext_shouldHidePlaceholderService;
  swift_beginAccess();
  *(self + v5) = service;
}

- (BOOL)shouldHideForGuests
{
  v3 = OBJC_IVAR___HUDashboardContext_shouldHideForGuests;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldHideForGuests:(BOOL)guests
{
  v5 = OBJC_IVAR___HUDashboardContext_shouldHideForGuests;
  swift_beginAccess();
  *(self + v5) = guests;
}

- (BOOL)shouldIncludeRoomInAccessoryNames
{
  v3 = OBJC_IVAR___HUDashboardContext_shouldIncludeRoomInAccessoryNames;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldIncludeRoomInAccessoryNames:(BOOL)names
{
  v5 = OBJC_IVAR___HUDashboardContext_shouldIncludeRoomInAccessoryNames;
  swift_beginAccess();
  *(self + v5) = names;
}

- (BOOL)shouldHideAccessoryRepresentable:(id)representable
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_20CFECCC8(representable, selfCopy);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (BOOL)shouldHideHomeKitObject:(id)object
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_20CFECE24(object, selfCopy);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (BOOL)shouldHideStatusItemClass:(Class)class
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  selfCopy = self;
  sub_20CFEA938(ObjCClassMetadata);
  LOBYTE(ObjCClassMetadata) = v6;

  return ObjCClassMetadata & 1;
}

- (BOOL)shouldCreateModule:(Class)module
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

- (int64_t)maximumNumberOfItemsInSectionWithIdentifier:(id)identifier
{
  v4 = sub_20D567838();
  v6 = v5;
  if (sub_20D567838() == v4 && v7 == v6)
  {
    selfCopy = self;
  }

  else
  {
    v9 = sub_20D568BF8();
    selfCopy2 = self;

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