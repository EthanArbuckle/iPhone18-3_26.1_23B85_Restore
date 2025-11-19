@interface HIDElement(GC)
- (id)calibrationMax;
- (id)calibrationMin;
- (id)debugDescription;
- (id)valueForElementKey:()GC;
- (id)valueForKey:()GC;
- (uint64_t)usageType;
- (uint64_t)usageTypeIndex;
@end

@implementation HIDElement(GC)

- (uint64_t)usageType
{
  v1 = IOHIDElementGetProperty(a1, @"UsageType");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 integerValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)usageTypeIndex
{
  v1 = IOHIDElementGetProperty(a1, @"UsageTypeIndex");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 integerValue];
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

- (id)calibrationMin
{
  Property = IOHIDElementGetProperty(a1, @"CalibrationMin");
  if (Property)
  {
    v2 = Property;
    v3 = CFGetTypeID(Property);
    if (v3 == CFNumberGetTypeID())
    {
      Property = v2;
    }

    else
    {
      Property = 0;
    }
  }

  return Property;
}

- (id)calibrationMax
{
  Property = IOHIDElementGetProperty(a1, @"CalibrationMax");
  if (Property)
  {
    v2 = Property;
    v3 = CFGetTypeID(Property);
    if (v3 == CFNumberGetTypeID())
    {
      Property = v2;
    }

    else
    {
      Property = 0;
    }
  }

  return Property;
}

- (id)valueForElementKey:()GC
{
  v4 = a3;
  v5 = GCHIDElementAttributeKeys();
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [v4 substringToIndex:1];
    v8 = [v7 lowercaseString];

    v9 = [v4 stringByReplacingCharactersInRange:0 withString:{1, v8}];
    v10 = [a1 valueForKey:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)valueForKey:()GC
{
  v4 = a3;
  v5 = GCHIDElementAttributeKeys();
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [v4 substringToIndex:1];
    v8 = [v7 lowercaseString];

    v9 = [v4 stringByReplacingCharactersInRange:0 withString:{1, v8}];

    v4 = v9;
  }

  v12.receiver = a1;
  v12.super_class = &off_1F4E3E920;
  v10 = objc_msgSendSuper2(&v12, sel_valueForKey_, v4);

  return v10;
}

- (id)debugDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v9.receiver = a1;
  v9.super_class = &off_1F4E3E920;
  v3 = objc_msgSendSuper2(&v9, sel_debugDescription);
  v4 = [a1 elementCookie];
  v5 = [a1 type];
  v6 = [a1 name];
  v7 = [v2 stringWithFormat:@"%@ {\n\t elementCookie = %u\n\t type = %zi\n\t name = %@\n\t usageType = %zd\n\t usageTypeIndex = %zd\n\t usage = %zd\n\t usagePage = %zd\n}", v3, v4, v5, v6, objc_msgSend(a1, "usageType"), objc_msgSend(a1, "usageTypeIndex"), objc_msgSend(a1, "usage"), objc_msgSend(a1, "usagePage")];

  return v7;
}

@end