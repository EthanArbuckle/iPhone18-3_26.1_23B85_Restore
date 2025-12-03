@interface MCUISettingsWatchManager
+ (BOOL)_isWatchYorktownEnrolled:(id)enrolled;
+ (BOOL)hasAnyYorktownEnrolledWatches;
@end

@implementation MCUISettingsWatchManager

+ (BOOL)hasAnyYorktownEnrolledWatches
{
  v19 = *MEMORY[0x277D85DE8];
  if (MCUIIsiPhone())
  {
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    setupCompletedDevicesSelectorBlock = [MEMORY[0x277D2BCF8] setupCompletedDevicesSelectorBlock];
    v5 = [mEMORY[0x277D2BCF8] getAllDevicesWithArchivedDevicesMatching:setupCompletedDevicesSelectorBlock];

    if ([v5 count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v6);
            }

            if ([self _isWatchYorktownEnrolled:{*(*(&v14 + 1) + 8 * i), v14}])
            {
              v11 = 1;
              goto LABEL_14;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v11 = 0;
LABEL_14:
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (BOOL)_isWatchYorktownEnrolled:(id)enrolled
{
  v3 = [enrolled valueForProperty:*MEMORY[0x277D2BB78]];
  v4 = v3;
  if (v3)
  {
    v5 = (~[v3 unsignedIntegerValue] & 3) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end