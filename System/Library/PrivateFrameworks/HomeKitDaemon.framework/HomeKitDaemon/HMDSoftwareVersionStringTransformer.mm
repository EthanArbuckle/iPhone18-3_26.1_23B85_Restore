@interface HMDSoftwareVersionStringTransformer
+ (id)reverseTransformedValue:(id)value error:(id *)error;
@end

@implementation HMDSoftwareVersionStringTransformer

+ (id)reverseTransformedValue:(id)value error:(id *)error
{
  v4 = MEMORY[0x277D0F8F8];
  valueCopy = value;
  v6 = [[v4 alloc] initWithString:valueCopy];

  return v6;
}

@end