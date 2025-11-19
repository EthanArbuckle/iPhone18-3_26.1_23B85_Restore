@interface WFEmailAddress
+ (BOOL)stringContainsEmailAddresses:(id)a3;
+ (id)addressWithEmailAddress:(id)a3 label:(id)a4;
+ (id)addressesWithMailtoURL:(id)a3;
+ (id)addressesWithTextCheckingResult:(id)a3;
+ (id)emailAddressesInString:(id)a3 error:(id *)a4;
+ (id)objectWithWFSerializedRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)localizedLabel;
- (WFEmailAddress)initWithAddress:(id)a3 label:(id)a4;
- (WFEmailAddress)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)wfSerializedRepresentation;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFEmailAddress

- (id)wfSerializedRepresentation
{
  v3 = objc_opt_new();
  v4 = [(WFEmailAddress *)self address];
  [v3 setObject:v4 forKey:@"link.contentkit.emailaddress"];

  [v3 setValue:self->_label forKey:@"link.contentkit.emaillabel"];

  return v3;
}

- (WFEmailAddress)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    self = [(WFEmailAddress *)self initWithAddress:v5 label:v6];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFEmailAddress *)self address];
  [v4 encodeObject:v5 forKey:@"address"];

  v6 = [(WFEmailAddress *)self label];
  [v4 encodeObject:v6 forKey:@"label"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(WFEmailAddress *)self address];
  v6 = [v4 initWithAddress:v5 label:0];

  return v6;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(WFEmailAddress *)self address];
  v6 = [v4 address];

  v7 = [v5 compare:v6];
  return v7;
}

- (unint64_t)hash
{
  v2 = [(WFEmailAddress *)self address];
  v3 = [v2 hash];

  return v3 ^ 0xCAFEBEEFLL;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFEmailAddress *)self address];
      v6 = [(WFEmailAddress *)v4 address];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)localizedLabel
{
  v2 = [(WFEmailAddress *)self label];
  if (v2)
  {
    v3 = [WFContactLabeledValue localizedStringForLabel:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (WFEmailAddress)initWithAddress:(id)a3 label:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WFEmailAddress;
  v8 = [(WFEmailAddress *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    address = v8->_address;
    v8->_address = v9;

    v11 = [v7 copy];
    label = v8->_label;
    v8->_label = v11;

    v13 = v8;
  }

  return v8;
}

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.emailaddress"];
  v6 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.emaillabel"];

  v7 = [[a1 alloc] initWithAddress:v5 label:v6];

  return v7;
}

+ (id)addressWithEmailAddress:(id)a3 label:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithAddress:v7 label:v6];

  return v8;
}

+ (id)addressesWithMailtoURL:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 absoluteString];
  v7 = [v4 scheme];

  v8 = [v6 substringFromIndex:{objc_msgSend(v7, "length") + 1}];

  if ([v8 hasPrefix:@"//"])
  {
    v9 = [v8 substringFromIndex:2];

    v8 = v9;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__WFEmailAddress_addressesWithMailtoURL___block_invoke;
  aBlock[3] = &unk_2783481E8;
  v10 = v5;
  v23 = v10;
  v11 = _Block_copy(aBlock);
  if ([v8 rangeOfString:@"?"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11[2](v11, v8);
  }

  else
  {
    v12 = [v8 componentsSeparatedByString:@"?"];
    v13 = [v12 firstObject];
    if ([v12 count] >= 2)
    {
      v14 = [v12 objectAtIndexedSubscript:0];
      v11[2](v11, v14);

      v15 = [v12 objectAtIndexedSubscript:1];

      v13 = v15;
    }

    v16 = [MEMORY[0x277CBEBC0] dc_dictionaryFromQueryString:v13];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __41__WFEmailAddress_addressesWithMailtoURL___block_invoke_2;
    v20[3] = &unk_278348210;
    v21 = v11;
    [v16 enumerateKeysAndObjectsUsingBlock:v20];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __41__WFEmailAddress_addressesWithMailtoURL___block_invoke_3;
  v19[3] = &__block_descriptor_40_e37___WFEmailAddress_24__0__NSString_8Q16l;
  v19[4] = a1;
  v17 = [v10 if_map:v19];

  return v17;
}

void __41__WFEmailAddress_addressesWithMailtoURL___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [a2 componentsSeparatedByString:{@", "}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v10 = [v8 stringByTrimmingCharactersInSet:v9];

        if ([v10 length])
        {
          [*(a1 + 32) addObject:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void __41__WFEmailAddress_addressesWithMailtoURL___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v7 = [a2 lowercaseString];
  v8 = [v7 isEqualToString:@"to"];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v11 stringByRemovingPercentEncoding];
    (*(v9 + 16))(v9, v10);

    *a4 = 1;
  }
}

+ (id)addressesWithTextCheckingResult:(id)a3
{
  v4 = [a3 URL];
  v5 = [v4 scheme];
  v6 = [v5 isEqualToString:@"mailto"];

  if (v6)
  {
    v7 = [a1 addressesWithMailtoURL:v4];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

+ (BOOL)stringContainsEmailAddresses:(id)a3
{
  v3 = [a1 emailAddressesInString:a3 error:0];
  v4 = [v3 count] != 0;

  return v4;
}

+ (id)emailAddressesInString:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = objc_opt_new();
    v8 = [WFDataDetector resultsForString:v6 ofTypes:32 error:a4];
    v9 = [v8 textCheckingResults];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [a1 addressesWithTextCheckingResult:{*(*(&v17 + 1) + 8 * i), v17}];
          [v7 addObjectsFromArray:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

@end