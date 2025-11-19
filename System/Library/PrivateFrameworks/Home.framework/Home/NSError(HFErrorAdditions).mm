@interface NSError(HFErrorAdditions)
+ (id)hf_errorWithCode:()HFErrorAdditions descriptionFormat:;
+ (id)hf_errorWithCode:()HFErrorAdditions descriptionFormat:arguments:;
+ (id)hf_errorWithCode:()HFErrorAdditions title:description:;
+ (id)hf_internalErrorWithDescription:()HFErrorAdditions;
+ (id)hf_mappedHMError:()HFErrorAdditions;
- (BOOL)hf_isHFErrorWithCode:()HFErrorAdditions;
@end

@implementation NSError(HFErrorAdditions)

+ (id)hf_errorWithCode:()HFErrorAdditions descriptionFormat:
{
  v9 = [a1 hf_errorWithCode:a3 descriptionFormat:a4 arguments:&a9];

  return v9;
}

+ (id)hf_errorWithCode:()HFErrorAdditions title:description:
{
  v7 = MEMORY[0x277CBEB38];
  v8 = a5;
  v9 = a4;
  v10 = [v7 dictionary];
  v11 = [MEMORY[0x277CBEB38] dictionary];
  [v11 setObject:v9 forKeyedSubscript:@"HFErrorUserInfoOptionTitleKey"];

  [v11 setObject:v8 forKeyedSubscript:@"HFErrorUserInfoOptionDescriptionKey"];
  [v10 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA450]];

  v12 = [v11 copy];
  [v10 setObject:v12 forKeyedSubscript:@"HFErrorUserInfoOptionsKey"];

  v13 = MEMORY[0x277CCA9B8];
  v14 = [v10 copy];
  v15 = [v13 errorWithDomain:@"HFErrorDomain" code:a3 userInfo:v14];

  return v15;
}

+ (id)hf_errorWithCode:()HFErrorAdditions descriptionFormat:arguments:
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a4;
  v9 = [[v7 alloc] initWithFormat:v8 arguments:a5];

  v10 = [MEMORY[0x277CCA9B8] hf_errorWithCode:a3 title:0 description:v9];

  return v10;
}

+ (id)hf_internalErrorWithDescription:()HFErrorAdditions
{
  v9 = [a1 hf_errorWithCode:-1 descriptionFormat:a3 arguments:&a9];

  return v9;
}

+ (id)hf_mappedHMError:()HFErrorAdditions
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = *MEMORY[0x277CCFD28];
  v6 = [v4 isEqualToString:*MEMORY[0x277CCFD28]];

  if (v6)
  {
    v7 = v3;
LABEL_8:
    v9 = v7;
    goto LABEL_9;
  }

  if ([v3 na_isCancelledError])
  {
LABEL_4:
    v8 = 2001;
LABEL_7:
    v7 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:v5 code:v8 userInfo:0];
    goto LABEL_8;
  }

  if ([v3 na_isTimeoutError])
  {
LABEL_6:
    v8 = 8;
    goto LABEL_7;
  }

  v11 = [v3 domain];
  v12 = [v11 isEqualToString:@"HFErrorDomain"];

  if (v12)
  {
    v13 = [v3 code];
    v9 = 0;
    if (v13 > 34)
    {
      if (v13 > 38)
      {
        if (v13 == 46)
        {
          v8 = 96;
          goto LABEL_7;
        }

        if (v13 == 39)
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (v13 == 35)
        {
          v8 = 4;
          goto LABEL_7;
        }

        if (v13 == 37)
        {
          goto LABEL_4;
        }
      }
    }

    else if (v13 > 21)
    {
      if (v13 == 22)
      {
        v8 = 2004;
        goto LABEL_7;
      }

      if (v13 == 34)
      {
        v8 = 54;
        goto LABEL_7;
      }
    }

    else
    {
      if (v13 == 6)
      {
        goto LABEL_6;
      }

      if (v13 == 21)
      {
        v8 = 13;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_9:

  return v9;
}

- (BOOL)hf_isHFErrorWithCode:()HFErrorAdditions
{
  v5 = [a1 domain];
  v6 = [v5 isEqualToString:@"HFErrorDomain"];

  return v6 && [a1 code] == a3;
}

@end