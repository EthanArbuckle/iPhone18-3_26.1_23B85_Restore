@interface IFPlatformInfo
+ (id)sharedInstance;
- (id)iconPlatformStringFromPlatform:(unint64_t)a3;
- (unint64_t)platformFromPlatformStrings:(id)a3;
- (unint64_t)platformFromUIDeviceFamily:(id)a3;
@end

@implementation IFPlatformInfo

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[IFPlatformInfo sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_2;

  return v3;
}

uint64_t __32__IFPlatformInfo_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(IFPlatformInfo);
  v1 = sharedInstance_sharedInstance_2;
  sharedInstance_sharedInstance_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (unint64_t)platformFromUIDeviceFamily:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if ([v10 intValue] == 6)
        {
          v11 = 1;
        }

        else if ([v10 intValue] == 1 || objc_msgSend(v10, "intValue") == 2)
        {
          v11 = 4;
        }

        else if ([v10 intValue] == 4)
        {
          v11 = 8;
        }

        else if ([v10 intValue] == 7)
        {
          v11 = 16;
        }

        else
        {
          v11 = 32 * ([v10 intValue] == 3);
        }

        if (v11 == [(IFPlatformInfo *)self nativePlatform])
        {
          v7 = v11;
          goto LABEL_25;
        }

        if (!v7)
        {
          v7 = v11;
        }

        ++v9;
      }

      while (v6 != v9);
      v12 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v6 = v12;
    }

    while (v12);
  }

  else
  {
    v7 = 0;
  }

LABEL_25:

  return v7;
}

- (unint64_t)platformFromPlatformStrings:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 compare:{@"MacOSX", v13}])
        {
          if ([v10 compare:@"iPhoneOS"])
          {
            if ([v10 compare:@"WatchOS"])
            {
              if ([v10 compare:@"XROS"])
              {
                v11 = 32 * ([v10 compare:@"AppleTVOS"] == 0);
              }

              else
              {
                v11 = 16;
              }
            }

            else
            {
              v11 = 8;
            }
          }

          else
          {
            v11 = 4;
          }
        }

        else
        {
          v11 = 1;
        }

        if (v11 == [(IFPlatformInfo *)self nativePlatform])
        {
          v7 = v11;
          goto LABEL_23;
        }

        if (!v7)
        {
          v7 = v11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_23:

  return v7;
}

- (id)iconPlatformStringFromPlatform:(unint64_t)a3
{
  if (a3 <= 7)
  {
    if (a3 - 1 < 2)
    {
      return @"MacOSX";
    }

    if (a3 == 4)
    {
      return @"iPhoneOS";
    }

    return @"Unknown";
  }

  if (a3 == 8)
  {
    return @"WatchOS";
  }

  if (a3 != 16)
  {
    if (a3 == 32)
    {
      return @"AppleTVOS";
    }

    return @"Unknown";
  }

  return @"XROS";
}

@end