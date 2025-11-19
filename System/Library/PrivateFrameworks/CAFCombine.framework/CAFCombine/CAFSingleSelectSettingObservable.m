@interface CAFSingleSelectSettingObservable
- (NSString)description;
- (void)automakerSettingService:(id)a3 didUpdateCategory:(unsigned __int8)a4;
- (void)automakerSettingService:(id)a3 didUpdateProminenceInfo:(id)a4;
- (void)automakerSettingService:(id)a3 didUpdateSortOrder:(unsigned __int8)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)singleSelectSettingService:(id)a3 didUpdateSelectSettingEntryList:(id)a4;
- (void)singleSelectSettingService:(id)a3 didUpdateSelectSettingEntryListNotificationInfo:(id)a4;
- (void)singleSelectSettingService:(id)a3 didUpdateSelectedEntryIndex:(unsigned __int8)a4;
- (void)singleSelectSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4;
@end

@implementation CAFSingleSelectSettingObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFSingleSelectSettingObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)automakerSettingService:(id)a3 didUpdateSortOrder:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateSortOrder:)();
}

- (void)automakerSettingService:(id)a3 didUpdateCategory:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateCategory:)();
}

- (void)automakerSettingService:(id)a3 didUpdateProminenceInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(v8, a4);
}

- (void)singleSelectSettingService:(id)a3 didUpdateSelectSettingEntryList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFSingleSelectSettingObservable.singleSelectSettingService(_:didUpdateSelectSettingEntryList:)(v8, v7);
}

- (void)singleSelectSettingService:(id)a3 didUpdateSelectedEntryIndex:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFSingleSelectSettingObservable.singleSelectSettingService(_:didUpdateSelectedEntryIndex:)();
}

- (void)singleSelectSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFSingleSelectSettingObservable.singleSelectSettingService(_:didUpdateUserVisibleDetailedDescription:)(v8, a4);
}

- (void)singleSelectSettingService:(id)a3 didUpdateSelectSettingEntryListNotificationInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFSingleSelectSettingObservable.singleSelectSettingService(_:didUpdateSelectSettingEntryListNotificationInfo:)(v8, a4);
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFSingleSelectSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFSingleSelectSettingObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFSingleSelectSettingObservable.serviceDidFinishGroupUpdate(_:)();
}

@end