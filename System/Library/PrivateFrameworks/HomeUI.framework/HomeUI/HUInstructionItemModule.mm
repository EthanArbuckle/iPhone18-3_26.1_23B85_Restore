@interface HUInstructionItemModule
- (HUInstructionItemModule)initWithItemUpdater:(id)updater;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HUInstructionItemModule

- (id)buildItemProviders
{
  selfCopy = self;
  v3 = sub_20CEF95E8();

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
  sub_20CEF9A1C();

  sub_20CECF940(0, &unk_28111FFD0);
  v4 = sub_20D567A58();

  return v4;
}

- (HUInstructionItemModule)initWithItemUpdater:(id)updater
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end