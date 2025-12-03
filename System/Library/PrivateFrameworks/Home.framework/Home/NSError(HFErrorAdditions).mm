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
  v9 = [self hf_errorWithCode:a3 descriptionFormat:a4 arguments:&a9];

  return v9;
}

+ (id)hf_errorWithCode:()HFErrorAdditions title:description:
{
  v7 = MEMORY[0x277CBEB38];
  v8 = a5;
  v9 = a4;
  dictionary = [v7 dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary2 setObject:v9 forKeyedSubscript:@"HFErrorUserInfoOptionTitleKey"];

  [dictionary2 setObject:v8 forKeyedSubscript:@"HFErrorUserInfoOptionDescriptionKey"];
  [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA450]];

  v12 = [dictionary2 copy];
  [dictionary setObject:v12 forKeyedSubscript:@"HFErrorUserInfoOptionsKey"];

  v13 = MEMORY[0x277CCA9B8];
  v14 = [dictionary copy];
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
  v9 = [self hf_errorWithCode:-1 descriptionFormat:a3 arguments:&a9];

  return v9;
}

+ (id)hf_mappedHMError:()HFErrorAdditions
{
  v3 = a3;
  domain = [v3 domain];
  v5 = *MEMORY[0x277CCFD28];
  v6 = [domain isEqualToString:*MEMORY[0x277CCFD28]];

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

  domain2 = [v3 domain];
  v12 = [domain2 isEqualToString:@"HFErrorDomain"];

  if (v12)
  {
    code = [v3 code];
    v9 = 0;
    if (code > 34)
    {
      if (code > 38)
      {
        if (code == 46)
        {
          v8 = 96;
          goto LABEL_7;
        }

        if (code == 39)
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (code == 35)
        {
          v8 = 4;
          goto LABEL_7;
        }

        if (code == 37)
        {
          goto LABEL_4;
        }
      }
    }

    else if (code > 21)
    {
      if (code == 22)
      {
        v8 = 2004;
        goto LABEL_7;
      }

      if (code == 34)
      {
        v8 = 54;
        goto LABEL_7;
      }
    }

    else
    {
      if (code == 6)
      {
        goto LABEL_6;
      }

      if (code == 21)
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
  domain = [self domain];
  v6 = [domain isEqualToString:@"HFErrorDomain"];

  return v6 && [self code] == a3;
}

@end