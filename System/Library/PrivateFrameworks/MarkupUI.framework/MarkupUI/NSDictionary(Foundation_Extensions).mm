@interface NSDictionary(Foundation_Extensions)
- (id)muDeepMutableCopy;
@end

@implementation NSDictionary(Foundation_Extensions)

- (id)muDeepMutableCopy
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(self, "count")}];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__NSDictionary_Foundation_Extensions__muDeepMutableCopy__block_invoke;
  v5[3] = &unk_27986E980;
  v3 = v2;
  v6 = v3;
  [self enumerateKeysAndObjectsUsingBlock:v5];

  return v3;
}

@end