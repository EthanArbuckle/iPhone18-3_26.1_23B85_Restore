@interface BCSBusinessLogo
+ (id)itemFromStatement:(sqlite3_stmt *)statement;
- (BCSBusinessLogo)initWithBusinessId:(id)id logo:(id)logo;
- (BCSBusinessLogo)initWithBusinessId:(id)id logoURL:(id)l logoFormat:(id)format;
- (BCSBusinessLogo)initWithCoder:(id)coder;
- (BCSBusinessLogo)initWithMessage:(id)message logoURL:(id)l;
- (BOOL)matchesItemIdentifying:(id)identifying;
- (id)copyWithZone:(_NSZone *)zone;
- (id)itemIdentifier;
- (int64_t)truncatedHash;
- (int64_t)type;
- (void)encodeWithCoder:(id)coder;
- (void)updateStatementValues:(sqlite3_stmt *)values withItemIdentifier:(id)identifier;
@end

@implementation BCSBusinessLogo

+ (id)itemFromStatement:(sqlite3_stmt *)statement
{
  sqlite3_column_int64(statement, 0);
  v4 = BCSWebPresentmentStoreDataFromStatement(statement);
  v5 = sqlite3_column_int64(statement, 2);
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_double(statement, 3)}];
  v7 = 0;
  if (v4 && v5 == 2)
  {
    v8 = [[BCSEmailLogoParquetMessage alloc] initWithData:v4];
    if (v8)
    {
      v9 = [[BCSBusinessLogo alloc] initWithMessage:v8 logoURL:0];
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
  message = [(BCSBusinessLogo *)self message];
  data = [message data];

  v7 = data;
  sqlite3_bind_blob(values, 2, [data bytes], objc_msgSend(data, "length"), 0);
  sqlite3_bind_int64(values, 3, 2);
  expirationDate = [(BCSItem *)self expirationDate];
  [expirationDate timeIntervalSince1970];
  sqlite3_bind_double(values, 4, v9);
}

- (BCSBusinessLogo)initWithBusinessId:(id)id logo:(id)logo
{
  idCopy = id;
  logoCopy = logo;
  v16.receiver = self;
  v16.super_class = BCSBusinessLogo;
  v8 = [(BCSItem *)&v16 init];
  if (v8)
  {
    v9 = objc_alloc_init(BCSEmailLogoParquetMessage);
    message = v8->_message;
    v8->_message = v9;

    [(BCSEmailLogoParquetMessage *)v8->_message setBusinessId:idCopy];
    [(BCSEmailLogoParquetMessage *)v8->_message setLogo:logoCopy];
    v11 = [BCSBusinessLogoItemIdentifier alloc];
    businessId = [(BCSEmailLogoParquetMessage *)v8->_message businessId];
    v13 = [(BCSBusinessLogoItemIdentifier *)v11 initWithBusinessId:businessId];
    identifier = v8->_identifier;
    v8->_identifier = v13;
  }

  return v8;
}

- (BCSBusinessLogo)initWithBusinessId:(id)id logoURL:(id)l logoFormat:(id)format
{
  idCopy = id;
  lCopy = l;
  formatCopy = format;
  v19.receiver = self;
  v19.super_class = BCSBusinessLogo;
  v11 = [(BCSItem *)&v19 init];
  if (v11)
  {
    v12 = objc_alloc_init(BCSEmailLogoParquetMessage);
    message = v11->_message;
    v11->_message = v12;

    [(BCSEmailLogoParquetMessage *)v11->_message setBusinessId:idCopy];
    [(BCSEmailLogoParquetMessage *)v11->_message setLogoFormat:formatCopy];
    objc_storeStrong(&v11->_logoURL, l);
    v14 = [BCSBusinessLogoItemIdentifier alloc];
    businessId = [(BCSEmailLogoParquetMessage *)v11->_message businessId];
    v16 = [(BCSBusinessLogoItemIdentifier *)v14 initWithBusinessId:businessId];
    identifier = v11->_identifier;
    v11->_identifier = v16;
  }

  return v11;
}

- (BCSBusinessLogo)initWithMessage:(id)message logoURL:(id)l
{
  messageCopy = message;
  lCopy = l;
  v18.receiver = self;
  v18.super_class = BCSBusinessLogo;
  v8 = [(BCSItem *)&v18 init];
  if (v8)
  {
    v9 = [messageCopy copy];
    message = v8->_message;
    v8->_message = v9;

    v11 = [lCopy copy];
    logoURL = v8->_logoURL;
    v8->_logoURL = v11;

    v13 = [BCSBusinessLogoItemIdentifier alloc];
    businessId = [(BCSEmailLogoParquetMessage *)v8->_message businessId];
    v15 = [(BCSBusinessLogoItemIdentifier *)v13 initWithBusinessId:businessId];
    identifier = v8->_identifier;
    v8->_identifier = v15;
  }

  return v8;
}

- (id)itemIdentifier
{
  identifier = [(BCSBusinessLogo *)self identifier];
  itemIdentifier = [identifier itemIdentifier];

  return itemIdentifier;
}

- (int64_t)truncatedHash
{
  identifier = [(BCSBusinessLogo *)self identifier];
  truncatedHash = [identifier truncatedHash];

  return truncatedHash;
}

- (int64_t)type
{
  identifier = [(BCSBusinessLogo *)self identifier];
  type = [identifier type];

  return type;
}

- (BOOL)matchesItemIdentifying:(id)identifying
{
  identifyingCopy = identifying;
  identifier = [(BCSBusinessLogo *)self identifier];
  v6 = [identifier matchesItemIdentifying:identifyingCopy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    message = [(BCSBusinessLogo *)self message];
    v7 = [message copyWithZone:zone];
    v8 = v5[6];
    v5[6] = v7;

    logoURL = [(BCSBusinessLogo *)self logoURL];
    v10 = [logoURL copyWithZone:zone];
    v11 = v5[4];
    v5[4] = v10;

    identifier = [(BCSBusinessLogo *)self identifier];
    v13 = [identifier copyWithZone:zone];
    v14 = v5[5];
    v5[5] = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  message = [(BCSBusinessLogo *)self message];
  data = [message data];
  [coderCopy encodeObject:data forKey:@"Message"];

  logoURL = [(BCSBusinessLogo *)self logoURL];
  [coderCopy encodeObject:logoURL forKey:@"LogoURL"];
}

- (BCSBusinessLogo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Message"];
  v6 = [[BCSEmailLogoParquetMessage alloc] initWithData:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LogoURL"];
    self = [(BCSBusinessLogo *)self initWithMessage:v6 logoURL:v7];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end