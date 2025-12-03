@interface BCSBusinessItemIdentifier
+ (BCSBusinessItemIdentifier)identifierWithBusinessItem:(uint64_t)item;
+ (BCSBusinessItemIdentifier)identifierWithPhoneNumber:(uint64_t)number;
- (BOOL)matchesItemIdentifying:(id)identifying;
- (NSObject)itemIdentifier;
- (NSString)debugDescription;
- (NSString)description;
- (id)succinctDescriptionBuilder;
- (int64_t)truncatedHash;
@end

@implementation BCSBusinessItemIdentifier

+ (BCSBusinessItemIdentifier)identifierWithPhoneNumber:(uint64_t)number
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

+ (BCSBusinessItemIdentifier)identifierWithBusinessItem:(uint64_t)item
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
    succinctDescriptionBuilder = [(BCSBusinessItemIdentifier *)self succinctDescriptionBuilder];
    build = [succinctDescriptionBuilder build];
  }

  else
  {
    build = 0;
  }

  return build;
}

- (NSString)debugDescription
{
  selfCopy = self;
  if (self)
  {
    succinctDescriptionBuilder = [(BCSBusinessItemIdentifier *)self succinctDescriptionBuilder];
    v4 = [succinctDescriptionBuilder appendInt64:objc_msgSend(selfCopy withName:{"truncatedHash"), @"truncatedHash"}];
    selfCopy = [succinctDescriptionBuilder build];
  }

  return selfCopy;
}

- (NSObject)itemIdentifier
{
  v2 = MEMORY[0x277CCABB0];
  truncatedHash = [(BCSBusinessItemIdentifier *)self truncatedHash];

  return [v2 numberWithLongLong:truncatedHash];
}

- (int64_t)truncatedHash
{
  if (self)
  {
    return *(self + 8);
  }

  return self;
}

- (BOOL)matchesItemIdentifying:(id)identifying
{
  identifyingCopy = identifying;
  type = [identifyingCopy type];
  if (type == [(BCSBusinessItemIdentifier *)self type])
  {
    itemIdentifier = [identifyingCopy itemIdentifier];
    itemIdentifier2 = [(BCSBusinessItemIdentifier *)self itemIdentifier];
    v8 = [itemIdentifier isEqual:itemIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)succinctDescriptionBuilder
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
  itemIdentifier = [self itemIdentifier];
  v4 = [v2 appendObject:itemIdentifier withName:@"itemIdentifier"];

  return v2;
}

@end