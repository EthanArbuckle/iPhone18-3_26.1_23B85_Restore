@interface CAFTypeTestMultiObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)typeTestMultiService:(id)service didUpdateTestBool:(BOOL)bool;
- (void)typeTestMultiService:(id)service didUpdateTestComplexItem:(id)item;
- (void)typeTestMultiService:(id)service didUpdateTestComplexItemList:(id)list;
- (void)typeTestMultiService:(id)service didUpdateTestComplexItemValue:(id)value;
- (void)typeTestMultiService:(id)service didUpdateTestComplexItems:(id)items;
- (void)typeTestMultiService:(id)service didUpdateTestDimensionUnitRawValue:(unsigned __int16)value;
- (void)typeTestMultiService:(id)service didUpdateTestEnum:(unsigned __int8)enum;
- (void)typeTestMultiService:(id)service didUpdateTestFloat:(float)float;
- (void)typeTestMultiService:(id)service didUpdateTestInt16:(signed __int16)int16;
- (void)typeTestMultiService:(id)service didUpdateTestInt32:(int)int32;
- (void)typeTestMultiService:(id)service didUpdateTestInt64:(int64_t)int64;
- (void)typeTestMultiService:(id)service didUpdateTestInt8:(char)int8;
- (void)typeTestMultiService:(id)service didUpdateTestString:(id)string;
- (void)typeTestMultiService:(id)service didUpdateTestUInt16:(unsigned __int16)int16;
- (void)typeTestMultiService:(id)service didUpdateTestUInt32:(unsigned int)int32;
- (void)typeTestMultiService:(id)service didUpdateTestUInt64:(unint64_t)int64;
- (void)typeTestMultiService:(id)service didUpdateTestUInt8:(unsigned __int8)int8;
@end

@implementation CAFTypeTestMultiObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFTypeTestMultiObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)typeTestMultiService:(id)service didUpdateTestBool:(BOOL)bool
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestBool:)();
}

- (void)typeTestMultiService:(id)service didUpdateTestUInt8:(unsigned __int8)int8
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt8:)();
}

- (void)typeTestMultiService:(id)service didUpdateTestUInt16:(unsigned __int16)int16
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt16:)();
}

- (void)typeTestMultiService:(id)service didUpdateTestUInt32:(unsigned int)int32
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt32:)();
}

- (void)typeTestMultiService:(id)service didUpdateTestUInt64:(unint64_t)int64
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt64:)();
}

- (void)typeTestMultiService:(id)service didUpdateTestInt8:(char)int8
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestInt8:)();
}

- (void)typeTestMultiService:(id)service didUpdateTestInt16:(signed __int16)int16
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestInt16:)();
}

- (void)typeTestMultiService:(id)service didUpdateTestInt32:(int)int32
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestInt32:)();
}

- (void)typeTestMultiService:(id)service didUpdateTestInt64:(int64_t)int64
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestInt64:)();
}

- (void)typeTestMultiService:(id)service didUpdateTestFloat:(float)float
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestFloat:)();
}

- (void)typeTestMultiService:(id)service didUpdateTestString:(id)string
{
  if (string)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestString:)();
}

- (void)typeTestMultiService:(id)service didUpdateTestEnum:(unsigned __int8)enum
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestEnum:)();
}

- (void)typeTestMultiService:(id)service didUpdateTestDimensionUnitRawValue:(unsigned __int16)value
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestDimensionUnitRawValue:)();
}

- (void)typeTestMultiService:(id)service didUpdateTestComplexItem:(id)item
{
  serviceCopy = service;
  itemCopy = item;
  selfCopy = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestComplexItem:)();
}

- (void)typeTestMultiService:(id)service didUpdateTestComplexItems:(id)items
{
  serviceCopy = service;
  itemsCopy = items;
  selfCopy = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestComplexItems:)();
}

- (void)typeTestMultiService:(id)service didUpdateTestComplexItemValue:(id)value
{
  serviceCopy = service;
  valueCopy = value;
  selfCopy = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestComplexItemValue:)();
}

- (void)typeTestMultiService:(id)service didUpdateTestComplexItemList:(id)list
{
  serviceCopy = service;
  listCopy = list;
  selfCopy = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestComplexItemList:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFTypeTestMultiObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFTypeTestMultiObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFTypeTestMultiObservable.serviceDidFinishGroupUpdate(_:)();
}

@end