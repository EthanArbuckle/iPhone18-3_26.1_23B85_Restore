@interface HMDVersionStringTransformer
+ (id)reverseTransformedValue:(id)value error:(id *)error;
@end

@implementation HMDVersionStringTransformer

+ (id)reverseTransformedValue:(id)value error:(id *)error
{
  v4 = MEMORY[0x277D0F940];
  valueCopy = value;
  v6 = [[v4 alloc] initWithString:valueCopy];

  return v6;
}

@end