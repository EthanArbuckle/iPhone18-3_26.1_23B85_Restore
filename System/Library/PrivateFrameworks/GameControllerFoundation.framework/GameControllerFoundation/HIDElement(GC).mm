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
  v1 = IOHIDElementGetProperty(self, @"UsageType");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v1 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (uint64_t)usageTypeIndex
{
  v1 = IOHIDElementGetProperty(self, @"UsageTypeIndex");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v1 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (id)calibrationMin
{
  Property = IOHIDElementGetProperty(self, @"CalibrationMin");
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
  Property = IOHIDElementGetProperty(self, @"CalibrationMax");
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
    lowercaseString = [v7 lowercaseString];

    v9 = [v4 stringByReplacingCharactersInRange:0 withString:{1, lowercaseString}];
    v10 = [self valueForKey:v9];
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
    lowercaseString = [v7 lowercaseString];

    v9 = [v4 stringByReplacingCharactersInRange:0 withString:{1, lowercaseString}];

    v4 = v9;
  }

  v12.receiver = self;
  v12.super_class = &off_1F4E3E920;
  v10 = objc_msgSendSuper2(&v12, sel_valueForKey_, v4);

  return v10;
}

- (id)debugDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = &off_1F4E3E920;
  v3 = objc_msgSendSuper2(&v9, sel_debugDescription);
  elementCookie = [self elementCookie];
  type = [self type];
  name = [self name];
  v7 = [v2 stringWithFormat:@"%@ {\n\t elementCookie = %u\n\t type = %zi\n\t name = %@\n\t usageType = %zd\n\t usageTypeIndex = %zd\n\t usage = %zd\n\t usagePage = %zd\n}", v3, elementCookie, type, name, objc_msgSend(self, "usageType"), objc_msgSend(self, "usageTypeIndex"), objc_msgSend(self, "usage"), objc_msgSend(self, "usagePage")];

  return v7;
}

@end