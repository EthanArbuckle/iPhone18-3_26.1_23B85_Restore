@interface CHSEntitlementCollection
- (BOOL)isEqual:(id)a3;
- (CHSEntitlementCollection)initWithCoder:(id)a3;
- (id)_initFromCollection:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSEntitlementCollection

- (unint64_t)hash
{
  v2.i32[0] = *&self->_usesEventService;
  v3 = vshl_u16(*&vmovl_u8(v2), 0x4000300020001);
  return (v3.i8[0] | v3.i8[4] | ((v3.i32[0] | v3.i32[1]) >> 16)) ^ 0x1Fu;
}

- (id)_initFromCollection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CHSEntitlementCollection;
  v5 = [(CHSEntitlementCollection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_usesEventService = v4[8];
    v5->_canOpenSystemURLs = v4[9];
    v5->_canKeepAlive = v4[10];
    v5->_invalidatesOnStorefrontChange = v4[11];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_usesEventService == v5[8] && self->_canOpenSystemURLs == v5[9] && self->_canKeepAlive == v5[10] && self->_invalidatesOnStorefrontChange == v5[11];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CHSMutableEntitlementCollection alloc];

  return [(CHSEntitlementCollection *)v4 _initFromCollection:self];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:self->_usesEventService forKey:@"usesEventService"];
  [v4 encodeBool:self->_canOpenSystemURLs forKey:@"canOpenSystemURLs"];
  [v4 encodeBool:self->_canKeepAlive forKey:@"canKeepAlive"];
  [v4 encodeBool:self->_invalidatesOnStorefrontChange forKey:@"invalidatesOnStorefrontChange"];
}

- (CHSEntitlementCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CHSEntitlementCollection;
  v5 = [(CHSEntitlementCollection *)&v7 init];
  if (v5)
  {
    v5->_usesEventService = [v4 decodeBoolForKey:@"usesEventService"];
    v5->_canOpenSystemURLs = [v4 decodeBoolForKey:@"canOpenSystemURLs"];
    v5->_canKeepAlive = [v4 decodeBoolForKey:@"canKeepAlive"];
    v5->_invalidatesOnStorefrontChange = [v4 decodeBoolForKey:@"invalidatesOnStorefrontChange"];
  }

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CHSEntitlementCollection *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__CHSEntitlementCollection_descriptionBuilderWithMultilinePrefix___block_invoke;
  v8[3] = &unk_1E7453000;
  v5 = v4;
  v9 = v5;
  v10 = self;
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