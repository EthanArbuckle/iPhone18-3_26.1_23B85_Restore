@interface DSErrorDescriptor
+ (void)initialize;
- (BOOL)errorOverridesCustomTextFormatting:(id)formatting;
- (BOOL)isDSSourceError:(id)error;
- (BOOL)isHomeStopSharingPINFailed:(id)failed;
- (BOOL)isStopSharingRestrictionsEnabled:(id)enabled;
- (DSErrorDescriptor)initWithFetchSharingError:(id)error;
- (DSErrorDescriptor)initWithStopSharingErrors:(id)errors;
- (id)customMessageForError:(id)error fromSource:(id)source descriptorKey:(id)key;
- (id)customMessageForError:(id)error fromSources:(id)sources descriptorKey:(id)key;
- (id)descriptorKeyForDSSourceErrorCode:(int64_t)code;
- (id)errorMessageForType:(id)type;
- (id)multipleDSSourceErrorMessageWithType:(id)type withCode:(id)code;
- (id)multipleNameMessageFormatForError:(id)error;
- (id)namelessTitleForError:(id)error;
- (id)singleDSSourceErrorMessageWithType:(id)type withCode:(id)code;
- (id)singleNameMessageFormatForError:(id)error;
- (id)singleNameTitleFormatForError:(id)error;
- (void)_describeErrorsWithType:(id)type;
@end

@implementation DSErrorDescriptor

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = os_log_create("com.apple.DigitalSeparation", "DSErrorDescriptor");
    v3 = DSLogErrorDescriptor;
    DSLogErrorDescriptor = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

- (DSErrorDescriptor)initWithFetchSharingError:(id)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = DSErrorDescriptor;
  v5 = [(DSErrorDescriptor *)&v9 init];
  if (v5)
  {
    v10[0] = errorCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [(DSErrorDescriptor *)v5 setErrors:v6];

    [(DSErrorDescriptor *)v5 _describeErrorsWithType:@"FETCH_SHARING_FAILED"];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (DSErrorDescriptor)initWithStopSharingErrors:(id)errors
{
  errorsCopy = errors;
  v8.receiver = self;
  v8.super_class = DSErrorDescriptor;
  v5 = [(DSErrorDescriptor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DSErrorDescriptor *)v5 setErrors:errorsCopy];
    [(DSErrorDescriptor *)v6 _describeErrorsWithType:@"STOP_SHARING_FAILED"];
  }

  return v6;
}

- (void)_describeErrorsWithType:(id)type
{
  typeCopy = type;
  v4 = [(DSErrorDescriptor *)self errorMessageForType:?];
  localizedAppNames = [(DSErrorDescriptor *)self localizedAppNames];
  v6 = [localizedAppNames count];

  if (!v6)
  {
    v12 = [(DSErrorDescriptor *)self namelessTitleForError:typeCopy];
    [(DSErrorDescriptor *)self setLocalizedTitle:v12];

    firstObject = DSUILocStringForKey(typeCopy);
    selfCopy2 = self;
    v14 = firstObject;
LABEL_11:
    [(DSErrorDescriptor *)selfCopy2 setLocalizedMessage:v14];
    goto LABEL_14;
  }

  localizedAppNames2 = [(DSErrorDescriptor *)self localizedAppNames];
  v8 = [localizedAppNames2 count];

  if (v8 == 1)
  {
    localizedAppNames3 = [(DSErrorDescriptor *)self localizedAppNames];
    firstObject = [localizedAppNames3 firstObject];

    localizedTitle = [(DSErrorDescriptor *)self localizedTitle];
    if (localizedTitle)
    {
      [(DSErrorDescriptor *)self setLocalizedTitle:localizedTitle];
    }

    else
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = [(DSErrorDescriptor *)self singleNameTitleFormatForError:typeCopy];
      v22 = [v20 stringWithFormat:v21, firstObject];
      [(DSErrorDescriptor *)self setLocalizedTitle:v22];
    }

    if (v4)
    {
      goto LABEL_10;
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = [(DSErrorDescriptor *)self singleNameMessageFormatForError:typeCopy];
  }

  else
  {
    v15 = MEMORY[0x277CCAAF0];
    localizedAppNames4 = [(DSErrorDescriptor *)self localizedAppNames];
    firstObject = [v15 localizedStringByJoiningStrings:localizedAppNames4];

    v17 = [(DSErrorDescriptor *)self namelessTitleForError:typeCopy];
    [(DSErrorDescriptor *)self setLocalizedTitle:v17];

    if (v4)
    {
LABEL_10:
      selfCopy2 = self;
      v14 = v4;
      goto LABEL_11;
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = [(DSErrorDescriptor *)self multipleNameMessageFormatForError:typeCopy];
  }

  v23 = v19;
  v24 = [v18 stringWithFormat:v19, firstObject];
  [(DSErrorDescriptor *)self setLocalizedMessage:v24];

LABEL_14:
  if (os_variant_has_internal_content())
  {
    v25 = MEMORY[0x277CCACA8];
    localizedMessage = [(DSErrorDescriptor *)self localizedMessage];
    errors = [(DSErrorDescriptor *)self errors];
    v28 = [v25 stringWithFormat:@"%@\n\nInternal Only: %@", localizedMessage, errors];
    [(DSErrorDescriptor *)self setLocalizedMessage:v28];
  }
}

- (id)errorMessageForType:(id)type
{
  v62 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v38 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  selfCopy = self;
  obj = [(DSErrorDescriptor *)self errors];
  v41 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v41)
  {
    v45 = 0;
    v39 = *v56;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v56 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v55 + 1) + 8 * i);
        ds_localizedAppNames = [v6 ds_localizedAppNames];
        if ([ds_localizedAppNames count])
        {
          v42 = ds_localizedAppNames;
          v43 = i;
          [v38 addObjectsFromArray:ds_localizedAppNames];
          ds_sourcesByPresentableError = [v6 ds_sourcesByPresentableError];
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          allKeys = [ds_sourcesByPresentableError allKeys];
          v10 = [allKeys countByEnumeratingWithState:&v51 objects:v60 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v52;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v52 != v12)
                {
                  objc_enumerationMutation(allKeys);
                }

                v14 = *(*(&v51 + 1) + 8 * j);
                v15 = [ds_sourcesByPresentableError objectForKeyedSubscript:v14];
                if ([v15 count])
                {
                  v16 = [dictionary objectForKey:v14];
                  if (v16)
                  {
                    [dictionary objectForKey:v14];
                  }

                  else
                  {
                    [MEMORY[0x277CBEB18] array];
                  }
                  v17 = ;

                  [v17 addObjectsFromArray:v15];
                  [dictionary setObject:v17 forKey:v14];
                  v45 += [v15 count];
                }
              }

              v11 = [allKeys countByEnumeratingWithState:&v51 objects:v60 count:16];
            }

            while (v11);
          }

          ds_localizedAppNames = v42;
          i = v43;
        }
      }

      v41 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v41);
  }

  else
  {
    v45 = 0;
  }

  allObjects = [v38 allObjects];
  [(DSErrorDescriptor *)selfCopy setLocalizedAppNames:allObjects];

  allKeys2 = [dictionary allKeys];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __41__DSErrorDescriptor_errorMessageForType___block_invoke;
  v50[3] = &unk_278F75CA0;
  v50[4] = selfCopy;
  v20 = [allKeys2 sortedArrayUsingComparator:v50];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v23 = v20;
  v24 = [v23 countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v47;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v47 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v46 + 1) + 8 * k);
        v29 = [dictionary objectForKeyedSubscript:v28];
        v30 = [(DSErrorDescriptor *)selfCopy customMessageForError:v28 fromSources:v29 descriptorKey:typeCopy];
        if (v30)
        {
          [array addObject:v30];
          if ([(DSErrorDescriptor *)selfCopy errorOverridesCustomTextFormatting:v28])
          {
            [array2 addObject:v30];
          }
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v25);
  }

  if (![array count] || v45 != objc_msgSend(v38, "count"))
  {
    if (![array2 count])
    {
      v33 = 0;
      goto LABEL_47;
    }

    if ([array2 count] == 1)
    {
      v31 = array2;
      goto LABEL_41;
    }

    v34 = array2;
LABEL_45:
    firstObject = [v34 componentsJoinedByString:@"\n"];
    goto LABEL_46;
  }

  if ([array count] != 1)
  {
    v34 = array;
    goto LABEL_45;
  }

  v31 = array;
LABEL_41:
  firstObject = [v31 firstObject];
LABEL_46:
  v33 = firstObject;
LABEL_47:

  v35 = *MEMORY[0x277D85DE8];

  return v33;
}

uint64_t __41__DSErrorDescriptor_errorMessageForType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) isHomeStopSharingPINFailed:v5];
  v8 = [*(a1 + 32) isHomeStopSharingPINFailed:v6];
  if (v7)
  {
    v9 = v8 - 1;
  }

  else if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = [*(a1 + 32) isStopSharingRestrictionsEnabled:v5];
    v11 = [*(a1 + 32) isStopSharingRestrictionsEnabled:v6];
    if (v10)
    {
      v9 = v11 - 1;
    }

    else
    {
      v9 = v11;
    }
  }

  return v9;
}

- (id)customMessageForError:(id)error fromSources:(id)sources descriptorKey:(id)key
{
  v34 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  sourcesCopy = sources;
  keyCopy = key;
  if ([sourcesCopy count] > 1)
  {
    v27 = a2;
    v28 = errorCopy;
    array = [MEMORY[0x277CBEB18] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = sourcesCopy;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [MEMORY[0x277D054C0] sourceDescriptorForSource:*(*(&v29 + 1) + 8 * i)];
          localizedAppName = [v19 localizedAppName];

          [array addObject:localizedAppName];
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    v21 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:array];
    errorCopy = v28;
    if ([(DSErrorDescriptor *)self isStopSharingRestrictionsEnabled:v28])
    {
      if (([keyCopy isEqualToString:@"STOP_SHARING_FAILED"] & 1) == 0)
      {
        [DSErrorDescriptor customMessageForError:v27 fromSources:self descriptorKey:?];
      }

      v22 = DSUILocStringForKey(@"STOP_SHARING_SOURCE_FAILED_RESTRICTIONS_MULTIPLE_APPS");
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:v22, v21];
    }

    else
    {
      if (!-[DSErrorDescriptor isDSSourceError:](self, "isDSSourceError:", v28) || (-[DSErrorDescriptor descriptorKeyForDSSourceErrorCode:](self, "descriptorKeyForDSSourceErrorCode:", [v28 code]), (v23 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v13 = 0;
        goto LABEL_21;
      }

      v22 = v23;
      v24 = [(DSErrorDescriptor *)self multipleDSSourceErrorMessageWithType:keyCopy withCode:v23];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:v24, v21];
    }

LABEL_21:
    goto LABEL_22;
  }

  if (![sourcesCopy count])
  {
    v13 = 0;
    goto LABEL_23;
  }

  array = [sourcesCopy firstObject];
  v13 = [(DSErrorDescriptor *)self customMessageForError:errorCopy fromSource:array descriptorKey:keyCopy];
LABEL_22:

LABEL_23:
  v25 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)customMessageForError:(id)error fromSource:(id)source descriptorKey:(id)key
{
  errorCopy = error;
  keyCopy = key;
  v11 = MEMORY[0x277D054C0];
  sourceCopy = source;
  v13 = [v11 sourceDescriptorForSource:sourceCopy];
  localizedAppName = [v13 localizedAppName];

  LODWORD(v13) = [sourceCopy isEqualToString:*MEMORY[0x277D05460]];
  if (!v13 || ![(DSErrorDescriptor *)self isHomeStopSharingPINFailed:errorCopy])
  {
    if ([(DSErrorDescriptor *)self isStopSharingRestrictionsEnabled:errorCopy])
    {
      if (([keyCopy isEqualToString:@"STOP_SHARING_FAILED"] & 1) == 0)
      {
        [DSErrorDescriptor customMessageForError:a2 fromSource:self descriptorKey:?];
      }

      v17 = DSUILocStringForKey(@"STOP_SHARING_SOURCE_FAILED_RESTRICTIONS_SINGLE_APP");
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:v17, localizedAppName];
    }

    else
    {
      if (!-[DSErrorDescriptor isDSSourceError:](self, "isDSSourceError:", errorCopy) || (-[DSErrorDescriptor descriptorKeyForDSSourceErrorCode:](self, "descriptorKeyForDSSourceErrorCode:", [errorCopy code]), (v18 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v16 = 0;
        goto LABEL_15;
      }

      v17 = v18;
      v19 = [(DSErrorDescriptor *)self singleDSSourceErrorMessageWithType:keyCopy withCode:v18];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:v19, localizedAppName];
    }

    goto LABEL_15;
  }

  if (([keyCopy isEqualToString:@"STOP_SHARING_FAILED"] & 1) == 0)
  {
    [DSErrorDescriptor customMessageForError:a2 fromSource:self descriptorKey:?];
  }

  v15 = DSUILocStringForKey(@"STOP_SHARING_FAILED_WITH_PIN_CODE_ERROR_MESSAGE");
  [(DSErrorDescriptor *)self setLocalizedTitle:v15];

  v16 = DSUILocStringForKey(@"STOP_SHARING_FAILED_WITH_PIN_CODE_ERROR_TITLE");
LABEL_15:

  return v16;
}

- (id)namelessTitleForError:(id)error
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = error;
  v10[1] = @"TITLE";
  v3 = MEMORY[0x277CBEA60];
  errorCopy = error;
  v5 = [v3 arrayWithObjects:v10 count:2];

  v6 = [v5 componentsJoinedByString:@"_"];

  v7 = DSUILocStringForKey(v6);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)singleNameTitleFormatForError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v11 = @"TITLE";
  v12 = @"WITH_APP_NAME";
  v3 = MEMORY[0x277CBEA60];
  errorCopy2 = error;
  v5 = [v3 arrayWithObjects:&errorCopy count:3];

  v6 = [v5 componentsJoinedByString:{@"_", errorCopy, v11, v12, v13}];

  v7 = DSUILocStringForKey(v6);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)singleNameMessageFormatForError:(id)error
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = error;
  v10[1] = @"WITH_APP_NAME";
  v3 = MEMORY[0x277CBEA60];
  errorCopy = error;
  v5 = [v3 arrayWithObjects:v10 count:2];

  v6 = [v5 componentsJoinedByString:@"_"];

  v7 = DSUILocStringForKey(v6);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)multipleNameMessageFormatForError:(id)error
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = error;
  v10[1] = @"WITH_MULTIPLE_APPS";
  v3 = MEMORY[0x277CBEA60];
  errorCopy = error;
  v5 = [v3 arrayWithObjects:v10 count:2];

  v6 = [v5 componentsJoinedByString:@"_"];

  v7 = DSUILocStringForKey(v6);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)singleDSSourceErrorMessageWithType:(id)type withCode:(id)code
{
  v16 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v14 = @"WITH_APP_NAME";
  codeCopy = code;
  v5 = MEMORY[0x277CBEA60];
  codeCopy2 = code;
  typeCopy2 = type;
  v8 = [v5 arrayWithObjects:&typeCopy count:3];

  v9 = [v8 componentsJoinedByString:{@"_", typeCopy, v14, codeCopy, v16}];
  v10 = DSUILocStringForKey(v9);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)multipleDSSourceErrorMessageWithType:(id)type withCode:(id)code
{
  v16 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v14 = @"WITH_MULTIPLE_APPS";
  codeCopy = code;
  v5 = MEMORY[0x277CBEA60];
  codeCopy2 = code;
  typeCopy2 = type;
  v8 = [v5 arrayWithObjects:&typeCopy count:3];

  v9 = [v8 componentsJoinedByString:{@"_", typeCopy, v14, codeCopy, v16}];
  v10 = DSUILocStringForKey(v9);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)descriptorKeyForDSSourceErrorCode:(int64_t)code
{
  if (code > 2)
  {
    return 0;
  }

  else
  {
    return off_278F75CC0[code];
  }
}

- (BOOL)errorOverridesCustomTextFormatting:(id)formatting
{
  domain = [formatting domain];
  v4 = [domain isEqualToString:*MEMORY[0x277D05448]];

  return v4 ^ 1;
}

- (BOOL)isHomeStopSharingPINFailed:(id)failed
{
  failedCopy = failed;
  domain = [failedCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277D05430]])
  {
    underlyingErrors = [failedCopy underlyingErrors];
    firstObject = [underlyingErrors firstObject];
  }

  else
  {
    firstObject = failedCopy;
  }

  domain2 = [firstObject domain];
  if ([domain2 isEqualToString:@"HMDigitalSeparationErrorDomain"])
  {
    v8 = [firstObject code] == 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isStopSharingRestrictionsEnabled:(id)enabled
{
  enabledCopy = enabled;
  domain = [enabledCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277D05430]])
  {
    v5 = [enabledCopy code] == 6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isDSSourceError:(id)error
{
  domain = [error domain];
  v4 = [domain isEqualToString:*MEMORY[0x277D05448]];

  return v4;
}

- (void)customMessageForError:(uint64_t)a1 fromSources:(uint64_t)a2 descriptorKey:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DSErrorDescriptor.m" lineNumber:170 description:@"SourceRestrictionsEnabled should only occur when stop sharing fails"];
}

- (void)customMessageForError:(uint64_t)a1 fromSource:(uint64_t)a2 descriptorKey:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DSErrorDescriptor.m" lineNumber:194 description:@"SourceRestrictionsEnabled should only occur when stop sharing fails"];
}

- (void)customMessageForError:(uint64_t)a1 fromSource:(uint64_t)a2 descriptorKey:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DSErrorDescriptor.m" lineNumber:189 description:@"HMDigitalSeparationError code 1 should only occur when stop sharing fails"];
}

@end