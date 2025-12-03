@interface LSBundleProxy(IntentsFoundation)
- (id)if_containingAppProxy;
- (uint64_t)if_isAppExtension;
- (uint64_t)if_isSystem;
- (uint64_t)if_isWatchKitAppExtension;
@end

@implementation LSBundleProxy(IntentsFoundation)

- (uint64_t)if_isSystem
{
  bundleType = [self bundleType];
  if ([bundleType isEqualToString:*MEMORY[0x277CC1E18]])
  {
    selfCopy = self;
    if (selfCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = selfCopy;
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

    containingBundle = [v8 containingBundle];

    LOBYTE(v8) = [containingBundle if_isSystem];
    if (v8)
    {
      goto LABEL_12;
    }

    if_containingAppProxy = [selfCopy if_containingAppProxy];
    if (if_containingAppProxy)
    {

LABEL_22:
      if_containingAppProxy2 = [selfCopy if_containingAppProxy];
      if (if_containingAppProxy2)
      {
        bundleURL2 = if_containingAppProxy2;
        v7 = 0;
LABEL_26:

        goto LABEL_27;
      }

      bundleURL = [selfCopy bundleURL];
      v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/AppleInternal/Library/" isDirectory:1];
      v7 = [bundleURL if_isContainedByDirectoryAtURL:v16];

      bundleURL2 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v11 = selfCopy;
    if (selfCopy)
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

    isOnSystemPartition = [v13 isOnSystemPartition];
    if ((isOnSystemPartition & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (([bundleType isEqualToString:*MEMORY[0x277CC1E08]] & 1) == 0 && (objc_msgSend(bundleType, "isEqualToString:", *MEMORY[0x277CC1E30]) & 1) == 0)
  {
    if (![bundleType isEqualToString:*MEMORY[0x277CC1E00]])
    {
      v7 = 0;
      goto LABEL_27;
    }

    bundleURL2 = [self bundleURL];
    bundleURL = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/" isDirectory:1];
    v7 = [bundleURL2 if_isContainedByDirectoryAtURL:bundleURL];
    goto LABEL_25;
  }

LABEL_12:
  v7 = 1;
LABEL_27:

  return v7;
}

- (uint64_t)if_isWatchKitAppExtension
{
  selfCopy = self;
  if (selfCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [selfCopy objectForInfoDictionaryKey:*MEMORY[0x277D3D380] ofClass:objc_opt_class() inScope:1];
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
  selfCopy = self;
  if (selfCopy)
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
    selfCopy = self;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = [self containingBundle];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }
  }

  selfCopy = 0;
LABEL_7:

  return selfCopy;
}

@end