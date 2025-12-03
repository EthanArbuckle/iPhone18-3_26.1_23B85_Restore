@interface NSError(HMFoundation)
+ (NSString)shortDescription;
+ (id)hmf_unarchiveFromData:()HMFoundation error:;
- (id)shortDescription;
@end

@implementation NSError(HMFoundation)

- (id)shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  domain = [self domain];
  code = [self code];
  localizedDescription = [self localizedDescription];
  v6 = [v2 stringWithFormat:@"Error Domain=%@ Code=%ld %@", domain, code, localizedDescription];

  return v6;
}

+ (id)hmf_unarchiveFromData:()HMFoundation error:
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = a3;
  v7 = [v5 unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:a4];

  return v7;
}

+ (NSString)shortDescription
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

@end