@interface DSErrorDescriptor
+ (void)initialize;
- (BOOL)errorOverridesCustomTextFormatting:(id)a3;
- (BOOL)isDSSourceError:(id)a3;
- (BOOL)isHomeStopSharingPINFailed:(id)a3;
- (BOOL)isStopSharingRestrictionsEnabled:(id)a3;
- (DSErrorDescriptor)initWithFetchSharingError:(id)a3;
- (DSErrorDescriptor)initWithStopSharingErrors:(id)a3;
- (id)customMessageForError:(id)a3 fromSource:(id)a4 descriptorKey:(id)a5;
- (id)customMessageForError:(id)a3 fromSources:(id)a4 descriptorKey:(id)a5;
- (id)descriptorKeyForDSSourceErrorCode:(int64_t)a3;
- (id)errorMessageForType:(id)a3;
- (id)multipleDSSourceErrorMessageWithType:(id)a3 withCode:(id)a4;
- (id)multipleNameMessageFormatForError:(id)a3;
- (id)namelessTitleForError:(id)a3;
- (id)singleDSSourceErrorMessageWithType:(id)a3 withCode:(id)a4;
- (id)singleNameMessageFormatForError:(id)a3;
- (id)singleNameTitleFormatForError:(id)a3;
- (void)_describeErrorsWithType:(id)a3;
@end

@implementation DSErrorDescriptor

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = os_log_create("com.apple.DigitalSeparation", "DSErrorDescriptor");
    v3 = DSLogErrorDescriptor;
    DSLogErrorDescriptor = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

- (DSErrorDescriptor)initWithFetchSharingError:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DSErrorDescriptor;
  v5 = [(DSErrorDescriptor *)&v9 init];
  if (v5)
  {
    v10[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [(DSErrorDescriptor *)v5 setErrors:v6];

    [(DSErrorDescriptor *)v5 _describeErrorsWithType:@"FETCH_SHARING_FAILED"];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (DSErrorDescriptor)initWithStopSharingErrors:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DSErrorDescriptor;
  v5 = [(DSErrorDescriptor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DSErrorDescriptor *)v5 setErrors:v4];
    [(DSErrorDescriptor *)v6 _describeErrorsWithType:@"STOP_SHARING_FAILED"];
  }

  return v6;
}

- (void)_describeErrorsWithType:(id)a3
{
  v29 = a3;
  v4 = [(DSErrorDescriptor *)self errorMessageForType:?];
  v5 = [(DSErrorDescriptor *)self localizedAppNames];
  v6 = [v5 count];

  if (!v6)
  {
    v12 = [(DSErrorDescriptor *)self namelessTitleForError:v29];
    [(DSErrorDescriptor *)self setLocalizedTitle:v12];

    v10 = DSUILocStringForKey(v29);
    v13 = self;
    v14 = v10;
LABEL_11:
    [(DSErrorDescriptor *)v13 setLocalizedMessage:v14];
    goto LABEL_14;
  }

  v7 = [(DSErrorDescriptor *)self localizedAppNames];
  v8 = [v7 count];

  if (v8 == 1)
  {
    v9 = [(DSErrorDescriptor *)self localizedAppNames];
    v10 = [v9 firstObject];

    v11 = [(DSErrorDescriptor *)self localizedTitle];
    if (v11)
    {
      [(DSErrorDescriptor *)self setLocalizedTitle:v11];
    }

    else
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = [(DSErrorDescriptor *)self singleNameTitleFormatForError:v29];
      v22 = [v20 stringWithFormat:v21, v10];
      [(DSErrorDescriptor *)self setLocalizedTitle:v22];
    }

    if (v4)
    {
      goto LABEL_10;
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = [(DSErrorDescriptor *)self singleNameMessageFormatForError:v29];
  }

  else
  {
    v15 = MEMORY[0x277CCAAF0];
    v16 = [(DSErrorDescriptor *)self localizedAppNames];
    v10 = [v15 localizedStringByJoiningStrings:v16];

    v17 = [(DSErrorDescriptor *)self namelessTitleForError:v29];
    [(DSErrorDescriptor *)self setLocalizedTitle:v17];

    if (v4)
    {
LABEL_10:
      v13 = self;
      v14 = v4;
      goto LABEL_11;
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = [(DSErrorDescriptor *)self multipleNameMessageFormatForError:v29];
  }

  v23 = v19;
  v24 = [v18 stringWithFormat:v19, v10];
  [(DSErrorDescriptor *)self setLocalizedMessage:v24];

LABEL_14:
  if (os_variant_has_internal_content())
  {
    v25 = MEMORY[0x277CCACA8];
    v26 = [(DSErrorDescriptor *)self localizedMessage];
    v27 = [(DSErrorDescriptor *)self errors];
    v28 = [v25 stringWithFormat:@"%@\n\nInternal Only: %@", v26, v27];
    [(DSErrorDescriptor *)self setLocalizedMessage:v28];
  }
}

- (id)errorMessageForType:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v38 = [MEMORY[0x277CBEB58] set];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v44 = self;
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
        v7 = [v6 ds_localizedAppNames];
        if ([v7 count])
        {
          v42 = v7;
          v43 = i;
          [v38 addObjectsFromArray:v7];
          v8 = [v6 ds_sourcesByPresentableError];
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v9 = [v8 allKeys];
          v10 = [v9 countByEnumeratingWithState:&v51 objects:v60 count:16];
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
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v51 + 1) + 8 * j);
                v15 = [v8 objectForKeyedSubscript:v14];
                if ([v15 count])
                {
                  v16 = [v4 objectForKey:v14];
                  if (v16)
                  {
                    [v4 objectForKey:v14];
                  }

                  else
                  {
                    [MEMORY[0x277CBEB18] array];
                  }
                  v17 = ;

                  [v17 addObjectsFromArray:v15];
                  [v4 setObject:v17 forKey:v14];
                  v45 += [v15 count];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v51 objects:v60 count:16];
            }

            while (v11);
          }

          v7 = v42;
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

  v18 = [v38 allObjects];
  [(DSErrorDescriptor *)v44 setLocalizedAppNames:v18];

  v19 = [v4 allKeys];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __41__DSErrorDescriptor_errorMessageForType___block_invoke;
  v50[3] = &unk_278F75CA0;
  v50[4] = v44;
  v20 = [v19 sortedArrayUsingComparator:v50];

  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [MEMORY[0x277CBEB18] array];
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
        v29 = [v4 objectForKeyedSubscript:v28];
        v30 = [(DSErrorDescriptor *)v44 customMessageForError:v28 fromSources:v29 descriptorKey:v40];
        if (v30)
        {
          [v21 addObject:v30];
          if ([(DSErrorDescriptor *)v44 errorOverridesCustomTextFormatting:v28])
          {
            [v22 addObject:v30];
          }
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v25);
  }

  if (![v21 count] || v45 != objc_msgSend(v38, "count"))
  {
    if (![v22 count])
    {
      v33 = 0;
      goto LABEL_47;
    }

    if ([v22 count] == 1)
    {
      v31 = v22;
      goto LABEL_41;
    }

    v34 = v22;
LABEL_45:
    v32 = [v34 componentsJoinedByString:@"\n"];
    goto LABEL_46;
  }

  if ([v21 count] != 1)
  {
    v34 = v21;
    goto LABEL_45;
  }

  v31 = v21;
LABEL_41:
  v32 = [v31 firstObject];
LABEL_46:
  v33 = v32;
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

- (id)customMessageForError:(id)a3 fromSources:(id)a4 descriptorKey:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 count] > 1)
  {
    v27 = a2;
    v28 = v9;
    v12 = [MEMORY[0x277CBEB18] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v10;
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
          v20 = [v19 localizedAppName];

          [v12 addObject:v20];
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    v21 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v12];
    v9 = v28;
    if ([(DSErrorDescriptor *)self isStopSharingRestrictionsEnabled:v28])
    {
      if (([v11 isEqualToString:@"STOP_SHARING_FAILED"] & 1) == 0)
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
      v24 = [(DSErrorDescriptor *)self multipleDSSourceErrorMessageWithType:v11 withCode:v23];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:v24, v21];
    }

LABEL_21:
    goto LABEL_22;
  }

  if (![v10 count])
  {
    v13 = 0;
    goto LABEL_23;
  }

  v12 = [v10 firstObject];
  v13 = [(DSErrorDescriptor *)self customMessageForError:v9 fromSource:v12 descriptorKey:v11];
LABEL_22:

LABEL_23:
  v25 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)customMessageForError:(id)a3 fromSource:(id)a4 descriptorKey:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = MEMORY[0x277D054C0];
  v12 = a4;
  v13 = [v11 sourceDescriptorForSource:v12];
  v14 = [v13 localizedAppName];

  LODWORD(v13) = [v12 isEqualToString:*MEMORY[0x277D05460]];
  if (!v13 || ![(DSErrorDescriptor *)self isHomeStopSharingPINFailed:v9])
  {
    if ([(DSErrorDescriptor *)self isStopSharingRestrictionsEnabled:v9])
    {
      if (([v10 isEqualToString:@"STOP_SHARING_FAILED"] & 1) == 0)
      {
        [DSErrorDescriptor customMessageForError:a2 fromSource:self descriptorKey:?];
      }

      v17 = DSUILocStringForKey(@"STOP_SHARING_SOURCE_FAILED_RESTRICTIONS_SINGLE_APP");
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:v17, v14];
    }

    else
    {
      if (!-[DSErrorDescriptor isDSSourceError:](self, "isDSSourceError:", v9) || (-[DSErrorDescriptor descriptorKeyForDSSourceErrorCode:](self, "descriptorKeyForDSSourceErrorCode:", [v9 code]), (v18 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v16 = 0;
        goto LABEL_15;
      }

      v17 = v18;
      v19 = [(DSErrorDescriptor *)self singleDSSourceErrorMessageWithType:v10 withCode:v18];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:v19, v14];
    }

    goto LABEL_15;
  }

  if (([v10 isEqualToString:@"STOP_SHARING_FAILED"] & 1) == 0)
  {
    [DSErrorDescriptor customMessageForError:a2 fromSource:self descriptorKey:?];
  }

  v15 = DSUILocStringForKey(@"STOP_SHARING_FAILED_WITH_PIN_CODE_ERROR_MESSAGE");
  [(DSErrorDescriptor *)self setLocalizedTitle:v15];

  v16 = DSUILocStringForKey(@"STOP_SHARING_FAILED_WITH_PIN_CODE_ERROR_TITLE");
LABEL_15:

  return v16;
}

- (id)namelessTitleForError:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = a3;
  v10[1] = @"TITLE";
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v10 count:2];

  v6 = [v5 componentsJoinedByString:@"_"];

  v7 = DSUILocStringForKey(v6);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)singleNameTitleFormatForError:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = @"TITLE";
  v12 = @"WITH_APP_NAME";
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v10 count:3];

  v6 = [v5 componentsJoinedByString:{@"_", v10, v11, v12, v13}];

  v7 = DSUILocStringForKey(v6);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)singleNameMessageFormatForError:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = a3;
  v10[1] = @"WITH_APP_NAME";
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v10 count:2];

  v6 = [v5 componentsJoinedByString:@"_"];

  v7 = DSUILocStringForKey(v6);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)multipleNameMessageFormatForError:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = a3;
  v10[1] = @"WITH_MULTIPLE_APPS";
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v10 count:2];

  v6 = [v5 componentsJoinedByString:@"_"];

  v7 = DSUILocStringForKey(v6);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)singleDSSourceErrorMessageWithType:(id)a3 withCode:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = @"WITH_APP_NAME";
  v15 = a4;
  v5 = MEMORY[0x277CBEA60];
  v6 = a4;
  v7 = a3;
  v8 = [v5 arrayWithObjects:&v13 count:3];

  v9 = [v8 componentsJoinedByString:{@"_", v13, v14, v15, v16}];
  v10 = DSUILocStringForKey(v9);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)multipleDSSourceErrorMessageWithType:(id)a3 withCode:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = @"WITH_MULTIPLE_APPS";
  v15 = a4;
  v5 = MEMORY[0x277CBEA60];
  v6 = a4;
  v7 = a3;
  v8 = [v5 arrayWithObjects:&v13 count:3];

  v9 = [v8 componentsJoinedByString:{@"_", v13, v14, v15, v16}];
  v10 = DSUILocStringForKey(v9);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)descriptorKeyForDSSourceErrorCode:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_278F75CC0[a3];
  }
}

- (BOOL)errorOverridesCustomTextFormatting:(id)a3
{
  v3 = [a3 domain];
  v4 = [v3 isEqualToString:*MEMORY[0x277D05448]];

  return v4 ^ 1;
}

- (BOOL)isHomeStopSharingPINFailed:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277D05430]])
  {
    v5 = [v3 underlyingErrors];
    v6 = [v5 firstObject];
  }

  else
  {
    v6 = v3;
  }

  v7 = [v6 domain];
  if ([v7 isEqualToString:@"HMDigitalSeparationErrorDomain"])
  {
    v8 = [v6 code] == 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isStopSharingRestrictionsEnabled:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277D05430]])
  {
    v5 = [v3 code] == 6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isDSSourceError:(id)a3
{
  v3 = [a3 domain];
  v4 = [v3 isEqualToString:*MEMORY[0x277D05448]];

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