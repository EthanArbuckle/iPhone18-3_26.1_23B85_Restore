@interface NSKeyedArchiver(ETAdditions)
+ (id)_et_secureArchivedDataWithRootObject:()ETAdditions;
@end

@implementation NSKeyedArchiver(ETAdditions)

+ (id)_et_secureArchivedDataWithRootObject:()ETAdditions
{
  v3 = MEMORY[0x277CCAAB0];
  v4 = a3;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:v4 forKey:@"root"];

  encodedData = [v5 encodedData];

  return encodedData;
}

@end