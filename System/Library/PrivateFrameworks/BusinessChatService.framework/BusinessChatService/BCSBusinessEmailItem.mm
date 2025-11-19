@interface BCSBusinessEmailItem
+ (id)itemFromStatement:(sqlite3_stmt *)a3;
- (BCSBusinessEmailItem)initWithCoder:(id)a3;
- (BCSBusinessEmailItem)initWithEmail:(id)a3 localizedNames:(id)a4;
- (BCSBusinessEmailItem)initWithEmail:(id)a3 localizedNames:(id)a4 localizedDisplayNames:(id)a5 businessId:(id)a6 companyId:(id)a7;
- (BCSBusinessEmailItem)initWithEmailMessage:(id)a3;
- (BCSBusinessEmailItem)initWithIdentifier:(id)a3 defaultsDictionary:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesItemIdentifying:(id)a3;
- (NSDictionary)localizedDisplayNames;
- (NSDictionary)localizedNames;
- (NSString)name;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)displayName;
- (id)itemIdentifier;
- (int64_t)truncatedHash;
- (int64_t)type;
- (void)encodeWithCoder:(id)a3;
- (void)updateStatementValues:(sqlite3_stmt *)a3 withItemIdentifier:(id)a4;
@end

@implementation BCSBusinessEmailItem

- (BCSBusinessEmailItem)initWithEmail:(id)a3 localizedNames:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = BCSBusinessEmailItem;
  v8 = [(BCSItem *)&v26 init];
  if (v8)
  {
    v9 = objc_alloc_init(BCSEmailMetadataParquetMessage);
    message = v8->_message;
    v8->_message = v9;

    [(BCSEmailMetadataParquetMessage *)v8->_message setKey:v6];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(BCSEmailMetadataParquetMessage *)v8->_message addName:*(*(&v22 + 1) + 8 * v15++), v22];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v13);
    }

    v16 = [BCSBusinessEmailItemIdentifier alloc];
    v17 = [(BCSEmailMetadataParquetMessage *)v8->_message key];
    v18 = [(BCSBusinessEmailItemIdentifier *)v16 initWithEmail:v17];
    identifier = v8->_identifier;
    v8->_identifier = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BCSBusinessEmailItem)initWithEmail:(id)a3 localizedNames:(id)a4 localizedDisplayNames:(id)a5 businessId:(id)a6 companyId:(id)a7
{
  v48 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v45.receiver = self;
  v45.super_class = BCSBusinessEmailItem;
  v17 = [(BCSItem *)&v45 init];
  if (v17)
  {
    v18 = objc_alloc_init(BCSEmailMetadataParquetMessage);
    message = v17->_message;
    v17->_message = v18;

    v36 = v12;
    [(BCSEmailMetadataParquetMessage *)v17->_message setKey:v12];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v20 = v13;
    v21 = [v20 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v42;
      do
      {
        v24 = 0;
        do
        {
          if (*v42 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [(BCSEmailMetadataParquetMessage *)v17->_message addName:*(*(&v41 + 1) + 8 * v24++)];
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v22);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v25 = v14;
    v26 = [v25 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v38;
      do
      {
        v29 = 0;
        do
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [(BCSEmailMetadataParquetMessage *)v17->_message addDisplayName:*(*(&v37 + 1) + 8 * v29++)];
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v27);
    }

    [(BCSEmailMetadataParquetMessage *)v17->_message setBusinessId:v15];
    [(BCSEmailMetadataParquetMessage *)v17->_message setCompanyId:v16];
    v30 = [BCSBusinessEmailItemIdentifier alloc];
    v31 = [(BCSEmailMetadataParquetMessage *)v17->_message key];
    v32 = [(BCSBusinessEmailItemIdentifier *)v30 initWithEmail:v31];
    identifier = v17->_identifier;
    v17->_identifier = v32;

    v12 = v36;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BCSBusinessEmailItem)initWithEmailMessage:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BCSBusinessEmailItem;
  v5 = [(BCSItem *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    message = v5->_message;
    v5->_message = v6;

    v8 = [BCSBusinessEmailItemIdentifier alloc];
    v9 = [(BCSEmailMetadataParquetMessage *)v5->_message key];
    v10 = [(BCSBusinessEmailItemIdentifier *)v8 initWithEmail:v9];
    identifier = v5->_identifier;
    v5->_identifier = v10;
  }

  return v5;
}

- (BCSBusinessEmailItem)initWithIdentifier:(id)a3 defaultsDictionary:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(BCSEmailLocalizedString);
  [(BCSEmailLocalizedString *)v8 setLocale:@"en-US"];
  v9 = [v6 objectForKeyedSubscript:@"name"];
  [(BCSEmailLocalizedString *)v8 setText:v9];

  [(BCSEmailLocalizedString *)v8 setIsDefault:1];
  v10 = [v7 email];

  v19[0] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v18 = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v13 = [v6 objectForKeyedSubscript:@"businessId"];
  v14 = [v6 objectForKeyedSubscript:@"companyId"];

  v15 = [(BCSBusinessEmailItem *)self initWithEmail:v10 localizedNames:v11 localizedDisplayNames:v12 businessId:v13 companyId:v14];
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (NSString)name
{
  v2 = [(BCSEmailMetadataParquetMessage *)self->_message names];
  v3 = [v2 defaultLocalizedStringsValue];

  return v3;
}

- (id)displayName
{
  v2 = [(BCSEmailMetadataParquetMessage *)self->_message displayNames];
  v3 = [v2 defaultLocalizedStringsValue];

  return v3;
}

- (NSDictionary)localizedNames
{
  v2 = [(BCSEmailMetadataParquetMessage *)self->_message names];
  v3 = [v2 localizedStringsToDictionary];

  return v3;
}

- (NSDictionary)localizedDisplayNames
{
  v2 = [(BCSEmailMetadataParquetMessage *)self->_message displayNames];
  v3 = [v2 localizedStringsToDictionary];

  return v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BCSBusinessEmailItem *)self description];
  v5 = [(BCSBusinessEmailItem *)self email];
  v6 = [(BCSBusinessEmailItem *)self name];
  v7 = [(BCSBusinessEmailItem *)self displayName];
  v8 = [(BCSBusinessEmailItem *)self businessId];
  v9 = [(BCSBusinessEmailItem *)self companyId];
  v10 = [v3 stringWithFormat:@"<%@ { email: %@, name: %@, displayName: %@, businessId: %@, companyId: %@>", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BCSBusinessEmailItem *)self matchesItemIdentifying:v4];

  return v5;
}

- (id)itemIdentifier
{
  v2 = [(BCSBusinessEmailItem *)self identifier];
  v3 = [v2 itemIdentifier];

  return v3;
}

- (int64_t)truncatedHash
{
  v2 = [(BCSBusinessEmailItem *)self identifier];
  v3 = [v2 truncatedHash];

  return v3;
}

- (int64_t)type
{
  v2 = [(BCSBusinessEmailItem *)self identifier];
  v3 = [v2 type];

  return v3;
}

- (BOOL)matchesItemIdentifying:(id)a3
{
  v4 = a3;
  v5 = [(BCSBusinessEmailItem *)self identifier];
  v6 = [v5 matchesItemIdentifying:v4];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(BCSBusinessEmailItem *)self message];
    v7 = [v6 copyWithZone:a3];
    v8 = v5[3];
    v5[3] = v7;

    v9 = [(BCSBusinessEmailItem *)self identifier];
    v10 = [v9 copyWithZone:a3];
    v11 = v5[2];
    v5[2] = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(BCSBusinessEmailItem *)self message];
  v5 = [v6 data];
  [v4 encodeObject:v5 forKey:@"Message"];
}

- (BCSBusinessEmailItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Message"];

  v6 = [[BCSEmailMetadataParquetMessage alloc] initWithData:v5];
  if (v6)
  {
    self = [(BCSBusinessEmailItem *)self initWithEmailMessage:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)itemFromStatement:(sqlite3_stmt *)a3
{
  sqlite3_column_int64(a3, 0);
  v4 = BCSWebPresentmentStoreDataFromStatement(a3);
  v5 = sqlite3_column_int64(a3, 2);
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_double(a3, 3)}];
  v7 = 0;
  if (v4 && v5 == 1)
  {
    v8 = [[BCSEmailMetadataParquetMessage alloc] initWithData:v4];
    if (v8)
    {
      v9 = [[BCSBusinessEmailItem alloc] initWithEmailMessage:v8];
      v7 = v9;
      if (v9)
      {
        [(BCSItem *)v9 setExpirationDate:v6];
        v10 = v7;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)updateStatementValues:(sqlite3_stmt *)a3 withItemIdentifier:(id)a4
{
  sqlite3_bind_int64(a3, 1, [a4 truncatedHash]);
  v6 = [(BCSBusinessEmailItem *)self message];
  v10 = [v6 data];

  v7 = v10;
  sqlite3_bind_blob(a3, 2, [v10 bytes], objc_msgSend(v10, "length"), 0);
  sqlite3_bind_int64(a3, 3, 1);
  v8 = [(BCSItem *)self expirationDate];
  [v8 timeIntervalSince1970];
  sqlite3_bind_double(a3, 4, v9);
}

@end