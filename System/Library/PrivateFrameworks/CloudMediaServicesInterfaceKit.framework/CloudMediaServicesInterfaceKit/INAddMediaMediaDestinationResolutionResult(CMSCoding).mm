@interface INAddMediaMediaDestinationResolutionResult(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
@end

@implementation INAddMediaMediaDestinationResolutionResult(CMSCoding)

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v4 = cmsSafeDictionary(a3);
  v5 = v4;
  if (!v4)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v6 = [v4 objectForKey:@"success"];

  if (v6)
  {
    v15.receiver = self;
    v15.super_class = &off_2856BBF60;
    v7 = objc_msgSendSuper2(&v15, sel_instanceFromCMSCoded_, v5);
    if (!v7)
    {
      v9 = 0;
      goto LABEL_15;
    }

    needsValue = [objc_alloc(MEMORY[0x277CD3A00]) initWithMediaDestinationResolutionResult:v7];
  }

  else
  {
    v10 = [v5 objectForKey:@"unsupported"];
    v7 = v10;
    if (v10)
    {
      v11 = [v10 objectForKey:@"reason"];
      v12 = v11;
      if (v11)
      {
        [MEMORY[0x277CD3A00] unsupportedForReason:INAddMediaMediaDestinationUnsupportedReasonFromString(v11)];
      }

      else
      {
        [MEMORY[0x277CD3A00] unsupported];
      }
      v9 = ;

      goto LABEL_15;
    }

    v13 = [v5 cmsOptionalDictionaryForKey:@"needsValue"];

    if (v13)
    {
      needsValue = [MEMORY[0x277CD3A00] needsValue];
    }

    else
    {
      v9 = [v5 cmsOptionalDictionaryForKey:@"notRequired"];

      if (!v9)
      {
        goto LABEL_15;
      }

      needsValue = [MEMORY[0x277CD3A00] notRequired];
    }
  }

  v9 = needsValue;
LABEL_15:

LABEL_16:

  return v9;
}

@end