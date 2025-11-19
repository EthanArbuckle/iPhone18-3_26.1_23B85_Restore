@interface HMDSoftwareVersionStringTransformer
+ (id)reverseTransformedValue:(id)a3 error:(id *)a4;
@end

@implementation HMDSoftwareVersionStringTransformer

+ (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v4 = MEMORY[0x277D0F8F8];
  v5 = a3;
  v6 = [[v4 alloc] initWithString:v5];

  return v6;
}

@end