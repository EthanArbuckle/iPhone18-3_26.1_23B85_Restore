@interface ISBindableIcon
- (id)resourceProviderWithClaim:(id)a3 typeRecord:(id)a4 fileExtension:(id)a5;
@end

@implementation ISBindableIcon

- (id)resourceProviderWithClaim:(id)a3 typeRecord:(id)a4 fileExtension:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = [v7 claimRecord];
    v11 = [v10 claimingBundleRecord];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = +[ISDefaults sharedInstance];
    if ([v13 allowDocumentClaimIcons])
    {
      v14 = [v7 claimRecord];
      v15 = [v14 iconDictionary];
      v16 = [v15 count];

      if (v16)
      {
        v17 = [v7 claimRecord];
        if (!v8)
        {
          goto LABEL_26;
        }

LABEL_11:
        if (v17)
        {
          goto LABEL_26;
        }

        v18 = [v11 _IS_iconProvidingLineageForRecord:v8];
        v19 = [v18 lastObject];

        if (v19)
        {
          v20 = [v8 identifier];
          v21 = [v19 identifier];
          if (UTTypeEqual(v20, v21))
          {
            v22 = [v19 _is_canProvideIconResources];

            if (v22)
            {
              goto LABEL_24;
            }
          }

          else
          {
          }

          if (([v8 _is_canProvideIconResources] & 1) == 0)
          {
LABEL_24:
            v19 = v19;
            v23 = 0;
            v17 = v19;
            goto LABEL_29;
          }

LABEL_23:
          v17 = v8;
          v23 = 0;
          goto LABEL_29;
        }

        if ([v8 _is_canProvideIconResources])
        {
LABEL_18:
          v19 = 0;
          goto LABEL_23;
        }

        goto LABEL_19;
      }
    }

    else
    {
    }

    v17 = 0;
    if (!v8)
    {
      goto LABEL_26;
    }

    goto LABEL_11;
  }

  if (!v8)
  {
    v19 = 0;
    v23 = 0;
    v17 = 0;
    goto LABEL_29;
  }

  if ([v8 _is_canProvideIconResources])
  {
    goto LABEL_18;
  }

  isKindOfClass = 0;
LABEL_19:
  v24 = [v8 _IS_iconProvidingRecordAcceptingWildCard:(isKindOfClass & 1) == 0];
  v11 = v24;
  if (v24)
  {
    v11 = v24;
    v17 = v11;
  }

  else
  {
    v17 = 0;
  }

LABEL_26:

  v19 = 0;
  v23 = 0;
  if (!v17 && (isKindOfClass & 1) != 0)
  {
    v25 = [v7 claimRecord];
    v17 = [v25 claimingBundleRecord];

    v19 = 0;
    v23 = 1;
  }

LABEL_29:
  if (([v17 _is_canProvideIconResources] & 1) == 0)
  {
    v26 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:*MEMORY[0x1E6963798]];

    v17 = v26;
  }

  v27 = [[ISRecordResourceProvider alloc] initWithRecord:v17 fileExtension:v9 options:v23];
  [(ISResourceProvider *)v27 setResourceType:2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (([v17 conformsToTypeIdentifier:@"com.apple.storage-removable"] & 1) != 0 || (objc_msgSend(v17, "conformsToTypeIdentifier:", @"com.apple.storage-external") & 1) != 0 || objc_msgSend(v17, "conformsToTypeIdentifier:", @"com.apple.file-server")))
  {
    v28 = objc_alloc_init(ISGenericRecipe);
    [(ISResourceProvider *)v27 setSuggestedRecipe:v28];
  }

  return v27;
}

@end