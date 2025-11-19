@interface CUINamedLookup(IconServicesAdditions)
- (uint64_t)_IS_assetAppearance;
@end

@implementation CUINamedLookup(IconServicesAdditions)

- (uint64_t)_IS_assetAppearance
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [a1 appearance];
  if (![v2 caseInsensitiveCompare:0x1F1A51540])
  {
LABEL_10:

    goto LABEL_11;
  }

  v3 = [a1 appearance];
  v4 = [v3 caseInsensitiveCompare:0x1F1A515C0];

  if (v4)
  {
    v5 = [a1 appearance];
    if ([v5 caseInsensitiveCompare:0x1F1A51560])
    {
      v6 = [a1 appearance];
      v7 = [v6 caseInsensitiveCompare:0x1F1A515E0];

      if (v7)
      {
        v8 = [a1 appearance];
        v9 = [v8 caseInsensitiveCompare:0x1F1A51580];

        if (!v9)
        {
          result = 2;
          goto LABEL_14;
        }

        v10 = [a1 appearance];
        v11 = [v10 caseInsensitiveCompare:0x1F1A51520];

        if (!v11)
        {
          goto LABEL_11;
        }

        v12 = [a1 appearance];
        v13 = [v12 caseInsensitiveCompare:0x1F1A515A0];

        if (!v13)
        {
          goto LABEL_11;
        }

        v2 = _ISDefaultLog();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [a1 appearance];
          v17 = 138412290;
          v18 = v14;
          _os_log_impl(&dword_1A77B8000, v2, OS_LOG_TYPE_DEFAULT, "Unknown appearance type: %@", &v17, 0xCu);
        }

        goto LABEL_10;
      }
    }

    else
    {
    }

    result = 1;
    goto LABEL_14;
  }

LABEL_11:
  result = 0;
LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

@end