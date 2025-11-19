@interface CAFPickerObservable
- (NSString)description;
- (void)pickerService:(id)a3 didUpdateEntryList:(id)a4;
- (void)pickerService:(id)a3 didUpdateSelectedEntryIndex:(unsigned __int8)a4;
- (void)pickerService:(id)a3 didUpdateUserSelectionEnabled:(BOOL)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFPickerObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFPickerObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)pickerService:(id)a3 didUpdateEntryList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFPickerObservable.pickerService(_:didUpdateEntryList:)(v8, v7);
}

- (void)pickerService:(id)a3 didUpdateSelectedEntryIndex:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFPickerObservable.pickerService(_:didUpdateSelectedEntryIndex:)();
}

- (void)pickerService:(id)a3 didUpdateUserSelectionEnabled:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFPickerObservable.pickerService(_:didUpdateUserSelectionEnabled:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFPickerObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFPickerObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFPickerObservable.serviceDidFinishGroupUpdate(_:)();
}

@end