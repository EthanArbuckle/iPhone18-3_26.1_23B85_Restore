@interface CAFWriteRequest
+ (id)requestWithCharacteristic:(id)characteristic value:(id)value;
- (CAFWriteRequest)initWithCharacteristic:(id)characteristic value:(id)value;
@end

@implementation CAFWriteRequest

+ (id)requestWithCharacteristic:(id)characteristic value:(id)value
{
  characteristicCopy = characteristic;
  valueCopy = value;
  if ([characteristicCopy writable])
  {
    v8 = [[self alloc] initWithCharacteristic:characteristicCopy value:valueCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFWriteRequest)initWithCharacteristic:(id)characteristic value:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = CAFWriteRequest;
  v8 = [(CAFRequest *)&v11 initWithCharacteristic:characteristic];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, value);
  }

  return v9;
}

@end