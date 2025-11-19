@interface ICCryptoStrategyFactory
+ (BOOL)shouldAuthenticateWithCustomPasswordForObject:(id)a3;
+ (id)makeCryptoStrategyForObject:(id)a3 andValidateProtocolConformance:(id)a4;
+ (id)makeCryptoStrategyForObject:(id)a3 withCipherMatchingEncryptedData:(id)a4 andValidateProtocolConformance:(id)a5;
+ (id)primaryEncryptedDataForObject:(id)a3;
+ (id)strategyForObject:(id)a3 cipherVersion:(int64_t)a4;
+ (int64_t)cipherVersionForObject:(id)a3;
+ (int64_t)cipherVersionForPrimaryEncryptedData:(id)a3;
+ (int64_t)userSelectedCipherVersionForObject:(id)a3;
@end

@implementation ICCryptoStrategyFactory

+ (id)makeCryptoStrategyForObject:(id)a3 andValidateProtocolConformance:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 strategyForObject:v7 cipherVersion:{objc_msgSend(a1, "cipherVersionForObject:", v7)}];

  LOBYTE(a1) = [v8 conformsToProtocol:v6];
  if ((a1 & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

+ (id)makeCryptoStrategyForObject:(id)a3 withCipherMatchingEncryptedData:(id)a4 andValidateProtocolConformance:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a1 strategyForObject:v9 cipherVersion:{objc_msgSend(a1, "cipherVersionForPrimaryEncryptedData:", a4)}];

  LOBYTE(v9) = [v10 conformsToProtocol:v8];
  if ((v9 & 1) == 0)
  {

    v10 = 0;
  }

  return v10;
}

+ (BOOL)shouldAuthenticateWithCustomPasswordForObject:(id)a3
{
  v4 = a3;
  if ([a1 cipherVersionForObject:v4])
  {
    v5 = [a1 cipherVersionForObject:v4] == 2;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (int64_t)cipherVersionForObject:(id)a3
{
  v4 = a3;
  v5 = [a1 userSelectedCipherVersionForObject:v4];
  if ([v4 isPasswordProtected])
  {
    v6 = [a1 primaryEncryptedDataForObject:v4];
    if (v6)
    {
      v5 = [a1 cipherVersionForPrimaryEncryptedData:v6];
    }
  }

  return v5;
}

+ (id)primaryEncryptedDataForObject:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    while (1)
    {
      v6 = [v5 primaryEncryptedData];
      if (v6)
      {
        break;
      }

      v7 = [v5 unappliedEncryptedRecord];

      if (v7)
      {
        v8 = [v5 unappliedEncryptedRecord];
        v9 = [v5 primaryEncryptedDataFromRecord:v8];

        if (v9)
        {
          goto LABEL_10;
        }
      }

      v10 = [v5 parentEncryptableObject];

      v5 = v10;
      if (!v10)
      {
        v9 = 0;
        v5 = 0;
        goto LABEL_10;
      }
    }

    v9 = v6;
  }

  else
  {
    v5 = 0;
    v9 = 0;
  }

LABEL_10:

  return v9;
}

+ (int64_t)cipherVersionForPrimaryEncryptedData:(id)a3
{
  v3 = a3;
  if (![v3 length])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"primaryEncryptedData.length" functionName:"+[ICCryptoStrategyFactory cipherVersionForPrimaryEncryptedData:]" simulateCrash:1 showAlert:0 format:@"Valid data must be provided to cipherVersionForPrimaryEncryptedData:"];
  }

  v4 = [[ICEncryptionObject alloc] initWithSerializedData:v3];

  if (v4)
  {
    v5 = [(ICEncryptionObject *)v4 metadata];
    v6 = [v5 cipherVersion];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)userSelectedCipherVersionForObject:(id)a3
{
  v3 = a3;
  v4 = [v3 ic_isTransitioning];
  v5 = [v3 cloudAccount];

  if (v4)
  {
    [v5 accountData];
  }

  else
  {
    [v5 accountDataCreateIfNecessary];
  }
  v6 = ;

  if ([v6 lockedNotesMode] > 1)
  {
    v7 = 1;
  }

  else if ([v6 supportsV1Neo])
  {
    if (ICInternalSettingsIsLockedNotesV1NeoEnabled())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)strategyForObject:(id)a3 cipherVersion:(int64_t)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = off_278192938;
LABEL_3:
    v7 = [objc_alloc(*v6) initWithCloudSyncingObject:v5];
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a4 > 1)
    {
      if (a4 == 3)
      {
        goto LABEL_47;
      }

      if (a4 == 2)
      {
        v6 = off_278192E28;
        goto LABEL_3;
      }
    }

    else
    {
      if (!a4)
      {
        v6 = off_278192E20;
        goto LABEL_3;
      }

      if (a4 == 1)
      {
        v6 = off_278192E30;
        goto LABEL_3;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a4 > 1)
    {
      if (a4 == 3)
      {
        goto LABEL_47;
      }

      if (a4 == 2)
      {
        v6 = off_2781929B8;
        goto LABEL_3;
      }
    }

    else
    {
      if (!a4)
      {
        v6 = off_2781929B0;
        goto LABEL_3;
      }

      if (a4 == 1)
      {
        v6 = off_2781929C0;
        goto LABEL_3;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a4 > 1)
    {
      if (a4 == 3)
      {
        goto LABEL_47;
      }

      if (a4 == 2)
      {
        v6 = off_278192A38;
        goto LABEL_3;
      }
    }

    else
    {
      if (!a4)
      {
        v6 = off_278192A30;
        goto LABEL_3;
      }

      if (a4 == 1)
      {
        v6 = off_278192A40;
        goto LABEL_3;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a4 > 1)
    {
      if (a4 == 3)
      {
        goto LABEL_47;
      }

      if (a4 == 2)
      {
        v6 = off_278192DB8;
        goto LABEL_3;
      }
    }

    else
    {
      if (!a4)
      {
        v6 = off_278192DB0;
        goto LABEL_3;
      }

      if (a4 == 1)
      {
        v6 = off_278192DC0;
        goto LABEL_3;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a4 < 3)
    {
      v9 = off_278195FF8;
LABEL_46:
      v6 = v9[a4];
      goto LABEL_3;
    }
  }

  else if (a4 < 3)
  {
    v9 = off_278196010;
    goto LABEL_46;
  }

LABEL_47:
  v7 = 0;
LABEL_4:

  return v7;
}

@end