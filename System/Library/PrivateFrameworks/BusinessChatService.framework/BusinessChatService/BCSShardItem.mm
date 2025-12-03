@interface BCSShardItem
- (BCSShardItem)initWithBase64EncodedString:(id)string shardType:(int64_t)type startIndex:(int64_t)index shardCount:(int64_t)count expirationDate:(id)date;
- (BCSShardItem)initWithCoder:(id)coder;
- (BOOL)isExpired;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCSShardItem

- (BCSShardItem)initWithBase64EncodedString:(id)string shardType:(int64_t)type startIndex:(int64_t)index shardCount:(int64_t)count expirationDate:(id)date
{
  stringCopy = string;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = BCSShardItem;
  v15 = [(BCSShardItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_base64EncodedString, string);
    v16->_startIndex = index;
    v16->_shardCount = count;
    v16->_type = type;
    objc_storeStrong(&v16->_expirationDate, date);
  }

  return v16;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = BCSShardItem;
  v4 = [(BCSShardItem *)&v14 description];
  base64EncodedString = [(BCSShardItem *)self base64EncodedString];
  v6 = [base64EncodedString length];
  v7 = NSStringFromBCSShardType([(BCSShardItem *)self type]);
  type = [(BCSShardItem *)self type];
  startIndex = [(BCSShardItem *)self startIndex];
  shardCount = [(BCSShardItem *)self shardCount];
  expirationDate = [(BCSShardItem *)self expirationDate];
  v12 = [v3 stringWithFormat:@"%@ - base64EncodedString length: %lu  - type:%@ (%ld) - startIndex:%lu - shardCount:%lu - expirationDate:%@", v4, v6, v7, type, startIndex, shardCount, expirationDate];

  return v12;
}

- (BOOL)isExpired
{
  expirationDate = [(BCSShardItem *)self expirationDate];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [expirationDate compare:date] == -1;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    base64EncodedString = [(BCSShardItem *)self base64EncodedString];
    v6 = v4[1];
    v4[1] = base64EncodedString;

    v4[2] = [(BCSShardItem *)self type];
    v4[3] = [(BCSShardItem *)self startIndex];
    v4[4] = [(BCSShardItem *)self shardCount];
    expirationDate = [(BCSShardItem *)self expirationDate];
    v8 = v4[5];
    v4[5] = expirationDate;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  base64EncodedString = self->_base64EncodedString;
  coderCopy = coder;
  [coderCopy encodeObject:base64EncodedString forKey:@"BCSShardItemBase64EncodedStringCodingKey"];
  [coderCopy encodeInteger:self->_type forKey:@"BCSShardItemTypeCodingKey"];
  [coderCopy encodeInteger:self->_startIndex forKey:@"BCSShardItemStartIndexCodingKey"];
  [coderCopy encodeInteger:self->_shardCount forKey:@"BCSShardItemShardCountCodingKey"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"BCSShardItemExpirationDateCodingKey"];
}

- (BCSShardItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = BCSShardItem;
  v5 = [(BCSShardItem *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BCSShardItemBase64EncodedStringCodingKey"];
    base64EncodedString = v5->_base64EncodedString;
    v5->_base64EncodedString = v6;

    v5->_type = [coderCopy decodeIntegerForKey:@"BCSShardItemTypeCodingKey"];
    v5->_startIndex = [coderCopy decodeIntegerForKey:@"BCSShardItemStartIndexCodingKey"];
    v5->_shardCount = [coderCopy decodeIntegerForKey:@"BCSShardItemShardCountCodingKey"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BCSShardItemExpirationDateCodingKey"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v8;
  }

  return v5;
}

@end