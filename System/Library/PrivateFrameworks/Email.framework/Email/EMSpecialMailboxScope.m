@interface EMSpecialMailboxScope
@end

@implementation EMSpecialMailboxScope

void __49___EMSpecialMailboxScope_EFCacheable__cachedSelf__block_invoke()
{
  cachedSelf_sTableLock_52 = 0;
  v0 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
  v1 = cachedSelf_sUniqueObjectIDs_53;
  cachedSelf_sUniqueObjectIDs_53 = v0;
}

id __40___EMSpecialMailboxScope_initWithCoder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v9.receiver = v2;
  v9.super_class = _EMSpecialMailboxScope;
  v4 = objc_msgSendSuper2(&v9, sel_initWithCoder_, v3);
  if (v4)
  {
    v5 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_identifier"];
    v6 = *(a1 + 40);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  return v4;
}

void __42___EMSpecialMailboxScope_encodeWithCoder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5.receiver = *(a1 + 40);
  v5.super_class = _EMSpecialMailboxScope;
  objc_msgSendSuper2(&v5, sel_encodeWithCoder_, v2);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) identifier];
  [v3 encodeObject:v4 forKey:@"EFPropertyKey_identifier"];
}

@end