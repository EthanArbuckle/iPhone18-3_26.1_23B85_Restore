objc_class *getDemangledNameForClass(objc_class *Name)
{
  v9 = *MEMORY[0x277D85DE8];
  if (Name)
  {
    Name = class_getName(Name);
    if (Name)
    {
      v1 = Name;
      if (swift_demangle_hasSwiftCallingConvention())
      {
        SimplifiedDemangledName = swift_demangle_getSimplifiedDemangledName();
        if ((SimplifiedDemangledName - 1) < 0x3FF)
        {
          __s[SimplifiedDemangledName] = 0;
          v3 = strrchr(__s, 60);
          if (v3 && (v4 = v3 + 1, (v5 = strchr(v3 + 1, 62)) != 0))
          {
            Name = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v4 length:v5 - v4 encoding:4];
            if (Name)
            {
              goto LABEL_11;
            }
          }

          else
          {
            Name = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:__s];
            if (Name)
            {
              goto LABEL_11;
            }
          }
        }
      }

      Name = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v1 length:strlen(v1) encoding:4 freeWhenDone:0];
    }
  }

LABEL_11:
  v6 = *MEMORY[0x277D85DE8];

  return Name;
}

id CPAnalyticsLog()
{
  if (CPAnalyticsLog_onceToken != -1)
  {
    dispatch_once(&CPAnalyticsLog_onceToken, &__block_literal_global_288);
  }

  v1 = CPAnalyticsLog_log;

  return v1;
}

uint64_t __CPAnalyticsLog_block_invoke()
{
  CPAnalyticsLog_log = os_log_create("com.apple.photos.CPAnalytics", "Generic");

  return MEMORY[0x2821F96F8]();
}