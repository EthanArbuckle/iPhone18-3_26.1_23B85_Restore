@interface CAFTypeTestMultiObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)typeTestMultiService:(id)a3 didUpdateTestBool:(BOOL)a4;
- (void)typeTestMultiService:(id)a3 didUpdateTestComplexItem:(id)a4;
- (void)typeTestMultiService:(id)a3 didUpdateTestComplexItemList:(id)a4;
- (void)typeTestMultiService:(id)a3 didUpdateTestComplexItemValue:(id)a4;
- (void)typeTestMultiService:(id)a3 didUpdateTestComplexItems:(id)a4;
- (void)typeTestMultiService:(id)a3 didUpdateTestDimensionUnitRawValue:(unsigned __int16)a4;
- (void)typeTestMultiService:(id)a3 didUpdateTestEnum:(unsigned __int8)a4;
- (void)typeTestMultiService:(id)a3 didUpdateTestFloat:(float)a4;
- (void)typeTestMultiService:(id)a3 didUpdateTestInt16:(signed __int16)a4;
- (void)typeTestMultiService:(id)a3 didUpdateTestInt32:(int)a4;
- (void)typeTestMultiService:(id)a3 didUpdateTestInt64:(int64_t)a4;
- (void)typeTestMultiService:(id)a3 didUpdateTestInt8:(char)a4;
- (void)typeTestMultiService:(id)a3 didUpdateTestString:(id)a4;
- (void)typeTestMultiService:(id)a3 didUpdateTestUInt16:(unsigned __int16)a4;
- (void)typeTestMultiService:(id)a3 didUpdateTestUInt32:(unsigned int)a4;
- (void)typeTestMultiService:(id)a3 didUpdateTestUInt64:(unint64_t)a4;
- (void)typeTestMultiService:(id)a3 didUpdateTestUInt8:(unsigned __int8)a4;
@end

@implementation CAFTypeTestMultiObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFTypeTestMultiObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)typeTestMultiService:(id)a3 didUpdateTestBool:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestBool:)();
}

- (void)typeTestMultiService:(id)a3 didUpdateTestUInt8:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt8:)();
}

- (void)typeTestMultiService:(id)a3 didUpdateTestUInt16:(unsigned __int16)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt16:)();
}

- (void)typeTestMultiService:(id)a3 didUpdateTestUInt32:(unsigned int)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt32:)();
}

- (void)typeTestMultiService:(id)a3 didUpdateTestUInt64:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt64:)();
}

- (void)typeTestMultiService:(id)a3 didUpdateTestInt8:(char)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestInt8:)();
}

- (void)typeTestMultiService:(id)a3 didUpdateTestInt16:(signed __int16)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestInt16:)();
}

- (void)typeTestMultiService:(id)a3 didUpdateTestInt32:(int)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestInt32:)();
}

- (void)typeTestMultiService:(id)a3 didUpdateTestInt64:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestInt64:)();
}

- (void)typeTestMultiService:(id)a3 didUpdateTestFloat:(float)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestFloat:)();
}

- (void)typeTestMultiService:(id)a3 didUpdateTestString:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestString:)();
}

- (void)typeTestMultiService:(id)a3 didUpdateTestEnum:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestEnum:)();
}

- (void)typeTestMultiService:(id)a3 didUpdateTestDimensionUnitRawValue:(unsigned __int16)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestDimensionUnitRawValue:)();
}

- (void)typeTestMultiService:(id)a3 didUpdateTestComplexItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestComplexItem:)();
}

- (void)typeTestMultiService:(id)a3 didUpdateTestComplexItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestComplexItems:)();
}

- (void)typeTestMultiService:(id)a3 didUpdateTestComplexItemValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestComplexItemValue:)();
}

- (void)typeTestMultiService:(id)a3 didUpdateTestComplexItemList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestComplexItemList:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFTypeTestMultiObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFTypeTestMultiObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFTypeTestMultiObservable.serviceDidFinishGroupUpdate(_:)();
}

@end