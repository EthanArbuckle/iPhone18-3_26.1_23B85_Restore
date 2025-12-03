@interface CAFUIAutomakerSettingObserver
- (_TtC5CAFUI29CAFUIAutomakerSettingObserver)init;
- (void)BOOLeanSettingService:(id)service didUpdateName:(id)name;
- (void)BOOLeanSettingService:(id)service didUpdateOn:(BOOL)on;
- (void)BOOLeanSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description;
- (void)automakerSettingService:(id)service didUpdateDisabled:(BOOL)disabled;
- (void)automakerSettingService:(id)service didUpdateHidden:(BOOL)hidden;
- (void)automakerSettingService:(id)service didUpdateLimitableUIElement:(BOOL)element;
- (void)automakerSettingService:(id)service didUpdateProminenceInfo:(id)info;
- (void)automakerSettingService:(id)service didUpdateShowAudioBrandLogo:(BOOL)logo;
- (void)buttonSettingService:(id)service didUpdateButtonAction:(unsigned __int8)action;
- (void)buttonSettingService:(id)service didUpdateName:(id)name;
- (void)deepLinkSettingService:(id)service didUpdateName:(id)name;
- (void)deepLinkSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description;
- (void)floatSettingService:(id)service didUpdateName:(id)name;
- (void)floatSettingService:(id)service didUpdateValue:(float)value;
- (void)integerSettingService:(id)service didUpdateName:(id)name;
- (void)integerSettingService:(id)service didUpdateStepperBarHidden:(BOOL)hidden;
- (void)integerSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description;
- (void)integerSettingService:(id)service didUpdateValue:(int)value;
- (void)multipleSelectImageSettingService:(id)service didUpdateImages:(id)images;
- (void)multipleSelectImageSettingService:(id)service didUpdateIndicesUserVisibleValue:(id)value;
- (void)multipleSelectImageSettingService:(id)service didUpdateListUserVisibleValue:(id)value;
- (void)multipleSelectImageSettingService:(id)service didUpdateName:(id)name;
- (void)multipleSelectImageSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description;
- (void)multipleSelectSettingService:(id)service didUpdateName:(id)name;
- (void)multipleSelectSettingService:(id)service didUpdateSelectSettingEntryList:(id)list;
- (void)multipleSelectSettingService:(id)service didUpdateSelectedEntryIndices:(id)indices;
- (void)multipleSelectSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description;
- (void)singleSelectImageSettingService:(id)service didUpdateCurrentUserVisibleValue:(unsigned __int8)value;
- (void)singleSelectImageSettingService:(id)service didUpdateImages:(id)images;
- (void)singleSelectImageSettingService:(id)service didUpdateListUserVisibleValue:(id)value;
- (void)singleSelectImageSettingService:(id)service didUpdateName:(id)name;
- (void)singleSelectImageSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description;
- (void)singleSelectSettingService:(id)service didUpdateName:(id)name;
- (void)singleSelectSettingService:(id)service didUpdateSelectSettingEntryList:(id)list;
- (void)singleSelectSettingService:(id)service didUpdateSelectedEntryIndex:(unsigned __int8)index;
- (void)singleSelectSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description;
- (void)staticSettingService:(id)service didUpdateName:(id)name;
- (void)staticSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description;
- (void)staticSettingService:(id)service didUpdateUserVisibleValue:(id)value;
@end

@implementation CAFUIAutomakerSettingObserver

- (void)automakerSettingService:(id)service didUpdateProminenceInfo:(id)info
{
  serviceCopy = service;
  infoCopy = info;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2C30, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_400);
}

- (void)automakerSettingService:(id)service didUpdateDisabled:(BOOL)disabled
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2BE0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_393);
}

- (void)automakerSettingService:(id)service didUpdateLimitableUIElement:(BOOL)element
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2B90, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_386);
}

- (void)automakerSettingService:(id)service didUpdateHidden:(BOOL)hidden
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2B40, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_379);
}

- (void)automakerSettingService:(id)service didUpdateShowAudioBrandLogo:(BOOL)logo
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2AF0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_372);
}

- (void)BOOLeanSettingService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2AA0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_365);
}

- (void)BOOLeanSettingService:(id)service didUpdateName:(id)name
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2A50, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_358);
}

- (void)BOOLeanSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description
{
  serviceCopy = service;
  descriptionCopy = description;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2A00, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_351);
}

- (void)buttonSettingService:(id)service didUpdateButtonAction:(unsigned __int8)action
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2960, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_337);
}

- (void)buttonSettingService:(id)service didUpdateName:(id)name
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2910, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_330);
}

- (void)deepLinkSettingService:(id)service didUpdateName:(id)name
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A28C0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_323);
}

- (void)deepLinkSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description
{
  serviceCopy = service;
  descriptionCopy = description;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2820, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_309);
}

- (void)floatSettingService:(id)service didUpdateValue:(float)value
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2780, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_295);
}

- (void)floatSettingService:(id)service didUpdateName:(id)name
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2730, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_288);
}

- (void)integerSettingService:(id)service didUpdateValue:(int)value
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2640, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_267);
}

- (void)integerSettingService:(id)service didUpdateName:(id)name
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A25F0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_260);
}

- (void)integerSettingService:(id)service didUpdateStepperBarHidden:(BOOL)hidden
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A25A0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_253);
}

- (void)integerSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description
{
  serviceCopy = service;
  descriptionCopy = description;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2460, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_225);
}

- (void)singleSelectSettingService:(id)service didUpdateSelectedEntryIndex:(unsigned __int8)index
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A23C0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_211);
}

- (void)singleSelectSettingService:(id)service didUpdateSelectSettingEntryList:(id)list
{
  serviceCopy = service;
  listCopy = list;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2370, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_204);
}

- (void)singleSelectSettingService:(id)service didUpdateName:(id)name
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2320, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_197);
}

- (void)singleSelectSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description
{
  serviceCopy = service;
  descriptionCopy = description;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A22D0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_190);
}

- (void)singleSelectImageSettingService:(id)service didUpdateCurrentUserVisibleValue:(unsigned __int8)value
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2230, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_176);
}

- (void)singleSelectImageSettingService:(id)service didUpdateListUserVisibleValue:(id)value
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A21E0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_169);
}

- (void)singleSelectImageSettingService:(id)service didUpdateImages:(id)images
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2190, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_162);
}

- (void)singleSelectImageSettingService:(id)service didUpdateName:(id)name
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2140, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_155);
}

- (void)singleSelectImageSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description
{
  serviceCopy = service;
  descriptionCopy = description;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A20F0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_148);
}

- (void)staticSettingService:(id)service didUpdateUserVisibleValue:(id)value
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2050, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_134);
}

- (void)staticSettingService:(id)service didUpdateName:(id)name
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A2000, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_127);
}

- (void)staticSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description
{
  serviceCopy = service;
  descriptionCopy = description;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A1FB0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_120);
}

- (void)multipleSelectSettingService:(id)service didUpdateSelectedEntryIndices:(id)indices
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A1F10, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_106);
}

- (void)multipleSelectSettingService:(id)service didUpdateSelectSettingEntryList:(id)list
{
  serviceCopy = service;
  listCopy = list;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A1EC0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_99);
}

- (void)multipleSelectSettingService:(id)service didUpdateName:(id)name
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A1E70, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_92);
}

- (void)multipleSelectSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description
{
  serviceCopy = service;
  descriptionCopy = description;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A1DD0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_78);
}

- (void)multipleSelectImageSettingService:(id)service didUpdateIndicesUserVisibleValue:(id)value
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A1D80, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_71);
}

- (void)multipleSelectImageSettingService:(id)service didUpdateListUserVisibleValue:(id)value
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A1D30, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_64);
}

- (void)multipleSelectImageSettingService:(id)service didUpdateImages:(id)images
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A1CE0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_57);
}

- (void)multipleSelectImageSettingService:(id)service didUpdateName:(id)name
{
  serviceCopy = service;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A1C90, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_50);
}

- (void)multipleSelectImageSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description
{
  serviceCopy = service;
  descriptionCopy = description;
  selfCopy = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, &unk_2854A1C40, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_43);
}

- (_TtC5CAFUI29CAFUIAutomakerSettingObserver)init
{
  *&self->delegate[OBJC_IVAR____TtC5CAFUI29CAFUIAutomakerSettingObserver_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for CAFUIAutomakerSettingObserver();
  return [(CAFUIAutomakerSettingObserver *)&v4 init];
}

@end