@interface BCSBusinessCallerItemIdentifier
+ (int64_t)_truncatedHashForPhoneNumber:(id)a3;
- (BCSBusinessCallerItemIdentifier)initWithCoder:(id)a3;
- (BCSBusinessCallerItemIdentifier)initWithPhoneNumber:(id)a3;
- (BCSBusinessCallerItemIdentifier)initWithTruncatedHash:(int64_t)a3;
- (BOOL)matchesItemIdentifying:(id)a3;
- (NSObject)itemIdentifier;
- (NSString)pirKey;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSBusinessCallerItemIdentifier

- (BCSBusinessCallerItemIdentifier)initWithPhoneNumber:(id)a3
{
  v4 = [BCSBusinessCallerItemIdentifier _truncatedHashForPhoneNumber:a3];

  return [(BCSBusinessCallerItemIdentifier *)self initWithTruncatedHash:v4];
}

- (BCSBusinessCallerItemIdentifier)initWithTruncatedHash:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = BCSBusinessCallerItemIdentifier;
  result = [(BCSBusinessCallerItemIdentifier *)&v5 init];
  if (result)
  {
    result->_computedTruncatedHash = a3;
  }

  return result;
}

- (NSObject)itemIdentifier
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(BCSBusinessCallerItemIdentifier *)self truncatedHash];

  return [v2 numberWithLongLong:v3];
}

- (BOOL)matchesItemIdentifying:(id)a3
{
  v4 = a3;
  v5 = [(BCSBusinessCallerItemIdentifier *)self type];
  if (v5 == [v4 type])
  {
    v6 = [(BCSBusinessCallerItemIdentifier *)self truncatedHash];
    v7 = v6 == [v4 truncatedHash];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)pirKey
{
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[BCSBusinessCallerItemIdentifier truncatedHash](self, "truncatedHash")}];
  v3 = [v2 stringValue];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v4[1] = [(BCSBusinessCallerItemIdentifier *)self computedTruncatedHash];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  computedTruncatedHash = self->_computedTruncatedHash;
  v5 = a3;
  v6 = [v3 numberWithLongLong:computedTruncatedHash];
  [v5 encodeObject:v6 forKey:@"TruncatedHash"];
}

- (BCSBusinessCallerItemIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BCSBusinessCallerItemIdentifier;
  v5 = [(BCSBusinessCallerItemIdentifier *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TruncatedHash"];
    v5->_computedTruncatedHash = [v6 longLongValue];
  }

  return v5;
}

+ (int64_t)_truncatedHashForPhoneNumber:(id)a3
{
  v3 = [MEMORY[0x277CF3628] normalizedPhoneNumberForPhoneNumber:a3];
  v4 = [BCSHashService SHA256TruncatedHashForInputString:v3 includedBytes:8];

  return v4;
}

@end