@interface HMDCKRecordIDCanonicalStringTransformer
+ (id)reverseTransformedValue:(id)a3 error:(id *)a4;
@end

@implementation HMDCKRecordIDCanonicalStringTransformer

+ (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v4 = MEMORY[0x277CBC5D0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 hmd_initWithCanonicalStringRepresentation:v5];

  return v7;
}

@end