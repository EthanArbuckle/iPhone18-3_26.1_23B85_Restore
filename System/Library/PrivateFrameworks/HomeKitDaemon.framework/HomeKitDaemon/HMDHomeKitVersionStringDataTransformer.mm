@interface HMDHomeKitVersionStringDataTransformer
+ (id)reverseTransformedValue:(id)a3 error:(id *)a4;
+ (id)transformedValue:(id)a3 error:(id *)a4;
@end

@implementation HMDHomeKitVersionStringDataTransformer

+ (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
  if (v6)
  {
    v7 = [[HMDHomeKitVersion alloc] initWithString:v6];
    if (v7)
    {
      v8 = v7;
      v9 = v8;
    }

    else
    {
      if (a4)
      {
        v11 = MEMORY[0x277CCA9B8];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"String isn't valid as HMDHomeKitVersion: %@", v6];
        *a4 = [v11 hmfErrorWithCode:3 reason:v12];
      }

      v8 = 0;
      v9 = 0;
    }

    goto LABEL_9;
  }

  if (a4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Data is not UTF8: %@", v5];
    [v10 hmfErrorWithCode:3 reason:v8];
    *a4 = v9 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

+ (id)transformedValue:(id)a3 error:(id *)a4
{
  v4 = [a3 versionString];
  v5 = [v4 dataUsingEncoding:4];

  return v5;
}

@end