@interface CAFUIAutomakerSettingObserver
- (_TtC5CAFUI29CAFUIAutomakerSettingObserver)init;
- (void)BOOLeanSettingService:(id)a3 didUpdateName:(id)a4;
- (void)BOOLeanSettingService:(id)a3 didUpdateOn:(BOOL)a4;
- (void)BOOLeanSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4;
- (void)automakerSettingService:(id)a3 didUpdateDisabled:(BOOL)a4;
- (void)automakerSettingService:(id)a3 didUpdateHidden:(BOOL)a4;
- (void)automakerSettingService:(id)a3 didUpdateLimitableUIElement:(BOOL)a4;
- (void)automakerSettingService:(id)a3 didUpdateProminenceInfo:(id)a4;
- (void)automakerSettingService:(id)a3 didUpdateShowAudioBrandLogo:(BOOL)a4;
- (void)buttonSettingService:(id)a3 didUpdateButtonAction:(unsigned __int8)a4;
- (void)buttonSettingService:(id)a3 didUpdateName:(id)a4;
- (void)deepLinkSettingService:(id)a3 didUpdateName:(id)a4;
- (void)deepLinkSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4;
- (void)floatSettingService:(id)a3 didUpdateName:(id)a4;
- (void)floatSettingService:(id)a3 didUpdateValue:(float)a4;
- (void)integerSettingService:(id)a3 didUpdateName:(id)a4;
- (void)integerSettingService:(id)a3 didUpdateStepperBarHidden:(BOOL)a4;
- (void)integerSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4;
- (void)integerSettingService:(id)a3 didUpdateValue:(int)a4;
- (void)multipleSelectImageSettingService:(id)a3 didUpdateImages:(id)a4;
- (void)multipleSelectImageSettingService:(id)a3 didUpdateIndicesUserVisibleValue:(id)a4;
- (void)multipleSelectImageSettingService:(id)a3 didUpdateListUserVisibleValue:(id)a4;
- (void)multipleSelectImageSettingService:(id)a3 didUpdateName:(id)a4;
- (void)multipleSelectImageSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4;
- (void)multipleSelectSettingService:(id)a3 didUpdateName:(id)a4;
- (void)multipleSelectSettingService:(id)a3 didUpdateSelectSettingEntryList:(id)a4;
- (void)multipleSelectSettingService:(id)a3 didUpdateSelectedEntryIndices:(id)a4;
- (void)multipleSelectSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4;
- (void)singleSelectImageSettingService:(id)a3 didUpdateCurrentUserVisibleValue:(unsigned __int8)a4;
- (void)singleSelectImageSettingService:(id)a3 didUpdateImages:(id)a4;
- (void)singleSelectImageSettingService:(id)a3 didUpdateListUserVisibleValue:(id)a4;
- (void)singleSelectImageSettingService:(id)a3 didUpdateName:(id)a4;
- (void)singleSelectImageSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4;
- (void)singleSelectSettingService:(id)a3 didUpdateName:(id)a4;
- (void)singleSelectSettingService:(id)a3 didUpdateSelectSettingEntryList:(id)a4;
- (void)singleSelectSettingService:(id)a3 didUpdateSelectedEntryIndex:(unsigned __int8)a4;
- (void)singleSelectSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4;
- (void)staticSettingService:(id)a3 didUpdateName:(id)a4;
- (void)staticSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4;
- (void)staticSettingService:(id)a3 didUpdateUserVisibleValue:(id)a4;
@end

@implementation CAFUIAutomakerSettingObserver

- (void)automakerSettingService:(id)a3 didUpdateProminenceInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v6, &unk_2854A2C30, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_400);
}

- (void)automakerSettingService:(id)a3 didUpdateDisabled:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A2BE0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_393);
}

- (void)automakerSettingService:(id)a3 didUpdateLimitableUIElement:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A2B90, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_386);
}

- (void)automakerSettingService:(id)a3 didUpdateHidden:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A2B40, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_379);
}

- (void)automakerSettingService:(id)a3 didUpdateShowAudioBrandLogo:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A2AF0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_372);
}

- (void)BOOLeanSettingService:(id)a3 didUpdateOn:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A2AA0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_365);
}

- (void)BOOLeanSettingService:(id)a3 didUpdateName:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A2A50, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_358);
}

- (void)BOOLeanSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v6, &unk_2854A2A00, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_351);
}

- (void)buttonSettingService:(id)a3 didUpdateButtonAction:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A2960, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_337);
}

- (void)buttonSettingService:(id)a3 didUpdateName:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A2910, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_330);
}

- (void)deepLinkSettingService:(id)a3 didUpdateName:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A28C0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_323);
}

- (void)deepLinkSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v6, &unk_2854A2820, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_309);
}

- (void)floatSettingService:(id)a3 didUpdateValue:(float)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A2780, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_295);
}

- (void)floatSettingService:(id)a3 didUpdateName:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A2730, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_288);
}

- (void)integerSettingService:(id)a3 didUpdateValue:(int)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A2640, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_267);
}

- (void)integerSettingService:(id)a3 didUpdateName:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A25F0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_260);
}

- (void)integerSettingService:(id)a3 didUpdateStepperBarHidden:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A25A0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_253);
}

- (void)integerSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v6, &unk_2854A2460, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_225);
}

- (void)singleSelectSettingService:(id)a3 didUpdateSelectedEntryIndex:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A23C0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_211);
}

- (void)singleSelectSettingService:(id)a3 didUpdateSelectSettingEntryList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v6, &unk_2854A2370, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_204);
}

- (void)singleSelectSettingService:(id)a3 didUpdateName:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A2320, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_197);
}

- (void)singleSelectSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v6, &unk_2854A22D0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_190);
}

- (void)singleSelectImageSettingService:(id)a3 didUpdateCurrentUserVisibleValue:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A2230, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_176);
}

- (void)singleSelectImageSettingService:(id)a3 didUpdateListUserVisibleValue:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A21E0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_169);
}

- (void)singleSelectImageSettingService:(id)a3 didUpdateImages:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A2190, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_162);
}

- (void)singleSelectImageSettingService:(id)a3 didUpdateName:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A2140, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_155);
}

- (void)singleSelectImageSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v6, &unk_2854A20F0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_148);
}

- (void)staticSettingService:(id)a3 didUpdateUserVisibleValue:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A2050, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_134);
}

- (void)staticSettingService:(id)a3 didUpdateName:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A2000, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_127);
}

- (void)staticSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v6, &unk_2854A1FB0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_120);
}

- (void)multipleSelectSettingService:(id)a3 didUpdateSelectedEntryIndices:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A1F10, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_106);
}

- (void)multipleSelectSettingService:(id)a3 didUpdateSelectSettingEntryList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v6, &unk_2854A1EC0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_99);
}

- (void)multipleSelectSettingService:(id)a3 didUpdateName:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A1E70, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_92);
}

- (void)multipleSelectSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v6, &unk_2854A1DD0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_78);
}

- (void)multipleSelectImageSettingService:(id)a3 didUpdateIndicesUserVisibleValue:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A1D80, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_71);
}

- (void)multipleSelectImageSettingService:(id)a3 didUpdateListUserVisibleValue:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A1D30, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_64);
}

- (void)multipleSelectImageSettingService:(id)a3 didUpdateImages:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A1CE0, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_57);
}

- (void)multipleSelectImageSettingService:(id)a3 didUpdateName:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v5, &unk_2854A1C90, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_50);
}

- (void)multipleSelectImageSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v6, &unk_2854A1C40, closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply, &block_descriptor_43);
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