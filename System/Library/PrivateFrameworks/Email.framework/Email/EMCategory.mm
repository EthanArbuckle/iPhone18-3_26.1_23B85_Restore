@interface EMCategory
- (BOOL)isEqual:(id)a3;
- (BOOL)isPrimary;
- (EMCategory)initWithCoder:(id)a3;
- (EMCategory)initWithType:(unint64_t)a3 subtype:(unint64_t)a4 isHighImpact:(BOOL)a5 state:(unint64_t)a6;
- (NSString)ef_publicDescription;
- (id)_shortDescription;
- (id)cachedSelf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMCategory

- (id)cachedSelf
{
  if (cachedSelf_onceToken != -1)
  {
    [EMCategory(EFCacheable) cachedSelf];
  }

  os_unfair_lock_lock(&cachedSelf_sTableLock);
  v3 = [cachedSelf_sUniqueObjectIDs ef_uniquedObject:self];
  os_unfair_lock_unlock(&cachedSelf_sTableLock);

  return v3;
}

- (unint64_t)hash
{
  v3 = [(EMCategory *)self type];
  v4 = 33 * (33 * v3 + [(EMCategory *)self subtype]);
  v5 = 33 * (v4 + [(EMCategory *)self state]);
  return v5 + [(EMCategory *)self isHighImpact]+ 0x17C5D0F85;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = EMStringFromCategoryType([(EMCategory *)self type]);
  v6 = EMStringFromSubtype([(EMCategory *)self subtype]);
  v7 = [(EMCategory *)self state]- 1;
  if (v7 > 3)
  {
    v8 = @"Uncategorized";
  }

  else
  {
    v8 = off_1E826C6A0[v7];
  }

  v9 = [(EMCategory *)self isHighImpact];
  v10 = &stru_1F45FD218;
  if (v9)
  {
    v10 = @" (high impact)";
  }

  v11 = [v3 stringWithFormat:@"<%@ %p category:%@ subtype:%@ categorizationState:%@%@>", v4, self, v5, v6, v8, v10];

  return v11;
}

void __37__EMCategory_EFCacheable__cachedSelf__block_invoke()
{
  cachedSelf_sTableLock = 0;
  v0 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
  v1 = cachedSelf_sUniqueObjectIDs;
  cachedSelf_sUniqueObjectIDs = v0;
}

- (EMCategory)initWithType:(unint64_t)a3 subtype:(unint64_t)a4 isHighImpact:(BOOL)a5 state:(unint64_t)a6
{
  v14.receiver = self;
  v14.super_class = EMCategory;
  v10 = [(EMCategory *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v10->_subtype = a4;
    v10->_isHighImpact = a5;
    v10->_state = a6;
  }

  v12 = [(EMCategory *)v10 cachedSelf];

  return v12;
}

- (BOOL)isPrimary
{
  if (![(EMCategory *)self type])
  {
    return 1;
  }

  return [(EMCategory *)self isHighImpact];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[EMCategory type](self, "type"), v5 == [v4 type]) && (v6 = -[EMCategory subtype](self, "subtype"), v6 == objc_msgSend(v4, "subtype")) && (v7 = -[EMCategory state](self, "state"), v7 == objc_msgSend(v4, "state")))
  {
    v8 = [(EMCategory *)self isHighImpact];
    v9 = v8 ^ [v4 isHighImpact] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)_shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = EMShortStringFromCategoryType([(EMCategory *)self type]);
  v5 = EMShortStringFromSubtype([(EMCategory *)self subtype]);
  v6 = [v3 stringWithFormat:@"(%@, %@)", v4, v5];

  return v6;
}

- (EMCategory)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = EMCategory;
  v5 = [(EMCategory *)&v7 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"EFPropertyKey_type"];
    v5->_subtype = [v4 decodeIntegerForKey:@"EFPropertyKey_subtype"];
    v5->_state = [v4 decodeIntegerForKey:@"EFPropertyKey_state"];
    v5->_isHighImpact = [v4 decodeBoolForKey:@"EFPropertyKey_isHighImpact"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[EMCategory type](self forKey:{"type"), @"EFPropertyKey_type"}];
  [v4 encodeInteger:-[EMCategory subtype](self forKey:{"subtype"), @"EFPropertyKey_subtype"}];
  [v4 encodeInteger:-[EMCategory state](self forKey:{"state"), @"EFPropertyKey_state"}];
  [v4 encodeBool:-[EMCategory isHighImpact](self forKey:{"isHighImpact"), @"EFPropertyKey_isHighImpact"}];
}

@end