@interface CalDAVPrincipalEmailDetailsResult
+ (id)resultFromResponseItem:(id)item;
- (id)addresses;
- (id)description;
@end

@implementation CalDAVPrincipalEmailDetailsResult

+ (id)resultFromResponseItem:(id)item
{
  v45 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v4 = objc_alloc_init(CalDAVPrincipalEmailDetailsResult);
  firstHref = [itemCopy firstHref];
  payloadAsFullURL = [firstHref payloadAsFullURL];
  [(CalDAVPrincipalEmailDetailsResult *)v4 setPrincipalURL:payloadAsFullURL];

  successfulPropertiesToValues = [itemCopy successfulPropertiesToValues];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __60__CalDAVPrincipalEmailDetailsResult_resultFromResponseItem___block_invoke;
  v41[3] = &unk_278D66C78;
  v8 = successfulPropertiesToValues;
  v42 = v8;
  v9 = MEMORY[0x245D182B0](v41);
  v10 = v9[2](v9, 3);
  payloadAsString = [v10 payloadAsString];
  [(CalDAVPrincipalEmailDetailsResult *)v4 setDisplayName:payloadAsString];

  v12 = [MEMORY[0x277CBEB58] set];
  v13 = v9[2](v9, 6);
  objc_opt_class();
  v31 = v8;
  v32 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v30 = v4;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    hrefs = [v13 hrefs];
    v15 = [hrefs countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(hrefs);
          }

          v19 = [CalDAVCalendarUserAddressItemTranslator calDAVUserAddressForItem:*(*(&v37 + 1) + 8 * i)];
          if (v19)
          {
            [v12 addObject:v19];
          }
        }

        v16 = [hrefs countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v16);
    }

    v4 = v30;
    v8 = v31;
  }

  v20 = v9[2](v9, 4);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    emailAddresses = [v20 emailAddresses];
    v22 = [emailAddresses countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v34;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(emailAddresses);
          }

          v26 = [CalDAVCalendarUserAddressItemTranslator calDAVUserAddressForItem:*(*(&v33 + 1) + 8 * j) prependMailTo:1];
          if (v26)
          {
            [v12 addObject:v26];
          }
        }

        v23 = [emailAddresses countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v23);
    }

    v8 = v31;
    itemCopy = v32;
  }

  v27 = [MEMORY[0x277CBEB98] setWithSet:v12];
  [(CalDAVPrincipalEmailDetailsResult *)v4 setPreferredAddresses:v27];

  v28 = *MEMORY[0x277D85DE8];

  return v4;
}

id __60__CalDAVPrincipalEmailDetailsResult_resultFromResponseItem___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [CalDAVPrincipalSearchSupport namespaceAndNameForWellKnownType:a2];
  v4 = [v2 objectForKey:v3];

  return v4;
}

- (id)addresses
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  preferredAddresses = [(CalDAVPrincipalEmailDetailsResult *)self preferredAddresses];
  v5 = [preferredAddresses countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(preferredAddresses);
        }

        address = [*(*(&v13 + 1) + 8 * i) address];
        absoluteString = [address absoluteString];
        [v3 addObject:absoluteString];
      }

      v6 = [preferredAddresses countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  displayName = [(CalDAVPrincipalEmailDetailsResult *)self displayName];
  addresses = [(CalDAVPrincipalEmailDetailsResult *)self addresses];
  v8 = [v3 stringWithFormat:@"<%@ %p: '%@' addresses: (%lu)>", v5, self, displayName, objc_msgSend(addresses, "count")];

  return v8;
}

@end