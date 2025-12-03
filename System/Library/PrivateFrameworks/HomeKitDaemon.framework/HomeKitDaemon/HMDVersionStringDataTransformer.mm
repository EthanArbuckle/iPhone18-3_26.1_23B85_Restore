@interface HMDVersionStringDataTransformer
+ (id)reverseTransformedValue:(id)value error:(id *)error;
+ (id)transformedValue:(id)value error:(id *)error;
@end

@implementation HMDVersionStringDataTransformer

+ (id)reverseTransformedValue:(id)value error:(id *)error
{
  v4 = MEMORY[0x277CCACA8];
  valueCopy = value;
  v6 = [[v4 alloc] initWithData:valueCopy encoding:4];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)transformedValue:(id)value error:(id *)error
{
  versionString = [value versionString];
  v5 = [versionString dataUsingEncoding:4];

  return v5;
}

@end