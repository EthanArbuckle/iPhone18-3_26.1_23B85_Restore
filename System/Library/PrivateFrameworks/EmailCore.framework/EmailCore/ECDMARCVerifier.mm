@interface ECDMARCVerifier
+ (int64_t)_alignmentForDKIMSigningDomain:(id)a3 andSenderDomain:(id)a4 senderOrganizationDomain:(id *)a5 onlyCheckStrictAlignment:(BOOL)a6;
+ (void)partitionDKIMSignatureHeadersByIdentifierAlignment:(id)a3 forSender:(id)a4 strictAligned:(id *)a5 relaxedAligned:(id *)a6 unaligned:(id *)a7;
- (ECDMARCVerifier)initWithRecordSource:(id)a3;
- (id)_recordsForDomain:(id)a3 error:(id *)a4;
- (int64_t)_alignmentModeForDMARCRecord:(id)a3;
- (int64_t)_policyForTag:(id)a3 dmarcRecord:(id)a4;
- (int64_t)dmarcStatusForSender:(id)a3 dkimResult:(BOOL)a4 identifierAlignment:(int64_t)a5 receiverPolicy:(int64_t *)a6;
@end

@implementation ECDMARCVerifier

+ (int64_t)_alignmentForDKIMSigningDomain:(id)a3 andSenderDomain:(id)a4 senderOrganizationDomain:(id *)a5 onlyCheckStrictAlignment:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  if ([v9 ef_caseInsensitiveIsEqualToString:v10])
  {
    v11 = 2;
  }

  else
  {
    if (a6)
    {
      goto LABEL_10;
    }

    if (!a5 || (v12 = *a5) == 0)
    {
      v13 = [v10 _lp_highLevelDomainFromHost];
      v12 = v13;
      if (a5)
      {
        v14 = v13;
        *a5 = v12;
      }
    }

    v15 = [v9 _lp_highLevelDomainFromHost];
    v16 = [v15 ef_caseInsensitiveIsEqualToString:v12];

    if ((v16 & 1) == 0)
    {
LABEL_10:
      v11 = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  return v11;
}

+ (void)partitionDKIMSignatureHeadersByIdentifierAlignment:(id)a3 forSender:(id)a4 strictAligned:(id *)a5 relaxedAligned:(id *)a6 unaligned:(id *)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v25 = a4;
  v12 = [v25 domain];
  if ([v12 length])
  {
    if (a5)
    {
      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (a6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v27 = 0;
      if (a6)
      {
LABEL_4:
        v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (a7)
        {
LABEL_5:
          v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
          goto LABEL_15;
        }

LABEL_14:
        v30 = 0;
LABEL_15:
        if (!v27 && !v28 && !v30)
        {
          goto LABEL_40;
        }

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        obj = v26;
        v31 = v12;
        v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        v24 = a6;
        v23 = a7;
        v14 = 0;
        if (!v13)
        {
          goto LABEL_33;
        }

        v15 = *v34;
        while (1)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v34 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v33 + 1) + 8 * i);
            v18 = [v17 signingDomainIdentifier];
            if (![v18 length])
            {
              [v30 addObject:v17];
              goto LABEL_31;
            }

            v32 = v14;
            v19 = [a1 _alignmentForDKIMSigningDomain:v18 andSenderDomain:v31 senderOrganizationDomain:&v32 onlyCheckStrictAlignment:(v28 | v30) == 0];
            v20 = v32;

            v14 = v20;
            if (!v19)
            {
              v21 = v30;
LABEL_30:
              [v21 addObject:v17];
              goto LABEL_31;
            }

            v21 = v28;
            if (v19 == 1)
            {
              goto LABEL_30;
            }

            v21 = v27;
            if (v19 == 2)
            {
              goto LABEL_30;
            }

LABEL_31:
          }

          v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (!v13)
          {
LABEL_33:

            if (a5)
            {
              *a5 = [v27 ef_notEmpty];
            }

            if (v24)
            {
              *v24 = [v28 ef_notEmpty];
            }

            if (v23)
            {
              *v23 = [v30 ef_notEmpty];
            }

            v12 = v31;
            goto LABEL_40;
          }
        }
      }
    }

    v28 = 0;
    if (a7)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = v26;
  }

LABEL_40:

  v22 = *MEMORY[0x277D85DE8];
}

- (ECDMARCVerifier)initWithRecordSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ECDMARCVerifier;
  v6 = [(ECDMARCVerifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recordSource, a3);
  }

  return v7;
}

- (int64_t)dmarcStatusForSender:(id)a3 dkimResult:(BOOL)a4 identifierAlignment:(int64_t)a5 receiverPolicy:(int64_t *)a6
{
  v8 = a4;
  v10 = a3;
  v11 = v10;
  if (a6)
  {
    *a6 = 0;
  }

  if (a5 == 2 && v8)
  {
    v12 = 2;
  }

  else
  {
    v13 = [v10 domain];
    v14 = [v13 _lp_highLevelDomainFromHost];
    if (v14)
    {
      v25 = 0;
      v15 = [(ECDMARCVerifier *)self _recordsForDomain:v13 error:&v25];
      v23 = v25;
      v16 = [v15 count];
      if (!v16)
      {
        v24 = 0;
        v22 = [(ECDMARCVerifier *)self _recordsForDomain:v14 error:&v24];
        v17 = v24;

        v23 = v17;
        v15 = v22;
      }

      if ([v15 count] == 1 && (objc_msgSend(v15, "firstObject"), (v18 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        if (v16 || (v19 = [(ECDMARCVerifier *)self _policyForTag:@"sp" dmarcRecord:v18]) == 0)
        {
          v19 = [(ECDMARCVerifier *)self _policyForTag:@"p" dmarcRecord:v18];
        }

        if (a6)
        {
          *a6 = v19;
        }

        if (v8)
        {
          if ([(ECDMARCVerifier *)self _alignmentModeForDMARCRecord:v18]<= a5)
          {
            v12 = 2;
          }

          else
          {
            v12 = 3;
          }
        }

        else
        {
          v12 = 3;
        }

        v20 = v23;
      }

      else
      {
        v18 = 0;
        v20 = v23;
        if (v23)
        {
          v12 = 5;
        }

        else
        {
          v12 = 1;
        }
      }
    }

    else
    {
      v12 = 5;
    }
  }

  return v12;
}

- (int64_t)_policyForTag:(id)a3 dmarcRecord:(id)a4
{
  v4 = [a4 valueForTag:a3];
  if ([v4 isEqualToString:@"none"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"quarantine"])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"reject"])
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_alignmentModeForDMARCRecord:(id)a3
{
  v3 = [a3 valueForTag:@"adkim"];
  if ([v3 isEqualToString:@"s"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_recordsForDomain:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ECDMARCVerifier *)self recordSource];
  v8 = [v7 getDMARCRecordsFromDomain:v6 error:a4];

  v9 = [v8 ef_filter:&__block_literal_global_4];

  return v9;
}

uint64_t __43__ECDMARCVerifier__recordsForDomain_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 valueForTag:@"v"];
  v3 = [v2 isEqualToString:@"DMARC1"];

  return v3;
}

@end