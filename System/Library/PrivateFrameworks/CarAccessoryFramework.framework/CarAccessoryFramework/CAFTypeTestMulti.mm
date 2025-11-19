@interface CAFTypeTestMulti
+ (void)load;
- (BOOL)hasTestArrayBool;
- (BOOL)hasTestArrayData;
- (BOOL)hasTestArrayFloat;
- (BOOL)hasTestArrayInt16;
- (BOOL)hasTestArrayInt32;
- (BOOL)hasTestArrayInt64;
- (BOOL)hasTestArrayInt8;
- (BOOL)hasTestArrayRawData;
- (BOOL)hasTestArrayString;
- (BOOL)hasTestArrayUInt16;
- (BOOL)hasTestArrayUInt32;
- (BOOL)hasTestArrayUInt64;
- (BOOL)hasTestArrayUInt8;
- (BOOL)hasTestBool;
- (BOOL)hasTestComplexItem;
- (BOOL)hasTestComplexItemList;
- (BOOL)hasTestComplexItemValue;
- (BOOL)hasTestComplexItems;
- (BOOL)hasTestData;
- (BOOL)hasTestDimensionUnitRawValue;
- (BOOL)hasTestEnum;
- (BOOL)hasTestFloat;
- (BOOL)hasTestInt16;
- (BOOL)hasTestInt32;
- (BOOL)hasTestInt64;
- (BOOL)hasTestInt8;
- (BOOL)hasTestRawData;
- (BOOL)hasTestString;
- (BOOL)hasTestUInt16;
- (BOOL)hasTestUInt32;
- (BOOL)hasTestUInt64;
- (BOOL)hasTestUInt8;
- (BOOL)registeredForTestArrayBool;
- (BOOL)registeredForTestArrayData;
- (BOOL)registeredForTestArrayFloat;
- (BOOL)registeredForTestArrayInt16;
- (BOOL)registeredForTestArrayInt32;
- (BOOL)registeredForTestArrayInt64;
- (BOOL)registeredForTestArrayInt8;
- (BOOL)registeredForTestArrayRawData;
- (BOOL)registeredForTestArrayString;
- (BOOL)registeredForTestArrayUInt16;
- (BOOL)registeredForTestArrayUInt32;
- (BOOL)registeredForTestArrayUInt64;
- (BOOL)registeredForTestArrayUInt8;
- (BOOL)registeredForTestBool;
- (BOOL)registeredForTestComplexItem;
- (BOOL)registeredForTestComplexItemList;
- (BOOL)registeredForTestComplexItemValue;
- (BOOL)registeredForTestComplexItems;
- (BOOL)registeredForTestData;
- (BOOL)registeredForTestDimensionUnit;
- (BOOL)registeredForTestEnum;
- (BOOL)registeredForTestFloat;
- (BOOL)registeredForTestInt16;
- (BOOL)registeredForTestInt32;
- (BOOL)registeredForTestInt64;
- (BOOL)registeredForTestInt8;
- (BOOL)registeredForTestRawData;
- (BOOL)registeredForTestString;
- (BOOL)registeredForTestUInt16;
- (BOOL)registeredForTestUInt32;
- (BOOL)registeredForTestUInt64;
- (BOOL)registeredForTestUInt8;
- (BOOL)registeredForUserVisibleLabel;
- (BOOL)testBool;
- (CAFArrayCharacteristic)testArrayBoolCharacteristic;
- (CAFArrayCharacteristic)testArrayDataCharacteristic;
- (CAFArrayCharacteristic)testArrayFloatCharacteristic;
- (CAFArrayCharacteristic)testArrayInt16Characteristic;
- (CAFArrayCharacteristic)testArrayInt32Characteristic;
- (CAFArrayCharacteristic)testArrayInt64Characteristic;
- (CAFArrayCharacteristic)testArrayInt8Characteristic;
- (CAFArrayCharacteristic)testArrayRawDataCharacteristic;
- (CAFArrayCharacteristic)testArrayStringCharacteristic;
- (CAFArrayCharacteristic)testArrayUInt16Characteristic;
- (CAFArrayCharacteristic)testArrayUInt32Characteristic;
- (CAFArrayCharacteristic)testArrayUInt64Characteristic;
- (CAFArrayCharacteristic)testArrayUInt8Characteristic;
- (CAFBoolCharacteristic)testBoolCharacteristic;
- (CAFButtonActionCharacteristic)testEnumCharacteristic;
- (CAFDataCharacteristic)testDataCharacteristic;
- (CAFDataCharacteristic)testRawDataCharacteristic;
- (CAFFloatCharacteristic)testFloatCharacteristic;
- (CAFFloatRange)testFloatRange;
- (CAFInt16Characteristic)testInt16Characteristic;
- (CAFInt16Range)testInt16Range;
- (CAFInt32Characteristic)testInt32Characteristic;
- (CAFInt32Range)testInt32Range;
- (CAFInt64Characteristic)testInt64Characteristic;
- (CAFInt64Range)testInt64Range;
- (CAFInt8Characteristic)testInt8Characteristic;
- (CAFInt8Range)testInt8Range;
- (CAFStringCharacteristic)testStringCharacteristic;
- (CAFStringCharacteristic)userVisibleLabelCharacteristic;
- (CAFTestComplexItem)testComplexItem;
- (CAFTestComplexItem)testComplexItemValue;
- (CAFTestComplexItemCharacteristic)testComplexItemCharacteristic;
- (CAFTestComplexItemCharacteristic)testComplexItemValueCharacteristic;
- (CAFTestComplexItems)testComplexItemList;
- (CAFTestComplexItems)testComplexItems;
- (CAFTestComplexItemsCharacteristic)testComplexItemListCharacteristic;
- (CAFTestComplexItemsCharacteristic)testComplexItemsCharacteristic;
- (CAFUInt16Characteristic)testUInt16Characteristic;
- (CAFUInt16Range)testUInt16Range;
- (CAFUInt32Characteristic)testUInt32Characteristic;
- (CAFUInt32Range)testUInt32Range;
- (CAFUInt64Characteristic)testUInt64Characteristic;
- (CAFUInt64Range)testUInt64Range;
- (CAFUInt8Characteristic)testUInt8Characteristic;
- (CAFUInt8Range)testUInt8Range;
- (CAFUnitTypeCharacteristic)testDimensionUnitRawValueCharacteristic;
- (NSArray)testArrayBool;
- (NSArray)testArrayData;
- (NSArray)testArrayFloat;
- (NSArray)testArrayInt16;
- (NSArray)testArrayInt32;
- (NSArray)testArrayInt64;
- (NSArray)testArrayInt8;
- (NSArray)testArrayRawData;
- (NSArray)testArrayString;
- (NSArray)testArrayUInt16;
- (NSArray)testArrayUInt32;
- (NSArray)testArrayUInt64;
- (NSArray)testArrayUInt8;
- (NSData)testData;
- (NSData)testRawData;
- (NSString)testString;
- (NSString)userVisibleLabel;
- (NSUnitSpeed)testDimensionUnit;
- (char)testInt8;
- (float)testFloat;
- (id)name;
- (int)testInt32;
- (int64_t)testInt64;
- (signed)testInt16;
- (unint64_t)testUInt64;
- (unsigned)testDimensionUnitRawValue;
- (unsigned)testEnum;
- (unsigned)testUInt16;
- (unsigned)testUInt32;
- (unsigned)testUInt8;
- (void)registerObserver:(id)a3;
- (void)setTestArrayBool:(id)a3;
- (void)setTestArrayData:(id)a3;
- (void)setTestArrayFloat:(id)a3;
- (void)setTestArrayInt16:(id)a3;
- (void)setTestArrayInt32:(id)a3;
- (void)setTestArrayInt64:(id)a3;
- (void)setTestArrayInt8:(id)a3;
- (void)setTestArrayString:(id)a3;
- (void)setTestArrayUInt16:(id)a3;
- (void)setTestArrayUInt32:(id)a3;
- (void)setTestArrayUInt64:(id)a3;
- (void)setTestArrayUInt8:(id)a3;
- (void)setTestComplexItem:(id)a3;
- (void)setTestComplexItemList:(id)a3;
- (void)setTestComplexItemValue:(id)a3;
- (void)setTestComplexItems:(id)a3;
- (void)setTestData:(id)a3;
- (void)setTestDimensionUnit:(id)a3;
- (void)setTestFloat:(float)a3;
- (void)setTestInt64:(int64_t)a3;
- (void)setTestString:(id)a3;
- (void)setTestUInt64:(unint64_t)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFTypeTestMulti

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTypeTestMulti;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_28468B230])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFTypeTestMulti;
  [(CAFService *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_28468B230])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFTypeTestMulti;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  v3 = [(CAFService *)self typeName];
  v4 = [(CAFTypeTestMulti *)self userVisibleLabelCharacteristic];
  v5 = [v4 formattedValue];

  if ([v5 length])
  {
    v6 = [v3 stringByAppendingFormat:@"-%@", v5];

    v3 = v6;
  }

  return v3;
}

- (CAFStringCharacteristic)userVisibleLabelCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000001"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)userVisibleLabel
{
  v2 = [(CAFTypeTestMulti *)self userVisibleLabelCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (CAFBoolCharacteristic)testBoolCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000001"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)testBool
{
  v2 = [(CAFTypeTestMulti *)self testBoolCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasTestBool
{
  v2 = [(CAFTypeTestMulti *)self testBoolCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFUInt8Characteristic)testUInt8Characteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000002"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unsigned)testUInt8
{
  v2 = [(CAFTypeTestMulti *)self testUInt8Characteristic];
  v3 = [v2 uint8Value];

  return v3;
}

- (CAFUInt8Range)testUInt8Range
{
  v2 = [(CAFTypeTestMulti *)self testUInt8Characteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)hasTestUInt8
{
  v2 = [(CAFTypeTestMulti *)self testUInt8Characteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFUInt16Characteristic)testUInt16Characteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000003"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unsigned)testUInt16
{
  v2 = [(CAFTypeTestMulti *)self testUInt16Characteristic];
  v3 = [v2 uint16Value];

  return v3;
}

- (CAFUInt16Range)testUInt16Range
{
  v2 = [(CAFTypeTestMulti *)self testUInt16Characteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)hasTestUInt16
{
  v2 = [(CAFTypeTestMulti *)self testUInt16Characteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFUInt32Characteristic)testUInt32Characteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000004"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000004"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unsigned)testUInt32
{
  v2 = [(CAFTypeTestMulti *)self testUInt32Characteristic];
  v3 = [v2 uint32Value];

  return v3;
}

- (CAFUInt32Range)testUInt32Range
{
  v2 = [(CAFTypeTestMulti *)self testUInt32Characteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)hasTestUInt32
{
  v2 = [(CAFTypeTestMulti *)self testUInt32Characteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFUInt64Characteristic)testUInt64Characteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000005"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)testUInt64
{
  v2 = [(CAFTypeTestMulti *)self testUInt64Characteristic];
  v3 = [v2 uint64Value];

  return v3;
}

- (void)setTestUInt64:(unint64_t)a3
{
  v4 = [(CAFTypeTestMulti *)self testUInt64Characteristic];
  [v4 setUint64Value:a3];
}

- (CAFUInt64Range)testUInt64Range
{
  v2 = [(CAFTypeTestMulti *)self testUInt64Characteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)hasTestUInt64
{
  v2 = [(CAFTypeTestMulti *)self testUInt64Characteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFInt8Characteristic)testInt8Characteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000006"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000006"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (char)testInt8
{
  v2 = [(CAFTypeTestMulti *)self testInt8Characteristic];
  v3 = [v2 int8Value];

  return v3;
}

- (CAFInt8Range)testInt8Range
{
  v2 = [(CAFTypeTestMulti *)self testInt8Characteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)hasTestInt8
{
  v2 = [(CAFTypeTestMulti *)self testInt8Characteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFInt16Characteristic)testInt16Characteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000007"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000007"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (signed)testInt16
{
  v2 = [(CAFTypeTestMulti *)self testInt16Characteristic];
  v3 = [v2 int16Value];

  return v3;
}

- (CAFInt16Range)testInt16Range
{
  v2 = [(CAFTypeTestMulti *)self testInt16Characteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)hasTestInt16
{
  v2 = [(CAFTypeTestMulti *)self testInt16Characteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFInt32Characteristic)testInt32Characteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000008"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000008"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int)testInt32
{
  v2 = [(CAFTypeTestMulti *)self testInt32Characteristic];
  v3 = [v2 int32Value];

  return v3;
}

- (CAFInt32Range)testInt32Range
{
  v2 = [(CAFTypeTestMulti *)self testInt32Characteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)hasTestInt32
{
  v2 = [(CAFTypeTestMulti *)self testInt32Characteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFInt64Characteristic)testInt64Characteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000009"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000009"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)testInt64
{
  v2 = [(CAFTypeTestMulti *)self testInt64Characteristic];
  v3 = [v2 int64Value];

  return v3;
}

- (void)setTestInt64:(int64_t)a3
{
  v4 = [(CAFTypeTestMulti *)self testInt64Characteristic];
  [v4 setInt64Value:a3];
}

- (CAFInt64Range)testInt64Range
{
  v2 = [(CAFTypeTestMulti *)self testInt64Characteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)hasTestInt64
{
  v2 = [(CAFTypeTestMulti *)self testInt64Characteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFFloatCharacteristic)testFloatCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF00000A"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00000A"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (float)testFloat
{
  v2 = [(CAFTypeTestMulti *)self testFloatCharacteristic];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setTestFloat:(float)a3
{
  v5 = [(CAFTypeTestMulti *)self testFloatCharacteristic];
  *&v4 = a3;
  [v5 setFloatValue:v4];
}

- (CAFFloatRange)testFloatRange
{
  v2 = [(CAFTypeTestMulti *)self testFloatCharacteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)hasTestFloat
{
  v2 = [(CAFTypeTestMulti *)self testFloatCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFStringCharacteristic)testStringCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF00000B"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00000B"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)testString
{
  v2 = [(CAFTypeTestMulti *)self testStringCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (void)setTestString:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testStringCharacteristic];
  [v5 setStringValue:v4];
}

- (BOOL)hasTestString
{
  v2 = [(CAFTypeTestMulti *)self testStringCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFDataCharacteristic)testDataCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF00000C"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00000C"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSData)testData
{
  v2 = [(CAFTypeTestMulti *)self testDataCharacteristic];
  v3 = [v2 dataValue];

  return v3;
}

- (void)setTestData:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testDataCharacteristic];
  [v5 setDataValue:v4];
}

- (BOOL)hasTestData
{
  v2 = [(CAFTypeTestMulti *)self testDataCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFDataCharacteristic)testRawDataCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF00000D"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00000D"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSData)testRawData
{
  v2 = [(CAFTypeTestMulti *)self testRawDataCharacteristic];
  v3 = [v2 dataValue];

  return v3;
}

- (BOOL)hasTestRawData
{
  v2 = [(CAFTypeTestMulti *)self testRawDataCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFButtonActionCharacteristic)testEnumCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF00000E"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00000E"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unsigned)testEnum
{
  v2 = [(CAFTypeTestMulti *)self testEnumCharacteristic];
  v3 = [v2 buttonActionValue];

  return v3;
}

- (BOOL)hasTestEnum
{
  v2 = [(CAFTypeTestMulti *)self testEnumCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFUnitTypeCharacteristic)testDimensionUnitRawValueCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF00000F"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00000F"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unsigned)testDimensionUnitRawValue
{
  v2 = [(CAFTypeTestMulti *)self testDimensionUnitRawValueCharacteristic];
  v3 = [v2 unitTypeValue];

  return v3;
}

- (NSUnitSpeed)testDimensionUnit
{
  objc_opt_class();
  v3 = [(CAFTypeTestMulti *)self testDimensionUnitRawValueCharacteristic];
  v4 = [v3 unitValue];
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setTestDimensionUnit:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testDimensionUnitRawValueCharacteristic];
  [v5 setUnitValue:v4];
}

- (BOOL)hasTestDimensionUnitRawValue
{
  v2 = [(CAFTypeTestMulti *)self testDimensionUnitRawValueCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFTestComplexItemCharacteristic)testComplexItemCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000010"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000010"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CAFTestComplexItem)testComplexItem
{
  v2 = [(CAFTypeTestMulti *)self testComplexItemCharacteristic];
  v3 = [v2 testComplexItemValue];

  return v3;
}

- (void)setTestComplexItem:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testComplexItemCharacteristic];
  [v5 setTestComplexItemValue:v4];
}

- (BOOL)hasTestComplexItem
{
  v2 = [(CAFTypeTestMulti *)self testComplexItemCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayBoolCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000011"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000011"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSArray)testArrayBool
{
  v2 = [(CAFTypeTestMulti *)self testArrayBoolCharacteristic];
  v3 = [v2 arrayValue];

  return v3;
}

- (void)setTestArrayBool:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testArrayBoolCharacteristic];
  [v5 setArrayValue:v4];
}

- (BOOL)hasTestArrayBool
{
  v2 = [(CAFTypeTestMulti *)self testArrayBoolCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayUInt8Characteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000012"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000012"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSArray)testArrayUInt8
{
  v2 = [(CAFTypeTestMulti *)self testArrayUInt8Characteristic];
  v3 = [v2 arrayValue];

  return v3;
}

- (void)setTestArrayUInt8:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testArrayUInt8Characteristic];
  [v5 setArrayValue:v4];
}

- (BOOL)hasTestArrayUInt8
{
  v2 = [(CAFTypeTestMulti *)self testArrayUInt8Characteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayUInt16Characteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000013"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000013"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSArray)testArrayUInt16
{
  v2 = [(CAFTypeTestMulti *)self testArrayUInt16Characteristic];
  v3 = [v2 arrayValue];

  return v3;
}

- (void)setTestArrayUInt16:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testArrayUInt16Characteristic];
  [v5 setArrayValue:v4];
}

- (BOOL)hasTestArrayUInt16
{
  v2 = [(CAFTypeTestMulti *)self testArrayUInt16Characteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayUInt32Characteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000014"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000014"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSArray)testArrayUInt32
{
  v2 = [(CAFTypeTestMulti *)self testArrayUInt32Characteristic];
  v3 = [v2 arrayValue];

  return v3;
}

- (void)setTestArrayUInt32:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testArrayUInt32Characteristic];
  [v5 setArrayValue:v4];
}

- (BOOL)hasTestArrayUInt32
{
  v2 = [(CAFTypeTestMulti *)self testArrayUInt32Characteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayUInt64Characteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000015"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000015"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSArray)testArrayUInt64
{
  v2 = [(CAFTypeTestMulti *)self testArrayUInt64Characteristic];
  v3 = [v2 arrayValue];

  return v3;
}

- (void)setTestArrayUInt64:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testArrayUInt64Characteristic];
  [v5 setArrayValue:v4];
}

- (BOOL)hasTestArrayUInt64
{
  v2 = [(CAFTypeTestMulti *)self testArrayUInt64Characteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayInt8Characteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000016"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000016"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSArray)testArrayInt8
{
  v2 = [(CAFTypeTestMulti *)self testArrayInt8Characteristic];
  v3 = [v2 arrayValue];

  return v3;
}

- (void)setTestArrayInt8:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testArrayInt8Characteristic];
  [v5 setArrayValue:v4];
}

- (BOOL)hasTestArrayInt8
{
  v2 = [(CAFTypeTestMulti *)self testArrayInt8Characteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayInt16Characteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000017"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000017"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSArray)testArrayInt16
{
  v2 = [(CAFTypeTestMulti *)self testArrayInt16Characteristic];
  v3 = [v2 arrayValue];

  return v3;
}

- (void)setTestArrayInt16:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testArrayInt16Characteristic];
  [v5 setArrayValue:v4];
}

- (BOOL)hasTestArrayInt16
{
  v2 = [(CAFTypeTestMulti *)self testArrayInt16Characteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayInt32Characteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000018"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000018"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSArray)testArrayInt32
{
  v2 = [(CAFTypeTestMulti *)self testArrayInt32Characteristic];
  v3 = [v2 arrayValue];

  return v3;
}

- (void)setTestArrayInt32:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testArrayInt32Characteristic];
  [v5 setArrayValue:v4];
}

- (BOOL)hasTestArrayInt32
{
  v2 = [(CAFTypeTestMulti *)self testArrayInt32Characteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayInt64Characteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000019"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000019"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSArray)testArrayInt64
{
  v2 = [(CAFTypeTestMulti *)self testArrayInt64Characteristic];
  v3 = [v2 arrayValue];

  return v3;
}

- (void)setTestArrayInt64:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testArrayInt64Characteristic];
  [v5 setArrayValue:v4];
}

- (BOOL)hasTestArrayInt64
{
  v2 = [(CAFTypeTestMulti *)self testArrayInt64Characteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayFloatCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF00001A"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00001A"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSArray)testArrayFloat
{
  v2 = [(CAFTypeTestMulti *)self testArrayFloatCharacteristic];
  v3 = [v2 arrayValue];

  return v3;
}

- (void)setTestArrayFloat:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testArrayFloatCharacteristic];
  [v5 setArrayValue:v4];
}

- (BOOL)hasTestArrayFloat
{
  v2 = [(CAFTypeTestMulti *)self testArrayFloatCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayStringCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF00001B"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00001B"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSArray)testArrayString
{
  v2 = [(CAFTypeTestMulti *)self testArrayStringCharacteristic];
  v3 = [v2 arrayValue];

  return v3;
}

- (void)setTestArrayString:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testArrayStringCharacteristic];
  [v5 setArrayValue:v4];
}

- (BOOL)hasTestArrayString
{
  v2 = [(CAFTypeTestMulti *)self testArrayStringCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayDataCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF00001C"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00001C"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSArray)testArrayData
{
  v2 = [(CAFTypeTestMulti *)self testArrayDataCharacteristic];
  v3 = [v2 arrayValue];

  return v3;
}

- (void)setTestArrayData:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testArrayDataCharacteristic];
  [v5 setArrayValue:v4];
}

- (BOOL)hasTestArrayData
{
  v2 = [(CAFTypeTestMulti *)self testArrayDataCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayRawDataCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF00001D"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00001D"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSArray)testArrayRawData
{
  v2 = [(CAFTypeTestMulti *)self testArrayRawDataCharacteristic];
  v3 = [v2 arrayValue];

  return v3;
}

- (BOOL)hasTestArrayRawData
{
  v2 = [(CAFTypeTestMulti *)self testArrayRawDataCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFTestComplexItemsCharacteristic)testComplexItemsCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000020"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000020"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CAFTestComplexItems)testComplexItems
{
  v2 = [(CAFTypeTestMulti *)self testComplexItemsCharacteristic];
  v3 = [v2 testComplexItemsValue];

  return v3;
}

- (void)setTestComplexItems:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testComplexItemsCharacteristic];
  [v5 setTestComplexItemsValue:v4];
}

- (BOOL)hasTestComplexItems
{
  v2 = [(CAFTypeTestMulti *)self testComplexItemsCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFTestComplexItemCharacteristic)testComplexItemValueCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000021"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000021"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CAFTestComplexItem)testComplexItemValue
{
  v2 = [(CAFTypeTestMulti *)self testComplexItemValueCharacteristic];
  v3 = [v2 testComplexItemValue];

  return v3;
}

- (void)setTestComplexItemValue:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testComplexItemValueCharacteristic];
  [v5 setTestComplexItemValue:v4];
}

- (BOOL)hasTestComplexItemValue
{
  v2 = [(CAFTypeTestMulti *)self testComplexItemValueCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFTestComplexItemsCharacteristic)testComplexItemListCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000022"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000022"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CAFTestComplexItems)testComplexItemList
{
  v2 = [(CAFTypeTestMulti *)self testComplexItemListCharacteristic];
  v3 = [v2 testComplexItemsValue];

  return v3;
}

- (void)setTestComplexItemList:(id)a3
{
  v4 = a3;
  v5 = [(CAFTypeTestMulti *)self testComplexItemListCharacteristic];
  [v5 setTestComplexItemsValue:v4];
}

- (BOOL)hasTestComplexItemList
{
  v2 = [(CAFTypeTestMulti *)self testComplexItemListCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForUserVisibleLabel
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000001"];

  return v10;
}

- (BOOL)registeredForTestBool
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000001"];

  return v10;
}

- (BOOL)registeredForTestUInt8
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000002"];

  return v10;
}

- (BOOL)registeredForTestUInt16
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000003"];

  return v10;
}

- (BOOL)registeredForTestUInt32
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000004"];

  return v10;
}

- (BOOL)registeredForTestUInt64
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000005"];

  return v10;
}

- (BOOL)registeredForTestInt8
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000006"];

  return v10;
}

- (BOOL)registeredForTestInt16
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000007"];

  return v10;
}

- (BOOL)registeredForTestInt32
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000008"];

  return v10;
}

- (BOOL)registeredForTestInt64
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000009"];

  return v10;
}

- (BOOL)registeredForTestFloat
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF00000A"];

  return v10;
}

- (BOOL)registeredForTestString
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF00000B"];

  return v10;
}

- (BOOL)registeredForTestData
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF00000C"];

  return v10;
}

- (BOOL)registeredForTestRawData
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF00000D"];

  return v10;
}

- (BOOL)registeredForTestEnum
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF00000E"];

  return v10;
}

- (BOOL)registeredForTestDimensionUnit
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF00000F"];

  return v10;
}

- (BOOL)registeredForTestComplexItem
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000010"];

  return v10;
}

- (BOOL)registeredForTestArrayBool
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000011"];

  return v10;
}

- (BOOL)registeredForTestArrayUInt8
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000012"];

  return v10;
}

- (BOOL)registeredForTestArrayUInt16
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000013"];

  return v10;
}

- (BOOL)registeredForTestArrayUInt32
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000014"];

  return v10;
}

- (BOOL)registeredForTestArrayUInt64
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000015"];

  return v10;
}

- (BOOL)registeredForTestArrayInt8
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000016"];

  return v10;
}

- (BOOL)registeredForTestArrayInt16
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000017"];

  return v10;
}

- (BOOL)registeredForTestArrayInt32
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000018"];

  return v10;
}

- (BOOL)registeredForTestArrayInt64
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000019"];

  return v10;
}

- (BOOL)registeredForTestArrayFloat
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF00001A"];

  return v10;
}

- (BOOL)registeredForTestArrayString
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF00001B"];

  return v10;
}

- (BOOL)registeredForTestArrayData
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF00001C"];

  return v10;
}

- (BOOL)registeredForTestArrayRawData
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF00001D"];

  return v10;
}

- (BOOL)registeredForTestComplexItems
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000020"];

  return v10;
}

- (BOOL)registeredForTestComplexItemValue
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000021"];

  return v10;
}

- (BOOL)registeredForTestComplexItemList
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000022"];

  return v10;
}

@end