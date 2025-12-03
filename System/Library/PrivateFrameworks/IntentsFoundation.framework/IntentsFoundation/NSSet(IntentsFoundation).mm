@interface NSSet(IntentsFoundation)
- (id)if_map:()IntentsFoundation;
@end

@implementation NSSet(IntentsFoundation)

- (id)if_map:()IntentsFoundation
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__NSSet_IntentsFoundation__if_map___block_invoke;
  v8[3] = &unk_2797E9798;
  v9 = v4;
  v5 = v4;
  v6 = _IFSetTransform(self, v8);

  return v6;
}

@end