@interface CAFUITileDataSource
- (_TtC5CAFUI19CAFUITileDataSource)init;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)automakerSettingService:(id)a3 didUpdateDisabled:(BOOL)a4;
- (void)automakerSettingService:(id)a3 didUpdateHidden:(BOOL)a4;
- (void)automakerSettingService:(id)a3 didUpdateProminenceInfo:(id)a4;
- (void)automakerSettingService:(void *)a3 didUpdateUserVisibleLabel:;
- (void)floatSettingService:(id)a3 didUpdateValue:(float)a4;
- (void)integerSettingService:(id)a3 didUpdateValue:(int)a4;
- (void)volumeService:(id)a3 didUpdateMute:(BOOL)a4;
- (void)volumeService:(id)a3 didUpdateUserVisibleLabel:(id)a4;
- (void)volumeService:(id)a3 didUpdateVolume:(unsigned __int8)a4;
@end

@implementation CAFUITileDataSource

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = specialized CAFUITileDataSource.collectionView(_:numberOfItemsInSection:)(a4);

  return v8;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = CAFUITileDataSource.collectionView(_:cellForItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = self;
  v16 = CAFUITileDataSource.collectionView(_:viewForSupplementaryElementOfKind:at:)(v14, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (_TtC5CAFUI19CAFUITileDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)automakerSettingService:(id)a3 didUpdateProminenceInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFUITileDataSource.automakerSettingService(_:didUpdateProminenceInfo:)(v6);
}

- (void)automakerSettingService:(id)a3 didUpdateHidden:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFUITileDataSource.automakerSettingService(_:didUpdateHidden:)(v6, a4);
}

- (void)automakerSettingService:(id)a3 didUpdateDisabled:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFUITileDataSource.automakerSettingService(_:didUpdateDisabled:)(v6, a4);
}

- (void)automakerSettingService:(void *)a3 didUpdateUserVisibleLabel:
{
  v4 = a3;
  v5 = a1;
  CAFUITileDataSource.updated(setting:)(v4);
}

- (void)floatSettingService:(id)a3 didUpdateValue:(float)a4
{
  v5 = a3;
  v6 = self;
  CAFUITileDataSource.updated(setting:)(v5);
}

- (void)integerSettingService:(id)a3 didUpdateValue:(int)a4
{
  v5 = a3;
  v6 = self;
  CAFUITileDataSource.updated(setting:)(v5);
}

- (void)volumeService:(id)a3 didUpdateVolume:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFUITileDataSource.updated(setting:)(v5);
}

- (void)volumeService:(id)a3 didUpdateUserVisibleLabel:(id)a4
{
  v5 = a3;
  v6 = self;
  CAFUITileDataSource.updated(setting:)(v5);
}

- (void)volumeService:(id)a3 didUpdateMute:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFUITileDataSource.updated(setting:)(v5);
}

@end