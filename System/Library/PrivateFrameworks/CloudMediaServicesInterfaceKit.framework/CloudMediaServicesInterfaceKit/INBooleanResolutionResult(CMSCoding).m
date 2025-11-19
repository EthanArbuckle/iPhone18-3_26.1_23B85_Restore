@interface INBooleanResolutionResult(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
@end

@implementation INBooleanResolutionResult(CMSCoding)

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = cmsSafeDictionary(a3);
  v4 = v3;
  if (!v3)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v5 = [v3 cmsOptionalDictionaryForKey:@"success"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 cmsOptionalBoolForKey:@"resolvedValue"];
    v8 = v7;
    if (!v7)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v9 = [MEMORY[0x277CD3AB8] successWithResolvedValue:{objc_msgSend(v7, "BOOLValue")}];
  }

  else
  {
    v11 = [v4 cmsOptionalDictionaryForKey:@"confirmationRequired"];
    v8 = v11;
    if (v11)
    {
      v12 = MEMORY[0x277CD3AB8];
      v13 = [v11 cmsOptionalBoolForKey:@"valueToConfirm"];
      v10 = [v12 confirmationRequiredWithValueToConfirm:v13];

      goto LABEL_10;
    }

    v15 = [v4 cmsOptionalDictionaryForKey:@"unsupported"];

    if (v15)
    {
      v9 = [MEMORY[0x277CD3AB8] unsupported];
    }

    else
    {
      v16 = [v4 cmsOptionalDictionaryForKey:@"needsValue"];

      if (v16)
      {
        v9 = [MEMORY[0x277CD3AB8] needsValue];
      }

      else
      {
        v10 = [v4 cmsOptionalDictionaryForKey:@"notRequired"];

        if (!v10)
        {
          goto LABEL_10;
        }

        v9 = [MEMORY[0x277CD3AB8] notRequired];
      }
    }
  }

  v10 = v9;
LABEL_10:

LABEL_11:

  return v10;
}

@end