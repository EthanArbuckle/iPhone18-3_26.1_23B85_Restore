@interface BCSWebPresentmentPermissionsItem
+ (id)itemFromStatement:(sqlite3_stmt *)a3;
- (BCSWebPresentmentPermissionsItem)initWithBrandID:(id)a3;
- (BCSWebPresentmentPermissionsItem)initWithBrandID:(id)a3 data:(id)a4;
- (BCSWebPresentmentPermissionsItem)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesItemIdentifying:(id)a3;
- (NSObject)itemIdentifier;
- (NSString)debugDescription;
- (NSString)pirKey;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)serverType;
- (int64_t)truncatedHash;
- (int64_t)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateStatementValues:(sqlite3_stmt *)a3 withItemIdentifier:(id)a4;
@end

@implementation BCSWebPresentmentPermissionsItem

- (BCSWebPresentmentPermissionsItem)initWithBrandID:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = BCSWebPresentmentPermissionsItem;
  v6 = [(BCSItem *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_brandId, a3);
    v8 = [BCSWebPresentmentItemIdentifier alloc];
    v9 = [(BCSWebPresentmentPermissionsItem *)v7 brandId];
    v10 = [(BCSWebPresentmentItemIdentifier *)v8 initWithBrandID:v9 serverType:4];
    identifier = v7->_identifier;
    v7->_identifier = v10;
  }

  return v7;
}

- (BCSWebPresentmentPermissionsItem)initWithBrandID:(id)a3 data:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = BCSWebPresentmentPermissionsItem;
  v9 = [(BCSItem *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_brandId, a3);
    objc_storeStrong(&v10->_data, a4);
    v11 = [BCSWebPresentmentItemIdentifier alloc];
    v12 = [(BCSWebPresentmentPermissionsItem *)v10 brandId];
    v13 = [(BCSWebPresentmentItemIdentifier *)v11 initWithBrandID:v12 serverType:4];
    identifier = v10->_identifier;
    v10->_identifier = v13;
  }

  return v10;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BCSWebPresentmentPermissionsItem *)self description];
  v5 = [(BCSWebPresentmentPermissionsItem *)self brandId];
  v6 = [(BCSWebPresentmentPermissionsItem *)self data];
  v7 = [v3 stringWithFormat:@"<%@ { brandId: %@, data: %@>", v4, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2854663D0])
  {
    v5 = [(BCSWebPresentmentPermissionsItem *)self matchesItemIdentifying:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_brandId hash];
  v4 = [(NSData *)self->_data hash]^ v3;
  return v4 ^ [(BCSWebPresentmentItemIdentifier *)self->_identifier hash];
}

- (NSObject)itemIdentifier
{
  v2 = [(BCSWebPresentmentPermissionsItem *)self identifier];
  v3 = [v2 itemIdentifier];

  return v3;
}

- (int64_t)truncatedHash
{
  v2 = [(BCSWebPresentmentPermissionsItem *)self identifier];
  v3 = [v2 truncatedHash];

  return v3;
}

- (int64_t)type
{
  v2 = [(BCSWebPresentmentPermissionsItem *)self identifier];
  v3 = [v2 type];

  return v3;
}

- (BOOL)matchesItemIdentifying:(id)a3
{
  v4 = a3;
  v5 = [(BCSWebPresentmentPermissionsItem *)self identifier];
  v6 = [v5 matchesItemIdentifying:v4];

  return v6;
}

- (NSString)pirKey
{
  v2 = [(BCSWebPresentmentPermissionsItem *)self identifier];
  v3 = [v2 brandId];

  return v3;
}

- (int64_t)serverType
{
  v2 = [(BCSWebPresentmentPermissionsItem *)self identifier];
  v3 = [v2 serverType];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(BCSWebPresentmentPermissionsItem *)self brandId];
    v7 = [v6 copyWithZone:a3];
    v8 = v5[4];
    v5[4] = v7;

    v9 = [(BCSWebPresentmentPermissionsItem *)self data];
    v10 = [v9 copyWithZone:a3];
    v11 = v5[2];
    v5[2] = v10;

    v12 = [(BCSWebPresentmentPermissionsItem *)self identifier];
    v13 = [v12 copyWithZone:a3];
    v14 = v5[3];
    v5[3] = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BCSWebPresentmentPermissionsItem *)self brandId];
  [v4 encodeObject:v5 forKey:@"BrandId"];

  v6 = [(BCSWebPresentmentPermissionsItem *)self data];
  [v4 encodeObject:v6 forKey:@"Data"];
}

- (BCSWebPresentmentPermissionsItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BrandId"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Data"];

  v7 = [(BCSWebPresentmentPermissionsItem *)self initWithBrandID:v5 data:v6];
  return v7;
}

+ (id)itemFromStatement:(sqlite3_stmt *)a3
{
  v4 = BCSWebPresentmentStoreStringFromStatement(a3);
  v5 = BCSWebPresentmentStoreDataFromStatement(a3);
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_double(a3, 2)}];
  if (v5)
  {
    v7 = [[BCSWebPresentmentPermissionsItem alloc] initWithBrandID:v4 data:v5];
    v8 = v7;
    if (v7)
    {
      [(BCSItem *)v7 setExpirationDate:v6];
      v9 = v8;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateStatementValues:(sqlite3_stmt *)a3 withItemIdentifier:(id)a4
{
  v6 = [a4 brandId];
  sqlite3_bind_text(a3, 1, [v6 UTF8String], -1, 0);

  v7 = [(BCSWebPresentmentPermissionsItem *)self data];
  v8 = [v7 bytes];
  v9 = [(BCSWebPresentmentPermissionsItem *)self data];
  sqlite3_bind_blob(a3, 2, v8, [v9 length], 0);

  v11 = [(BCSItem *)self expirationDate];
  [v11 timeIntervalSince1970];
  sqlite3_bind_double(a3, 3, v10);
}

@end