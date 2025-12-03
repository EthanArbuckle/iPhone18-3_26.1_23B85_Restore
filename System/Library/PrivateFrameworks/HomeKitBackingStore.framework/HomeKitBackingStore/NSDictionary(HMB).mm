@interface NSDictionary(HMB)
+ (id)hmbDictionaryFromOPACKData:()HMB error:;
- (id)hmbDescription;
- (id)hmbOPACKDataFromDictionaryWithError:()HMB;
@end

@implementation NSDictionary(HMB)

- (id)hmbOPACKDataFromDictionaryWithError:()HMB
{
  v7 = 0;
  v4 = MEMORY[0x231885660](self, 8, &v7);
  v5 = v4;
  if (a3 && !v4)
  {
    *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v7 userInfo:0];
  }

  return v5;
}

- (id)hmbDescription
{
  v2 = [@"{" mutableCopy];
  v3 = [self na_map:&__block_literal_global_208];
  v4 = [v3 componentsJoinedByString:{@", "}];
  [v2 appendString:v4];

  [v2 appendString:@"}"];
  v5 = [v2 copy];

  return v5;
}

+ (id)hmbDictionaryFromOPACKData:()HMB error:
{
  if (a3)
  {
    v5 = OPACKDecodeData();
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      if (!a4 || v9)
      {
        goto LABEL_15;
      }

      v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    }

    else
    {
      if (!a4)
      {
        v9 = 0;
        goto LABEL_15;
      }

      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:0 userInfo:0];
    }

    v9 = 0;
    *a4 = v10;
LABEL_15:

    goto LABEL_16;
  }

  v9 = 0;
  if (a4)
  {
    *a4 = 0;
  }

LABEL_16:

  return v9;
}

@end