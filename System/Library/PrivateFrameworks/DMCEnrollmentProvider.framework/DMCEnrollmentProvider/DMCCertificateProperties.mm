@interface DMCCertificateProperties
+ (id)_sendablePropertyFromProperty:(id)property;
+ (id)sendablePropertiesFromProperties:(id)properties;
- (DMCCertificateProperties)initWithCertificate:(__SecCertificate *)certificate;
- (DMCCertificateProperties)initWithCertificateProperties:(id)properties;
- (DMCCertificateProperties)initWithTrust:(__SecTrust *)trust;
- (id)_cellInfosForSection:(id)section;
- (id)_copyPropertiesFromTrust:(__SecTrust *)trust;
- (id)_sectionInfoForCertSection:(id)section title:(id)title;
- (id)_sectionsFromProperties:(id)properties;
- (id)_sendablePropertiesFromTrust:(__SecTrust *)trust;
- (void)_setup:(id)_setup;
@end

@implementation DMCCertificateProperties

- (DMCCertificateProperties)initWithCertificate:(__SecCertificate *)certificate
{
  v6.receiver = self;
  v6.super_class = DMCCertificateProperties;
  v3 = [(DMCCertificateProperties *)&v6 init];
  if (v3)
  {
    v4 = SecCertificateCopyProperties();
    [(DMCCertificateProperties *)v3 _setup:v4];
    CFRelease(v4);
  }

  return v3;
}

- (DMCCertificateProperties)initWithCertificateProperties:(id)properties
{
  propertiesCopy = properties;
  v8.receiver = self;
  v8.super_class = DMCCertificateProperties;
  v5 = [(DMCCertificateProperties *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DMCCertificateProperties *)v5 _setup:propertiesCopy];
  }

  return v6;
}

- (DMCCertificateProperties)initWithTrust:(__SecTrust *)trust
{
  v10.receiver = self;
  v10.super_class = DMCCertificateProperties;
  v4 = [(DMCCertificateProperties *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(DMCCertificateProperties *)v4 _sendablePropertiesFromTrust:trust];
    lastObject = [v6 lastObject];
    v8 = [(DMCCertificateProperties *)v5 _sectionsFromProperties:lastObject];
    [(DMCCertificateProperties *)v5 _setup:v8];
  }

  return v5;
}

- (void)_setup:(id)_setup
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = [DMCCertificateProperties sendablePropertiesFromProperties:_setup];
  selfCopy = self;
  v5 = [(DMCCertificateProperties *)self _sectionsFromProperties:v4];

  v33 = objc_opt_new();
  v32 = objc_opt_new();
  v31 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v5;
  v35 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v35)
  {
    v34 = *v44;
    v6 = @"cell title";
    do
    {
      v7 = 0;
      do
      {
        if (*v44 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v7;
        v8 = *(*(&v43 + 1) + 8 * v7);
        v9 = objc_opt_new();
        v10 = objc_opt_new();
        v36 = v8;
        v11 = [v8 objectForKey:@"cell infos"];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v38 = v11;
        v12 = [v11 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v40;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v40 != v14)
              {
                objc_enumerationMutation(v38);
              }

              v16 = *(*(&v39 + 1) + 8 * i);
              v17 = [v16 objectForKey:v6];
              v18 = [v16 objectForKey:@"cell value"];
              v19 = v18;
              if (v17)
              {
                v20 = v18 == 0;
              }

              else
              {
                v20 = 1;
              }

              if (!v20)
              {
                [v9 addObject:v17];
                [v9 addObject:v19];
                v21 = v6;
                v22 = [objc_alloc(MEMORY[0x277D26250]) initWithValue:v19 localizedKey:v17];
                [v10 addObject:v22];

                v6 = v21;
              }
            }

            v13 = [v38 countByEnumeratingWithState:&v39 objects:v47 count:16];
          }

          while (v13);
        }

        if ([v9 count])
        {
          [v33 addObject:v9];
          v23 = [v36 objectForKey:@"header title"];
          v24 = v23;
          v25 = &stru_2859FB650;
          if (v23)
          {
            v25 = v23;
          }

          v26 = v25;

          [v32 addObject:v26];
          v27 = [objc_alloc(MEMORY[0x277D26258]) initWithSectionTitle:v26 footer:0 keyValues:v10];

          [(NSArray *)v31 addObject:v27];
        }

        v7 = v37 + 1;
      }

      while (v37 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v35);
  }

  if ([v33 count])
  {
    objc_storeStrong(&selfCopy->_sections, v33);
    objc_storeStrong(&selfCopy->_sectionTitles, v32);
  }

  keyValueSections = selfCopy->_keyValueSections;
  selfCopy->_keyValueSections = v31;
}

- (id)_cellInfosForSection:(id)section
{
  v25 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = sectionCopy;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = [v9 objectForKey:@"localized label"];
        v11 = [v9 objectForKey:@"type"];
        v12 = [v9 objectForKey:@"value"];
        if ([v11 isEqualToString:@"section"])
        {
          v13 = [(DMCCertificateProperties *)self _cellInfosForSection:v12];
          [array addObjectsFromArray:v13];
        }

        else
        {
          if (([v11 isEqualToString:@"string"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"url") || objc_msgSend(v11, "isEqualToString:", @"data") || objc_msgSend(v11, "isEqualToString:", @"date"))
          {
            v14 = v12;
          }

          else
          {
            v14 = [v12 description];
          }

          v13 = v14;
          v15 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v10, @"cell title", v14, @"cell value", 0}];
          [array addObject:v15];
        }

        ++v8;
      }

      while (v6 != v8);
      v16 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      v6 = v16;
    }

    while (v16);
  }

  return array;
}

- (id)_sectionInfoForCertSection:(id)section title:(id)title
{
  v6 = MEMORY[0x277CBEAC0];
  titleCopy = title;
  v8 = [(DMCCertificateProperties *)self _cellInfosForSection:section];
  v9 = [v6 dictionaryWithObjectsAndKeys:{v8, @"cell infos", titleCopy, @"header title", 0}];

  return v9;
}

- (id)_sectionsFromProperties:(id)properties
{
  selfCopy = self;
  v24 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  array = [MEMORY[0x277CBEB18] array];
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = propertiesCopy;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v8 objectForKey:{@"localized label", selfCopy}];
        v10 = [v8 objectForKey:@"type"];
        v11 = [v8 objectForKey:@"value"];
        if ([v10 isEqualToString:@"section"])
        {
          v12 = [(DMCCertificateProperties *)selfCopy _sectionInfoForCertSection:v11 title:v9];
          [array addObject:v12];
        }

        else
        {
          [v16 addObject:v8];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  if ([v16 count])
  {
    v13 = [(DMCCertificateProperties *)selfCopy _sectionInfoForCertSection:v16 title:0];
    [array addObject:v13];
  }

  return array;
}

+ (id)sendablePropertiesFromProperties:(id)properties
{
  v18 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = propertiesCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self _sendablePropertyFromProperty:{*(*(&v13 + 1) + 8 * i), v13}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)_sendablePropertyFromProperty:(id)property
{
  propertyCopy = property;
  v5 = [propertyCopy objectForKey:*MEMORY[0x277CDC508]];
  if ([v5 isEqualToString:*MEMORY[0x277CDC538]])
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:propertyCopy];

    v7 = *MEMORY[0x277CDC510];
    v8 = [propertyCopy objectForKey:*MEMORY[0x277CDC510]];
    absoluteString = [v8 absoluteString];
  }

  else
  {
    v6 = propertyCopy;
    if (![v5 isEqualToString:*MEMORY[0x277CDC528]])
    {
      goto LABEL_6;
    }

    v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:propertyCopy];

    v7 = *MEMORY[0x277CDC510];
    v8 = [propertyCopy objectForKey:*MEMORY[0x277CDC510]];
    absoluteString = [self sendablePropertiesFromProperties:v8];
  }

  v10 = absoluteString;
  [v6 setObject:absoluteString forKey:v7];

LABEL_6:

  return v6;
}

- (id)_copyPropertiesFromTrust:(__SecTrust *)trust
{
  if (!trust)
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  CertificateCount = SecTrustGetCertificateCount(trust);
  if (CertificateCount >= 1)
  {
    v6 = 0;
    v7 = CertificateCount & 0x7FFFFFFF;
    do
    {
      SecTrustGetCertificateAtIndex(trust, v6);
      v8 = SecCertificateCopyProperties();
      if (v8)
      {
        v9 = v8;
        [v4 addObject:v8];
        CFRelease(v9);
      }

      ++v6;
    }

    while (v7 != v6);
  }

  return v4;
}

- (id)_sendablePropertiesFromTrust:(__SecTrust *)trust
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(DMCCertificateProperties *)self _copyPropertiesFromTrust:trust];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [DMCCertificateProperties sendablePropertiesFromProperties:*(*(&v12 + 1) + 8 * i), v12];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

@end