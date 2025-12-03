@interface BCSWebPresentmentPermissionsItem
+ (id)itemFromStatement:(sqlite3_stmt *)statement;
- (BCSWebPresentmentPermissionsItem)initWithBrandID:(id)d;
- (BCSWebPresentmentPermissionsItem)initWithBrandID:(id)d data:(id)data;
- (BCSWebPresentmentPermissionsItem)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesItemIdentifying:(id)identifying;
- (NSObject)itemIdentifier;
- (NSString)debugDescription;
- (NSString)pirKey;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)serverType;
- (int64_t)truncatedHash;
- (int64_t)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateStatementValues:(sqlite3_stmt *)values withItemIdentifier:(id)identifier;
@end

@implementation BCSWebPresentmentPermissionsItem

- (BCSWebPresentmentPermissionsItem)initWithBrandID:(id)d
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = BCSWebPresentmentPermissionsItem;
  v6 = [(BCSItem *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_brandId, d);
    v8 = [BCSWebPresentmentItemIdentifier alloc];
    brandId = [(BCSWebPresentmentPermissionsItem *)v7 brandId];
    v10 = [(BCSWebPresentmentItemIdentifier *)v8 initWithBrandID:brandId serverType:4];
    identifier = v7->_identifier;
    v7->_identifier = v10;
  }

  return v7;
}

- (BCSWebPresentmentPermissionsItem)initWithBrandID:(id)d data:(id)data
{
  dCopy = d;
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = BCSWebPresentmentPermissionsItem;
  v9 = [(BCSItem *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_brandId, d);
    objc_storeStrong(&v10->_data, data);
    v11 = [BCSWebPresentmentItemIdentifier alloc];
    brandId = [(BCSWebPresentmentPermissionsItem *)v10 brandId];
    v13 = [(BCSWebPresentmentItemIdentifier *)v11 initWithBrandID:brandId serverType:4];
    identifier = v10->_identifier;
    v10->_identifier = v13;
  }

  return v10;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BCSWebPresentmentPermissionsItem *)self description];
  brandId = [(BCSWebPresentmentPermissionsItem *)self brandId];
  data = [(BCSWebPresentmentPermissionsItem *)self data];
  v7 = [v3 stringWithFormat:@"<%@ { brandId: %@, data: %@>", v4, brandId, data];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&unk_2854663D0])
  {
    v5 = [(BCSWebPresentmentPermissionsItem *)self matchesItemIdentifying:equalCopy];
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
  identifier = [(BCSWebPresentmentPermissionsItem *)self identifier];
  itemIdentifier = [identifier itemIdentifier];

  return itemIdentifier;
}

- (int64_t)truncatedHash
{
  identifier = [(BCSWebPresentmentPermissionsItem *)self identifier];
  truncatedHash = [identifier truncatedHash];

  return truncatedHash;
}

- (int64_t)type
{
  identifier = [(BCSWebPresentmentPermissionsItem *)self identifier];
  type = [identifier type];

  return type;
}

- (BOOL)matchesItemIdentifying:(id)identifying
{
  identifyingCopy = identifying;
  identifier = [(BCSWebPresentmentPermissionsItem *)self identifier];
  v6 = [identifier matchesItemIdentifying:identifyingCopy];

  return v6;
}

- (NSString)pirKey
{
  identifier = [(BCSWebPresentmentPermissionsItem *)self identifier];
  brandId = [identifier brandId];

  return brandId;
}

- (int64_t)serverType
{
  identifier = [(BCSWebPresentmentPermissionsItem *)self identifier];
  serverType = [identifier serverType];

  return serverType;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    brandId = [(BCSWebPresentmentPermissionsItem *)self brandId];
    v7 = [brandId copyWithZone:zone];
    v8 = v5[4];
    v5[4] = v7;

    data = [(BCSWebPresentmentPermissionsItem *)self data];
    v10 = [data copyWithZone:zone];
    v11 = v5[2];
    v5[2] = v10;

    identifier = [(BCSWebPresentmentPermissionsItem *)self identifier];
    v13 = [identifier copyWithZone:zone];
    v14 = v5[3];
    v5[3] = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  brandId = [(BCSWebPresentmentPermissionsItem *)self brandId];
  [coderCopy encodeObject:brandId forKey:@"BrandId"];

  data = [(BCSWebPresentmentPermissionsItem *)self data];
  [coderCopy encodeObject:data forKey:@"Data"];
}

- (BCSWebPresentmentPermissionsItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BrandId"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Data"];

  v7 = [(BCSWebPresentmentPermissionsItem *)self initWithBrandID:v5 data:v6];
  return v7;
}

+ (id)itemFromStatement:(sqlite3_stmt *)statement
{
  v4 = BCSWebPresentmentStoreStringFromStatement(statement);
  v5 = BCSWebPresentmentStoreDataFromStatement(statement);
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_double(statement, 2)}];
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

- (void)updateStatementValues:(sqlite3_stmt *)values withItemIdentifier:(id)identifier
{
  brandId = [identifier brandId];
  sqlite3_bind_text(values, 1, [brandId UTF8String], -1, 0);

  data = [(BCSWebPresentmentPermissionsItem *)self data];
  bytes = [data bytes];
  data2 = [(BCSWebPresentmentPermissionsItem *)self data];
  sqlite3_bind_blob(values, 2, bytes, [data2 length], 0);

  expirationDate = [(BCSItem *)self expirationDate];
  [expirationDate timeIntervalSince1970];
  sqlite3_bind_double(values, 3, v10);
}

@end