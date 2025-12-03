@interface NSString(TSUPersonNameComponents)
+ (id)tsu_localizedDisplayNameWithPersonNameComponents:()TSUPersonNameComponents;
@end

@implementation NSString(TSUPersonNameComponents)

+ (id)tsu_localizedDisplayNameWithPersonNameComponents:()TSUPersonNameComponents
{
  v3 = a3;
  if (!v3)
  {
    v9 = 0;
    goto LABEL_17;
  }

  if (TSUDefaultCat_init_token != -1)
  {
    +[NSString(TSUPersonNameComponents) tsu_localizedDisplayNameWithPersonNameComponents:];
  }

  givenName = [v3 givenName];
  v5 = [givenName length];
  familyName = [v3 familyName];
  v7 = [familyName length];
  if (v5 && v7)
  {
    if (([givenName tsu_isCJKString] & 1) != 0 || objc_msgSend(familyName, "tsu_isCJKString"))
    {
      v8 = [familyName stringByAppendingString:givenName];
    }

    else
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", givenName, familyName];
    }
  }

  else if (v5)
  {
    v8 = givenName;
  }

  else
  {
    if (!v7)
    {
      v9 = 0;
      goto LABEL_16;
    }

    v8 = familyName;
  }

  v9 = v8;
LABEL_16:

LABEL_17:

  return v9;
}

@end