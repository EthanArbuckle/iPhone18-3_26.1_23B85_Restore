@interface DCPresentmentProposalReaderMetadata
- (DCPresentmentProposalReaderMetadata)initWithCoder:(id)a3;
- (DCPresentmentProposalReaderMetadata)initWithIdentifier:(id)a3 organization:(id)a4 organizationalUnit:(id)a5 iconData:(id)a6 iconURL:(id)a7 iconMediaType:(id)a8 privacyPolicyURL:(id)a9 merchantCategoryCode:(id)a10;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DCPresentmentProposalReaderMetadata

- (DCPresentmentProposalReaderMetadata)initWithIdentifier:(id)a3 organization:(id)a4 organizationalUnit:(id)a5 iconData:(id)a6 iconURL:(id)a7 iconMediaType:(id)a8 privacyPolicyURL:(id)a9 merchantCategoryCode:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v42.receiver = self;
  v42.super_class = DCPresentmentProposalReaderMetadata;
  v24 = [(DCPresentmentProposalReaderMetadata *)&v42 init];
  if (v24)
  {
    v25 = [v16 copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v27 = [v17 copy];
    organization = v24->_organization;
    v24->_organization = v27;

    v29 = [v18 copy];
    organizationalUnit = v24->_organizationalUnit;
    v24->_organizationalUnit = v29;

    v31 = [v19 copy];
    iconData = v24->_iconData;
    v24->_iconData = v31;

    v33 = [v20 copy];
    iconURL = v24->_iconURL;
    v24->_iconURL = v33;

    v35 = [v21 copy];
    iconMediaType = v24->_iconMediaType;
    v24->_iconMediaType = v35;

    v37 = [v22 copy];
    privacyPolicyURL = v24->_privacyPolicyURL;
    v24->_privacyPolicyURL = v37;

    v39 = [v23 copy];
    merchantCategoryCode = v24->_merchantCategoryCode;
    v24->_merchantCategoryCode = v39;
  }

  return v24;
}

- (DCPresentmentProposalReaderMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = DCPresentmentProposalReaderMetadata;
  v5 = [(DCPresentmentProposalReaderMetadata *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586CDC0];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D460];
    organization = v5->_organization;
    v5->_organization = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D480];
    organizationalUnit = v5->_organizationalUnit;
    v5->_organizationalUnit = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D4A0];
    iconData = v5->_iconData;
    v5->_iconData = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D4C0];
    iconURL = v5->_iconURL;
    v5->_iconURL = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D4E0];
    iconMediaType = v5->_iconMediaType;
    v5->_iconMediaType = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D500];
    privacyPolicyURL = v5->_privacyPolicyURL;
    v5->_privacyPolicyURL = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D520];
    merchantCategoryCode = v5->_merchantCategoryCode;
    v5->_merchantCategoryCode = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:0x28586CDC0];
  [v5 encodeObject:self->_organization forKey:0x28586D460];
  [v5 encodeObject:self->_organizationalUnit forKey:0x28586D480];
  [v5 encodeObject:self->_iconData forKey:0x28586D4A0];
  [v5 encodeObject:self->_iconURL forKey:0x28586D4C0];
  [v5 encodeObject:self->_iconMediaType forKey:0x28586D4E0];
  [v5 encodeObject:self->_privacyPolicyURL forKey:0x28586D500];
  [v5 encodeObject:self->_merchantCategoryCode forKey:0x28586D520];
}

- (id)description
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  v7 = [(DCPresentmentProposalReaderMetadata *)self dictionaryRepresentation];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v7 allKeys];
  v9 = [v8 sortedArrayUsingSelector:sel_compare_];

  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v7 objectForKeyedSubscript:v14];
        v16 = [MEMORY[0x277CBEB68] null];
        if ([v15 isEqual:v16])
        {
          v17 = 0;
        }

        else
        {
          v17 = v15;
        }

        [v6 appendFormat:@"%@ = %@; ", v14, v17];
      }

      v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  [v6 deleteCharactersInRange:{objc_msgSend(v6, "length") - 2, 2}];
  [v6 appendString:@">"];

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v15[8] = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(sel_identifier);
  v15[0] = v3;
  v4 = NSStringFromSelector(sel_organization);
  v15[1] = v4;
  v5 = NSStringFromSelector(sel_organizationalUnit);
  v15[2] = v5;
  v6 = NSStringFromSelector(sel_iconData);
  v15[3] = v6;
  v7 = NSStringFromSelector(sel_iconURL);
  v15[4] = v7;
  v8 = NSStringFromSelector(sel_iconMediaType);
  v15[5] = v8;
  v9 = NSStringFromSelector(sel_privacyPolicyURL);
  v15[6] = v9;
  v10 = NSStringFromSelector(sel_merchantCategoryCode);
  v15[7] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:8];

  v12 = [(DCPresentmentProposalReaderMetadata *)self dictionaryWithValuesForKeys:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end