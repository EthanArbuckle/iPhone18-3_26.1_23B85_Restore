@interface BCSLinkItemIdentifier
+ (BCSLinkItemIdentifier)identifierWithHash:(uint64_t)hash;
+ (id)identifierWithNormalizedURL:(uint64_t)l;
+ (id)identifierWithURL:(uint64_t)l;
- (BOOL)matchesItemIdentifying:(id)identifying;
- (NSObject)itemIdentifier;
- (NSString)debugDescription;
- (NSString)description;
- (id)_initWithNormalizedURL:(id *)l;
- (id)succinctDescriptionBuilder;
- (int64_t)_truncatedDomainHashForNormalizedURL:(int64_t)result;
- (int64_t)truncatedHash;
@end

@implementation BCSLinkItemIdentifier

+ (id)identifierWithURL:(uint64_t)l
{
  v2 = a2;
  objc_opt_self();
  v3 = [BCSURLNormalizer normalizedURLForURL:v2];

  if (v3)
  {
    v4 = [[BCSLinkItemIdentifier alloc] _initWithNormalizedURL:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_initWithNormalizedURL:(id *)l
{
  v4 = a2;
  if (l)
  {
    v12.receiver = l;
    v12.super_class = BCSLinkItemIdentifier;
    v5 = objc_msgSendSuper2(&v12, sel_init);
    l = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
      absoluteString = [l[2] absoluteString];
      v7 = [BCSHashService SHA256HashForInputString:absoluteString];

      v8 = l[1];
      l[1] = v7;

      absoluteString2 = [l[2] absoluteString];
      v10 = [BCSHashService SHA256TruncatedHashForInputString:absoluteString2 includedBytes:8];

      l[4] = v10;
    }
  }

  return l;
}

+ (id)identifierWithNormalizedURL:(uint64_t)l
{
  v2 = a2;
  objc_opt_self();
  v3 = [[BCSLinkItemIdentifier alloc] _initWithNormalizedURL:v2];

  return v3;
}

+ (BCSLinkItemIdentifier)identifierWithHash:(uint64_t)hash
{
  v3 = a2;
  objc_opt_self();
  if ([BCSHashService isValidFullHash:v3])
  {
    v4 = [BCSLinkItemIdentifier alloc];
    v5 = v3;
    if (v4)
    {
      v8.receiver = v4;
      v8.super_class = BCSLinkItemIdentifier;
      v6 = objc_msgSendSuper2(&v8, sel_init);
      v4 = v6;
      if (v6)
      {
        objc_storeStrong(&v6->_fullHash, a2);
        v4->_computedTruncatedHash = [BCSHashService truncatedHashForFullHash:v5 includedBytes:8];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)description
{
  if (self)
  {
    succinctDescriptionBuilder = [(BCSLinkItemIdentifier *)self succinctDescriptionBuilder];
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
  p_isa = &self->super.isa;
  if (self)
  {
    succinctDescriptionBuilder = [(BCSLinkItemIdentifier *)self succinctDescriptionBuilder];
    v4 = [succinctDescriptionBuilder appendInt64:objc_msgSend(p_isa withName:{"truncatedHash"), @"truncatedHash"}];
    v5 = [p_isa[1] copy];
    v6 = [succinctDescriptionBuilder appendObject:v5 withName:@"fullHash"];

    p_isa = [succinctDescriptionBuilder build];
  }

  return p_isa;
}

- (int64_t)_truncatedDomainHashForNormalizedURL:(int64_t)result
{
  if (result)
  {
    host = [a2 host];
    v3 = [BCSHashService SHA256TruncatedHashForInputString:host includedBytes:8];

    return v3;
  }

  return result;
}

- (NSObject)itemIdentifier
{
  if (self)
  {
    self = [(NSString *)self->_fullHash copy];
    v2 = vars8;
  }

  return self;
}

- (int64_t)truncatedHash
{
  if (self)
  {
    return *(self + 32);
  }

  return self;
}

- (BOOL)matchesItemIdentifying:(id)identifying
{
  identifyingCopy = identifying;
  type = [identifyingCopy type];
  if (type == [(BCSLinkItemIdentifier *)self type])
  {
    itemIdentifier = [identifyingCopy itemIdentifier];
    itemIdentifier2 = [(BCSLinkItemIdentifier *)self itemIdentifier];
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
  v3 = [v2 appendObject:self[2] withName:@"url" skipIfNil:1];
  itemIdentifier = [self itemIdentifier];
  v5 = [v2 appendObject:itemIdentifier withName:@"itemIdentifier"];

  return v2;
}

@end