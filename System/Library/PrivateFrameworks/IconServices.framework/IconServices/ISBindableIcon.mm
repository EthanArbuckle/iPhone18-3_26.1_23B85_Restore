@interface ISBindableIcon
- (id)resourceProviderWithClaim:(id)claim typeRecord:(id)record fileExtension:(id)extension;
@end

@implementation ISBindableIcon

- (id)resourceProviderWithClaim:(id)claim typeRecord:(id)record fileExtension:(id)extension
{
  claimCopy = claim;
  recordCopy = record;
  extensionCopy = extension;
  if (claimCopy)
  {
    claimRecord = [claimCopy claimRecord];
    claimingBundleRecord = [claimRecord claimingBundleRecord];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = +[ISDefaults sharedInstance];
    if ([v13 allowDocumentClaimIcons])
    {
      claimRecord2 = [claimCopy claimRecord];
      iconDictionary = [claimRecord2 iconDictionary];
      v16 = [iconDictionary count];

      if (v16)
      {
        claimRecord3 = [claimCopy claimRecord];
        if (!recordCopy)
        {
          goto LABEL_26;
        }

LABEL_11:
        if (claimRecord3)
        {
          goto LABEL_26;
        }

        v18 = [claimingBundleRecord _IS_iconProvidingLineageForRecord:recordCopy];
        lastObject = [v18 lastObject];

        if (lastObject)
        {
          identifier = [recordCopy identifier];
          identifier2 = [lastObject identifier];
          if (UTTypeEqual(identifier, identifier2))
          {
            _is_canProvideIconResources = [lastObject _is_canProvideIconResources];

            if (_is_canProvideIconResources)
            {
              goto LABEL_24;
            }
          }

          else
          {
          }

          if (([recordCopy _is_canProvideIconResources] & 1) == 0)
          {
LABEL_24:
            lastObject = lastObject;
            v23 = 0;
            claimRecord3 = lastObject;
            goto LABEL_29;
          }

LABEL_23:
          claimRecord3 = recordCopy;
          v23 = 0;
          goto LABEL_29;
        }

        if ([recordCopy _is_canProvideIconResources])
        {
LABEL_18:
          lastObject = 0;
          goto LABEL_23;
        }

        goto LABEL_19;
      }
    }

    else
    {
    }

    claimRecord3 = 0;
    if (!recordCopy)
    {
      goto LABEL_26;
    }

    goto LABEL_11;
  }

  if (!recordCopy)
  {
    lastObject = 0;
    v23 = 0;
    claimRecord3 = 0;
    goto LABEL_29;
  }

  if ([recordCopy _is_canProvideIconResources])
  {
    goto LABEL_18;
  }

  isKindOfClass = 0;
LABEL_19:
  v24 = [recordCopy _IS_iconProvidingRecordAcceptingWildCard:(isKindOfClass & 1) == 0];
  claimingBundleRecord = v24;
  if (v24)
  {
    claimingBundleRecord = v24;
    claimRecord3 = claimingBundleRecord;
  }

  else
  {
    claimRecord3 = 0;
  }

LABEL_26:

  lastObject = 0;
  v23 = 0;
  if (!claimRecord3 && (isKindOfClass & 1) != 0)
  {
    claimRecord4 = [claimCopy claimRecord];
    claimRecord3 = [claimRecord4 claimingBundleRecord];

    lastObject = 0;
    v23 = 1;
  }

LABEL_29:
  if (([claimRecord3 _is_canProvideIconResources] & 1) == 0)
  {
    v26 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:*MEMORY[0x1E6963798]];

    claimRecord3 = v26;
  }

  v27 = [[ISRecordResourceProvider alloc] initWithRecord:claimRecord3 fileExtension:extensionCopy options:v23];
  [(ISResourceProvider *)v27 setResourceType:2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (([claimRecord3 conformsToTypeIdentifier:@"com.apple.storage-removable"] & 1) != 0 || (objc_msgSend(claimRecord3, "conformsToTypeIdentifier:", @"com.apple.storage-external") & 1) != 0 || objc_msgSend(claimRecord3, "conformsToTypeIdentifier:", @"com.apple.file-server")))
  {
    v28 = objc_alloc_init(ISGenericRecipe);
    [(ISResourceProvider *)v27 setSuggestedRecipe:v28];
  }

  return v27;
}

@end