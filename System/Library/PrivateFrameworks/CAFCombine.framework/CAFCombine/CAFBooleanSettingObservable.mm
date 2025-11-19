@interface CAFBooleanSettingObservable
- (NSString)description;
- (void)BOOLeanSettingService:(id)a3 didUpdateBooleanNotificationInfo:(id)a4;
- (void)BOOLeanSettingService:(id)a3 didUpdateOn:(BOOL)a4;
- (void)BOOLeanSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4;
- (void)automakerSettingService:(id)a3 didUpdateCategory:(unsigned __int8)a4;
- (void)automakerSettingService:(id)a3 didUpdateProminenceInfo:(id)a4;
- (void)automakerSettingService:(id)a3 didUpdateSortOrder:(unsigned __int8)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFBooleanSettingObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFBooleanSettingObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)automakerSettingService:(id)a3 didUpdateSortOrder:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFBooleanSettingObservable.automakerSettingService(_:didUpdateSortOrder:)();
}

- (void)automakerSettingService:(id)a3 didUpdateCategory:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFBooleanSettingObservable.automakerSettingService(_:didUpdateCategory:)();
}

- (void)automakerSettingService:(id)a3 didUpdateProminenceInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFBooleanSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(v8, a4);
}

- (void)BOOLeanSettingService:(id)a3 didUpdateOn:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFBooleanSettingObservable.BOOLeanSettingService(_:didUpdateOn:)();
}

- (void)BOOLeanSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFBooleanSettingObservable.BOOLeanSettingService(_:didUpdateUserVisibleDetailedDescription:)(v8, a4);
}

- (void)BOOLeanSettingService:(id)a3 didUpdateBooleanNotificationInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFBooleanSettingObservable.BOOLeanSettingService(_:didUpdateBooleanNotificationInfo:)(v8, a4);
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFBooleanSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFBooleanSettingObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFBooleanSettingObservable.serviceDidFinishGroupUpdate(_:)();
}

@end