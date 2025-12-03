@interface ICCryptoStrategyFactory
+ (BOOL)shouldAuthenticateWithCustomPasswordForObject:(id)object;
+ (id)makeCryptoStrategyForObject:(id)object andValidateProtocolConformance:(id)conformance;
+ (id)makeCryptoStrategyForObject:(id)object withCipherMatchingEncryptedData:(id)data andValidateProtocolConformance:(id)conformance;
+ (id)primaryEncryptedDataForObject:(id)object;
+ (id)strategyForObject:(id)object cipherVersion:(int64_t)version;
+ (int64_t)cipherVersionForObject:(id)object;
+ (int64_t)cipherVersionForPrimaryEncryptedData:(id)data;
+ (int64_t)userSelectedCipherVersionForObject:(id)object;
@end

@implementation ICCryptoStrategyFactory

+ (id)makeCryptoStrategyForObject:(id)object andValidateProtocolConformance:(id)conformance
{
  conformanceCopy = conformance;
  objectCopy = object;
  v8 = [self strategyForObject:objectCopy cipherVersion:{objc_msgSend(self, "cipherVersionForObject:", objectCopy)}];

  LOBYTE(self) = [v8 conformsToProtocol:conformanceCopy];
  if ((self & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

+ (id)makeCryptoStrategyForObject:(id)object withCipherMatchingEncryptedData:(id)data andValidateProtocolConformance:(id)conformance
{
  conformanceCopy = conformance;
  objectCopy = object;
  v10 = [self strategyForObject:objectCopy cipherVersion:{objc_msgSend(self, "cipherVersionForPrimaryEncryptedData:", data)}];

  LOBYTE(objectCopy) = [v10 conformsToProtocol:conformanceCopy];
  if ((objectCopy & 1) == 0)
  {

    v10 = 0;
  }

  return v10;
}

+ (BOOL)shouldAuthenticateWithCustomPasswordForObject:(id)object
{
  objectCopy = object;
  if ([self cipherVersionForObject:objectCopy])
  {
    v5 = [self cipherVersionForObject:objectCopy] == 2;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (int64_t)cipherVersionForObject:(id)object
{
  objectCopy = object;
  v5 = [self userSelectedCipherVersionForObject:objectCopy];
  if ([objectCopy isPasswordProtected])
  {
    v6 = [self primaryEncryptedDataForObject:objectCopy];
    if (v6)
    {
      v5 = [self cipherVersionForPrimaryEncryptedData:v6];
    }
  }

  return v5;
}

+ (id)primaryEncryptedDataForObject:(id)object
{
  objectCopy = object;
  v4 = objectCopy;
  if (objectCopy)
  {
    v5 = objectCopy;
    while (1)
    {
      primaryEncryptedData = [v5 primaryEncryptedData];
      if (primaryEncryptedData)
      {
        break;
      }

      unappliedEncryptedRecord = [v5 unappliedEncryptedRecord];

      if (unappliedEncryptedRecord)
      {
        unappliedEncryptedRecord2 = [v5 unappliedEncryptedRecord];
        v9 = [v5 primaryEncryptedDataFromRecord:unappliedEncryptedRecord2];

        if (v9)
        {
          goto LABEL_10;
        }
      }

      parentEncryptableObject = [v5 parentEncryptableObject];

      v5 = parentEncryptableObject;
      if (!parentEncryptableObject)
      {
        v9 = 0;
        v5 = 0;
        goto LABEL_10;
      }
    }

    v9 = primaryEncryptedData;
  }

  else
  {
    v5 = 0;
    v9 = 0;
  }

LABEL_10:

  return v9;
}

+ (int64_t)cipherVersionForPrimaryEncryptedData:(id)data
{
  dataCopy = data;
  if (![dataCopy length])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"primaryEncryptedData.length" functionName:"+[ICCryptoStrategyFactory cipherVersionForPrimaryEncryptedData:]" simulateCrash:1 showAlert:0 format:@"Valid data must be provided to cipherVersionForPrimaryEncryptedData:"];
  }

  v4 = [[ICEncryptionObject alloc] initWithSerializedData:dataCopy];

  if (v4)
  {
    metadata = [(ICEncryptionObject *)v4 metadata];
    cipherVersion = [metadata cipherVersion];
  }

  else
  {
    cipherVersion = 0;
  }

  return cipherVersion;
}

+ (int64_t)userSelectedCipherVersionForObject:(id)object
{
  objectCopy = object;
  ic_isTransitioning = [objectCopy ic_isTransitioning];
  cloudAccount = [objectCopy cloudAccount];

  if (ic_isTransitioning)
  {
    [cloudAccount accountData];
  }

  else
  {
    [cloudAccount accountDataCreateIfNecessary];
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

+ (id)strategyForObject:(id)object cipherVersion:(int64_t)version
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = off_278192938;
LABEL_3:
    v7 = [objc_alloc(*v6) initWithCloudSyncingObject:objectCopy];
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (version > 1)
    {
      if (version == 3)
      {
        goto LABEL_47;
      }

      if (version == 2)
      {
        v6 = off_278192E28;
        goto LABEL_3;
      }
    }

    else
    {
      if (!version)
      {
        v6 = off_278192E20;
        goto LABEL_3;
      }

      if (version == 1)
      {
        v6 = off_278192E30;
        goto LABEL_3;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (version > 1)
    {
      if (version == 3)
      {
        goto LABEL_47;
      }

      if (version == 2)
      {
        v6 = off_2781929B8;
        goto LABEL_3;
      }
    }

    else
    {
      if (!version)
      {
        v6 = off_2781929B0;
        goto LABEL_3;
      }

      if (version == 1)
      {
        v6 = off_2781929C0;
        goto LABEL_3;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (version > 1)
    {
      if (version == 3)
      {
        goto LABEL_47;
      }

      if (version == 2)
      {
        v6 = off_278192A38;
        goto LABEL_3;
      }
    }

    else
    {
      if (!version)
      {
        v6 = off_278192A30;
        goto LABEL_3;
      }

      if (version == 1)
      {
        v6 = off_278192A40;
        goto LABEL_3;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (version > 1)
    {
      if (version == 3)
      {
        goto LABEL_47;
      }

      if (version == 2)
      {
        v6 = off_278192DB8;
        goto LABEL_3;
      }
    }

    else
    {
      if (!version)
      {
        v6 = off_278192DB0;
        goto LABEL_3;
      }

      if (version == 1)
      {
        v6 = off_278192DC0;
        goto LABEL_3;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (version < 3)
    {
      v9 = off_278195FF8;
LABEL_46:
      v6 = v9[version];
      goto LABEL_3;
    }
  }

  else if (version < 3)
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