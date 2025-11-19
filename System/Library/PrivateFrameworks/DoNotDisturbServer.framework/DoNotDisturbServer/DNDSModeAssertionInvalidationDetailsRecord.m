@interface DNDSModeAssertionInvalidationDetailsRecord
+ (id)recordForDictionary:(id)a3 keys:(id *)a4;
+ (id)recordForInvalidationDetails:(id)a3;
- (id)dictionaryWithKeys:(id *)a3 options:(unint64_t)a4;
- (id)object;
@end

@implementation DNDSModeAssertionInvalidationDetailsRecord

+ (id)recordForDictionary:(id)a3 keys:(id *)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = objc_alloc_init(DNDSModeAssertionInvalidationDetailsRecord);
    v7 = [v5 bs_safeStringForKey:a4->var6.var0];

    [(DNDSModeAssertionInvalidationDetailsRecord *)v6 setIdentifier:v7];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dictionaryWithKeys:(id *)a3 options:(unint64_t)a4
{
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [(DNDSModeAssertionInvalidationDetailsRecord *)self identifier];
  [v6 bs_setSafeObject:v7 forKey:a3->var6.var0];

  return v6;
}

+ (id)recordForInvalidationDetails:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(DNDSModeAssertionInvalidationDetailsRecord);
    v5 = [v3 identifier];

    [(DNDSModeAssertionInvalidationDetailsRecord *)v4 setIdentifier:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)object
{
  v2 = [(DNDSModeAssertionInvalidationDetailsRecord *)self identifier];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D05A48]);
    [v3 setIdentifier:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end