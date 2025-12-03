@interface LSBundleRecord(IntentsFoundation)
- (id)if_allIntentDefinitionURLs;
- (id)if_containingAppRecord;
@end

@implementation LSBundleRecord(IntentsFoundation)

- (id)if_allIntentDefinitionURLs
{
  v2 = [self URL];

  if (v2)
  {
    intentDefinitionURLs = [self intentDefinitionURLs];
    allValues = [intentDefinitionURLs allValues];

    v5 = [MEMORY[0x277CBEB98] setWithArray:allValues];
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
    selfCopy = self;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = [self containingBundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }
  }

  selfCopy = 0;
LABEL_7:

  return selfCopy;
}

@end