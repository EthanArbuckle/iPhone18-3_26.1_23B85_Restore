@interface DMUserDataDispositionManager
+ (id)descriptionFromDispositionFlags:(unsigned int)flags;
+ (unsigned)dispositionFlagsFromDispositionDict:(id)dict;
@end

@implementation DMUserDataDispositionManager

+ (unsigned)dispositionFlagsFromDispositionDict:(id)dict
{
  dictCopy = dict;
  v4 = [dictCopy objectForKeyedSubscript:@"SyntheticDidUpgrade"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = [dictCopy objectForKeyedSubscript:@"DidRestoreFromBackup"];
  bOOLValue2 = [v7 BOOLValue];
  v9 = bOOLValue2;
  v10 = v6 | 4;
  if (bOOLValue2)
  {
    v11 = v6 | 4;
  }

  else
  {
    v11 = v6;
  }

  if (!bOOLValue2)
  {
    v10 = v6 + 1;
  }

  if (bOOLValue)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = [dictCopy objectForKeyedSubscript:@"DidMigrateBackupFromDifferentDevice"];
  bOOLValue3 = [v13 BOOLValue];

  if (bOOLValue3)
  {
    v12 |= 8u;
  }

  v15 = [dictCopy objectForKeyedSubscript:@"DidRestoreFromCloudBackup"];
  bOOLValue4 = [v15 BOOLValue];

  if (bOOLValue4)
  {
    v17 = v12 | 0x10;
  }

  else
  {
    v18 = [dictCopy objectForKeyedSubscript:@"RestoreFromBackupSourceiTunes"];
    bOOLValue5 = [v18 BOOLValue];

    if (bOOLValue5)
    {
      v17 = v12 | 0x20;
    }

    else
    {
      v20 = [dictCopy objectForKeyedSubscript:@"RestoreFromBackupSourceDeviceToDevice"];
      bOOLValue6 = [v20 BOOLValue];

      v22 = v12 | 0x20;
      if (!v9)
      {
        v22 = v12;
      }

      if (bOOLValue6)
      {
        v17 = v12 | 0x40;
      }

      else
      {
        v17 = v22;
      }
    }
  }

  v23 = [dictCopy objectForKeyedSubscript:@"RestoredBackupIsMegaBackup"];
  bOOLValue7 = [v23 BOOLValue];

  if (bOOLValue7)
  {
    v17 |= 0x80u;
  }

  v25 = [dictCopy objectForKeyedSubscript:@"EraseIsRapidReturnToService"];
  bOOLValue8 = [v25 BOOLValue];

  if (bOOLValue8)
  {
    v27 = v17 | 0x100;
  }

  else
  {
    v27 = v17;
  }

  return v27;
}

+ (id)descriptionFromDispositionFlags:(unsigned int)flags
{
  v3 = @"erase";
  v4 = @"iTunes restore";
  v5 = @"D2D restore";
  if ((flags & 1) == 0)
  {
    v3 = 0;
  }

  if ((flags & 0x40) == 0)
  {
    v5 = @"iCloud restore";
  }

  if ((flags & 0x20) == 0)
  {
    v4 = v5;
  }

  if ((flags & 4) != 0)
  {
    v3 = v4;
  }

  if ((flags & 2) != 0)
  {
    return @"upgrade";
  }

  else
  {
    return v3;
  }
}

@end