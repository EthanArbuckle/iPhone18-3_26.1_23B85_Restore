@interface ECDMARCVerifier
+ (int64_t)_alignmentForDKIMSigningDomain:(id)domain andSenderDomain:(id)senderDomain senderOrganizationDomain:(id *)organizationDomain onlyCheckStrictAlignment:(BOOL)alignment;
+ (void)partitionDKIMSignatureHeadersByIdentifierAlignment:(id)alignment forSender:(id)sender strictAligned:(id *)aligned relaxedAligned:(id *)relaxedAligned unaligned:(id *)unaligned;
- (ECDMARCVerifier)initWithRecordSource:(id)source;
- (id)_recordsForDomain:(id)domain error:(id *)error;
- (int64_t)_alignmentModeForDMARCRecord:(id)record;
- (int64_t)_policyForTag:(id)tag dmarcRecord:(id)record;
- (int64_t)dmarcStatusForSender:(id)sender dkimResult:(BOOL)result identifierAlignment:(int64_t)alignment receiverPolicy:(int64_t *)policy;
@end

@implementation ECDMARCVerifier

+ (int64_t)_alignmentForDKIMSigningDomain:(id)domain andSenderDomain:(id)senderDomain senderOrganizationDomain:(id *)organizationDomain onlyCheckStrictAlignment:(BOOL)alignment
{
  domainCopy = domain;
  senderDomainCopy = senderDomain;
  if ([domainCopy ef_caseInsensitiveIsEqualToString:senderDomainCopy])
  {
    v11 = 2;
  }

  else
  {
    if (alignment)
    {
      goto LABEL_10;
    }

    if (!organizationDomain || (v12 = *organizationDomain) == 0)
    {
      _lp_highLevelDomainFromHost = [senderDomainCopy _lp_highLevelDomainFromHost];
      v12 = _lp_highLevelDomainFromHost;
      if (organizationDomain)
      {
        v14 = _lp_highLevelDomainFromHost;
        *organizationDomain = v12;
      }
    }

    _lp_highLevelDomainFromHost2 = [domainCopy _lp_highLevelDomainFromHost];
    v16 = [_lp_highLevelDomainFromHost2 ef_caseInsensitiveIsEqualToString:v12];

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

+ (void)partitionDKIMSignatureHeadersByIdentifierAlignment:(id)alignment forSender:(id)sender strictAligned:(id *)aligned relaxedAligned:(id *)relaxedAligned unaligned:(id *)unaligned
{
  v38 = *MEMORY[0x277D85DE8];
  alignmentCopy = alignment;
  senderCopy = sender;
  domain = [senderCopy domain];
  if ([domain length])
  {
    if (aligned)
    {
      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (relaxedAligned)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v27 = 0;
      if (relaxedAligned)
      {
LABEL_4:
        v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (unaligned)
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
        obj = alignmentCopy;
        v31 = domain;
        v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        relaxedAlignedCopy = relaxedAligned;
        unalignedCopy = unaligned;
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
            signingDomainIdentifier = [v17 signingDomainIdentifier];
            if (![signingDomainIdentifier length])
            {
              [v30 addObject:v17];
              goto LABEL_31;
            }

            v32 = v14;
            v19 = [self _alignmentForDKIMSigningDomain:signingDomainIdentifier andSenderDomain:v31 senderOrganizationDomain:&v32 onlyCheckStrictAlignment:(v28 | v30) == 0];
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

            if (aligned)
            {
              *aligned = [v27 ef_notEmpty];
            }

            if (relaxedAlignedCopy)
            {
              *relaxedAlignedCopy = [v28 ef_notEmpty];
            }

            if (unalignedCopy)
            {
              *unalignedCopy = [v30 ef_notEmpty];
            }

            domain = v31;
            goto LABEL_40;
          }
        }
      }
    }

    v28 = 0;
    if (unaligned)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  if (aligned)
  {
    *aligned = 0;
  }

  if (relaxedAligned)
  {
    *relaxedAligned = 0;
  }

  if (unaligned)
  {
    *unaligned = alignmentCopy;
  }

LABEL_40:

  v22 = *MEMORY[0x277D85DE8];
}

- (ECDMARCVerifier)initWithRecordSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = ECDMARCVerifier;
  v6 = [(ECDMARCVerifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recordSource, source);
  }

  return v7;
}

- (int64_t)dmarcStatusForSender:(id)sender dkimResult:(BOOL)result identifierAlignment:(int64_t)alignment receiverPolicy:(int64_t *)policy
{
  resultCopy = result;
  senderCopy = sender;
  v11 = senderCopy;
  if (policy)
  {
    *policy = 0;
  }

  if (alignment == 2 && resultCopy)
  {
    v12 = 2;
  }

  else
  {
    domain = [senderCopy domain];
    _lp_highLevelDomainFromHost = [domain _lp_highLevelDomainFromHost];
    if (_lp_highLevelDomainFromHost)
    {
      v25 = 0;
      v15 = [(ECDMARCVerifier *)self _recordsForDomain:domain error:&v25];
      v23 = v25;
      v16 = [v15 count];
      if (!v16)
      {
        v24 = 0;
        v22 = [(ECDMARCVerifier *)self _recordsForDomain:_lp_highLevelDomainFromHost error:&v24];
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

        if (policy)
        {
          *policy = v19;
        }

        if (resultCopy)
        {
          if ([(ECDMARCVerifier *)self _alignmentModeForDMARCRecord:v18]<= alignment)
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

- (int64_t)_policyForTag:(id)tag dmarcRecord:(id)record
{
  v4 = [record valueForTag:tag];
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

- (int64_t)_alignmentModeForDMARCRecord:(id)record
{
  v3 = [record valueForTag:@"adkim"];
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

- (id)_recordsForDomain:(id)domain error:(id *)error
{
  domainCopy = domain;
  recordSource = [(ECDMARCVerifier *)self recordSource];
  v8 = [recordSource getDMARCRecordsFromDomain:domainCopy error:error];

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