@interface CHSEntitlementCollection
- (BOOL)isEqual:(id)equal;
- (CHSEntitlementCollection)initWithCoder:(id)coder;
- (id)_initFromCollection:(id)collection;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSEntitlementCollection

- (unint64_t)hash
{
  v2.i32[0] = *&self->_usesEventService;
  v3 = vshl_u16(*&vmovl_u8(v2), 0x4000300020001);
  return (v3.i8[0] | v3.i8[4] | ((v3.i32[0] | v3.i32[1]) >> 16)) ^ 0x1Fu;
}

- (id)_initFromCollection:(id)collection
{
  collectionCopy = collection;
  v8.receiver = self;
  v8.super_class = CHSEntitlementCollection;
  v5 = [(CHSEntitlementCollection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_usesEventService = collectionCopy[8];
    v5->_canOpenSystemURLs = collectionCopy[9];
    v5->_canKeepAlive = collectionCopy[10];
    v5->_invalidatesOnStorefrontChange = collectionCopy[11];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_usesEventService == v5[8] && self->_canOpenSystemURLs == v5[9] && self->_canKeepAlive == v5[10] && self->_invalidatesOnStorefrontChange == v5[11];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CHSMutableEntitlementCollection alloc];

  return [(CHSEntitlementCollection *)v4 _initFromCollection:self];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_usesEventService forKey:@"usesEventService"];
  [coderCopy encodeBool:self->_canOpenSystemURLs forKey:@"canOpenSystemURLs"];
  [coderCopy encodeBool:self->_canKeepAlive forKey:@"canKeepAlive"];
  [coderCopy encodeBool:self->_invalidatesOnStorefrontChange forKey:@"invalidatesOnStorefrontChange"];
}

- (CHSEntitlementCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CHSEntitlementCollection;
  v5 = [(CHSEntitlementCollection *)&v7 init];
  if (v5)
  {
    v5->_usesEventService = [coderCopy decodeBoolForKey:@"usesEventService"];
    v5->_canOpenSystemURLs = [coderCopy decodeBoolForKey:@"canOpenSystemURLs"];
    v5->_canKeepAlive = [coderCopy decodeBoolForKey:@"canKeepAlive"];
    v5->_invalidatesOnStorefrontChange = [coderCopy decodeBoolForKey:@"invalidatesOnStorefrontChange"];
  }

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CHSEntitlementCollection *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__CHSEntitlementCollection_descriptionBuilderWithMultilinePrefix___block_invoke;
  v8[3] = &unk_1E7453000;
  v5 = v4;
  v9 = v5;
  selfCopy = self;
  [v5 appendProem:self block:v8];
  v6 = v5;

  return v5;
}

id __66__CHSEntitlementCollection_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"usesEventService"];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 9) withName:@"canOpenSystemURLs"];
  v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 10) withName:@"canKeepAlive"];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 11) withName:@"invalidatesOnStorefrontChange"];
}

@end