@interface BCSBusinessEmailItem
+ (id)itemFromStatement:(sqlite3_stmt *)statement;
- (BCSBusinessEmailItem)initWithCoder:(id)coder;
- (BCSBusinessEmailItem)initWithEmail:(id)email localizedNames:(id)names;
- (BCSBusinessEmailItem)initWithEmail:(id)email localizedNames:(id)names localizedDisplayNames:(id)displayNames businessId:(id)id companyId:(id)companyId;
- (BCSBusinessEmailItem)initWithEmailMessage:(id)message;
- (BCSBusinessEmailItem)initWithIdentifier:(id)identifier defaultsDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesItemIdentifying:(id)identifying;
- (NSDictionary)localizedDisplayNames;
- (NSDictionary)localizedNames;
- (NSString)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)displayName;
- (id)itemIdentifier;
- (int64_t)truncatedHash;
- (int64_t)type;
- (void)encodeWithCoder:(id)coder;
- (void)updateStatementValues:(sqlite3_stmt *)values withItemIdentifier:(id)identifier;
@end

@implementation BCSBusinessEmailItem

- (BCSBusinessEmailItem)initWithEmail:(id)email localizedNames:(id)names
{
  v28 = *MEMORY[0x277D85DE8];
  emailCopy = email;
  namesCopy = names;
  v26.receiver = self;
  v26.super_class = BCSBusinessEmailItem;
  v8 = [(BCSItem *)&v26 init];
  if (v8)
  {
    v9 = objc_alloc_init(BCSEmailMetadataParquetMessage);
    message = v8->_message;
    v8->_message = v9;

    [(BCSEmailMetadataParquetMessage *)v8->_message setKey:emailCopy];
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

- (BCSBusinessEmailItem)initWithEmail:(id)email localizedNames:(id)names localizedDisplayNames:(id)displayNames businessId:(id)id companyId:(id)companyId
{
  v48 = *MEMORY[0x277D85DE8];
  emailCopy = email;
  namesCopy = names;
  displayNamesCopy = displayNames;
  idCopy = id;
  companyIdCopy = companyId;
  v45.receiver = self;
  v45.super_class = BCSBusinessEmailItem;
  v17 = [(BCSItem *)&v45 init];
  if (v17)
  {
    v18 = objc_alloc_init(BCSEmailMetadataParquetMessage);
    message = v17->_message;
    v17->_message = v18;

    v36 = emailCopy;
    [(BCSEmailMetadataParquetMessage *)v17->_message setKey:emailCopy];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v20 = namesCopy;
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
    v25 = displayNamesCopy;
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

    [(BCSEmailMetadataParquetMessage *)v17->_message setBusinessId:idCopy];
    [(BCSEmailMetadataParquetMessage *)v17->_message setCompanyId:companyIdCopy];
    v30 = [BCSBusinessEmailItemIdentifier alloc];
    v31 = [(BCSEmailMetadataParquetMessage *)v17->_message key];
    v32 = [(BCSBusinessEmailItemIdentifier *)v30 initWithEmail:v31];
    identifier = v17->_identifier;
    v17->_identifier = v32;

    emailCopy = v36;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BCSBusinessEmailItem)initWithEmailMessage:(id)message
{
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = BCSBusinessEmailItem;
  v5 = [(BCSItem *)&v13 init];
  if (v5)
  {
    v6 = [messageCopy copy];
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

- (BCSBusinessEmailItem)initWithIdentifier:(id)identifier defaultsDictionary:(id)dictionary
{
  v19[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v8 = objc_alloc_init(BCSEmailLocalizedString);
  [(BCSEmailLocalizedString *)v8 setLocale:@"en-US"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  [(BCSEmailLocalizedString *)v8 setText:v9];

  [(BCSEmailLocalizedString *)v8 setIsDefault:1];
  email = [identifierCopy email];

  v19[0] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v18 = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v13 = [dictionaryCopy objectForKeyedSubscript:@"businessId"];
  v14 = [dictionaryCopy objectForKeyedSubscript:@"companyId"];

  v15 = [(BCSBusinessEmailItem *)self initWithEmail:email localizedNames:v11 localizedDisplayNames:v12 businessId:v13 companyId:v14];
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (NSString)name
{
  names = [(BCSEmailMetadataParquetMessage *)self->_message names];
  defaultLocalizedStringsValue = [names defaultLocalizedStringsValue];

  return defaultLocalizedStringsValue;
}

- (id)displayName
{
  displayNames = [(BCSEmailMetadataParquetMessage *)self->_message displayNames];
  defaultLocalizedStringsValue = [displayNames defaultLocalizedStringsValue];

  return defaultLocalizedStringsValue;
}

- (NSDictionary)localizedNames
{
  names = [(BCSEmailMetadataParquetMessage *)self->_message names];
  localizedStringsToDictionary = [names localizedStringsToDictionary];

  return localizedStringsToDictionary;
}

- (NSDictionary)localizedDisplayNames
{
  displayNames = [(BCSEmailMetadataParquetMessage *)self->_message displayNames];
  localizedStringsToDictionary = [displayNames localizedStringsToDictionary];

  return localizedStringsToDictionary;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BCSBusinessEmailItem *)self description];
  email = [(BCSBusinessEmailItem *)self email];
  name = [(BCSBusinessEmailItem *)self name];
  displayName = [(BCSBusinessEmailItem *)self displayName];
  businessId = [(BCSBusinessEmailItem *)self businessId];
  companyId = [(BCSBusinessEmailItem *)self companyId];
  v10 = [v3 stringWithFormat:@"<%@ { email: %@, name: %@, displayName: %@, businessId: %@, companyId: %@>", v4, email, name, displayName, businessId, companyId];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BCSBusinessEmailItem *)self matchesItemIdentifying:equalCopy];

  return v5;
}

- (id)itemIdentifier
{
  identifier = [(BCSBusinessEmailItem *)self identifier];
  itemIdentifier = [identifier itemIdentifier];

  return itemIdentifier;
}

- (int64_t)truncatedHash
{
  identifier = [(BCSBusinessEmailItem *)self identifier];
  truncatedHash = [identifier truncatedHash];

  return truncatedHash;
}

- (int64_t)type
{
  identifier = [(BCSBusinessEmailItem *)self identifier];
  type = [identifier type];

  return type;
}

- (BOOL)matchesItemIdentifying:(id)identifying
{
  identifyingCopy = identifying;
  identifier = [(BCSBusinessEmailItem *)self identifier];
  v6 = [identifier matchesItemIdentifying:identifyingCopy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    message = [(BCSBusinessEmailItem *)self message];
    v7 = [message copyWithZone:zone];
    v8 = v5[3];
    v5[3] = v7;

    identifier = [(BCSBusinessEmailItem *)self identifier];
    v10 = [identifier copyWithZone:zone];
    v11 = v5[2];
    v5[2] = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  message = [(BCSBusinessEmailItem *)self message];
  data = [message data];
  [coderCopy encodeObject:data forKey:@"Message"];
}

- (BCSBusinessEmailItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Message"];

  v6 = [[BCSEmailMetadataParquetMessage alloc] initWithData:v5];
  if (v6)
  {
    self = [(BCSBusinessEmailItem *)self initWithEmailMessage:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)itemFromStatement:(sqlite3_stmt *)statement
{
  sqlite3_column_int64(statement, 0);
  v4 = BCSWebPresentmentStoreDataFromStatement(statement);
  v5 = sqlite3_column_int64(statement, 2);
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_double(statement, 3)}];
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

- (void)updateStatementValues:(sqlite3_stmt *)values withItemIdentifier:(id)identifier
{
  sqlite3_bind_int64(values, 1, [identifier truncatedHash]);
  message = [(BCSBusinessEmailItem *)self message];
  data = [message data];

  v7 = data;
  sqlite3_bind_blob(values, 2, [data bytes], objc_msgSend(data, "length"), 0);
  sqlite3_bind_int64(values, 3, 1);
  expirationDate = [(BCSItem *)self expirationDate];
  [expirationDate timeIntervalSince1970];
  sqlite3_bind_double(values, 4, v9);
}

@end