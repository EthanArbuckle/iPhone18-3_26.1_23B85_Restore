@interface BCSWebPresentmentItem
+ (id)itemFromStatement:(sqlite3_stmt *)statement;
- (BCSWebPresentmentItem)initWithBrandID:(id)d defaultsDictionary:(id)dictionary;
- (BCSWebPresentmentItem)initWithBrandID:(id)d localizedNames:(id)names;
- (BCSWebPresentmentItem)initWithBrandID:(id)d localizedNames:(id)names businessId:(id)id companyId:(id)companyId;
- (BCSWebPresentmentItem)initWithCoder:(id)coder;
- (BCSWebPresentmentItem)initWithMessage:(id)message logoURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesItemIdentifying:(id)identifying;
- (NSDictionary)localizedNames;
- (NSObject)itemIdentifier;
- (NSString)debugDescription;
- (NSString)pirKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)name;
- (int64_t)serverType;
- (int64_t)truncatedHash;
- (int64_t)type;
- (unint64_t)itemTTL;
- (void)encodeWithCoder:(id)coder;
- (void)updateStatementValues:(sqlite3_stmt *)values withItemIdentifier:(id)identifier;
@end

@implementation BCSWebPresentmentItem

+ (id)itemFromStatement:(sqlite3_stmt *)statement
{
  v4 = BCSWebPresentmentStoreStringFromStatement(statement);
  v5 = BCSWebPresentmentStoreDataFromStatement(statement);
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_double(statement, 2)}];
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

- (void)updateStatementValues:(sqlite3_stmt *)values withItemIdentifier:(id)identifier
{
  brandId = [identifier brandId];
  sqlite3_bind_text(values, 1, [brandId UTF8String], -1, 0);

  message = [(BCSWebPresentmentItem *)self message];
  data = [message data];

  v8 = data;
  sqlite3_bind_blob(values, 2, [data bytes], objc_msgSend(data, "length"), 0);
  expirationDate = [(BCSItem *)self expirationDate];
  if (!expirationDate)
  {
    message2 = [(BCSWebPresentmentItem *)self message];
    hasItemTtl = [message2 hasItemTtl];

    if (hasItemTtl)
    {
      v12 = MEMORY[0x277CBEAA8];
      message3 = [(BCSWebPresentmentItem *)self message];
      expirationDate = [v12 dateWithTimeIntervalSinceNow:{objc_msgSend(message3, "itemTtl")}];
    }

    else
    {
      expirationDate = 0;
    }
  }

  [expirationDate timeIntervalSince1970];
  sqlite3_bind_double(values, 3, v14);
}

- (BCSWebPresentmentItem)initWithBrandID:(id)d localizedNames:(id)names
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  namesCopy = names;
  v26.receiver = self;
  v26.super_class = BCSWebPresentmentItem;
  v8 = [(BCSItem *)&v26 init];
  if (v8)
  {
    v9 = objc_alloc_init(BCSWebPresentmentParquetMessage);
    message = v8->_message;
    v8->_message = v9;

    [(BCSWebPresentmentParquetMessage *)v8->_message setBcBrandId:dCopy];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = namesCopy;
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
    bcBrandId = [(BCSWebPresentmentParquetMessage *)v8->_message bcBrandId];
    v18 = [(BCSWebPresentmentItemIdentifier *)v16 initWithBrandID:bcBrandId serverType:2];
    identifier = v8->_identifier;
    v8->_identifier = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BCSWebPresentmentItem)initWithBrandID:(id)d localizedNames:(id)names businessId:(id)id companyId:(id)companyId
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  namesCopy = names;
  idCopy = id;
  companyIdCopy = companyId;
  v32.receiver = self;
  v32.super_class = BCSWebPresentmentItem;
  v14 = [(BCSItem *)&v32 init];
  if (v14)
  {
    v15 = objc_alloc_init(BCSWebPresentmentParquetMessage);
    message = v14->_message;
    v14->_message = v15;

    [(BCSWebPresentmentParquetMessage *)v14->_message setBcBrandId:dCopy];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = namesCopy;
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

    [(BCSWebPresentmentParquetMessage *)v14->_message setBusinessId:idCopy];
    [(BCSWebPresentmentParquetMessage *)v14->_message setCompanyId:companyIdCopy];
    v22 = [BCSWebPresentmentItemIdentifier alloc];
    bcBrandId = [(BCSWebPresentmentParquetMessage *)v14->_message bcBrandId];
    v24 = [(BCSWebPresentmentItemIdentifier *)v22 initWithBrandID:bcBrandId serverType:2];
    identifier = v14->_identifier;
    v14->_identifier = v24;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BCSWebPresentmentItem)initWithMessage:(id)message logoURL:(id)l
{
  messageCopy = message;
  lCopy = l;
  v16.receiver = self;
  v16.super_class = BCSWebPresentmentItem;
  v8 = [(BCSItem *)&v16 init];
  if (v8)
  {
    v9 = [messageCopy copy];
    message = v8->_message;
    v8->_message = v9;

    v11 = [BCSWebPresentmentItemIdentifier alloc];
    bcBrandId = [(BCSWebPresentmentParquetMessage *)v8->_message bcBrandId];
    v13 = [(BCSWebPresentmentItemIdentifier *)v11 initWithBrandID:bcBrandId serverType:2];
    identifier = v8->_identifier;
    v8->_identifier = v13;

    objc_storeStrong(&v8->_logoURL, l);
  }

  return v8;
}

- (BCSWebPresentmentItem)initWithBrandID:(id)d defaultsDictionary:(id)dictionary
{
  v16[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dCopy = d;
  v8 = objc_alloc_init(BCSWebPresentmentLocalizedString);
  [(BCSWebPresentmentLocalizedString *)v8 setLocale:@"en-US"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  [(BCSWebPresentmentLocalizedString *)v8 setText:v9];

  [(BCSWebPresentmentLocalizedString *)v8 setIsDefault:1];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"businessId"];
  v11 = [dictionaryCopy objectForKeyedSubscript:@"companyId"];

  v16[0] = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v13 = [(BCSWebPresentmentItem *)self initWithBrandID:dCopy localizedNames:v12 businessId:v10 companyId:v11];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)name
{
  names = [(BCSWebPresentmentParquetMessage *)self->_message names];
  defaultLocalizedStringsValue = [names defaultLocalizedStringsValue];

  return defaultLocalizedStringsValue;
}

- (NSDictionary)localizedNames
{
  names = [(BCSWebPresentmentParquetMessage *)self->_message names];
  localizedStringsToDictionary = [names localizedStringsToDictionary];

  return localizedStringsToDictionary;
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
  brandId = [(BCSWebPresentmentItem *)self brandId];
  name = [(BCSWebPresentmentItem *)self name];
  businessId = [(BCSWebPresentmentItem *)self businessId];
  companyId = [(BCSWebPresentmentItem *)self companyId];
  v9 = [v3 stringWithFormat:@"<%@ { brandId: %@, name: %@, businessId: %@, companyId: %@>", v4, brandId, name, businessId, companyId];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&unk_2854663D0])
  {
    v5 = [(BCSWebPresentmentItem *)self matchesItemIdentifying:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSObject)itemIdentifier
{
  identifier = [(BCSWebPresentmentItem *)self identifier];
  itemIdentifier = [identifier itemIdentifier];

  return itemIdentifier;
}

- (int64_t)truncatedHash
{
  identifier = [(BCSWebPresentmentItem *)self identifier];
  truncatedHash = [identifier truncatedHash];

  return truncatedHash;
}

- (int64_t)type
{
  identifier = [(BCSWebPresentmentItem *)self identifier];
  type = [identifier type];

  return type;
}

- (BOOL)matchesItemIdentifying:(id)identifying
{
  identifyingCopy = identifying;
  identifier = [(BCSWebPresentmentItem *)self identifier];
  v6 = [identifier matchesItemIdentifying:identifyingCopy];

  return v6;
}

- (NSString)pirKey
{
  identifier = [(BCSWebPresentmentItem *)self identifier];
  brandId = [identifier brandId];

  return brandId;
}

- (int64_t)serverType
{
  identifier = [(BCSWebPresentmentItem *)self identifier];
  serverType = [identifier serverType];

  return serverType;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    message = [(BCSWebPresentmentItem *)self message];
    v7 = [message copyWithZone:zone];
    v8 = v5[4];
    v5[4] = v7;

    identifier = [(BCSWebPresentmentItem *)self identifier];
    v10 = [identifier copyWithZone:zone];
    v11 = v5[3];
    v5[3] = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  message = [(BCSWebPresentmentItem *)self message];
  data = [message data];
  [coderCopy encodeObject:data forKey:@"Message"];

  logoURL = [(BCSWebPresentmentItem *)self logoURL];
  [coderCopy encodeObject:logoURL forKey:@"LogoURL"];
}

- (BCSWebPresentmentItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Message"];
  v6 = [[BCSWebPresentmentParquetMessage alloc] initWithData:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LogoURL"];
    self = [(BCSWebPresentmentItem *)self initWithMessage:v6 logoURL:v7];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end