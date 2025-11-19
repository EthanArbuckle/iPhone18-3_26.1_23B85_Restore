@interface IOKitUtilities
+ (int)arrayForRegistryEntry:(unsigned int)a3 andKey:(id)a4 outValue:(id *)a5;
+ (int)isRegistryEntry:(unsigned int)a3 descendentOfRegistryEntry:(unsigned int)a4 outValue:(BOOL *)a5;
+ (int)uint32ForRegistryEntry:(unsigned int)a3 andKey:(id)a4 outValue:(unsigned int *)a5;
+ (int)uint64ForRegistryEntry:(unsigned int)a3 andKey:(id)a4 outValue:(unint64_t *)a5;
+ (int)uint8ForRegistryEntry:(unsigned int)a3 andKey:(id)a4 outValue:(char *)a5;
@end

@implementation IOKitUtilities

+ (int)uint8ForRegistryEntry:(unsigned int)a3 andKey:(id)a4 outValue:(char *)a5
{
  CFProperty = IORegistryEntryCreateCFProperty(a3, a4, kCFAllocatorDefault, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
    *a5 = [CFProperty unsignedCharValue];
  }

  else
  {
    v7 = -536870160;
  }

  return v7;
}

+ (int)uint32ForRegistryEntry:(unsigned int)a3 andKey:(id)a4 outValue:(unsigned int *)a5
{
  CFProperty = IORegistryEntryCreateCFProperty(a3, a4, kCFAllocatorDefault, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
    *a5 = [CFProperty unsignedLongValue];
  }

  else
  {
    v7 = -536870160;
  }

  return v7;
}

+ (int)uint64ForRegistryEntry:(unsigned int)a3 andKey:(id)a4 outValue:(unint64_t *)a5
{
  CFProperty = IORegistryEntryCreateCFProperty(a3, a4, kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v7 = 0;
  }

  else
  {
    v7 = -536870212;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = -536870160;
  }

  if (!v8)
  {
    *a5 = [CFProperty unsignedLongLongValue];
  }

  return v8;
}

+ (int)arrayForRegistryEntry:(unsigned int)a3 andKey:(id)a4 outValue:(id *)a5
{
  CFProperty = IORegistryEntryCreateCFProperty(a3, a4, kCFAllocatorDefault, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = CFProperty;
    v8 = 0;
    *a5 = CFProperty;
  }

  else
  {
    v8 = -536870160;
  }

  return v8;
}

+ (int)isRegistryEntry:(unsigned int)a3 descendentOfRegistryEntry:(unsigned int)a4 outValue:(BOOL *)a5
{
  result = -536870206;
  if (a3 && a4 && a5)
  {
    v9 = a3;
    do
    {
      v10 = v9;
      if (v9 == a4)
      {
        break;
      }

      parent = 0;
      result = IORegistryEntryGetParentEntry(v9, "IOService", &parent);
      if (result)
      {
        return result;
      }

      if (v10 != a3)
      {
        IOObjectRelease(v10);
      }

      v9 = parent;
    }

    while (parent);
    result = 0;
    *a5 = v10 == a4;
  }

  return result;
}

@end