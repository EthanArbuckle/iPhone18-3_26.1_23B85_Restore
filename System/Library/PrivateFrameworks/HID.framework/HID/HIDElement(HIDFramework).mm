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
  if (![a1 valueRef])
  {
    return 0.0;
  }

  v5 = [a1 valueRef];

  return IOHIDValueGetScaledValue(v5, a3);
}

- (CFIndex)integerValue
{
  result = [a1 valueRef];
  if (result)
  {
    v3 = [a1 valueRef];

    return IOHIDValueGetIntegerValue(v3);
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
  v2 = [a1 valueRef];
  if (v2)
  {
    v3 = MEMORY[0x277CBEA90];
    BytePtr = IOHIDValueGetBytePtr([a1 valueRef]);
    v2 = [v3 dataWithBytes:BytePtr length:{IOHIDValueGetLength(objc_msgSend(a1, "valueRef"))}];
  }

  return v2;
}

- (void)setDataValue:()HIDFramework
{
  v5 = *MEMORY[0x277CBECE8];
  v6 = a3;
  v7 = a3;
  v8 = [v7 bytes];
  v9 = [v7 length];

  v10 = IOHIDValueCreateWithBytes(v5, a1, 0, v8, v9);
  if (v10)
  {
    v11 = v10;
    [(__IOHIDElement *)a1 setValueRef:v10];

    CFRelease(v11);
  }
}

- (uint64_t)timestamp
{
  result = [a1 valueRef];
  if (result)
  {
    v3 = [a1 valueRef];

    return IOHIDValueGetTimeStamp(v3);
  }

  return result;
}

@end