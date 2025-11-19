@interface LSBundleRecord(IntentsFoundation)
- (id)if_allIntentDefinitionURLs;
- (id)if_containingAppRecord;
@end

@implementation LSBundleRecord(IntentsFoundation)

- (id)if_allIntentDefinitionURLs
{
  v2 = [a1 URL];

  if (v2)
  {
    v3 = [a1 intentDefinitionURLs];
    v4 = [v3 allValues];

    v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  return v5;
}

- (id)if_containingAppRecord
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [a1 containingBundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }
  }

  v2 = 0;
LABEL_7:

  return v2;
}

@end