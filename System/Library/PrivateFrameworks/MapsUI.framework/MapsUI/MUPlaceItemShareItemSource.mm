@interface MUPlaceItemShareItemSource
- (MUPlaceItemShareItemSource)init;
- (MUPlaceItemShareItemSource)initWithPlaceItem:(id)item applicationActivities:(id)activities;
- (NSArray)activityProviders;
- (NSArray)applicationActivities;
- (NSArray)excludedActivityTypes;
- (NSArray)includedActivityTypes;
- (void)setActivityProviders:(id)providers;
- (void)setApplicationActivities:(id)activities;
- (void)setIncludedActivityTypes:(id)types;
@end

@implementation MUPlaceItemShareItemSource

- (NSArray)applicationActivities
{
  v3 = OBJC_IVAR___MUPlaceItemShareItemSource_applicationActivities;
  swift_beginAccess();
  v4 = *(self + v3);
  sub_1C5634494();

  v5 = sub_1C584F750();

  return v5;
}

- (void)setApplicationActivities:(id)activities
{
  sub_1C5634494();
  v4 = sub_1C584F770();
  v5 = OBJC_IVAR___MUPlaceItemShareItemSource_applicationActivities;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (NSArray)activityProviders
{
  v3 = OBJC_IVAR___MUPlaceItemShareItemSource_activityProviders;
  swift_beginAccess();
  v4 = *(self + v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16D9D0, &unk_1C5867960);
  v5 = sub_1C584F750();

  return v5;
}

- (void)setActivityProviders:(id)providers
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16D9D0, &unk_1C5867960);
  v4 = sub_1C584F770();
  v5 = OBJC_IVAR___MUPlaceItemShareItemSource_activityProviders;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (NSArray)excludedActivityTypes
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8E0, &qword_1C5867910);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C5867900;
  v3 = *MEMORY[0x1E69CDA70];
  *(v2 + 32) = sub_1C584F660();
  *(v2 + 40) = v4;
  v5 = sub_1C584F750();

  return v5;
}

- (NSArray)includedActivityTypes
{
  v3 = OBJC_IVAR___MUPlaceItemShareItemSource_includedActivityTypes;
  swift_beginAccess();
  if (*(self + v3))
  {

    v4 = sub_1C584F750();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setIncludedActivityTypes:(id)types
{
  if (types)
  {
    v4 = sub_1C584F770();
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR___MUPlaceItemShareItemSource_includedActivityTypes;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (MUPlaceItemShareItemSource)initWithPlaceItem:(id)item applicationActivities:(id)activities
{
  sub_1C5634494();
  v4 = sub_1C584F770();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1C563404C(v5, v4);
  swift_unknownObjectRelease();
  return v6;
}

- (MUPlaceItemShareItemSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end