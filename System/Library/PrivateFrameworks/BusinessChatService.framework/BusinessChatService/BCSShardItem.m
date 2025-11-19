@interface BCSShardItem
- (BCSShardItem)initWithBase64EncodedString:(id)a3 shardType:(int64_t)a4 startIndex:(int64_t)a5 shardCount:(int64_t)a6 expirationDate:(id)a7;
- (BCSShardItem)initWithCoder:(id)a3;
- (BOOL)isExpired;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSShardItem

- (BCSShardItem)initWithBase64EncodedString:(id)a3 shardType:(int64_t)a4 startIndex:(int64_t)a5 shardCount:(int64_t)a6 expirationDate:(id)a7
{
  v13 = a3;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = BCSShardItem;
  v15 = [(BCSShardItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_base64EncodedString, a3);
    v16->_startIndex = a5;
    v16->_shardCount = a6;
    v16->_type = a4;
    objc_storeStrong(&v16->_expirationDate, a7);
  }

  return v16;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = BCSShardItem;
  v4 = [(BCSShardItem *)&v14 description];
  v5 = [(BCSShardItem *)self base64EncodedString];
  v6 = [v5 length];
  v7 = NSStringFromBCSShardType([(BCSShardItem *)self type]);
  v8 = [(BCSShardItem *)self type];
  v9 = [(BCSShardItem *)self startIndex];
  v10 = [(BCSShardItem *)self shardCount];
  v11 = [(BCSShardItem *)self expirationDate];
  v12 = [v3 stringWithFormat:@"%@ - base64EncodedString length: %lu  - type:%@ (%ld) - startIndex:%lu - shardCount:%lu - expirationDate:%@", v4, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BOOL)isExpired
{
  v2 = [(BCSShardItem *)self expirationDate];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 compare:v3] == -1;

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = [(BCSShardItem *)self base64EncodedString];
    v6 = v4[1];
    v4[1] = v5;

    v4[2] = [(BCSShardItem *)self type];
    v4[3] = [(BCSShardItem *)self startIndex];
    v4[4] = [(BCSShardItem *)self shardCount];
    v7 = [(BCSShardItem *)self expirationDate];
    v8 = v4[5];
    v4[5] = v7;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  base64EncodedString = self->_base64EncodedString;
  v5 = a3;
  [v5 encodeObject:base64EncodedString forKey:@"BCSShardItemBase64EncodedStringCodingKey"];
  [v5 encodeInteger:self->_type forKey:@"BCSShardItemTypeCodingKey"];
  [v5 encodeInteger:self->_startIndex forKey:@"BCSShardItemStartIndexCodingKey"];
  [v5 encodeInteger:self->_shardCount forKey:@"BCSShardItemShardCountCodingKey"];
  [v5 encodeObject:self->_expirationDate forKey:@"BCSShardItemExpirationDateCodingKey"];
}

- (BCSShardItem)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BCSShardItem;
  v5 = [(BCSShardItem *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BCSShardItemBase64EncodedStringCodingKey"];
    base64EncodedString = v5->_base64EncodedString;
    v5->_base64EncodedString = v6;

    v5->_type = [v4 decodeIntegerForKey:@"BCSShardItemTypeCodingKey"];
    v5->_startIndex = [v4 decodeIntegerForKey:@"BCSShardItemStartIndexCodingKey"];
    v5->_shardCount = [v4 decodeIntegerForKey:@"BCSShardItemShardCountCodingKey"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BCSShardItemExpirationDateCodingKey"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v8;
  }

  return v5;
}

@end