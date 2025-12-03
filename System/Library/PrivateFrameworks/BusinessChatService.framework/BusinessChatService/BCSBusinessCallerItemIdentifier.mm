@interface BCSBusinessCallerItemIdentifier
+ (int64_t)_truncatedHashForPhoneNumber:(id)number;
- (BCSBusinessCallerItemIdentifier)initWithCoder:(id)coder;
- (BCSBusinessCallerItemIdentifier)initWithPhoneNumber:(id)number;
- (BCSBusinessCallerItemIdentifier)initWithTruncatedHash:(int64_t)hash;
- (BOOL)matchesItemIdentifying:(id)identifying;
- (NSObject)itemIdentifier;
- (NSString)pirKey;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCSBusinessCallerItemIdentifier

- (BCSBusinessCallerItemIdentifier)initWithPhoneNumber:(id)number
{
  v4 = [BCSBusinessCallerItemIdentifier _truncatedHashForPhoneNumber:number];

  return [(BCSBusinessCallerItemIdentifier *)self initWithTruncatedHash:v4];
}

- (BCSBusinessCallerItemIdentifier)initWithTruncatedHash:(int64_t)hash
{
  v5.receiver = self;
  v5.super_class = BCSBusinessCallerItemIdentifier;
  result = [(BCSBusinessCallerItemIdentifier *)&v5 init];
  if (result)
  {
    result->_computedTruncatedHash = hash;
  }

  return result;
}

- (NSObject)itemIdentifier
{
  v2 = MEMORY[0x277CCABB0];
  truncatedHash = [(BCSBusinessCallerItemIdentifier *)self truncatedHash];

  return [v2 numberWithLongLong:truncatedHash];
}

- (BOOL)matchesItemIdentifying:(id)identifying
{
  identifyingCopy = identifying;
  type = [(BCSBusinessCallerItemIdentifier *)self type];
  if (type == [identifyingCopy type])
  {
    truncatedHash = [(BCSBusinessCallerItemIdentifier *)self truncatedHash];
    v7 = truncatedHash == [identifyingCopy truncatedHash];
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
  stringValue = [v2 stringValue];

  return stringValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v4[1] = [(BCSBusinessCallerItemIdentifier *)self computedTruncatedHash];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x277CCABB0];
  computedTruncatedHash = self->_computedTruncatedHash;
  coderCopy = coder;
  v6 = [v3 numberWithLongLong:computedTruncatedHash];
  [coderCopy encodeObject:v6 forKey:@"TruncatedHash"];
}

- (BCSBusinessCallerItemIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = BCSBusinessCallerItemIdentifier;
  v5 = [(BCSBusinessCallerItemIdentifier *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TruncatedHash"];
    v5->_computedTruncatedHash = [v6 longLongValue];
  }

  return v5;
}

+ (int64_t)_truncatedHashForPhoneNumber:(id)number
{
  v3 = [MEMORY[0x277CF3628] normalizedPhoneNumberForPhoneNumber:number];
  v4 = [BCSHashService SHA256TruncatedHashForInputString:v3 includedBytes:8];

  return v4;
}

@end