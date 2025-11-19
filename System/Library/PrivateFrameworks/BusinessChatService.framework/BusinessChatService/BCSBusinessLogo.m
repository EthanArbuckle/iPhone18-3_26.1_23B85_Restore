@interface BCSBusinessLogo
+ (id)itemFromStatement:(sqlite3_stmt *)a3;
- (BCSBusinessLogo)initWithBusinessId:(id)a3 logo:(id)a4;
- (BCSBusinessLogo)initWithBusinessId:(id)a3 logoURL:(id)a4 logoFormat:(id)a5;
- (BCSBusinessLogo)initWithCoder:(id)a3;
- (BCSBusinessLogo)initWithMessage:(id)a3 logoURL:(id)a4;
- (BOOL)matchesItemIdentifying:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)itemIdentifier;
- (int64_t)truncatedHash;
- (int64_t)type;
- (void)encodeWithCoder:(id)a3;
- (void)updateStatementValues:(sqlite3_stmt *)a3 withItemIdentifier:(id)a4;
@end

@implementation BCSBusinessLogo

+ (id)itemFromStatement:(sqlite3_stmt *)a3
{
  sqlite3_column_int64(a3, 0);
  v4 = BCSWebPresentmentStoreDataFromStatement(a3);
  v5 = sqlite3_column_int64(a3, 2);
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_double(a3, 3)}];
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

- (void)updateStatementValues:(sqlite3_stmt *)a3 withItemIdentifier:(id)a4
{
  sqlite3_bind_int64(a3, 1, [a4 truncatedHash]);
  v6 = [(BCSBusinessLogo *)self message];
  v10 = [v6 data];

  v7 = v10;
  sqlite3_bind_blob(a3, 2, [v10 bytes], objc_msgSend(v10, "length"), 0);
  sqlite3_bind_int64(a3, 3, 2);
  v8 = [(BCSItem *)self expirationDate];
  [v8 timeIntervalSince1970];
  sqlite3_bind_double(a3, 4, v9);
}

- (BCSBusinessLogo)initWithBusinessId:(id)a3 logo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = BCSBusinessLogo;
  v8 = [(BCSItem *)&v16 init];
  if (v8)
  {
    v9 = objc_alloc_init(BCSEmailLogoParquetMessage);
    message = v8->_message;
    v8->_message = v9;

    [(BCSEmailLogoParquetMessage *)v8->_message setBusinessId:v6];
    [(BCSEmailLogoParquetMessage *)v8->_message setLogo:v7];
    v11 = [BCSBusinessLogoItemIdentifier alloc];
    v12 = [(BCSEmailLogoParquetMessage *)v8->_message businessId];
    v13 = [(BCSBusinessLogoItemIdentifier *)v11 initWithBusinessId:v12];
    identifier = v8->_identifier;
    v8->_identifier = v13;
  }

  return v8;
}

- (BCSBusinessLogo)initWithBusinessId:(id)a3 logoURL:(id)a4 logoFormat:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = BCSBusinessLogo;
  v11 = [(BCSItem *)&v19 init];
  if (v11)
  {
    v12 = objc_alloc_init(BCSEmailLogoParquetMessage);
    message = v11->_message;
    v11->_message = v12;

    [(BCSEmailLogoParquetMessage *)v11->_message setBusinessId:v8];
    [(BCSEmailLogoParquetMessage *)v11->_message setLogoFormat:v10];
    objc_storeStrong(&v11->_logoURL, a4);
    v14 = [BCSBusinessLogoItemIdentifier alloc];
    v15 = [(BCSEmailLogoParquetMessage *)v11->_message businessId];
    v16 = [(BCSBusinessLogoItemIdentifier *)v14 initWithBusinessId:v15];
    identifier = v11->_identifier;
    v11->_identifier = v16;
  }

  return v11;
}

- (BCSBusinessLogo)initWithMessage:(id)a3 logoURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = BCSBusinessLogo;
  v8 = [(BCSItem *)&v18 init];
  if (v8)
  {
    v9 = [v6 copy];
    message = v8->_message;
    v8->_message = v9;

    v11 = [v7 copy];
    logoURL = v8->_logoURL;
    v8->_logoURL = v11;

    v13 = [BCSBusinessLogoItemIdentifier alloc];
    v14 = [(BCSEmailLogoParquetMessage *)v8->_message businessId];
    v15 = [(BCSBusinessLogoItemIdentifier *)v13 initWithBusinessId:v14];
    identifier = v8->_identifier;
    v8->_identifier = v15;
  }

  return v8;
}

- (id)itemIdentifier
{
  v2 = [(BCSBusinessLogo *)self identifier];
  v3 = [v2 itemIdentifier];

  return v3;
}

- (int64_t)truncatedHash
{
  v2 = [(BCSBusinessLogo *)self identifier];
  v3 = [v2 truncatedHash];

  return v3;
}

- (int64_t)type
{
  v2 = [(BCSBusinessLogo *)self identifier];
  v3 = [v2 type];

  return v3;
}

- (BOOL)matchesItemIdentifying:(id)a3
{
  v4 = a3;
  v5 = [(BCSBusinessLogo *)self identifier];
  v6 = [v5 matchesItemIdentifying:v4];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(BCSBusinessLogo *)self message];
    v7 = [v6 copyWithZone:a3];
    v8 = v5[6];
    v5[6] = v7;

    v9 = [(BCSBusinessLogo *)self logoURL];
    v10 = [v9 copyWithZone:a3];
    v11 = v5[4];
    v5[4] = v10;

    v12 = [(BCSBusinessLogo *)self identifier];
    v13 = [v12 copyWithZone:a3];
    v14 = v5[5];
    v5[5] = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BCSBusinessLogo *)self message];
  v6 = [v5 data];
  [v4 encodeObject:v6 forKey:@"Message"];

  v7 = [(BCSBusinessLogo *)self logoURL];
  [v4 encodeObject:v7 forKey:@"LogoURL"];
}

- (BCSBusinessLogo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Message"];
  v6 = [[BCSEmailLogoParquetMessage alloc] initWithData:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LogoURL"];
    self = [(BCSBusinessLogo *)self initWithMessage:v6 logoURL:v7];

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end