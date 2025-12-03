@interface HUActivityLogItemModule
- (HUActivityLogItemModule)initWithHome:(id)home itemUpdater:(id)updater;
- (HUActivityLogItemModule)initWithItemUpdater:(id)updater;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HUActivityLogItemModule

- (HUActivityLogItemModule)initWithHome:(id)home itemUpdater:(id)updater
{
  homeCopy = home;
  swift_unknownObjectRetain();
  v6 = sub_20CFC8F5C(homeCopy, updater);

  swift_unknownObjectRelease();
  return v6;
}

- (HUActivityLogItemModule)initWithItemUpdater:(id)updater
{
  result = sub_20D568A58();
  __break(1u);
  return result;
}

- (id)buildItemProviders
{
  selfCopy = self;
  v3 = sub_20CFC82F4();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
    sub_20CEF9114();
    v4 = sub_20D567CD8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  selfCopy = self;
  sub_20CFC9124();

  sub_20CECF940(0, &unk_28111FFD0);
  v4 = sub_20D567A58();

  return v4;
}

@end