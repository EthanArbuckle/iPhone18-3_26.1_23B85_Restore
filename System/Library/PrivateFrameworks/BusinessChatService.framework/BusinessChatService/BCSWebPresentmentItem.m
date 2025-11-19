@interface BCSWebPresentmentItem
+ (id)itemFromStatement:(sqlite3_stmt *)a3;
- (BCSWebPresentmentItem)initWithBrandID:(id)a3 defaultsDictionary:(id)a4;
- (BCSWebPresentmentItem)initWithBrandID:(id)a3 localizedNames:(id)a4;
- (BCSWebPresentmentItem)initWithBrandID:(id)a3 localizedNames:(id)a4 businessId:(id)a5 companyId:(id)a6;
- (BCSWebPresentmentItem)initWithCoder:(id)a3;
- (BCSWebPresentmentItem)initWithMessage:(id)a3 logoURL:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesItemIdentifying:(id)a3;
- (NSDictionary)localizedNames;
- (NSObject)itemIdentifier;
- (NSString)debugDescription;
- (NSString)pirKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)name;
- (int64_t)serverType;
- (int64_t)truncatedHash;
- (int64_t)type;
- (unint64_t)itemTTL;
- (void)encodeWithCoder:(id)a3;
- (void)updateStatementValues:(sqlite3_stmt *)a3 withItemIdentifier:(id)a4;
@end

@implementation BCSWebPresentmentItem

+ (id)itemFromStatement:(sqlite3_stmt *)a3
{
  v4 = BCSWebPresentmentStoreStringFromStatement(a3);
  v5 = BCSWebPresentmentStoreDataFromStatement(a3);
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_double(a3, 2)}];
  if (v5)
  {
    v7 = [[BCSWebPresentmentParquetMessage alloc] initWithData:v5];
    if (v7)
    {
      v8 = [[BCSWebPresentmentItem alloc] initWithMessage:v7 logoURL:0];
      v9 = v8;
      if (v8)
      {
        [(BCSItem *)v8 setExpirationDate:v6];
        v10 = v9;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updateStatementValues:(sqlite3_stmt *)a3 withItemIdentifier:(id)a4
{
  v6 = [a4 brandId];
  sqlite3_bind_text(a3, 1, [v6 UTF8String], -1, 0);

  v7 = [(BCSWebPresentmentItem *)self message];
  v15 = [v7 data];

  v8 = v15;
  sqlite3_bind_blob(a3, 2, [v15 bytes], objc_msgSend(v15, "length"), 0);
  v9 = [(BCSItem *)self expirationDate];
  if (!v9)
  {
    v10 = [(BCSWebPresentmentItem *)self message];
    v11 = [v10 hasItemTtl];

    if (v11)
    {
      v12 = MEMORY[0x277CBEAA8];
      v13 = [(BCSWebPresentmentItem *)self message];
      v9 = [v12 dateWithTimeIntervalSinceNow:{objc_msgSend(v13, "itemTtl")}];
    }

    else
    {
      v9 = 0;
    }
  }

  [v9 timeIntervalSince1970];
  sqlite3_bind_double(a3, 3, v14);
}

- (BCSWebPresentmentItem)initWithBrandID:(id)a3 localizedNames:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = BCSWebPresentmentItem;
  v8 = [(BCSItem *)&v26 init];
  if (v8)
  {
    v9 = objc_alloc_init(BCSWebPresentmentParquetMessage);
    message = v8->_message;
    v8->_message = v9;

    [(BCSWebPresentmentParquetMessage *)v8->_message setBcBrandId:v6];
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

          [(BCSWebPresentmentParquetMessage *)v8->_message addName:*(*(&v22 + 1) + 8 * v15++), v22];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v13);
    }

    v16 = [BCSWebPresentmentItemIdentifier alloc];
    v17 = [(BCSWebPresentmentParquetMessage *)v8->_message bcBrandId];
    v18 = [(BCSWebPresentmentItemIdentifier *)v16 initWithBrandID:v17 serverType:2];
    identifier = v8->_identifier;
    v8->_identifier = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BCSWebPresentmentItem)initWithBrandID:(id)a3 localizedNames:(id)a4 businessId:(id)a5 companyId:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v32.receiver = self;
  v32.super_class = BCSWebPresentmentItem;
  v14 = [(BCSItem *)&v32 init];
  if (v14)
  {
    v15 = objc_alloc_init(BCSWebPresentmentParquetMessage);
    message = v14->_message;
    v14->_message = v15;

    [(BCSWebPresentmentParquetMessage *)v14->_message setBcBrandId:v10];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = v11;
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        v21 = 0;
        do
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [(BCSWebPresentmentParquetMessage *)v14->_message addName:*(*(&v28 + 1) + 8 * v21++), v28];
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v19);
    }

    [(BCSWebPresentmentParquetMessage *)v14->_message setBusinessId:v12];
    [(BCSWebPresentmentParquetMessage *)v14->_message setCompanyId:v13];
    v22 = [BCSWebPresentmentItemIdentifier alloc];
    v23 = [(BCSWebPresentmentParquetMessage *)v14->_message bcBrandId];
    v24 = [(BCSWebPresentmentItemIdentifier *)v22 initWithBrandID:v23 serverType:2];
    identifier = v14->_identifier;
    v14->_identifier = v24;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BCSWebPresentmentItem)initWithMessage:(id)a3 logoURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = BCSWebPresentmentItem;
  v8 = [(BCSItem *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    message = v8->_message;
    v8->_message = v9;

    v11 = [BCSWebPresentmentItemIdentifier alloc];
    v12 = [(BCSWebPresentmentParquetMessage *)v8->_message bcBrandId];
    v13 = [(BCSWebPresentmentItemIdentifier *)v11 initWithBrandID:v12 serverType:2];
    identifier = v8->_identifier;
    v8->_identifier = v13;

    objc_storeStrong(&v8->_logoURL, a4);
  }

  return v8;
}

- (BCSWebPresentmentItem)initWithBrandID:(id)a3 defaultsDictionary:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(BCSWebPresentmentLocalizedString);
  [(BCSWebPresentmentLocalizedString *)v8 setLocale:@"en-US"];
  v9 = [v6 objectForKeyedSubscript:@"name"];
  [(BCSWebPresentmentLocalizedString *)v8 setText:v9];

  [(BCSWebPresentmentLocalizedString *)v8 setIsDefault:1];
  v10 = [v6 objectForKeyedSubscript:@"businessId"];
  v11 = [v6 objectForKeyedSubscript:@"companyId"];

  v16[0] = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v13 = [(BCSWebPresentmentItem *)self initWithBrandID:v7 localizedNames:v12 businessId:v10 companyId:v11];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)name
{
  v2 = [(BCSWebPresentmentParquetMessage *)self->_message names];
  v3 = [v2 defaultLocalizedStringsValue];

  return v3;
}

- (NSDictionary)localizedNames
{
  v2 = [(BCSWebPresentmentParquetMessage *)self->_message names];
  v3 = [v2 localizedStringsToDictionary];

  return v3;
}

- (unint64_t)itemTTL
{
  if (![(BCSWebPresentmentParquetMessage *)self->_message hasItemTtl])
  {
    return 86400;
  }

  message = self->_message;

  return [(BCSWebPresentmentParquetMessage *)message itemTtl];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BCSWebPresentmentItem *)self description];
  v5 = [(BCSWebPresentmentItem *)self brandId];
  v6 = [(BCSWebPresentmentItem *)self name];
  v7 = [(BCSWebPresentmentItem *)self businessId];
  v8 = [(BCSWebPresentmentItem *)self companyId];
  v9 = [v3 stringWithFormat:@"<%@ { brandId: %@, name: %@, businessId: %@, companyId: %@>", v4, v5, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2854663D0])
  {
    v5 = [(BCSWebPresentmentItem *)self matchesItemIdentifying:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSObject)itemIdentifier
{
  v2 = [(BCSWebPresentmentItem *)self identifier];
  v3 = [v2 itemIdentifier];

  return v3;
}

- (int64_t)truncatedHash
{
  v2 = [(BCSWebPresentmentItem *)self identifier];
  v3 = [v2 truncatedHash];

  return v3;
}

- (int64_t)type
{
  v2 = [(BCSWebPresentmentItem *)self identifier];
  v3 = [v2 type];

  return v3;
}

- (BOOL)matchesItemIdentifying:(id)a3
{
  v4 = a3;
  v5 = [(BCSWebPresentmentItem *)self identifier];
  v6 = [v5 matchesItemIdentifying:v4];

  return v6;
}

- (NSString)pirKey
{
  v2 = [(BCSWebPresentmentItem *)self identifier];
  v3 = [v2 brandId];

  return v3;
}

- (int64_t)serverType
{
  v2 = [(BCSWebPresentmentItem *)self identifier];
  v3 = [v2 serverType];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(BCSWebPresentmentItem *)self message];
    v7 = [v6 copyWithZone:a3];
    v8 = v5[4];
    v5[4] = v7;

    v9 = [(BCSWebPresentmentItem *)self identifier];
    v10 = [v9 copyWithZone:a3];
    v11 = v5[3];
    v5[3] = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BCSWebPresentmentItem *)self message];
  v6 = [v5 data];
  [v4 encodeObject:v6 forKey:@"Message"];

  v7 = [(BCSWebPresentmentItem *)self logoURL];
  [v4 encodeObject:v7 forKey:@"LogoURL"];
}

- (BCSWebPresentmentItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Message"];
  v6 = [[BCSWebPresentmentParquetMessage alloc] initWithData:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LogoURL"];
    self = [(BCSWebPresentmentItem *)self initWithMessage:v6 logoURL:v7];

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end