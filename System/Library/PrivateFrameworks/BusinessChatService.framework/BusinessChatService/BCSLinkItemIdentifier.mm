@interface BCSLinkItemIdentifier
+ (BCSLinkItemIdentifier)identifierWithHash:(uint64_t)a1;
+ (id)identifierWithNormalizedURL:(uint64_t)a1;
+ (id)identifierWithURL:(uint64_t)a1;
- (BOOL)matchesItemIdentifying:(id)a3;
- (NSObject)itemIdentifier;
- (NSString)debugDescription;
- (NSString)description;
- (id)_initWithNormalizedURL:(id *)a1;
- (id)succinctDescriptionBuilder;
- (int64_t)_truncatedDomainHashForNormalizedURL:(int64_t)result;
- (int64_t)truncatedHash;
@end

@implementation BCSLinkItemIdentifier

+ (id)identifierWithURL:(uint64_t)a1
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

- (id)_initWithNormalizedURL:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = BCSLinkItemIdentifier;
    v5 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
      v6 = [a1[2] absoluteString];
      v7 = [BCSHashService SHA256HashForInputString:v6];

      v8 = a1[1];
      a1[1] = v7;

      v9 = [a1[2] absoluteString];
      v10 = [BCSHashService SHA256TruncatedHashForInputString:v9 includedBytes:8];

      a1[4] = v10;
    }
  }

  return a1;
}

+ (id)identifierWithNormalizedURL:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [[BCSLinkItemIdentifier alloc] _initWithNormalizedURL:v2];

  return v3;
}

+ (BCSLinkItemIdentifier)identifierWithHash:(uint64_t)a1
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
    v2 = [(BCSLinkItemIdentifier *)self succinctDescriptionBuilder];
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
  p_isa = &self->super.isa;
  if (self)
  {
    v3 = [(BCSLinkItemIdentifier *)self succinctDescriptionBuilder];
    v4 = [v3 appendInt64:objc_msgSend(p_isa withName:{"truncatedHash"), @"truncatedHash"}];
    v5 = [p_isa[1] copy];
    v6 = [v3 appendObject:v5 withName:@"fullHash"];

    p_isa = [v3 build];
  }

  return p_isa;
}

- (int64_t)_truncatedDomainHashForNormalizedURL:(int64_t)result
{
  if (result)
  {
    v2 = [a2 host];
    v3 = [BCSHashService SHA256TruncatedHashForInputString:v2 includedBytes:8];

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

- (BOOL)matchesItemIdentifying:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 == [(BCSLinkItemIdentifier *)self type])
  {
    v6 = [v4 itemIdentifier];
    v7 = [(BCSLinkItemIdentifier *)self itemIdentifier];
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
  v3 = [v2 appendObject:a1[2] withName:@"url" skipIfNil:1];
  v4 = [a1 itemIdentifier];
  v5 = [v2 appendObject:v4 withName:@"itemIdentifier"];

  return v2;
}

@end