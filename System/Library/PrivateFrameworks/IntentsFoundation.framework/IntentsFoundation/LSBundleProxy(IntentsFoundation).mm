@interface LSBundleProxy(IntentsFoundation)
- (id)if_containingAppProxy;
- (uint64_t)if_isAppExtension;
- (uint64_t)if_isSystem;
- (uint64_t)if_isWatchKitAppExtension;
@end

@implementation LSBundleProxy(IntentsFoundation)

- (uint64_t)if_isSystem
{
  v2 = [a1 bundleType];
  if ([v2 isEqualToString:*MEMORY[0x277CC1E18]])
  {
    v3 = a1;
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v3;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    v8 = v4;

    v9 = [v8 containingBundle];

    LOBYTE(v8) = [v9 if_isSystem];
    if (v8)
    {
      goto LABEL_12;
    }

    v10 = [v3 if_containingAppProxy];
    if (v10)
    {

LABEL_22:
      v15 = [v3 if_containingAppProxy];
      if (v15)
      {
        v5 = v15;
        v7 = 0;
LABEL_26:

        goto LABEL_27;
      }

      v6 = [v3 bundleURL];
      v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/AppleInternal/Library/" isDirectory:1];
      v7 = [v6 if_isContainedByDirectoryAtURL:v16];

      v5 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v11 = v3;
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [v13 isOnSystemPartition];
    if ((v14 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (([v2 isEqualToString:*MEMORY[0x277CC1E08]] & 1) == 0 && (objc_msgSend(v2, "isEqualToString:", *MEMORY[0x277CC1E30]) & 1) == 0)
  {
    if (![v2 isEqualToString:*MEMORY[0x277CC1E00]])
    {
      v7 = 0;
      goto LABEL_27;
    }

    v5 = [a1 bundleURL];
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/" isDirectory:1];
    v7 = [v5 if_isContainedByDirectoryAtURL:v6];
    goto LABEL_25;
  }

LABEL_12:
  v7 = 1;
LABEL_27:

  return v7;
}

- (uint64_t)if_isWatchKitAppExtension
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 objectForInfoDictionaryKey:*MEMORY[0x277D3D380] ofClass:objc_opt_class() inScope:1];
    v3 = [v2 isEqualToString:@"com.apple.watchkit"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)if_isAppExtension
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)if_containingAppProxy
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [a1 containingBundle];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }
  }

  v2 = 0;
LABEL_7:

  return v2;
}

@end