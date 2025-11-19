@interface LACDeviceTreeReader
+ (id)getDataFromPath:(const char *)a3 propertyName:(__CFString *)a4;
@end

@implementation LACDeviceTreeReader

+ (id)getDataFromPath:(const char *)a3 propertyName:(__CFString *)a4
{
  v5 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], a3);
  if (v5)
  {
    v6 = v5;
    CFProperty = IORegistryEntryCreateCFProperty(v5, a4, *MEMORY[0x1E695E480], 0);
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