@interface NTKCompanionClockFaceLocalizedString
@end

@implementation NTKCompanionClockFaceLocalizedString

__CFString *__NTKCompanionClockFaceLocalizedString_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = a2;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = NTKCDefaultValueLocalizedString(*(a1 + 32), *(*(&v16 + 1) + 8 * i), v7, 0);
        if (v11)
        {
          v12 = v11;
          v13 = [MEMORY[0x277CBBB70] sharedMonitor];
          v14 = [v13 shouldHideForSensitivity:a3];

          if (v14)
          {

            v12 = &stru_284110E98;
          }

          goto LABEL_12;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

@end