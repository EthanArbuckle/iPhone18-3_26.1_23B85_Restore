@interface EMCategory
- (BOOL)isEqual:(id)equal;
- (BOOL)isPrimary;
- (EMCategory)initWithCoder:(id)coder;
- (EMCategory)initWithType:(unint64_t)type subtype:(unint64_t)subtype isHighImpact:(BOOL)impact state:(unint64_t)state;
- (NSString)ef_publicDescription;
- (id)_shortDescription;
- (id)cachedSelf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  type = [(EMCategory *)self type];
  v4 = 33 * (33 * type + [(EMCategory *)self subtype]);
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

  isHighImpact = [(EMCategory *)self isHighImpact];
  v10 = &stru_1F45FD218;
  if (isHighImpact)
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

- (EMCategory)initWithType:(unint64_t)type subtype:(unint64_t)subtype isHighImpact:(BOOL)impact state:(unint64_t)state
{
  v14.receiver = self;
  v14.super_class = EMCategory;
  v10 = [(EMCategory *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v10->_subtype = subtype;
    v10->_isHighImpact = impact;
    v10->_state = state;
  }

  cachedSelf = [(EMCategory *)v10 cachedSelf];

  return cachedSelf;
}

- (BOOL)isPrimary
{
  if (![(EMCategory *)self type])
  {
    return 1;
  }

  return [(EMCategory *)self isHighImpact];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[EMCategory type](self, "type"), v5 == [equalCopy type]) && (v6 = -[EMCategory subtype](self, "subtype"), v6 == objc_msgSend(equalCopy, "subtype")) && (v7 = -[EMCategory state](self, "state"), v7 == objc_msgSend(equalCopy, "state")))
  {
    isHighImpact = [(EMCategory *)self isHighImpact];
    v9 = isHighImpact ^ [equalCopy isHighImpact] ^ 1;
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

- (EMCategory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = EMCategory;
  v5 = [(EMCategory *)&v7 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"EFPropertyKey_type"];
    v5->_subtype = [coderCopy decodeIntegerForKey:@"EFPropertyKey_subtype"];
    v5->_state = [coderCopy decodeIntegerForKey:@"EFPropertyKey_state"];
    v5->_isHighImpact = [coderCopy decodeBoolForKey:@"EFPropertyKey_isHighImpact"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[EMCategory type](self forKey:{"type"), @"EFPropertyKey_type"}];
  [coderCopy encodeInteger:-[EMCategory subtype](self forKey:{"subtype"), @"EFPropertyKey_subtype"}];
  [coderCopy encodeInteger:-[EMCategory state](self forKey:{"state"), @"EFPropertyKey_state"}];
  [coderCopy encodeBool:-[EMCategory isHighImpact](self forKey:{"isHighImpact"), @"EFPropertyKey_isHighImpact"}];
}

@end