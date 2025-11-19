@interface NSError(BRFPAdditions)
+ (id)_getFirstCloudKitUnderlyingError:()BRFPAdditions;
- (id)_br_fileProviderErrorWithFallbackFileProviderErrorCode:()BRFPAdditions;
- (id)_br_populateUserInfoDictWithDomain:()BRFPAdditions code:setSelfAsUnderlyingError:;
- (id)_createWrappedErrorWithDomain:()BRFPAdditions code:;
- (uint64_t)_br_getFileProviderDomainErrorCode:()BRFPAdditions;
- (uint64_t)_isTransientError:()BRFPAdditions code:;
- (void)_br_populateErrorMessageOnUserInfo:()BRFPAdditions;
@end

@implementation NSError(BRFPAdditions)

- (uint64_t)_br_getFileProviderDomainErrorCode:()BRFPAdditions
{
  v39 = *MEMORY[0x1E69E9840];
  if (_br_getFileProviderDomainErrorCode__once != -1)
  {
    [NSError(BRFPAdditions) _br_getFileProviderDomainErrorCode:];
  }

  v5 = [a1 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x1E696A250]];

  if (v6)
  {
    v7 = &_br_getFileProviderDomainErrorCode__cocoaErrorToFPError;
    goto LABEL_13;
  }

  v8 = [a1 domain];
  v9 = [v8 isEqualToString:@"BRCloudDocsErrorDomain"];

  if (v9)
  {
    if ([a1 code] == 17)
    {
      v10 = [a1 userInfo];
      v11 = [v10 objectForKey:*MEMORY[0x1E696AA08]];

      if (v11)
      {
        v12 = [v11 _br_getFileProviderDomainErrorCode:a3];

        goto LABEL_22;
      }
    }

    v7 = &_br_getFileProviderDomainErrorCode__clouddocsErrorToFPError;
LABEL_13:
    v17 = *v7;
    if (v17)
    {
      v18 = v17;
      v19 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(a1, "code")}];
      v20 = [v18 objectForKey:v19];

      if (v20)
      {
        *a3 = [v20 longValue];

LABEL_21:
        v12 = 1;
        goto LABEL_22;
      }
    }

    goto LABEL_17;
  }

  v13 = [a1 domain];
  v14 = [v13 isEqualToString:*MEMORY[0x1E695B740]];

  if (!v14)
  {
    v21 = [a1 domain];
    v22 = [v21 isEqualToString:*MEMORY[0x1E696A978]];

    if (v22)
    {
      v16 = -1004;
    }

    else
    {
      v32 = [a1 domain];
      v33 = [v32 isEqualToString:@"ICDClientSideCollaborationErrorDomain"];

      if (!v33)
      {
LABEL_17:
        v12 = 0;
        goto LABEL_22;
      }

      if ([a1 code] != 5)
      {
        goto LABEL_21;
      }

      v16 = -2015;
    }

LABEL_20:
    *a3 = v16;
    goto LABEL_21;
  }

  [a1 br_suggestedRetryTimeInterval];
  if (v15 > 0.0)
  {
    v16 = *MEMORY[0x1E69671C0];
    goto LABEL_20;
  }

  if ([a1 code] != 2)
  {
    v7 = &_br_getFileProviderDomainErrorCode__cloudKitErrorToFPError;
    goto LABEL_13;
  }

  v25 = [a1 userInfo];
  v26 = [v25 objectForKeyedSubscript:*MEMORY[0x1E695B798]];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = [v26 objectEnumerator];
  v28 = [v27 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v35;
    while (2)
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(v27);
        }

        if ([*(*(&v34 + 1) + 8 * i) _br_getFileProviderDomainErrorCode:a3])
        {
          v12 = 1;
          goto LABEL_38;
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_38:

LABEL_22:
  v23 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)_br_populateErrorMessageOnUserInfo:()BRFPAdditions
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 br_isCloudDocsErrorCode:17])
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v5 = [a1 underlyingErrors];
    v6 = [v5 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v49;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v49 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v48 + 1) + 8 * i);
          if ([v10 br_isCKErrorCode:115])
          {
            v12 = [MEMORY[0x1E698B990] neediCloudTermsAcceptanceDeviceSpecificMessage];
            v11 = [MEMORY[0x1E698B990] neediCloudTermsAcceptanceTitle];
            goto LABEL_36;
          }

          if ([v10 br_isCKErrorCode:3])
          {
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v24 = [v10 underlyingErrors];
            v11 = [v24 countByEnumeratingWithState:&v44 objects:v52 count:16];
            if (v11)
            {
              v25 = *v45;
              while (2)
              {
                for (j = 0; j != v11; j = j + 1)
                {
                  if (*v45 != v25)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v27 = *(*(&v44 + 1) + 8 * j);
                  if ([v27 br_isNSURLErrorCode:-1009])
                  {
                    v28 = [v27 userInfo];
                    v29 = [v28 objectForKeyedSubscript:*MEMORY[0x1E696A9A0]];

                    if (v29 && ([v29 intValue] == 1 || !objc_msgSend(v29, "intValue")))
                    {
                      v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
                      v11 = _BRLocalizedStringWithFormat(@"ICD_CELLULAR_DISABLED_TITLE", @"Localizable", v30, v31, v32, v33, v34, v35, v44);

                      if (MGGetBoolAnswer())
                      {
                        v36 = @"ICD_CELLULAR_DISABLED_CH_BODY";
                      }

                      else
                      {
                        v36 = @"ICD_CELLULAR_DISABLED_BODY";
                      }

                      v37 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
                      v12 = _BRLocalizedStringWithFormat(v36, @"Localizable", v37, v38, v39, v40, v41, v42, v44);
                    }

                    else
                    {
                      v11 = 0;
                      v12 = 0;
                    }

                    goto LABEL_35;
                  }
                }

                v11 = [v24 countByEnumeratingWithState:&v44 objects:v52 count:16];
                if (v11)
                {
                  continue;
                }

                break;
              }
            }

            v12 = 0;
LABEL_35:

            goto LABEL_36;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v48 objects:v53 count:16];
        v11 = 0;
        v12 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    if (![a1 br_isGenericDownloadError])
    {
      v12 = 0;
      goto LABEL_40;
    }

    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = _BRLocalizedStringWithFormat(@"DOWNLOAD_GENERIC_ERROR_HEADER", @"Localizable", v13, v14, v15, v16, v17, v18, v44);

    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = _BRLocalizedStringWithFormat(@"DOWNLOAD_GENERIC_ERROR_MESSAGE", @"Localizable", v5, v19, v20, v21, v22, v23, v44);
  }

LABEL_36:

  if (v12)
  {
    [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A588]];
  }

  if (v11)
  {
    [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

LABEL_40:

  v43 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_isTransientError:()BRFPAdditions code:
{
  v6 = a3;
  if ([a1 code] == 152 || objc_msgSend(a1, "code") == 163 || !objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E6967188]))
  {
    v8 = [a1 br_isGenericDownloadError];
  }

  else
  {
    v8 = a4 == -2005 || *MEMORY[0x1E69671C0] == a4;
  }

  return v8;
}

- (id)_br_populateUserInfoDictWithDomain:()BRFPAdditions code:setSelfAsUnderlyingError:
{
  v8 = a3;
  if (_br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError__once != -1)
  {
    [NSError(BRFPAdditions) _br_populateUserInfoDictWithDomain:code:setSelfAsUnderlyingError:];
  }

  v9 = [a1 userInfo];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = _br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError__brUserInfoKeyToFPUserInfoKey;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __91__NSError_BRFPAdditions___br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError___block_invoke_2;
  v32[3] = &unk_1E7A14DF8;
  v12 = v9;
  v33 = v12;
  v13 = v10;
  v34 = v13;
  [v11 enumerateKeysAndObjectsUsingBlock:v32];
  v14 = _br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError__brUserInfoKeyToBRErrorCodeFPUserInfoKeyMap;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __91__NSError_BRFPAdditions___br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError___block_invoke_3;
  v28[3] = &unk_1E7A14E20;
  v15 = v12;
  v29 = v15;
  v30 = a1;
  v16 = v13;
  v31 = v16;
  [v14 enumerateKeysAndObjectsUsingBlock:v28];
  if ([a1 _isTransientError:v8 code:a4])
  {
    [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69671F0]];
  }

  [a1 _br_populateErrorMessageOnUserInfo:v16];
  if (a5)
  {
    [v16 setObject:a1 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  else
  {
    v17 = [a1 userInfo];
    v18 = *MEMORY[0x1E696AA08];
    v19 = [v17 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    [v16 setObject:v19 forKeyedSubscript:v18];
  }

  v20 = [MEMORY[0x1E696ABC0] _getFirstCloudKitUnderlyingError:a1];
  v21 = [v20 br_suggestedRetryDate];
  if (v21)
  {
    v22 = v21;

    v23 = *MEMORY[0x1E69671D0];
LABEL_11:
    [v16 setObject:v22 forKeyedSubscript:v23];

    goto LABEL_12;
  }

  v24 = [a1 userInfo];
  v23 = *MEMORY[0x1E69671D0];
  v22 = [v24 objectForKeyedSubscript:*MEMORY[0x1E69671D0]];

  if (v22)
  {
    goto LABEL_11;
  }

LABEL_12:
  v25 = v31;
  v26 = v16;

  return v16;
}

+ (id)_getFirstCloudKitUnderlyingError:()BRFPAdditions
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = [v5 isEqualToString:*MEMORY[0x1E695B740]];

    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v8 = MEMORY[0x1E696ABC0];
      v9 = [v4 userInfo];
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
      v7 = [v8 _getFirstCloudKitUnderlyingError:v10];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_createWrappedErrorWithDomain:()BRFPAdditions code:
{
  v6 = a3;
  if ([a1 code] == a4)
  {
    v7 = [a1 domain];
    v8 = [v6 isEqualToString:v7] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = MEMORY[0x1E696ABC0];
  v10 = [a1 _br_populateUserInfoDictWithDomain:v6 code:a4 setSelfAsUnderlyingError:v8];
  v11 = [v9 errorWithDomain:v6 code:a4 userInfo:v10];

  return v11;
}

- (id)_br_fileProviderErrorWithFallbackFileProviderErrorCode:()BRFPAdditions
{
  v19 = 0;
  if ([a1 _br_getFileProviderDomainErrorCode:&v19])
  {
    v5 = *MEMORY[0x1E6967188];
    v6 = v19;
    v7 = a1;
    goto LABEL_3;
  }

  v10 = [a1 br_isGenericDownloadError];
  v11 = [a1 domain];
  v12 = v11;
  if (!v10)
  {
    v14 = [v11 isEqualToString:@"BRCloudDocsErrorDomain"];

    if (!v14)
    {
      v15 = [a1 domain];
      v16 = *MEMORY[0x1E696A250];
      if ([v15 isEqualToString:*MEMORY[0x1E696A250]])
      {
      }

      else
      {
        v17 = [a1 domain];
        v18 = [v17 isEqualToString:*MEMORY[0x1E6967188]];

        if ((v18 & 1) == 0)
        {
          v7 = a1;
          v5 = v16;
          v6 = 4101;
          goto LABEL_3;
        }
      }

      v8 = a1;
      goto LABEL_4;
    }

    v5 = *MEMORY[0x1E6967188];
    v7 = a1;
    v6 = a3;
LABEL_3:
    v8 = [v7 _createWrappedErrorWithDomain:v5 code:v6];
LABEL_4:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = [a1 _createWrappedErrorWithDomain:v11 code:{objc_msgSend(a1, "code")}];

LABEL_7:

  return v9;
}

@end