@interface HUActivityLogItemModule
- (HUActivityLogItemModule)initWithHome:(id)a3 itemUpdater:(id)a4;
- (HUActivityLogItemModule)initWithItemUpdater:(id)a3;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)a3;
@end

@implementation HUActivityLogItemModule

- (HUActivityLogItemModule)initWithHome:(id)a3 itemUpdater:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = sub_20CFC8F5C(v5, a4);

  swift_unknownObjectRelease();
  return v6;
}

- (HUActivityLogItemModule)initWithItemUpdater:(id)a3
{
  result = sub_20D568A58();
  __break(1u);
  return result;
}

- (id)buildItemProviders
{
  v2 = self;
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

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v3 = self;
  sub_20CFC9124();

  sub_20CECF940(0, &unk_28111FFD0);
  v4 = sub_20D567A58();

  return v4;
}

@end