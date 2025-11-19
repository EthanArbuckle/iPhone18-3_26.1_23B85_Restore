@interface DNDSModeAssertionSourceRecord
+ (id)recordForAssertionSource:(id)a3;
+ (id)recordForDictionary:(id)a3 keys:(id *)a4;
- (id)dictionaryWithKeys:(id *)a3 options:(unint64_t)a4;
- (id)object;
@end

@implementation DNDSModeAssertionSourceRecord

+ (id)recordForDictionary:(id)a3 keys:(id *)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = objc_alloc_init(DNDSModeAssertionSourceRecord);
    v7 = [v5 bs_safeStringForKey:a4->var4.var0];
    [(DNDSModeAssertionSourceRecord *)v6 setClientIdentifier:v7];

    v8 = [v5 bs_safeStringForKey:a4->var4.var1];

    [(DNDSModeAssertionSourceRecord *)v6 setDeviceIdentifier:v8];
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
  v7 = [(DNDSModeAssertionSourceRecord *)self clientIdentifier];
  [v6 bs_setSafeObject:v7 forKey:a3->var4.var0];

  v8 = [(DNDSModeAssertionSourceRecord *)self deviceIdentifier];
  [v6 bs_setSafeObject:v8 forKey:a3->var4.var1];

  return v6;
}

+ (id)recordForAssertionSource:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(DNDSModeAssertionSourceRecord);
    v5 = [v3 clientIdentifier];
    [(DNDSModeAssertionSourceRecord *)v4 setClientIdentifier:v5];

    v6 = [v3 deviceIdentifier];

    [(DNDSModeAssertionSourceRecord *)v4 setDeviceIdentifier:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)object
{
  v3 = [(DNDSModeAssertionSourceRecord *)self clientIdentifier];
  v4 = [(DNDSModeAssertionSourceRecord *)self deviceIdentifier];
  if (v3)
  {
    v5 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:v3 deviceIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end