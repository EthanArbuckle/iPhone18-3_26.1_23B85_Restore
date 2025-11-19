@interface HMDSoftwareVersionStringDataTransformer
+ (id)reverseTransformedValue:(id)a3 error:(id *)a4;
+ (id)transformedValue:(id)a3 error:(id *)a4;
@end

@implementation HMDSoftwareVersionStringDataTransformer

+ (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [[v4 alloc] initWithData:v5 encoding:4];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D0F8F8]) initWithString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)transformedValue:(id)a3 error:(id *)a4
{
  v4 = [a3 versionString];
  v5 = [v4 dataUsingEncoding:4];

  return v5;
}

@end