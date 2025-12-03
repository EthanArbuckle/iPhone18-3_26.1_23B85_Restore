@interface CAFUITileDataSource
- (_TtC5CAFUI19CAFUITileDataSource)init;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)automakerSettingService:(id)service didUpdateDisabled:(BOOL)disabled;
- (void)automakerSettingService:(id)service didUpdateHidden:(BOOL)hidden;
- (void)automakerSettingService:(id)service didUpdateProminenceInfo:(id)info;
- (void)automakerSettingService:(void *)service didUpdateUserVisibleLabel:;
- (void)floatSettingService:(id)service didUpdateValue:(float)value;
- (void)integerSettingService:(id)service didUpdateValue:(int)value;
- (void)volumeService:(id)service didUpdateMute:(BOOL)mute;
- (void)volumeService:(id)service didUpdateUserVisibleLabel:(id)label;
- (void)volumeService:(id)service didUpdateVolume:(unsigned __int8)volume;
@end

@implementation CAFUITileDataSource

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = specialized CAFUITileDataSource.collectionView(_:numberOfItemsInSection:)(section);

  return v8;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = CAFUITileDataSource.collectionView(_:cellForItemAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v16 = CAFUITileDataSource.collectionView(_:viewForSupplementaryElementOfKind:at:)(viewCopy, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (_TtC5CAFUI19CAFUITileDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)automakerSettingService:(id)service didUpdateProminenceInfo:(id)info
{
  serviceCopy = service;
  infoCopy = info;
  selfCopy = self;
  CAFUITileDataSource.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy);
}

- (void)automakerSettingService:(id)service didUpdateHidden:(BOOL)hidden
{
  serviceCopy = service;
  selfCopy = self;
  CAFUITileDataSource.automakerSettingService(_:didUpdateHidden:)(serviceCopy, hidden);
}

- (void)automakerSettingService:(id)service didUpdateDisabled:(BOOL)disabled
{
  serviceCopy = service;
  selfCopy = self;
  CAFUITileDataSource.automakerSettingService(_:didUpdateDisabled:)(serviceCopy, disabled);
}

- (void)automakerSettingService:(void *)service didUpdateUserVisibleLabel:
{
  serviceCopy = service;
  selfCopy = self;
  CAFUITileDataSource.updated(setting:)(serviceCopy);
}

- (void)floatSettingService:(id)service didUpdateValue:(float)value
{
  serviceCopy = service;
  selfCopy = self;
  CAFUITileDataSource.updated(setting:)(serviceCopy);
}

- (void)integerSettingService:(id)service didUpdateValue:(int)value
{
  serviceCopy = service;
  selfCopy = self;
  CAFUITileDataSource.updated(setting:)(serviceCopy);
}

- (void)volumeService:(id)service didUpdateVolume:(unsigned __int8)volume
{
  serviceCopy = service;
  selfCopy = self;
  CAFUITileDataSource.updated(setting:)(serviceCopy);
}

- (void)volumeService:(id)service didUpdateUserVisibleLabel:(id)label
{
  serviceCopy = service;
  selfCopy = self;
  CAFUITileDataSource.updated(setting:)(serviceCopy);
}

- (void)volumeService:(id)service didUpdateMute:(BOOL)mute
{
  serviceCopy = service;
  selfCopy = self;
  CAFUITileDataSource.updated(setting:)(serviceCopy);
}

@end