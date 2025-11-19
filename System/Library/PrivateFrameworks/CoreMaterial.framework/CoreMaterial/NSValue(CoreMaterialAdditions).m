@interface NSValue(CoreMaterialAdditions)
+ (id)mt_identityValueForMaterialSettingsProperty:()CoreMaterialAdditions;
+ (void)mt_identityValueForFilter:()CoreMaterialAdditions;
- (uint64_t)mt_isIdentityValueForFilter:()CoreMaterialAdditions;
- (uint64_t)mt_isIdentityValueForMaterialSettingsProperty:()CoreMaterialAdditions;
@end

@implementation NSValue(CoreMaterialAdditions)

+ (void)mt_identityValueForFilter:()CoreMaterialAdditions
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E6979890]])
  {
    v4 = &unk_1F3E01860;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6979880]])
  {
    v5 = *(MEMORY[0x1E6979280] + 48);
    v10[2] = *(MEMORY[0x1E6979280] + 32);
    v10[3] = v5;
    v10[4] = *(MEMORY[0x1E6979280] + 64);
    v6 = *(MEMORY[0x1E6979280] + 16);
    v10[0] = *MEMORY[0x1E6979280];
    v10[1] = v6;
    v4 = [MEMORY[0x1E696B098] valueWithBytes:v10 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = &unk_1F3E017A0;
  }

  v8 = v7;

  return v7;
}

+ (id)mt_identityValueForMaterialSettingsProperty:()CoreMaterialAdditions
{
  v4 = a3;
  if ([v4 isEqualToString:@"luminanceAmount"])
  {
    v5 = MEMORY[0x1E6979C70];
  }

  else if ([v4 isEqualToString:@"blurRadius"])
  {
    v5 = MEMORY[0x1E6979928];
  }

  else if ([v4 isEqualToString:@"saturation"])
  {
    v5 = MEMORY[0x1E6979890];
  }

  else if ([v4 isEqualToString:@"brightness"])
  {
    v5 = MEMORY[0x1E6979848];
  }

  else
  {
    if (([v4 isEqualToString:@"colorMatrix"] & 1) == 0)
    {

      goto LABEL_14;
    }

    v5 = MEMORY[0x1E6979880];
  }

  v6 = *v5;

  if (v6)
  {
    v7 = [a1 mt_identityValueForFilter:v6];
    goto LABEL_19;
  }

LABEL_14:
  if ([v4 isEqualToString:@"backdropScale"])
  {
    v6 = 0;
    v7 = &unk_1F3E01860;
  }

  else if ([v4 isEqualToString:@"averageColorEnabled"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"blurAtEnd"))
  {
    v6 = 0;
    v7 = MEMORY[0x1E695E110];
  }

  else
  {
    v7 = &unk_1F3E017A0;
    if ([v4 isEqualToString:@"tintAlpha"])
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      if (![v4 isEqualToString:@"zoom"])
      {
        v7 = 0;
      }
    }
  }

LABEL_19:

  return v7;
}

- (uint64_t)mt_isIdentityValueForFilter:()CoreMaterialAdditions
{
  v4 = a3;
  v5 = [objc_opt_class() mt_identityValueForFilter:v4];

  v6 = [a1 isEqual:v5];
  return v6;
}

- (uint64_t)mt_isIdentityValueForMaterialSettingsProperty:()CoreMaterialAdditions
{
  v4 = a3;
  v5 = [objc_opt_class() mt_identityValueForMaterialSettingsProperty:v4];

  v6 = [a1 isEqual:v5];
  return v6;
}

@end