@interface LACDeviceTreeReader
+ (id)getDataFromPath:(const char *)path propertyName:(__CFString *)name;
@end

@implementation LACDeviceTreeReader

+ (id)getDataFromPath:(const char *)path propertyName:(__CFString *)name
{
  v5 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], path);
  if (v5)
  {
    v6 = v5;
    CFProperty = IORegistryEntryCreateCFProperty(v5, name, *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v8 = CFProperty;
      v9 = CFGetTypeID(CFProperty);
      if (v9 == CFDataGetTypeID())
      {
        goto LABEL_7;
      }

      CFRelease(v8);
    }

    IOObjectRelease(v6);
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end