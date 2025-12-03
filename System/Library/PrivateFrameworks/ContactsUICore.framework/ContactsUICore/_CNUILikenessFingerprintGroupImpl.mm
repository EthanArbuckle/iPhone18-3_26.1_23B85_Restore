@interface _CNUILikenessFingerprintGroupImpl
- (BOOL)hasContactIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_CNUILikenessFingerprintGroupImpl)initWithImpls:(id)impls scope:(id)scope badges:(id)badges;
- (unint64_t)hash;
@end

@implementation _CNUILikenessFingerprintGroupImpl

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E6996730] arrayHash:self->_impls];
  v4 = [MEMORY[0x1E6996730] objectHash:self->_scope] - v3 + 32 * v3;
  return [MEMORY[0x1E6996730] objectHash:self->_badges] - v4 + 32 * v4 + 506447;
}

- (_CNUILikenessFingerprintGroupImpl)initWithImpls:(id)impls scope:(id)scope badges:(id)badges
{
  implsCopy = impls;
  scopeCopy = scope;
  badgesCopy = badges;
  v20.receiver = self;
  v20.super_class = _CNUILikenessFingerprintGroupImpl;
  v11 = [(_CNUILikenessFingerprintGroupImpl *)&v20 init];
  if (v11)
  {
    v12 = [implsCopy copy];
    impls = v11->_impls;
    v11->_impls = v12;

    v14 = [scopeCopy copy];
    scope = v11->_scope;
    v11->_scope = v14;

    v16 = [badgesCopy copy];
    badges = v11->_badges;
    v11->_badges = v16;

    v18 = v11;
  }

  return v11;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(NSArray *)self->_impls _cn_map:&__block_literal_global_211];
  v5 = [v3 appendName:@"impls" object:v4];
  v6 = [v3 appendName:@"scope" object:self->_scope];
  v7 = [v3 appendName:@"badges" object:self->_badges];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = 1;
  if (self != equalCopy)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (impls = self->_impls, impls | equalCopy->_impls) && ![(NSArray *)impls isEqual:?]|| (scope = self->_scope, scope | equalCopy->_scope) && ![(CNUILikenessRenderingScope *)scope isEqual:?]|| (badges = self->_badges, badges | equalCopy->_badges) && ![(NSArray *)badges isEqual:?])
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)hasContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  impls = self->_impls;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58___CNUILikenessFingerprintGroupImpl_hasContactIdentifier___block_invoke;
  v8[3] = &unk_1E76E7DC0;
  v9 = identifierCopy;
  v6 = identifierCopy;
  LOBYTE(impls) = [(NSArray *)impls _cn_any:v8];

  return impls;
}

@end