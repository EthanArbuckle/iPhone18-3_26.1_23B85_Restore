@interface CAFTypeTestObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)typeTestService:(id)a3 didUpdateTestBool:(BOOL)a4;
- (void)typeTestService:(id)a3 didUpdateTestComplexArrayItemValue:(id)a4;
- (void)typeTestService:(id)a3 didUpdateTestComplexItem:(id)a4;
- (void)typeTestService:(id)a3 didUpdateTestComplexItemList:(id)a4;
- (void)typeTestService:(id)a3 didUpdateTestComplexItemValue:(id)a4;
- (void)typeTestService:(id)a3 didUpdateTestComplexItems:(id)a4;
- (void)typeTestService:(id)a3 didUpdateTestComplexNestedItemList:(id)a4;
- (void)typeTestService:(id)a3 didUpdateTestComplexNestedItemValue:(id)a4;
- (void)typeTestService:(id)a3 didUpdateTestComplexNestedListItemValue:(id)a4;
- (void)typeTestService:(id)a3 didUpdateTestDimensionUnitRawValue:(unsigned __int16)a4;
- (void)typeTestService:(id)a3 didUpdateTestEnum:(unsigned __int8)a4;
- (void)typeTestService:(id)a3 didUpdateTestFloat:(float)a4;
- (void)typeTestService:(id)a3 didUpdateTestInt16:(signed __int16)a4;
- (void)typeTestService:(id)a3 didUpdateTestInt32:(int)a4;
- (void)typeTestService:(id)a3 didUpdateTestInt64:(int64_t)a4;
- (void)typeTestService:(id)a3 didUpdateTestInt8:(char)a4;
- (void)typeTestService:(id)a3 didUpdateTestString:(id)a4;
- (void)typeTestService:(id)a3 didUpdateTestUInt16:(unsigned __int16)a4;
- (void)typeTestService:(id)a3 didUpdateTestUInt32:(unsigned int)a4;
- (void)typeTestService:(id)a3 didUpdateTestUInt64:(unint64_t)a4;
- (void)typeTestService:(id)a3 didUpdateTestUInt8:(unsigned __int8)a4;
@end

@implementation CAFTypeTestObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFTypeTestObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)typeTestService:(id)a3 didUpdateTestBool:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestBool:)();
}

- (void)typeTestService:(id)a3 didUpdateTestUInt8:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt8:)();
}

- (void)typeTestService:(id)a3 didUpdateTestUInt16:(unsigned __int16)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt16:)();
}

- (void)typeTestService:(id)a3 didUpdateTestUInt32:(unsigned int)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt32:)();
}

- (void)typeTestService:(id)a3 didUpdateTestUInt64:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt64:)();
}

- (void)typeTestService:(id)a3 didUpdateTestInt8:(char)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestInt8:)();
}

- (void)typeTestService:(id)a3 didUpdateTestInt16:(signed __int16)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestInt16:)();
}

- (void)typeTestService:(id)a3 didUpdateTestInt32:(int)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestInt32:)();
}

- (void)typeTestService:(id)a3 didUpdateTestInt64:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestInt64:)();
}

- (void)typeTestService:(id)a3 didUpdateTestFloat:(float)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestFloat:)();
}

- (void)typeTestService:(id)a3 didUpdateTestString:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestString:)();
}

- (void)typeTestService:(id)a3 didUpdateTestEnum:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestEnum:)();
}

- (void)typeTestService:(id)a3 didUpdateTestDimensionUnitRawValue:(unsigned __int16)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestDimensionUnitRawValue:)();
}

- (void)typeTestService:(id)a3 didUpdateTestComplexItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexItem:)();
}

- (void)typeTestService:(id)a3 didUpdateTestComplexItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexItems:)();
}

- (void)typeTestService:(id)a3 didUpdateTestComplexItemValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexItemValue:)();
}

- (void)typeTestService:(id)a3 didUpdateTestComplexItemList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexItemList:)();
}

- (void)typeTestService:(id)a3 didUpdateTestComplexArrayItemValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexArrayItemValue:)();
}

- (void)typeTestService:(id)a3 didUpdateTestComplexNestedItemValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexNestedItemValue:)();
}

- (void)typeTestService:(id)a3 didUpdateTestComplexNestedItemList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexNestedItemList:)();
}

- (void)typeTestService:(id)a3 didUpdateTestComplexNestedListItemValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexNestedListItemValue:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFTypeTestObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFTypeTestObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFTypeTestObservable.serviceDidFinishGroupUpdate(_:)();
}

@end