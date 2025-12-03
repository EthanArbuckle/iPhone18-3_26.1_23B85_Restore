@interface ASKResourceRequest
+ (id)makeUniqueKey;
- (ASKResourceRequest)init;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation ASKResourceRequest

+ (id)makeUniqueKey
{
  atomic_fetch_add_explicit(&makeUniqueKey_counter, 1uLL, memory_order_relaxed);
  v2 = MEMORY[0x277CCABB0];
  v3 = atomic_load(&makeUniqueKey_counter);
  return [v2 numberWithUnsignedLong:v3];
}

- (ASKResourceRequest)init
{
  v9.receiver = self;
  v9.super_class = ASKResourceRequest;
  v2 = [(ASKResourceRequest *)&v9 init];
  if (v2)
  {
    makeUniqueKey = [objc_opt_class() makeUniqueKey];
    v4 = [makeUniqueKey copyWithZone:0];
    requestKey = v2->_requestKey;
    v2->_requestKey = v4;

    v6 = [makeUniqueKey copyWithZone:0];
    cacheKey = v2->_cacheKey;
    v2->_cacheKey = v6;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  cacheKey = [(ASKResourceRequest *)self cacheKey];
  v7 = [v3 stringWithFormat:@"<%@:%p cacheKey = %@>", v5, self, cacheKey];

  return v7;
}

- (unint64_t)hash
{
  requestKey = [(ASKResourceRequest *)self requestKey];
  v3 = [requestKey hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (equalCopy && (isKindOfClass & 1) != 0)
  {
    cacheKey = [equalCopy cacheKey];
    cacheKey2 = [(ASKResourceRequest *)self cacheKey];
    v6 = cacheKey == cacheKey2;
  }

  return v6;
}

@end