@interface HMDCKRecordIDCanonicalStringDataTransformer
+ (id)reverseTransformedValue:(id)a3 error:(id *)a4;
+ (id)transformedValue:(id)a3 error:(id *)a4;
@end

@implementation HMDCKRecordIDCanonicalStringDataTransformer

+ (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [[v4 alloc] initWithData:v5 encoding:1];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CBC5D0]);
    v8 = [v7 hmd_initWithCanonicalStringRepresentation:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)transformedValue:(id)a3 error:(id *)a4
{
  v4 = [a3 hmd_canonicalStringRepresentation];
  v5 = [v4 dataUsingEncoding:1];

  return v5;
}

@end