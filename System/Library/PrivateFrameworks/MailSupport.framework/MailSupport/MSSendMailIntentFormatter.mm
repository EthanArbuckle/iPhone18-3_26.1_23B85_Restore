@interface MSSendMailIntentFormatter
- (id)_stringForAddresses:(id)a3;
- (id)stringForObjectValue:(id)a3;
@end

@implementation MSSendMailIntentFormatter

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [v5 to];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v5 to];
    v9 = [(MSSendMailIntentFormatter *)self _stringForAddresses:v8];
  }

  else
  {
    v11 = [v5 cc];
    v12 = [v11 count];

    if (v12)
    {
      v8 = [v5 cc];
      v9 = [(MSSendMailIntentFormatter *)self _stringForAddresses:v8];
    }

    else
    {
      v13 = [v5 bcc];
      v14 = [v13 count];

      if (!v14)
      {
        v10 = [(MSSendMailIntentFormatter *)self _stringForAddresses:0];
        goto LABEL_10;
      }

      v8 = [v5 bcc];
      v9 = [(MSSendMailIntentFormatter *)self _stringForAddresses:v8];
    }
  }

  v10 = v9;

LABEL_10:
LABEL_11:

  return v10;
}

- (id)_stringForAddresses:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = MEMORY[0x277CCACA8];
    v6 = _EFLocalizedString();
    v7 = [v4 displayName];
    v8 = [v5 deferredLocalizedIntentsStringWithFormat:v6, v7];
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v4 = _EFLocalizedString();
    v8 = [v9 deferredLocalizedIntentsStringWithFormat:v4];
  }

  return v8;
}

@end