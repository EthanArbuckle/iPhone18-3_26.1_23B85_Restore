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
  v1 = a1;
  v2 = [(__CFString *)a1 type];
  if ((v2 - 1) < 3)
  {
LABEL_4:
    v1 = @"PrimarySyncCircle";
    goto LABEL_5;
  }

  if (v2 != 4)
  {
    if (v2 != 100)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [(__CFString *)v1 type];
  v6 = [(__CFString *)v1 identifier];
  v7 = [v6 UUIDString];
  v1 = [v4 stringWithFormat:@"%ld$%@", v5, v7];

LABEL_5:

  return v1;
}

@end