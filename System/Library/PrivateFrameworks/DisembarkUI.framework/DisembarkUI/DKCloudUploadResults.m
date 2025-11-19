@interface DKCloudUploadResults
- (BOOL)success;
@end

@implementation DKCloudUploadResults

- (BOOL)success
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(DKCloudUploadResults *)self syncResult];
  if (v3 && (v4 = v3, -[DKCloudUploadResults syncResult](self, "syncResult"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 success], v5, v4, !v6))
  {
    v12 = 0;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(DKCloudUploadResults *)self backupResults];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (![*(*(&v15 + 1) + 8 * i) success])
          {
            v12 = 0;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v12 = 1;
LABEL_13:
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

@end