@interface HMDCKRecordIDCanonicalStringTransformer
+ (id)reverseTransformedValue:(id)value error:(id *)error;
@end

@implementation HMDCKRecordIDCanonicalStringTransformer

+ (id)reverseTransformedValue:(id)value error:(id *)error
{
  v4 = MEMORY[0x277CBC5D0];
  valueCopy = value;
  v6 = [v4 alloc];
  v7 = [v6 hmd_initWithCanonicalStringRepresentation:valueCopy];

  return v7;
}

@end