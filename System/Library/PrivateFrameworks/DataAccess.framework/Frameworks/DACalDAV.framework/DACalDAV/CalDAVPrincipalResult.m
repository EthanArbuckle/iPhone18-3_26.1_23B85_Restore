@interface CalDAVPrincipalResult
+ (id)resultFromResponse:(id)a3;
- (CalDAVPrincipalResult)init;
- (CalDAVPrincipalResult)initWithResponse:(id)a3;
- (NSString)emailAddress;
- (NSString)preferredCUAddress;
- (id)convertToDAContactSearchResultElement;
- (id)description;
- (void)addCUAddress:(id)a3;
- (void)addEmail:(id)a3;
@end

@implementation CalDAVPrincipalResult

- (id)convertToDAContactSearchResultElement
{
  v3 = objc_opt_new();
  v4 = [(CalDAVPrincipalResult *)self firstName];
  [v3 setFirstName:v4];

  v5 = [(CalDAVPrincipalResult *)self lastName];
  [v3 setLastName:v5];

  v6 = [(CalDAVPrincipalResult *)self displayName];
  [v3 setDisplayName:v6];

  v7 = [(CalDAVPrincipalResult *)self emailAddress];
  [v3 setEmailAddress:v7];

  v8 = [(CalDAVPrincipalResult *)self principalPath];
  [v3 setPrincipalPath:v8];

  v9 = [(CalDAVPrincipalResult *)self preferredCUAddress];
  [v3 setPreferredUserAddress:v9];

  v10 = [(CalDAVPrincipalResult *)self cuAddresses];
  [v3 setCuAddresses:v10];

  v11 = [v3 preferredUserAddress];
  [v3 setIdentifierOnServer:v11];

  return v3;
}

- (CalDAVPrincipalResult)init
{
  v7.receiver = self;
  v7.super_class = CalDAVPrincipalResult;
  v2 = [(CalDAVPrincipalResult *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(CalDAVPrincipalResult *)v2 setFirstName:0];
    [(CalDAVPrincipalResult *)v3 setLastName:0];
    [(CalDAVPrincipalResult *)v3 setDisplayName:0];
    [(CalDAVPrincipalResult *)v3 setResultType:CalDAVPrincipalResultType_Unknown];
    [(CalDAVPrincipalResult *)v3 setPrincipalPath:0];
    v4 = objc_opt_new();
    [(CalDAVPrincipalResult *)v3 setMCUAddresses:v4];

    v5 = objc_opt_new();
    [(CalDAVPrincipalResult *)v3 setMEmailAddresses:v5];
  }

  return v3;
}

- (CalDAVPrincipalResult)initWithResponse:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CalDAVPrincipalResult *)self init];
  if (!v5)
  {
    goto LABEL_30;
  }

  v6 = [v4 successfulPropertiesToValues];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __42__CalDAVPrincipalResult_initWithResponse___block_invoke;
  v64[3] = &unk_278F17E80;
  v7 = v6;
  v65 = v7;
  v8 = MEMORY[0x24C1D0520](v64);
  v9 = [v7 CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDEF8] andName:*MEMORY[0x277CFDFC0]];
  v10 = [v9 href];
  v11 = v10;
  v54 = v9;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v4 firstHref];
  }

  v13 = v12;

  v53 = v13;
  v14 = [v13 payloadAsOriginalURL];
  v15 = [v14 da_pathWithoutTrailingRemovingSlash];
  [(CalDAVPrincipalResult *)v5 setPrincipalPath:v15];

  v16 = v8[2](v8, 1);
  v17 = [v16 payloadAsString];
  [(CalDAVPrincipalResult *)v5 setFirstName:v17];

  v18 = v8[2](v8, 2);
  v19 = [v18 payloadAsString];
  [(CalDAVPrincipalResult *)v5 setLastName:v19];

  v20 = v8[2](v8, 3);
  v21 = [v20 payloadAsString];
  [(CalDAVPrincipalResult *)v5 setDisplayName:v21];

  v22 = v8[2](v8, 5);
  v23 = [v22 payloadAsString];
  v24 = [v23 da_trimWhiteSpace];

  v25 = v8[2](v8, 7);
  v26 = [v25 payloadAsString];
  v27 = [v26 da_trimWhiteSpace];

  [(CalDAVPrincipalResult *)v5 setResultType:CalDAVPrincipalResultType_Unknown];
  if (v24)
  {
    [(CalDAVPrincipalResult *)v5 setResultType:v24];
  }

  else if (v27)
  {
    v28 = [MEMORY[0x277CF7020] resultTypeForRecordType:v27];
    [(CalDAVPrincipalResult *)v5 setResultType:v28];
  }

  v52 = v27;
  v29 = v8[2](v8, 4);
  objc_opt_class();
  v55 = v7;
  if (objc_opt_isKindOfClass())
  {
    v51 = v4;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v30 = [v29 emailAddresses];
    v31 = [v30 countByEnumeratingWithState:&v60 objects:v67 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v61;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v61 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [*(*(&v60 + 1) + 8 * i) payloadAsString];
          [(CalDAVPrincipalResult *)v5 addEmail:v35];
        }

        v32 = [v30 countByEnumeratingWithState:&v60 objects:v67 count:16];
      }

      while (v32);
    }

    v4 = v51;
    v7 = v55;
  }

  v36 = v8[2](v8, 6);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v4;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v38 = [v36 hrefs];
    v39 = [v38 countByEnumeratingWithState:&v56 objects:v66 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v57;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v57 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = [*(*(&v56 + 1) + 8 * j) payloadAsString];
          [(CalDAVPrincipalResult *)v5 addCUAddress:v43];
        }

        v40 = [v38 countByEnumeratingWithState:&v56 objects:v66 count:16];
      }

      while (v40);
    }

    v4 = v37;
    v44 = v54;
    v7 = v55;
    v45 = v53;
  }

  else
  {
    v45 = v13;
    v44 = v54;
    if (v36)
    {
      v46 = objc_opt_class();
      NSLog(&cfstr_UnexpectedPars.isa, v46);
    }
  }

  v47 = [(CalDAVPrincipalResult *)v5 principalPath];

  if (!v47)
  {
    v48 = 0;
  }

  else
  {
LABEL_30:
    v48 = v5;
  }

  v49 = *MEMORY[0x277D85DE8];
  return v48;
}

id __42__CalDAVPrincipalResult_initWithResponse___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CF7020] namespaceAndNameForWellKnownType:a2];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];

  return v4;
}

+ (id)resultFromResponse:(id)a3
{
  v3 = a3;
  v4 = [[CalDAVPrincipalResult alloc] initWithResponse:v3];

  return v4;
}

- (void)addCUAddress:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = [(CalDAVPrincipalResult *)self mCUAddresses];
    [v4 addObject:v5];
  }
}

- (void)addEmail:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = [(CalDAVPrincipalResult *)self mEmailAddresses];
    [v4 addObject:v5];
  }
}

- (NSString)preferredCUAddress
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(CalDAVPrincipalResult *)self cuAddresses];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      if (!v6)
      {
        if ([*(*(&v14 + 1) + 8 * v8) da_hasPrefixCaseInsensitive:@"urn:uuid:"])
        {
          v6 = v9;
        }

        else
        {
          v6 = 0;
        }
      }

      if ([v9 da_hasPrefixCaseInsensitive:@"mailto:"])
      {
        break;
      }

      if (v5 == ++v8)
      {
        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    v10 = v9;

    if (v10)
    {
      goto LABEL_22;
    }

    if (!v6)
    {
LABEL_19:
      v6 = [(CalDAVPrincipalResult *)self cuAddresses];
      if ([v6 count])
      {
        v11 = [(CalDAVPrincipalResult *)self cuAddresses];
        v10 = [v11 objectAtIndexedSubscript:0];
      }

      else
      {
        v10 = [(CalDAVPrincipalResult *)self principalPath];
      }

LABEL_22:

      v6 = v10;
    }
  }

  else
  {
    v6 = 0;
LABEL_18:

    if (!v6)
    {
      goto LABEL_19;
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSString)emailAddress
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(CalDAVPrincipalResult *)self emailAddresses];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(CalDAVPrincipalResult *)self emailAddresses];
    v6 = [v5 objectAtIndexedSubscript:0];
LABEL_3:
    v7 = v6;
  }

  else
  {
    v8 = [(CalDAVPrincipalResult *)self cuAddresses];
    v9 = [v8 count];

    if (v9)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = [(CalDAVPrincipalResult *)self cuAddresses];
      v10 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v5);
            }

            v14 = *(*(&v17 + 1) + 8 * i);
            if ([v14 hasMailto])
            {
              v6 = [v14 stringRemovingMailto];
              goto LABEL_3;
            }
          }

          v11 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }

    v7 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CalDAVPrincipalResult *)self displayName];
  v5 = [(CalDAVPrincipalResult *)self emailAddress];
  if (v5)
  {
    [(CalDAVPrincipalResult *)self emailAddress];
  }

  else
  {
    [(CalDAVPrincipalResult *)self preferredCUAddress];
  }
  v6 = ;
  v7 = [(CalDAVPrincipalResult *)self resultType];
  v8 = [v3 stringWithFormat:@"%@ <%@> (%@)", v4, v6, v7];

  return v8;
}

@end