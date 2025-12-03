@interface HMDCKRecordIDCanonicalStringDataTransformer
+ (id)reverseTransformedValue:(id)value error:(id *)error;
+ (id)transformedValue:(id)value error:(id *)error;
@end

@implementation HMDCKRecordIDCanonicalStringDataTransformer

+ (id)reverseTransformedValue:(id)value error:(id *)error
{
  v4 = MEMORY[0x277CCACA8];
  valueCopy = value;
  v6 = [[v4 alloc] initWithData:valueCopy encoding:1];

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

+ (id)transformedValue:(id)value error:(id *)error
{
  hmd_canonicalStringRepresentation = [value hmd_canonicalStringRepresentation];
  v5 = [hmd_canonicalStringRepresentation dataUsingEncoding:1];

  return v5;
}

@end