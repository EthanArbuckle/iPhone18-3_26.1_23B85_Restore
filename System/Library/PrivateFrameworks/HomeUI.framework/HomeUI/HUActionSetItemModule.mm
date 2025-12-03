@interface HUActionSetItemModule
+ (NSString)actionSetSectionIdentifier;
- (HFActionSetItemProvider)actionSetItemProvider;
- (HUActionSetItemModule)initWithHome:(id)home itemUpdater:(id)updater;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)filter;
- (id)sortBlock;
- (unint64_t)actionSetItemStyle;
- (void)setActionSetItemProvider:(id)provider;
- (void)setActionSetItemStyle:(unint64_t)style;
- (void)setFilter:(id)filter;
- (void)setSortBlock:(id)block;
@end

@implementation HUActionSetItemModule

+ (NSString)actionSetSectionIdentifier
{
  v2 = sub_20D5677F8();

  return v2;
}

- (unint64_t)actionSetItemStyle
{
  v3 = OBJC_IVAR___HUActionSetItemModule_actionSetItemStyle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setActionSetItemStyle:(unint64_t)style
{
  v5 = OBJC_IVAR___HUActionSetItemModule_actionSetItemStyle;
  swift_beginAccess();
  *(self + v5) = style;
}

- (id)filter
{
  v2 = (self + OBJC_IVAR___HUActionSetItemModule_filter);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CF7FA88;
    aBlock[3] = &block_descriptor_20;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFilter:(id)filter
{
  v4 = _Block_copy(filter);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_20CF87988;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___HUActionSetItemModule_filter);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_20CEC8164(v7);
}

- (id)sortBlock
{
  v2 = (self + OBJC_IVAR___HUActionSetItemModule_sortBlock);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  aBlock[4] = v3;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20D0D8054;
  aBlock[3] = &block_descriptor_14;
  v5 = _Block_copy(aBlock);

  return v5;
}

- (void)setSortBlock:(id)block
{
  v4 = _Block_copy(block);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___HUActionSetItemModule_sortBlock);
  swift_beginAccess();
  *v6 = sub_20D0D9C40;
  v6[1] = v5;
}

- (HFActionSetItemProvider)actionSetItemProvider
{
  v3 = OBJC_IVAR___HUActionSetItemModule_actionSetItemProvider;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setActionSetItemProvider:(id)provider
{
  v5 = OBJC_IVAR___HUActionSetItemModule_actionSetItemProvider;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = provider;
  providerCopy = provider;
}

- (HUActionSetItemModule)initWithHome:(id)home itemUpdater:(id)updater
{
  *(self + OBJC_IVAR___HUActionSetItemModule_actionSetItemStyle) = 0;
  v6 = (self + OBJC_IVAR___HUActionSetItemModule_filter);
  *v6 = 0;
  v6[1] = 0;
  v7 = (self + OBJC_IVAR___HUActionSetItemModule_sortBlock);
  *v7 = sub_20D0D7EEC;
  v7[1] = 0;
  *(self + OBJC_IVAR___HUActionSetItemModule_actionSetItemProvider) = 0;
  *(self + OBJC_IVAR___HUActionSetItemModule_home) = home;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ActionSetItemModule();
  homeCopy = home;
  return [(HFItemModule *)&v10 initWithItemUpdater:updater];
}

- (id)buildItemProviders
{
  selfCopy = self;
  v3 = sub_20D0D8548();

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
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  sub_20D567D08();
  selfCopy = self;
  sub_20D0D8840();

  sub_20CECF940(0, &unk_28111FFD0);
  v5 = sub_20D567A58();

  return v5;
}

@end