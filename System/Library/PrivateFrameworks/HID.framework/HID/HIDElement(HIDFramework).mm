@interface HIDElement(HIDFramework)
- (CFIndex)integerValue;
- (double)scaleValue:()HIDFramework;
- (id)dataValue;
- (uint64_t)timestamp;
- (void)setDataValue:()HIDFramework;
- (void)setIntegerValue:()HIDFramework;
@end

@implementation HIDElement(HIDFramework)

- (double)scaleValue:()HIDFramework
{
  if (![self valueRef])
  {
    return 0.0;
  }

  valueRef = [self valueRef];

  return IOHIDValueGetScaledValue(valueRef, a3);
}

- (CFIndex)integerValue
{
  result = [self valueRef];
  if (result)
  {
    valueRef = [self valueRef];

    return IOHIDValueGetIntegerValue(valueRef);
  }

  return result;
}

- (void)setIntegerValue:()HIDFramework
{
  v4 = IOHIDValueCreateWithIntegerValue(*MEMORY[0x277CBECE8], element, 0, value);
  if (v4)
  {
    v5 = v4;
    [(__IOHIDElement *)element setValueRef:v4];

    CFRelease(v5);
  }
}

- (id)dataValue
{
  valueRef = [self valueRef];
  if (valueRef)
  {
    v3 = MEMORY[0x277CBEA90];
    BytePtr = IOHIDValueGetBytePtr([self valueRef]);
    valueRef = [v3 dataWithBytes:BytePtr length:{IOHIDValueGetLength(objc_msgSend(self, "valueRef"))}];
  }

  return valueRef;
}

- (void)setDataValue:()HIDFramework
{
  v5 = *MEMORY[0x277CBECE8];
  v6 = a3;
  v7 = a3;
  bytes = [v7 bytes];
  v9 = [v7 length];

  v10 = IOHIDValueCreateWithBytes(v5, self, 0, bytes, v9);
  if (v10)
  {
    v11 = v10;
    [(__IOHIDElement *)self setValueRef:v10];

    CFRelease(v11);
  }
}

- (uint64_t)timestamp
{
  result = [self valueRef];
  if (result)
  {
    valueRef = [self valueRef];

    return IOHIDValueGetTimeStamp(valueRef);
  }

  return result;
}

@end