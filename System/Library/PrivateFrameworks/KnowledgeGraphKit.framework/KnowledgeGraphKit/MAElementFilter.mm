@interface MAElementFilter
+ (BOOL)scanDomains:(id *)a3 withScanner:(id)a4;
+ (BOOL)scanElementFilterLabels:(id *)a3 domains:(id *)a4 properties:(id *)a5 withScanner:(id)a6;
+ (BOOL)scanInstance:(id *)a3 withScanner:(id)a4;
+ (BOOL)scanLabels:(id *)a3 withScanner:(id)a4;
+ (BOOL)scanProperties:(id *)a3 withScanner:(id)a4;
+ (BOOL)scanPropertyOption:(id *)a3 withScanner:(id)a4;
+ (BOOL)scanPropertyValue:(id *)a3 withScanner:(id)a4;
+ (id)any;
+ (id)scanFilterWithScanner:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesDomainOfElement:(id)a3;
- (BOOL)matchesElement:(id)a3;
- (BOOL)matchesLabelOfElement:(id)a3;
- (BOOL)matchesPropertiesOfElement:(id)a3;
- (MAElementFilter)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (MAElementFilter)initWithLabel:(id)a3 domains:(id)a4 properties:(id)a5;
- (MAElementFilter)initWithLabels:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (MAElementFilter)initWithLabels:(id)a3 domains:(id)a4 properties:(id)a5;
- (NSArray)kgOptionalLabels;
- (NSArray)kgRequiredLabels;
- (NSString)visualString;
- (id)filterBySettingProperties:(id)a3;
- (unint64_t)hash;
- (void)_appendPropertyOption:(id)a3 toString:(id)a4;
- (void)appendVisualStringToString:(id)a3;
@end

@implementation MAElementFilter

- (id)filterBySettingProperties:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithLabels:self->_labels domains:self->_domains properties:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(KGElementIdentifierSet *)self->_domains hash]+ 2654435769u;
  v4 = ([(NSSet *)self->_labels hash]+ (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
  return ([(NSDictionary *)self->_properties hash]+ (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      domains = self->_domains;
      v7 = [(MAElementFilter *)v5 domains];
      LODWORD(domains) = [(KGElementIdentifierSet *)domains isEqualToElementIdentifierSet:v7];

      if (domains && (labels = self->_labels, [(MAElementFilter *)v5 labels], v9 = objc_claimAutoreleasedReturnValue(), LODWORD(labels) = [(NSSet *)labels isEqualToSet:v9], v9, labels))
      {
        properties = self->_properties;
        v11 = [(MAElementFilter *)v5 properties];
        v12 = [(NSDictionary *)properties isEqualToDictionary:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (NSString)visualString
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [(MAElementFilter *)self appendVisualStringToString:v3];

  return v3;
}

- (void)appendVisualStringToString:(id)a3
{
  v50[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 appendString:@":"];
  labels = self->_labels;
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1 selector:sel_compare_];
  v50[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
  v8 = [(NSSet *)labels sortedArrayUsingDescriptors:v7];

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v9)
  {
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(obj);
        }

        [v4 appendString:*(*(&v39 + 1) + 8 * i)];
        v12 = v44[3] + 1;
        v44[3] = v12;
        if (v12 < [obj count])
        {
          [v4 appendString:@"/"];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v9);
  }

  [v4 appendString:@":"];
  v44[3] = 0;
  domains = self->_domains;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __46__MAElementFilter_appendVisualStringToString___block_invoke;
  v35[3] = &unk_2797FEFB0;
  v14 = v4;
  v37 = self;
  v38 = &v43;
  v36 = v14;
  [(KGElementIdentifierSet *)domains enumerateIdentifiersWithBlock:v35];
  if ([(NSDictionary *)self->_properties count])
  {
    [v14 appendString:@" { "];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = self->_properties;
    v15 = [(NSDictionary *)v24 countByEnumeratingWithState:&v31 objects:v48 count:16];
    if (v15)
    {
      v25 = *v32;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v24);
          }

          v17 = *(*(&v31 + 1) + 8 * j);
          [v14 appendFormat:@"%@:", v17];
          v18 = [(NSDictionary *)self->_properties objectForKeyedSubscript:v17];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            [v14 appendString:@"["];
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v19 = v18;
            v20 = [v19 countByEnumeratingWithState:&v27 objects:v47 count:16];
            if (v20)
            {
              v21 = *v28;
              do
              {
                for (k = 0; k != v20; ++k)
                {
                  if (*v28 != v21)
                  {
                    objc_enumerationMutation(v19);
                  }

                  [(MAElementFilter *)self _appendPropertyOption:*(*(&v27 + 1) + 8 * k) toString:v14];
                  [v14 appendString:{@", "}];
                }

                v20 = [v19 countByEnumeratingWithState:&v27 objects:v47 count:16];
              }

              while (v20);
            }

            [v14 appendString:@"]"];
          }

          else
          {
            [(MAElementFilter *)self _appendPropertyOption:v18 toString:v14];
          }

          [v14 appendString:{@", "}];
        }

        v15 = [(NSDictionary *)v24 countByEnumeratingWithState:&v31 objects:v48 count:16];
      }

      while (v15);
    }

    [v14 appendString:@"}"];
  }

  _Block_object_dispose(&v43, 8);
  v23 = *MEMORY[0x277D85DE8];
}

unint64_t __46__MAElementFilter_appendVisualStringToString___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendFormat:@"%lu", a2];
  v3 = ++*(*(*(a1 + 48) + 8) + 24);
  result = [*(*(a1 + 40) + 16) count];
  if (v3 < result)
  {
    v5 = *(a1 + 32);

    return [v5 appendString:@"/"];
  }

  return result;
}

- (void)_appendPropertyOption:(id)a3 toString:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 kgPropertyType];
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_16;
      }

      v8 = v5;
      if (([v8 integerValue]& 0x8000000000000000) == 0)
      {
        [v6 appendString:@"+"];
      }

      [v6 appendFormat:@"%@", v8];
    }

    else
    {
      v8 = KGLoggingConnection();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_fault_impl(&dword_255870000, v8, OS_LOG_TYPE_FAULT, "Unsupported property value: (%@)", buf, 0xCu);
      }
    }

    goto LABEL_16;
  }

  switch(v7)
  {
    case 2:
      [v5 doubleValue];
      [v6 appendFormat:@"%f", v9];
      break;
    case 3:
      [v6 appendFormat:@"'%@'", v5];
      break;
    case 4:
      [v6 appendFormat:@"%@", v5];
      break;
  }

LABEL_16:

  v10 = *MEMORY[0x277D85DE8];
}

- (NSArray)kgOptionalLabels
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(NSSet *)self->_labels count]>= 2)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = self->_labels;
    v5 = [(NSSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 addObject:*(*(&v14 + 1) + 8 * i)];
        }

        v6 = [(NSSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  if ([(KGElementIdentifierSet *)self->_domains count]>= 2)
  {
    domains = self->_domains;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __35__MAElementFilter_kgOptionalLabels__block_invoke;
    v12[3] = &unk_2797FF388;
    v13 = v3;
    [(KGElementIdentifierSet *)domains enumerateIdentifiersWithBlock:v12];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

void __35__MAElementFilter_kgOptionalLabels__block_invoke(uint64_t a1, unsigned __int16 a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [MAKGDomainConversion kgLabelForMADomain:a2];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v5 = KGLoggingConnection();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a2];
      v8 = 138412290;
      v9 = v7;
      _os_log_fault_impl(&dword_255870000, v5, OS_LOG_TYPE_FAULT, "Attempting to filter with invalid domain (%@)", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (NSArray)kgRequiredLabels
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(NSSet *)self->_labels count]== 1)
  {
    v4 = [(NSSet *)self->_labels anyObject];
    [v3 addObject:v4];
  }

  if ([(KGElementIdentifierSet *)self->_domains count]== 1)
  {
    v5 = [(KGElementIdentifierSet *)self->_domains firstElement];
    if (v5 != 1)
    {
      v6 = [MAKGDomainConversion kgLabelForMADomain:?];
      if (v6)
      {
        [v3 addObject:v6];
      }

      else
      {
        v7 = KGLoggingConnection();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v5];
          v11 = 138412290;
          v12 = v10;
          _os_log_fault_impl(&dword_255870000, v7, OS_LOG_TYPE_FAULT, "Attempting to filter with invalid domain (%@)", &v11, 0xCu);
        }
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)matchesElement:(id)a3
{
  v4 = a3;
  v5 = [(MAElementFilter *)self matchesLabelOfElement:v4]&& [(MAElementFilter *)self matchesDomainOfElement:v4]&& [(MAElementFilter *)self matchesPropertiesOfElement:v4];

  return v5;
}

- (BOOL)matchesPropertiesOfElement:(id)a3
{
  v4 = a3;
  v5 = [KGElementFilter alloc];
  v6 = [(KGElementFilter *)v5 initWithRequiredLabels:MEMORY[0x277CBEBF8] optionalLabels:MEMORY[0x277CBEBF8] properties:self->_properties];
  v7 = [v4 properties];

  LOBYTE(v4) = [(KGElementFilter *)v6 matchesProperties:v7];
  return v4;
}

- (BOOL)matchesDomainOfElement:(id)a3
{
  v4 = a3;
  if ([(KGElementIdentifierSet *)self->_domains count])
  {
    v5 = -[KGElementIdentifierSet containsIdentifier:](self->_domains, "containsIdentifier:", [v4 domain]);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)matchesLabelOfElement:(id)a3
{
  v4 = a3;
  if ([(NSSet *)self->_labels count])
  {
    labels = self->_labels;
    v6 = [v4 label];
    v7 = [(NSSet *)labels containsObject:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (MAElementFilter)initWithLabels:(id)a3 domains:(id)a4 properties:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MAElementFilter;
  v12 = [(MAElementFilter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_labels, a3);
    objc_storeStrong(&v13->_domains, a4);
    objc_storeStrong(&v13->_properties, a5);
  }

  return v13;
}

- (MAElementFilter)initWithLabel:(id)a3 domains:(id)a4 properties:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = MAElementFilter;
  v11 = [(MAElementFilter *)&v15 init];
  if (v11)
  {
    if (v8)
    {
      v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v8, 0}];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    labels = v11->_labels;
    v11->_labels = v12;

    objc_storeStrong(&v11->_domains, a4);
    objc_storeStrong(&v11->_properties, a5);
  }

  return v11;
}

- (MAElementFilter)initWithLabels:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = MAElementFilter;
  v11 = [(MAElementFilter *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_labels, a3);
    if (v6)
    {
      v13 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:v6];
    }

    else
    {
      v13 = objc_alloc_init(KGElementIdentifierSet);
    }

    domains = v12->_domains;
    v12->_domains = v13;

    objc_storeStrong(&v12->_properties, a5);
  }

  return v12;
}

- (MAElementFilter)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = MAElementFilter;
  v10 = [(MAElementFilter *)&v16 init];
  if (v10)
  {
    if (v8)
    {
      v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v8, 0}];
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    labels = v10->_labels;
    v10->_labels = v11;

    if (v6)
    {
      v13 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:v6];
    }

    else
    {
      v13 = objc_alloc_init(KGElementIdentifierSet);
    }

    domains = v10->_domains;
    v10->_domains = v13;

    objc_storeStrong(&v10->_properties, a5);
  }

  return v10;
}

+ (id)any
{
  v2 = [a1 alloc];
  v3 = [v2 initWithLabel:0 domain:0 properties:MEMORY[0x277CBEC10]];

  return v3;
}

+ (id)scanFilterWithScanner:(id)a3
{
  v4 = a3;
  v5 = [v4 scanLocation];
  v11 = 0;
  v6 = [a1 scanInstance:&v11 withScanner:v4];
  v7 = v11;
  v8 = v7;
  if (v6)
  {
    v9 = v7;
  }

  else
  {
    [v4 setScanLocation:v5];
    v9 = 0;
  }

  return v9;
}

+ (BOOL)scanInstance:(id *)a3 withScanner:(id)a4
{
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v6 = [a1 scanElementFilterLabels:&v17 domains:&v16 properties:&v15 withScanner:a4];
  v7 = v17;
  v8 = v16;
  if (a3 && v6)
  {
    v9 = v15;
    v10 = [a1 alloc];
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = MEMORY[0x277CBEC10];
    }

    v12 = [v10 initWithLabels:v7 domains:v8 properties:v11];
    v13 = v12;

    *a3 = v12;
  }

  return v6;
}

+ (BOOL)scanPropertyValue:(id *)a3 withScanner:(id)a4
{
  v6 = a4;
  if (![v6 scanString:@"[" intoString:0])
  {
    v12 = [a1 scanPropertyOption:a3 withScanner:v6];
    goto LABEL_12;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = 0;
  while (1)
  {
    v9 = v8;
    v14 = 0;
    v10 = [a1 scanPropertyOption:&v14 withScanner:v6];
    v8 = v14;

    if (!v10 || !v8)
    {
      break;
    }

    [v7 addObject:v8];
LABEL_7:
    if ([v6 scanString:@"] intoString:{", 0}])
    {
      v11 = v7;
      *a3 = v7;
      v12 = 1;
      goto LABEL_11;
    }
  }

  if (v10)
  {
    goto LABEL_7;
  }

  v12 = 0;
LABEL_11:

LABEL_12:
  return v12;
}

+ (BOOL)scanPropertyOption:(id *)a3 withScanner:(id)a4
{
  v5 = a4;
  if ([v5 scanString:@"'" intoString:0])
  {
    if (([v5 scanUpToString:@"'" intoString:a3] & 1) != 0 && objc_msgSend(v5, "scanString:intoString:", @"'", 0))
    {
      goto LABEL_19;
    }
  }

  else if ([v5 scanString:@"+" intoString:0])
  {
    v15 = 123456789;
    if ([v5 scanInteger:&v15])
    {
      *a3 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
LABEL_19:
      v10 = [v5 scanString:@" intoString:{", 0}];
      goto LABEL_20;
    }
  }

  else
  {
    v14 = 0;
    v6 = [v5 scanUpToString:@" intoString:{", &v14}];
    v7 = v14;
    v8 = v7;
    if (v6)
    {
      v9 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v7];
      v15 = 123456789;
      if ([v9 scanInteger:&v15] && objc_msgSend(v9, "isAtEnd"))
      {
        *a3 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
      }

      else
      {
        v11 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v8];
        v13 = NAN;
        if ([v11 scanDouble:&v13] && objc_msgSend(v11, "isAtEnd"))
        {
          *a3 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
        }
      }

      goto LABEL_19;
    }
  }

  v10 = 0;
LABEL_20:

  return v10;
}

+ (BOOL)scanProperties:(id *)a3 withScanner:(id)a4
{
  v6 = a4;
  if ([v6 scanString:@"{" intoString:0])
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    if ([v6 scanString:@"}" intoString:0])
    {
LABEL_3:
      if (a3)
      {
        v8 = v7;
        *a3 = v7;
      }

      v9 = 1;
    }

    else
    {
      while (1)
      {
        v10 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
        v17 = 0;
        v11 = [v6 scanCharactersFromSet:v10 intoString:&v17];
        v12 = v17;

        if (!v11 || ![v6 scanString:@":" intoString:0])
        {
          break;
        }

        v16 = 0;
        v13 = [a1 scanPropertyValue:&v16 withScanner:v6];
        v14 = v16;
        if (!v13)
        {
          goto LABEL_13;
        }

        [v7 setObject:v14 forKeyedSubscript:v12];

        if ([v6 scanString:@"}" intoString:0])
        {
          goto LABEL_3;
        }
      }

      v14 = 0;
LABEL_13:

      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (BOOL)scanDomains:(id *)a3 withScanner:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(KGMutableElementIdentifierSet);
  v9 = 0;
  if ([v5 scanUnsignedLongLong:&v9])
  {
    do
    {
      [(KGMutableElementIdentifierSet *)v6 addIdentifier:v9];
      [v5 scanString:@"/" intoString:0];
    }

    while (([v5 scanUnsignedLongLong:&v9] & 1) != 0);
  }

  v7 = v6;
  *a3 = v6;

  return 1;
}

+ (BOOL)scanLabels:(id *)a3 withScanner:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CBEB58] set];
  if ([v5 scanString:@":" intoString:0])
  {
    v7 = v6;
    v8 = 0;
LABEL_3:
    *a3 = v6;
    v9 = 1;
    goto LABEL_19;
  }

  v21 = 0;
  v10 = [v5 scanUpToString:@":" intoString:&v21];
  v11 = v21;
  v8 = v11;
  if (!v10)
  {
    v9 = 0;
    goto LABEL_19;
  }

  if (![v11 length])
  {
    v17 = v6;
    goto LABEL_3;
  }

  v12 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v8];
  v13 = 0;
  LOBYTE(v14) = 1;
  do
  {
    if ((v14 & 1) == 0)
    {
      v18 = v6;
      v9 = 0;
      *a3 = v6;
      goto LABEL_18;
    }

    v20 = v13;
    v14 = [v12 scanUpToString:@"/" intoString:&v20];
    v15 = v20;

    if (v14)
    {
      v14 = [v15 length] != 0;
    }

    [v6 addObject:v15];
    v13 = v15;
  }

  while (([v12 scanString:@"/" intoString:0] & 1) != 0);
  v16 = v6;
  *a3 = v6;
  if (v14)
  {
    v9 = [v5 scanString:@":" intoString:0];
  }

  else
  {
    v9 = 0;
  }

  v13 = v15;
LABEL_18:

LABEL_19:
  return v9;
}

+ (BOOL)scanElementFilterLabels:(id *)a3 domains:(id *)a4 properties:(id *)a5 withScanner:(id)a6
{
  v10 = a6;
  if ([v10 scanString:@":" intoString:0] && objc_msgSend(a1, "scanLabels:withScanner:", a3, v10) && objc_msgSend(a1, "scanDomains:withScanner:", a4, v10))
  {
    v11 = [a1 scanProperties:a5 withScanner:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end