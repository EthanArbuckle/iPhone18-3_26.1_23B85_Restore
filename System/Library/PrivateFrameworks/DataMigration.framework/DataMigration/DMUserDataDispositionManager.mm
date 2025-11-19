@interface DMUserDataDispositionManager
+ (id)descriptionFromDispositionFlags:(unsigned int)a3;
+ (unsigned)dispositionFlagsFromDispositionDict:(id)a3;
@end

@implementation DMUserDataDispositionManager

+ (unsigned)dispositionFlagsFromDispositionDict:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"SyntheticDidUpgrade"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 objectForKeyedSubscript:@"DidRestoreFromBackup"];
  v8 = [v7 BOOLValue];
  v9 = v8;
  v10 = v6 | 4;
  if (v8)
  {
    v11 = v6 | 4;
  }

  else
  {
    v11 = v6;
  }

  if (!v8)
  {
    v10 = v6 + 1;
  }

  if (v5)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = [v3 objectForKeyedSubscript:@"DidMigrateBackupFromDifferentDevice"];
  v14 = [v13 BOOLValue];

  if (v14)
  {
    v12 |= 8u;
  }

  v15 = [v3 objectForKeyedSubscript:@"DidRestoreFromCloudBackup"];
  v16 = [v15 BOOLValue];

  if (v16)
  {
    v17 = v12 | 0x10;
  }

  else
  {
    v18 = [v3 objectForKeyedSubscript:@"RestoreFromBackupSourceiTunes"];
    v19 = [v18 BOOLValue];

    if (v19)
    {
      v17 = v12 | 0x20;
    }

    else
    {
      v20 = [v3 objectForKeyedSubscript:@"RestoreFromBackupSourceDeviceToDevice"];
      v21 = [v20 BOOLValue];

      v22 = v12 | 0x20;
      if (!v9)
      {
        v22 = v12;
      }

      if (v21)
      {
        v17 = v12 | 0x40;
      }

      else
      {
        v17 = v22;
      }
    }
  }

  v23 = [v3 objectForKeyedSubscript:@"RestoredBackupIsMegaBackup"];
  v24 = [v23 BOOLValue];

  if (v24)
  {
    v17 |= 0x80u;
  }

  v25 = [v3 objectForKeyedSubscript:@"EraseIsRapidReturnToService"];
  v26 = [v25 BOOLValue];

  if (v26)
  {
    v27 = v17 | 0x100;
  }

  else
  {
    v27 = v17;
  }

  return v27;
}

+ (id)descriptionFromDispositionFlags:(unsigned int)a3
{
  v3 = @"erase";
  v4 = @"iTunes restore";
  v5 = @"D2D restore";
  if ((a3 & 1) == 0)
  {
    v3 = 0;
  }

  if ((a3 & 0x40) == 0)
  {
    v5 = @"iCloud restore";
  }

  if ((a3 & 0x20) == 0)
  {
    v4 = v5;
  }

  if ((a3 & 4) != 0)
  {
    v3 = v4;
  }

  if ((a3 & 2) != 0)
  {
    return @"upgrade";
  }

  else
  {
    return v3;
  }
}

@end