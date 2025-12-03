@interface CUINamedLookup(IconServicesAdditions)
- (uint64_t)_IS_assetAppearance;
@end

@implementation CUINamedLookup(IconServicesAdditions)

- (uint64_t)_IS_assetAppearance
{
  v19 = *MEMORY[0x1E69E9840];
  appearance = [self appearance];
  if (![appearance caseInsensitiveCompare:0x1F1A51540])
  {
LABEL_10:

    goto LABEL_11;
  }

  appearance2 = [self appearance];
  v4 = [appearance2 caseInsensitiveCompare:0x1F1A515C0];

  if (v4)
  {
    appearance3 = [self appearance];
    if ([appearance3 caseInsensitiveCompare:0x1F1A51560])
    {
      appearance4 = [self appearance];
      v7 = [appearance4 caseInsensitiveCompare:0x1F1A515E0];

      if (v7)
      {
        appearance5 = [self appearance];
        v9 = [appearance5 caseInsensitiveCompare:0x1F1A51580];

        if (!v9)
        {
          result = 2;
          goto LABEL_14;
        }

        appearance6 = [self appearance];
        v11 = [appearance6 caseInsensitiveCompare:0x1F1A51520];

        if (!v11)
        {
          goto LABEL_11;
        }

        appearance7 = [self appearance];
        v13 = [appearance7 caseInsensitiveCompare:0x1F1A515A0];

        if (!v13)
        {
          goto LABEL_11;
        }

        appearance = _ISDefaultLog();
        if (os_log_type_enabled(appearance, OS_LOG_TYPE_DEFAULT))
        {
          appearance8 = [self appearance];
          v17 = 138412290;
          v18 = appearance8;
          _os_log_impl(&dword_1A77B8000, appearance, OS_LOG_TYPE_DEFAULT, "Unknown appearance type: %@", &v17, 0xCu);
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