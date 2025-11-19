@interface BCSBusinessItemIdentifier
+ (BCSBusinessItemIdentifier)identifierWithBusinessItem:(uint64_t)a1;
+ (BCSBusinessItemIdentifier)identifierWithPhoneNumber:(uint64_t)a1;
- (BOOL)matchesItemIdentifying:(id)a3;
- (NSObject)itemIdentifier;
- (NSString)debugDescription;
- (NSString)description;
- (id)succinctDescriptionBuilder;
- (int64_t)truncatedHash;
@end

@implementation BCSBusinessItemIdentifier

+ (BCSBusinessItemIdentifier)identifierWithPhoneNumber:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [BCSBusinessItemIdentifier alloc];
  v4 = v2;
  if (v3)
  {
    v8.receiver = v3;
    v8.super_class = BCSBusinessItemIdentifier;
    v3 = objc_msgSendSuper2(&v8, sel_init);
    if (v3)
    {
      v5 = [MEMORY[0x277CF3628] normalizedPhoneNumberForPhoneNumber:v4];
      v6 = [BCSHashService SHA256TruncatedHashForInputString:v5 includedBytes:8];

      v3->_computedTruncatedHash = v6;
    }
  }

  return v3;
}

+ (BCSBusinessItemIdentifier)identifierWithBusinessItem:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [BCSBusinessItemIdentifier alloc];
  v4 = v2;
  if (v3)
  {
    v6.receiver = v3;
    v6.super_class = BCSBusinessItemIdentifier;
    v3 = objc_msgSendSuper2(&v6, sel_init);
    if (v3)
    {
      v3->_computedTruncatedHash = [v4 phoneHash];
    }
  }

  return v3;
}

- (NSString)description
{
  if (self)
  {
    v2 = [(BCSBusinessItemIdentifier *)self succinctDescriptionBuilder];
    v3 = [v2 build];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)debugDescription
{
  v2 = self;
  if (self)
  {
    v3 = [(BCSBusinessItemIdentifier *)self succinctDescriptionBuilder];
    v4 = [v3 appendInt64:objc_msgSend(v2 withName:{"truncatedHash"), @"truncatedHash"}];
    v2 = [v3 build];
  }

  return v2;
}

- (NSObject)itemIdentifier
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(BCSBusinessItemIdentifier *)self truncatedHash];

  return [v2 numberWithLongLong:v3];
}

- (int64_t)truncatedHash
{
  if (self)
  {
    return *(self + 8);
  }

  return self;
}

- (BOOL)matchesItemIdentifying:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 == [(BCSBusinessItemIdentifier *)self type])
  {
    v6 = [v4 itemIdentifier];
    v7 = [(BCSBusinessItemIdentifier *)self itemIdentifier];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)succinctDescriptionBuilder
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:a1];
  v3 = [a1 itemIdentifier];
  v4 = [v2 appendObject:v3 withName:@"itemIdentifier"];

  return v2;
}

@end