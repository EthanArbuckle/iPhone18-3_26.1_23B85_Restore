@interface MSDPlatform
+ (BOOL)iOSHub;
+ (id)sharedInstance;
- (BOOL)isValidProductList:(id)a3;
- (MSDPlatform)init;
- (void)raiseInvalidProductListExceptionWithReason:(id)a3;
- (void)setPlatformWithManifestProductList:(id)a3;
@end

@implementation MSDPlatform

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[MSDPlatform sharedInstance];
  }

  v3 = sharedInstance_shared;

  return v3;
}

uint64_t __29__MSDPlatform_sharedInstance__block_invoke()
{
  sharedInstance_shared = objc_alloc_init(MSDPlatform);

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)iOSHub
{
  if (iOSHub_onceToken != -1)
  {
    +[MSDPlatform iOSHub];
  }

  return iOSHub_isHub;
}

Class __21__MSDPlatform_iOSHub__block_invoke()
{
  result = NSClassFromString(&cfstr_Msdhubbundlema.isa);
  iOSHub_isHub = result != 0;
  return result;
}

- (MSDPlatform)init
{
  v17 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = MSDPlatform;
  v2 = [(MSDPlatform *)&v10 init];
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = MGCopyAnswer();
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"Watch OS"])
    {
      [(MSDPlatform *)v2 setWatchOS:1];
      v5 = @"watchOS";
    }

    else if ([v4 isEqualToString:@"Apple TVOS"])
    {
      [(MSDPlatform *)v2 setTvOS:1];
      v5 = @"tvOS";
    }

    else if ([v4 isEqualToString:@"iPhone OS"])
    {
      [(MSDPlatform *)v2 setIOS:1];
      v5 = @"iOS";
    }

    else if (([v4 isEqualToString:@"macOS"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"Mac OS X"))
    {
      [(MSDPlatform *)v2 setMacOS:1];
      v5 = @"macOS";
    }

    else
    {
      if (![v4 isEqualToString:@"xrOS"])
      {
        goto LABEL_13;
      }

      [(MSDPlatform *)v2 setIOS:1];
      [(MSDPlatform *)v2 setROS:1];
      v5 = @"xrOS";
    }

    [(MSDPlatform *)v2 setPlatformType:v5];
  }

LABEL_13:
  v6 = defaultLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MSDPlatform *)v2 platformType];
    *buf = 136315650;
    v12 = "[MSDPlatform init]";
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = 0;
    _os_log_impl(&dword_259B7D000, v6, OS_LOG_TYPE_DEFAULT, "%s: PlatformType='%{public}@' DeviceClass='%{public}@'", buf, 0x20u);
  }

LABEL_16:
  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)setPlatformWithManifestProductList:(id)a3
{
  v9 = a3;
  if ([(MSDPlatform *)self tvOS]|| [(MSDPlatform *)self watchOS])
  {
    goto LABEL_15;
  }

  [(MSDPlatform *)self setWatchOS:0];
  [(MSDPlatform *)self setTvOS:0];
  [(MSDPlatform *)self setIOS:0];
  [(MSDPlatform *)self setMacOS:0];
  [(MSDPlatform *)self setROS:0];
  if (![v9 count])
  {
    [(MSDPlatform *)self raiseInvalidProductListExceptionWithReason:@"Empty product list."];
  }

  v4 = [v9 objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [(MSDPlatform *)self raiseInvalidProductListExceptionWithReason:@"Product list entry must be of type String."];
  }

  v6 = [v9 objectAtIndexedSubscript:0];
  v7 = [v6 lowercaseString];

  if (([v7 containsString:@"iphone"] & 1) != 0 || (objc_msgSend(v7, "containsString:", @"ipad") & 1) != 0 || objc_msgSend(v7, "containsString:", @"ipod"))
  {
    [(MSDPlatform *)self setIOS:1];
    v8 = @"iOS";
  }

  else if ([v7 containsString:@"watch"])
  {
    [(MSDPlatform *)self setWatchOS:1];
    v8 = @"watchOS";
  }

  else if ([v7 containsString:@"appletv"])
  {
    [(MSDPlatform *)self setTvOS:1];
    v8 = @"tvOS";
  }

  else if (([v7 containsString:@"mac"] & 1) != 0 || objc_msgSend(v7, "containsString:", @"adp"))
  {
    [(MSDPlatform *)self setMacOS:1];
    v8 = @"macOS";
  }

  else
  {
    if (![v7 containsString:@"realitydevice"])
    {
      goto LABEL_12;
    }

    [(MSDPlatform *)self setROS:1];
    v8 = @"xrOS";
  }

  [(MSDPlatform *)self setPlatformType:v8];
LABEL_12:
  if (![(MSDPlatform *)self isValidProductList:v9])
  {
    [(MSDPlatform *)self raiseInvalidProductListExceptionWithReason:@"Product list should contain only one product category."];
  }

LABEL_15:
}

- (BOOL)isValidProductList:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_24;
        }

        v10 = [v9 lowercaseString];
        if (-[MSDPlatform watchOS](self, "watchOS") && ![v10 containsString:@"watch"] || -[MSDPlatform tvOS](self, "tvOS") && !objc_msgSend(v10, "containsString:", @"appletv") || -[MSDPlatform iOS](self, "iOS") && (objc_msgSend(v10, "containsString:", @"iphone") & 1) == 0 && (objc_msgSend(v10, "containsString:", @"ipad") & 1) == 0 && !objc_msgSend(v10, "containsString:", @"ipod") || -[MSDPlatform macOS](self, "macOS") && (objc_msgSend(v10, "containsString:", @"mac") & 1) == 0 && !objc_msgSend(v10, "containsString:", @"adp") || -[MSDPlatform rOS](self, "rOS") && !objc_msgSend(v10, "containsString:", @"realitydevice"))
        {

LABEL_24:
          v11 = 0;
          goto LABEL_26;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v11 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 1;
  }

LABEL_26:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)raiseInvalidProductListExceptionWithReason:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:@"InvalidManifestProductList" reason:a3 userInfo:0];
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[MSDPlatform raiseInvalidProductListExceptionWithReason:]";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_259B7D000, v4, OS_LOG_TYPE_DEFAULT, "%s - Exception:  %{public}@", &v6, 0x16u);
  }

  [v3 raise];
  v5 = *MEMORY[0x277D85DE8];
}

@end