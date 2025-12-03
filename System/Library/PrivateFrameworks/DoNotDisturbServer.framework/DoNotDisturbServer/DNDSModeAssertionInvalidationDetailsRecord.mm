@interface DNDSModeAssertionInvalidationDetailsRecord
+ (id)recordForDictionary:(id)dictionary keys:(id *)keys;
+ (id)recordForInvalidationDetails:(id)details;
- (id)dictionaryWithKeys:(id *)keys options:(unint64_t)options;
- (id)object;
@end

@implementation DNDSModeAssertionInvalidationDetailsRecord

+ (id)recordForDictionary:(id)dictionary keys:(id *)keys
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v6 = objc_alloc_init(DNDSModeAssertionInvalidationDetailsRecord);
    v7 = [dictionaryCopy bs_safeStringForKey:keys->var6.var0];

    [(DNDSModeAssertionInvalidationDetailsRecord *)v6 setIdentifier:v7];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dictionaryWithKeys:(id *)keys options:(unint64_t)options
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  identifier = [(DNDSModeAssertionInvalidationDetailsRecord *)self identifier];
  [dictionary bs_setSafeObject:identifier forKey:keys->var6.var0];

  return dictionary;
}

+ (id)recordForInvalidationDetails:(id)details
{
  if (details)
  {
    detailsCopy = details;
    v4 = objc_alloc_init(DNDSModeAssertionInvalidationDetailsRecord);
    identifier = [detailsCopy identifier];

    [(DNDSModeAssertionInvalidationDetailsRecord *)v4 setIdentifier:identifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)object
{
  identifier = [(DNDSModeAssertionInvalidationDetailsRecord *)self identifier];
  if (identifier)
  {
    v3 = objc_alloc_init(MEMORY[0x277D05A48]);
    [v3 setIdentifier:identifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end