@interface INIntentResolutionResult(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (void)cmsCoded;
@end

@implementation INIntentResolutionResult(CMSCoding)

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = a3;
  v4 = cmsSafeDictionary(v3);
  if (!v4)
  {
    v9 = 0;
    goto LABEL_16;
  }

  if (instanceFromCMSCoded__onceToken != -1)
  {
    +[INIntentResolutionResult(CMSCoding) instanceFromCMSCoded:];
  }

  v5 = [v4 cmsOptionalStringForKey:@"class"];
  if (v5)
  {
    v6 = [instanceFromCMSCoded__classmap objectForKey:v5];
    if (v6)
    {
      needsValue = [v6 instanceFromCMSCoded:v3];
LABEL_14:
      v9 = needsValue;
      goto LABEL_15;
    }
  }

  v8 = [v4 cmsOptionalDictionaryForKey:@"needsValue"];

  if (v8)
  {
    needsValue = [MEMORY[0x277CD3D40] needsValue];
    goto LABEL_14;
  }

  v10 = [v4 cmsOptionalDictionaryForKey:@"notRequired"];

  if (v10)
  {
    needsValue = [MEMORY[0x277CD3D40] notRequired];
    goto LABEL_14;
  }

  v9 = [v4 cmsOptionalDictionaryForKey:@"unsupported"];

  if (v9)
  {
    needsValue = [MEMORY[0x277CD3D40] unsupported];
    goto LABEL_14;
  }

LABEL_15:

LABEL_16:

  return v9;
}

- (void)cmsCoded
{
  resolutionResultCode = [self resolutionResultCode];
  if ((resolutionResultCode - 1) > 4)
  {
    return &unk_2856B0BD8;
  }

  else
  {
    return *(&off_278DDCF00 + resolutionResultCode - 1);
  }
}

@end