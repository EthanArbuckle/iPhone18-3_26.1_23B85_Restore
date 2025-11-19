@interface CAFProtocolPerfTest
+ (void)load;
- (BOOL)registeredForTestInt16;
- (BOOL)registeredForTestInt32;
- (BOOL)registeredForTestString;
- (BOOL)registeredForTestString2;
- (BOOL)registeredForTestUInt16;
- (BOOL)registeredForTestUInt32;
- (CAFInt16Characteristic)testInt16Characteristic;
- (CAFInt16Range)testInt16Range;
- (CAFInt32Characteristic)testInt32Characteristic;
- (CAFInt32Range)testInt32Range;
- (CAFStringCharacteristic)testString2Characteristic;
- (CAFStringCharacteristic)testStringCharacteristic;
- (CAFUInt16Characteristic)testUInt16Characteristic;
- (CAFUInt16Range)testUInt16Range;
- (CAFUInt32Characteristic)testUInt32Characteristic;
- (CAFUInt32Range)testUInt32Range;
- (NSString)testString;
- (NSString)testString2;
- (id)name;
- (int)testInt32;
- (signed)testInt16;
- (unsigned)testUInt16;
- (unsigned)testUInt32;
- (void)registerObserver:(id)a3;
- (void)setTestString2:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFProtocolPerfTest

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFProtocolPerfTest;
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
  v6.super_class = CAFProtocolPerfTest;
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
  v6.super_class = CAFProtocolPerfTest;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  v3 = [(CAFService *)self typeName];
  v4 = [(CAFProtocolPerfTest *)self testStringCharacteristic];
  v5 = [v4 formattedValue];

  if ([v5 length])
  {
    v6 = [v3 stringByAppendingFormat:@"-%@", v5];

    v3 = v6;
  }

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
  v2 = [(CAFProtocolPerfTest *)self testInt32Characteristic];
  v3 = [v2 int32Value];

  return v3;
}

- (CAFInt32Range)testInt32Range
{
  v2 = [(CAFProtocolPerfTest *)self testInt32Characteristic];
  v3 = [v2 range];

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
  v2 = [(CAFProtocolPerfTest *)self testInt16Characteristic];
  v3 = [v2 int16Value];

  return v3;
}

- (CAFInt16Range)testInt16Range
{
  v2 = [(CAFProtocolPerfTest *)self testInt16Characteristic];
  v3 = [v2 range];

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
  v2 = [(CAFProtocolPerfTest *)self testUInt32Characteristic];
  v3 = [v2 uint32Value];

  return v3;
}

- (CAFUInt32Range)testUInt32Range
{
  v2 = [(CAFProtocolPerfTest *)self testUInt32Characteristic];
  v3 = [v2 range];

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
  v2 = [(CAFProtocolPerfTest *)self testUInt16Characteristic];
  v3 = [v2 uint16Value];

  return v3;
}

- (CAFUInt16Range)testUInt16Range
{
  v2 = [(CAFProtocolPerfTest *)self testUInt16Characteristic];
  v3 = [v2 range];

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
  v2 = [(CAFProtocolPerfTest *)self testStringCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (CAFStringCharacteristic)testString2Characteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x00000000FF000023"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000023"];
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

- (NSString)testString2
{
  v2 = [(CAFProtocolPerfTest *)self testString2Characteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (void)setTestString2:(id)a3
{
  v4 = a3;
  v5 = [(CAFProtocolPerfTest *)self testString2Characteristic];
  [v5 setStringValue:v4];
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

- (BOOL)registeredForTestString2
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x00000000FF000023"];

  return v10;
}

@end