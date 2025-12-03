@interface HKProfileIdentifier(CloudSync)
+ (id)hd_profileIdentifierWithSyncCircleIdentifier:()CloudSync;
- (__CFString)hd_syncCircleIdentifier;
@end

@implementation HKProfileIdentifier(CloudSync)

+ (id)hd_profileIdentifierWithSyncCircleIdentifier:()CloudSync
{
  v3 = [a3 componentsSeparatedByString:@"$"];
  if ([v3 count] == 2)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    v5 = [v3 objectAtIndexedSubscript:1];
    v6 = [v4 initWithUUIDString:v5];

    if (v6 && (([v3 objectAtIndexedSubscript:0], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "integerValue"), v7, (v8 - 1) < 4) || v8 == 100))
    {
      v9 = [MEMORY[0x277CCD7C8] _profileWithUUID:v6 type:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (__CFString)hd_syncCircleIdentifier
{
  selfCopy = self;
  type = [(__CFString *)self type];
  if ((type - 1) < 3)
  {
LABEL_4:
    selfCopy = @"PrimarySyncCircle";
    goto LABEL_5;
  }

  if (type != 4)
  {
    if (type != 100)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4 = MEMORY[0x277CCACA8];
  type2 = [(__CFString *)selfCopy type];
  identifier = [(__CFString *)selfCopy identifier];
  uUIDString = [identifier UUIDString];
  selfCopy = [v4 stringWithFormat:@"%ld$%@", type2, uUIDString];

LABEL_5:

  return selfCopy;
}

@end