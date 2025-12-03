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

  domain = [self domain];
  v6 = [domain isEqualToString:*MEMORY[0x1E696A250]];

  if (v6)
  {
    v7 = &_br_getFileProviderDomainErrorCode__cocoaErrorToFPError;
    goto LABEL_13;
  }

  domain2 = [self domain];
  v9 = [domain2 isEqualToString:@"BRCloudDocsErrorDomain"];

  if (v9)
  {
    if ([self code] == 17)
    {
      userInfo = [self userInfo];
      v11 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

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
      v19 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(self, "code")}];
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

  domain3 = [self domain];
  v14 = [domain3 isEqualToString:*MEMORY[0x1E695B740]];

  if (!v14)
  {
    domain4 = [self domain];
    v22 = [domain4 isEqualToString:*MEMORY[0x1E696A978]];

    if (v22)
    {
      v16 = -1004;
    }

    else
    {
      domain5 = [self domain];
      v33 = [domain5 isEqualToString:@"ICDClientSideCollaborationErrorDomain"];

      if (!v33)
      {
LABEL_17:
        v12 = 0;
        goto LABEL_22;
      }

      if ([self code] != 5)
      {
        goto LABEL_21;
      }

      v16 = -2015;
    }

LABEL_20:
    *a3 = v16;
    goto LABEL_21;
  }

  [self br_suggestedRetryTimeInterval];
  if (v15 > 0.0)
  {
    v16 = *MEMORY[0x1E69671C0];
    goto LABEL_20;
  }

  if ([self code] != 2)
  {
    v7 = &_br_getFileProviderDomainErrorCode__cloudKitErrorToFPError;
    goto LABEL_13;
  }

  userInfo2 = [self userInfo];
  v26 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E695B798]];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  objectEnumerator = [v26 objectEnumerator];
  v28 = [objectEnumerator countByEnumeratingWithState:&v34 objects:v38 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v34 + 1) + 8 * i) _br_getFileProviderDomainErrorCode:a3])
        {
          v12 = 1;
          goto LABEL_38;
        }
      }

      v29 = [objectEnumerator countByEnumeratingWithState:&v34 objects:v38 count:16];
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
  if ([self br_isCloudDocsErrorCode:17])
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    underlyingErrors = [self underlyingErrors];
    v6 = [underlyingErrors countByEnumeratingWithState:&v48 objects:v53 count:16];
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
            objc_enumerationMutation(underlyingErrors);
          }

          v10 = *(*(&v48 + 1) + 8 * i);
          if ([v10 br_isCKErrorCode:115])
          {
            neediCloudTermsAcceptanceDeviceSpecificMessage = [MEMORY[0x1E698B990] neediCloudTermsAcceptanceDeviceSpecificMessage];
            neediCloudTermsAcceptanceTitle = [MEMORY[0x1E698B990] neediCloudTermsAcceptanceTitle];
            goto LABEL_36;
          }

          if ([v10 br_isCKErrorCode:3])
          {
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            underlyingErrors2 = [v10 underlyingErrors];
            neediCloudTermsAcceptanceTitle = [underlyingErrors2 countByEnumeratingWithState:&v44 objects:v52 count:16];
            if (neediCloudTermsAcceptanceTitle)
            {
              v25 = *v45;
              while (2)
              {
                for (j = 0; j != neediCloudTermsAcceptanceTitle; j = j + 1)
                {
                  if (*v45 != v25)
                  {
                    objc_enumerationMutation(underlyingErrors2);
                  }

                  v27 = *(*(&v44 + 1) + 8 * j);
                  if ([v27 br_isNSURLErrorCode:-1009])
                  {
                    userInfo = [v27 userInfo];
                    v29 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A9A0]];

                    if (v29 && ([v29 intValue] == 1 || !objc_msgSend(v29, "intValue")))
                    {
                      v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
                      neediCloudTermsAcceptanceTitle = _BRLocalizedStringWithFormat(@"ICD_CELLULAR_DISABLED_TITLE", @"Localizable", v30, v31, v32, v33, v34, v35, v44);

                      if (MGGetBoolAnswer())
                      {
                        v36 = @"ICD_CELLULAR_DISABLED_CH_BODY";
                      }

                      else
                      {
                        v36 = @"ICD_CELLULAR_DISABLED_BODY";
                      }

                      v37 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
                      neediCloudTermsAcceptanceDeviceSpecificMessage = _BRLocalizedStringWithFormat(v36, @"Localizable", v37, v38, v39, v40, v41, v42, v44);
                    }

                    else
                    {
                      neediCloudTermsAcceptanceTitle = 0;
                      neediCloudTermsAcceptanceDeviceSpecificMessage = 0;
                    }

                    goto LABEL_35;
                  }
                }

                neediCloudTermsAcceptanceTitle = [underlyingErrors2 countByEnumeratingWithState:&v44 objects:v52 count:16];
                if (neediCloudTermsAcceptanceTitle)
                {
                  continue;
                }

                break;
              }
            }

            neediCloudTermsAcceptanceDeviceSpecificMessage = 0;
LABEL_35:

            goto LABEL_36;
          }
        }

        v7 = [underlyingErrors countByEnumeratingWithState:&v48 objects:v53 count:16];
        neediCloudTermsAcceptanceTitle = 0;
        neediCloudTermsAcceptanceDeviceSpecificMessage = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      neediCloudTermsAcceptanceTitle = 0;
      neediCloudTermsAcceptanceDeviceSpecificMessage = 0;
    }
  }

  else
  {
    if (![self br_isGenericDownloadError])
    {
      neediCloudTermsAcceptanceDeviceSpecificMessage = 0;
      goto LABEL_40;
    }

    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    neediCloudTermsAcceptanceTitle = _BRLocalizedStringWithFormat(@"DOWNLOAD_GENERIC_ERROR_HEADER", @"Localizable", v13, v14, v15, v16, v17, v18, v44);

    underlyingErrors = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    neediCloudTermsAcceptanceDeviceSpecificMessage = _BRLocalizedStringWithFormat(@"DOWNLOAD_GENERIC_ERROR_MESSAGE", @"Localizable", underlyingErrors, v19, v20, v21, v22, v23, v44);
  }

LABEL_36:

  if (neediCloudTermsAcceptanceDeviceSpecificMessage)
  {
    [v4 setObject:neediCloudTermsAcceptanceDeviceSpecificMessage forKeyedSubscript:*MEMORY[0x1E696A588]];
  }

  if (neediCloudTermsAcceptanceTitle)
  {
    [v4 setObject:neediCloudTermsAcceptanceTitle forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

LABEL_40:

  v43 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_isTransientError:()BRFPAdditions code:
{
  v6 = a3;
  if ([self code] == 152 || objc_msgSend(self, "code") == 163 || !objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E6967188]))
  {
    br_isGenericDownloadError = [self br_isGenericDownloadError];
  }

  else
  {
    br_isGenericDownloadError = a4 == -2005 || *MEMORY[0x1E69671C0] == a4;
  }

  return br_isGenericDownloadError;
}

- (id)_br_populateUserInfoDictWithDomain:()BRFPAdditions code:setSelfAsUnderlyingError:
{
  v8 = a3;
  if (_br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError__once != -1)
  {
    [NSError(BRFPAdditions) _br_populateUserInfoDictWithDomain:code:setSelfAsUnderlyingError:];
  }

  userInfo = [self userInfo];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = _br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError__brUserInfoKeyToFPUserInfoKey;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __91__NSError_BRFPAdditions___br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError___block_invoke_2;
  v32[3] = &unk_1E7A14DF8;
  v12 = userInfo;
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
  selfCopy = self;
  v16 = v13;
  v31 = v16;
  [v14 enumerateKeysAndObjectsUsingBlock:v28];
  if ([self _isTransientError:v8 code:a4])
  {
    [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69671F0]];
  }

  [self _br_populateErrorMessageOnUserInfo:v16];
  if (a5)
  {
    [v16 setObject:self forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  else
  {
    userInfo2 = [self userInfo];
    v18 = *MEMORY[0x1E696AA08];
    v19 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    [v16 setObject:v19 forKeyedSubscript:v18];
  }

  v20 = [MEMORY[0x1E696ABC0] _getFirstCloudKitUnderlyingError:self];
  br_suggestedRetryDate = [v20 br_suggestedRetryDate];
  if (br_suggestedRetryDate)
  {
    v22 = br_suggestedRetryDate;

    v23 = *MEMORY[0x1E69671D0];
LABEL_11:
    [v16 setObject:v22 forKeyedSubscript:v23];

    goto LABEL_12;
  }

  userInfo3 = [self userInfo];
  v23 = *MEMORY[0x1E69671D0];
  v22 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x1E69671D0]];

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
    domain = [v3 domain];
    v6 = [domain isEqualToString:*MEMORY[0x1E695B740]];

    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v8 = MEMORY[0x1E696ABC0];
      userInfo = [v4 userInfo];
      v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
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
  if ([self code] == a4)
  {
    domain = [self domain];
    v8 = [v6 isEqualToString:domain] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = MEMORY[0x1E696ABC0];
  v10 = [self _br_populateUserInfoDictWithDomain:v6 code:a4 setSelfAsUnderlyingError:v8];
  v11 = [v9 errorWithDomain:v6 code:a4 userInfo:v10];

  return v11;
}

- (id)_br_fileProviderErrorWithFallbackFileProviderErrorCode:()BRFPAdditions
{
  v19 = 0;
  if ([self _br_getFileProviderDomainErrorCode:&v19])
  {
    v5 = *MEMORY[0x1E6967188];
    v6 = v19;
    selfCopy4 = self;
    goto LABEL_3;
  }

  br_isGenericDownloadError = [self br_isGenericDownloadError];
  domain = [self domain];
  v12 = domain;
  if (!br_isGenericDownloadError)
  {
    v14 = [domain isEqualToString:@"BRCloudDocsErrorDomain"];

    if (!v14)
    {
      domain2 = [self domain];
      v16 = *MEMORY[0x1E696A250];
      if ([domain2 isEqualToString:*MEMORY[0x1E696A250]])
      {
      }

      else
      {
        domain3 = [self domain];
        v18 = [domain3 isEqualToString:*MEMORY[0x1E6967188]];

        if ((v18 & 1) == 0)
        {
          selfCopy4 = self;
          v5 = v16;
          v6 = 4101;
          goto LABEL_3;
        }
      }

      selfCopy3 = self;
      goto LABEL_4;
    }

    v5 = *MEMORY[0x1E6967188];
    selfCopy4 = self;
    v6 = a3;
LABEL_3:
    selfCopy3 = [selfCopy4 _createWrappedErrorWithDomain:v5 code:v6];
LABEL_4:
    v9 = selfCopy3;
    goto LABEL_7;
  }

  v9 = [self _createWrappedErrorWithDomain:domain code:{objc_msgSend(self, "code")}];

LABEL_7:

  return v9;
}

@end