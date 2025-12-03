@interface INUpdateMediaAffinityMediaItemResolutionResult(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
@end

@implementation INUpdateMediaAffinityMediaItemResolutionResult(CMSCoding)

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v4 = cmsSafeDictionary(a3);
  v5 = v4;
  if (!v4)
  {
    v13 = 0;
    goto LABEL_35;
  }

  v6 = [v4 objectForKey:@"unsupported"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:@"reason"];
    v9 = v8;
    v10 = MEMORY[0x277CD42C8];
    if (v8)
    {
      v11 = v8;
      if ([v11 isEqualToString:@"loginRequired"])
      {
        v12 = 1;
      }

      else if ([v11 isEqualToString:@"subscriptionRequired"])
      {
        v12 = 2;
      }

      else if ([v11 isEqualToString:@"unsupportedMediaType"])
      {
        v12 = 3;
      }

      else if ([v11 isEqualToString:@"explicitContentSettings"])
      {
        v12 = 4;
      }

      else if ([v11 isEqualToString:@"cellularDataSettings"])
      {
        v12 = 5;
      }

      else if ([v11 isEqualToString:@"restrictedContent"])
      {
        v12 = 6;
      }

      else if ([v11 isEqualToString:@"serviceUnavailable"])
      {
        v12 = 7;
      }

      else if ([v11 isEqualToString:@"regionRestriction"])
      {
        v12 = 8;
      }

      else
      {
        v12 = 7;
      }

      unsupported = [v10 unsupportedForReason:v12];
    }

    else
    {
      unsupported = [MEMORY[0x277CD42C8] unsupported];
    }

    goto LABEL_32;
  }

  v14 = [v5 cmsOptionalDictionaryForKey:@"needsValue"];

  if (v14)
  {
    needsValue = [MEMORY[0x277CD42C8] needsValue];
  }

  else
  {
    v17 = [v5 cmsOptionalDictionaryForKey:@"notRequired"];

    if (!v17)
    {
      v19.receiver = self;
      v19.super_class = &off_2856BC348;
      v9 = objc_msgSendSuper2(&v19, sel_instanceFromCMSCoded_, v5);
      if (!v9)
      {
        v13 = 0;
LABEL_33:

        goto LABEL_34;
      }

      unsupported = [objc_alloc(MEMORY[0x277CD42C8]) initWithMediaItemResolutionResult:v9];
LABEL_32:
      v13 = unsupported;
      goto LABEL_33;
    }

    needsValue = [MEMORY[0x277CD42C8] notRequired];
  }

  v13 = needsValue;
LABEL_34:

LABEL_35:

  return v13;
}

@end