@interface CAFTypeTestWithStatesObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)typeTestWithStatesService:(id)a3 didUpdateTestBool:(BOOL)a4;
- (void)typeTestWithStatesService:(id)a3 didUpdateTestComplexItem:(id)a4;
- (void)typeTestWithStatesService:(id)a3 didUpdateTestComplexItemList:(id)a4;
- (void)typeTestWithStatesService:(id)a3 didUpdateTestComplexItemValue:(id)a4;
- (void)typeTestWithStatesService:(id)a3 didUpdateTestComplexItems:(id)a4;
- (void)typeTestWithStatesService:(id)a3 didUpdateTestDimensionUnitRawValue:(unsigned __int16)a4;
- (void)typeTestWithStatesService:(id)a3 didUpdateTestEnum:(unsigned __int8)a4;
- (void)typeTestWithStatesService:(id)a3 didUpdateTestFloat:(float)a4;
- (void)typeTestWithStatesService:(id)a3 didUpdateTestInt16:(signed __int16)a4;
- (void)typeTestWithStatesService:(id)a3 didUpdateTestInt32:(int)a4;
- (void)typeTestWithStatesService:(id)a3 didUpdateTestInt64:(int64_t)a4;
- (void)typeTestWithStatesService:(id)a3 didUpdateTestInt8:(char)a4;
- (void)typeTestWithStatesService:(id)a3 didUpdateTestString:(id)a4;
- (void)typeTestWithStatesService:(id)a3 didUpdateTestUInt16:(unsigned __int16)a4;
- (void)typeTestWithStatesService:(id)a3 didUpdateTestUInt32:(unsigned int)a4;
- (void)typeTestWithStatesService:(id)a3 didUpdateTestUInt64:(unint64_t)a4;
- (void)typeTestWithStatesService:(id)a3 didUpdateTestUInt8:(unsigned __int8)a4;
@end

@implementation CAFTypeTestWithStatesObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFTypeTestWithStatesObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)typeTestWithStatesService:(id)a3 didUpdateTestBool:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestBool:)();
}

- (void)typeTestWithStatesService:(id)a3 didUpdateTestUInt8:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt8:)();
}

- (void)typeTestWithStatesService:(id)a3 didUpdateTestUInt16:(unsigned __int16)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt16:)();
}

- (void)typeTestWithStatesService:(id)a3 didUpdateTestUInt32:(unsigned int)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt32:)();
}

- (void)typeTestWithStatesService:(id)a3 didUpdateTestUInt64:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt64:)();
}

- (void)typeTestWithStatesService:(id)a3 didUpdateTestInt8:(char)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestInt8:)();
}

- (void)typeTestWithStatesService:(id)a3 didUpdateTestInt16:(signed __int16)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestInt16:)();
}

- (void)typeTestWithStatesService:(id)a3 didUpdateTestInt32:(int)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestInt32:)();
}

- (void)typeTestWithStatesService:(id)a3 didUpdateTestInt64:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestInt64:)();
}

- (void)typeTestWithStatesService:(id)a3 didUpdateTestFloat:(float)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestFloat:)();
}

- (void)typeTestWithStatesService:(id)a3 didUpdateTestString:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestString:)();
}

- (void)typeTestWithStatesService:(id)a3 didUpdateTestEnum:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestEnum:)();
}

- (void)typeTestWithStatesService:(id)a3 didUpdateTestDimensionUnitRawValue:(unsigned __int16)a4
{
  v5 = a3;
  v6 = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestDimensionUnitRawValue:)();
}

- (void)typeTestWithStatesService:(id)a3 didUpdateTestComplexItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestComplexItem:)();
}

- (void)typeTestWithStatesService:(id)a3 didUpdateTestComplexItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestComplexItems:)();
}

- (void)typeTestWithStatesService:(id)a3 didUpdateTestComplexItemValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestComplexItemValue:)();
}

- (void)typeTestWithStatesService:(id)a3 didUpdateTestComplexItemList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestComplexItemList:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFTypeTestWithStatesObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFTypeTestWithStatesObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFTypeTestWithStatesObservable.serviceDidFinishGroupUpdate(_:)();
}

@end