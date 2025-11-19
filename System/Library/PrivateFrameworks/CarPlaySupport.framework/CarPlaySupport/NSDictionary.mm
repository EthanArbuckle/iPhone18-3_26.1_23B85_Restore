@interface NSDictionary
@end

@implementation NSDictionary

void __69__NSDictionary_CPSUtilities__cps_mutableDictionaryWithValuesForKeys___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = [*(a1 + 32) objectForKey:location[0]];
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v6)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) objectForKey:{location[0], v2}];
    [v3 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

@end