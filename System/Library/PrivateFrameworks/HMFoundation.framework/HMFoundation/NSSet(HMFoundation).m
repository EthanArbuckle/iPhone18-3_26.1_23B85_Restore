@interface NSSet(HMFoundation)
+ (NSString)shortDescription;
- (id)privateDescription;
- (id)shortDescription;
- (void)hmf_enumerateWithAutoreleasePoolUsingBlock:()HMFoundation;
@end

@implementation NSSet(HMFoundation)

+ (NSString)shortDescription
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

- (id)shortDescription
{
  v1 = [a1 allObjects];
  v2 = [v1 shortDescription];

  return v2;
}

- (id)privateDescription
{
  v1 = [a1 allObjects];
  v2 = [v1 privateDescription];

  return v2;
}

- (void)hmf_enumerateWithAutoreleasePoolUsingBlock:()HMFoundation
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__NSSet_HMFoundation__hmf_enumerateWithAutoreleasePoolUsingBlock___block_invoke;
  v6[3] = &unk_2786E7F58;
  v7 = v4;
  v5 = v4;
  [a1 enumerateObjectsUsingBlock:v6];
}

@end