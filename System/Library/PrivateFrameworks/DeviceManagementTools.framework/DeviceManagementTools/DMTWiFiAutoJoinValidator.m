@interface DMTWiFiAutoJoinValidator
- (BOOL)validateProfile:(id)a3 error:(id *)a4;
@end

@implementation DMTWiFiAutoJoinValidator

- (BOOL)validateProfile:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [a3 payloadsOfType:{@"com.apple.wifi.managed", 0}];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [v10 autoJoin];

        if (v11)
        {

          result = 1;
          goto LABEL_12;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (a4)
  {
    v12 = DMTErrorWithCodeAndUserInfo(72, &unk_285B5BE60);
    v13 = v12;
    result = 0;
    *a4 = v12;
  }

  else
  {
    result = 0;
  }

LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

@end