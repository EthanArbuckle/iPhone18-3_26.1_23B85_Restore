@interface IOKitUtilities
+ (int)arrayForRegistryEntry:(unsigned int)entry andKey:(id)key outValue:(id *)value;
+ (int)isRegistryEntry:(unsigned int)entry descendentOfRegistryEntry:(unsigned int)registryEntry outValue:(BOOL *)value;
+ (int)uint32ForRegistryEntry:(unsigned int)entry andKey:(id)key outValue:(unsigned int *)value;
+ (int)uint64ForRegistryEntry:(unsigned int)entry andKey:(id)key outValue:(unint64_t *)value;
+ (int)uint8ForRegistryEntry:(unsigned int)entry andKey:(id)key outValue:(char *)value;
@end

@implementation IOKitUtilities

+ (int)uint8ForRegistryEntry:(unsigned int)entry andKey:(id)key outValue:(char *)value
{
  CFProperty = IORegistryEntryCreateCFProperty(entry, key, kCFAllocatorDefault, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
    *value = [CFProperty unsignedCharValue];
  }

  else
  {
    v7 = -536870160;
  }

  return v7;
}

+ (int)uint32ForRegistryEntry:(unsigned int)entry andKey:(id)key outValue:(unsigned int *)value
{
  CFProperty = IORegistryEntryCreateCFProperty(entry, key, kCFAllocatorDefault, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
    *value = [CFProperty unsignedLongValue];
  }

  else
  {
    v7 = -536870160;
  }

  return v7;
}

+ (int)uint64ForRegistryEntry:(unsigned int)entry andKey:(id)key outValue:(unint64_t *)value
{
  CFProperty = IORegistryEntryCreateCFProperty(entry, key, kCFAllocatorDefault, 0);
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
    *value = [CFProperty unsignedLongLongValue];
  }

  return v8;
}

+ (int)arrayForRegistryEntry:(unsigned int)entry andKey:(id)key outValue:(id *)value
{
  CFProperty = IORegistryEntryCreateCFProperty(entry, key, kCFAllocatorDefault, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = CFProperty;
    v8 = 0;
    *value = CFProperty;
  }

  else
  {
    v8 = -536870160;
  }

  return v8;
}

+ (int)isRegistryEntry:(unsigned int)entry descendentOfRegistryEntry:(unsigned int)registryEntry outValue:(BOOL *)value
{
  result = -536870206;
  if (entry && registryEntry && value)
  {
    entryCopy = entry;
    do
    {
      v10 = entryCopy;
      if (entryCopy == registryEntry)
      {
        break;
      }

      parent = 0;
      result = IORegistryEntryGetParentEntry(entryCopy, "IOService", &parent);
      if (result)
      {
        return result;
      }

      if (v10 != entry)
      {
        IOObjectRelease(v10);
      }

      entryCopy = parent;
    }

    while (parent);
    result = 0;
    *value = v10 == registryEntry;
  }

  return result;
}

@end