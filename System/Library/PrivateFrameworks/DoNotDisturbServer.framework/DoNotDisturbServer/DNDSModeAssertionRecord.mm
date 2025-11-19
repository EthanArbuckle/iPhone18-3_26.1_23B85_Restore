@interface DNDSModeAssertionRecord
+ (id)recordForAssertion:(id)a3;
+ (id)recordForDictionary:(id)a3 keys:(id *)a4;
- (id)dictionaryWithKeys:(id *)a3 options:(unint64_t)a4;
- (id)object;
@end

@implementation DNDSModeAssertionRecord

+ (id)recordForDictionary:(id)a3 keys:(id *)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = objc_alloc_init(DNDSModeAssertionRecord);
    v7 = [v5 bs_safeStringForKey:a4->var1.var0];
    [(DNDSModeAssertionRecord *)v6 setUUID:v7];

    v8 = [v5 bs_safeNumberForKey:a4->var1.var1];
    [(DNDSModeAssertionRecord *)v6 setStartDate:v8];

    v9 = [v5 bs_safeDictionaryForKey:a4->var1.var2];
    v10 = [DNDSModeAssertionDetailsRecord recordForDictionary:v9 keys:a4];
    [(DNDSModeAssertionRecord *)v6 setDetails:v10];

    v11 = [v5 bs_safeDictionaryForKey:a4->var1.var3];

    v12 = [DNDSModeAssertionSourceRecord recordForDictionary:v11 keys:a4];
    [(DNDSModeAssertionRecord *)v6 setSource:v12];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dictionaryWithKeys:(id *)a3 options:(unint64_t)a4
{
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [(DNDSModeAssertionRecord *)self UUID];
  [v7 bs_setSafeObject:v8 forKey:a3->var1.var0];

  v9 = [(DNDSModeAssertionRecord *)self startDate];
  [v7 bs_setSafeObject:v9 forKey:a3->var1.var1];

  v10 = [(DNDSModeAssertionRecord *)self details];
  v11 = [v10 dictionaryWithKeys:a3 options:a4];
  [v7 bs_setSafeObject:v11 forKey:a3->var1.var2];

  v12 = [(DNDSModeAssertionRecord *)self source];
  v13 = [v12 dictionaryWithKeys:a3 options:a4];
  [v7 bs_setSafeObject:v13 forKey:a3->var1.var3];

  if (a4)
  {
    v14 = [(DNDSModeAssertionRecord *)self startDate];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Local", a3->var1.var1];
    [v7 dnds_setSafeLocalDateForTimestamp:v14 key:v15];
  }

  return v7;
}

+ (id)recordForAssertion:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(DNDSModeAssertionRecord);
    v5 = [v3 UUID];
    v6 = [v5 UUIDString];
    [(DNDSModeAssertionRecord *)v4 setUUID:v6];

    v7 = MEMORY[0x277CCABB0];
    v8 = [v3 startDate];
    v9 = [v7 dnds_numberWithDate:v8];
    [(DNDSModeAssertionRecord *)v4 setStartDate:v9];

    v10 = [v3 details];
    v11 = [DNDSModeAssertionDetailsRecord recordForAssertionDetails:v10];
    [(DNDSModeAssertionRecord *)v4 setDetails:v11];

    v12 = [v3 source];

    v13 = [DNDSModeAssertionSourceRecord recordForAssertionSource:v12];
    [(DNDSModeAssertionRecord *)v4 setSource:v13];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)object
{
  v3 = [(DNDSModeAssertionRecord *)self UUID];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    v5 = [(DNDSModeAssertionRecord *)self UUID];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(DNDSModeAssertionRecord *)self startDate];
  v8 = [v7 dnds_dateValue];

  v9 = [(DNDSModeAssertionRecord *)self details];
  v10 = [v9 object];

  v11 = [(DNDSModeAssertionRecord *)self source];
  v12 = [v11 object];

  v13 = 0;
  if (v6 && v8 && v10 && v12)
  {
    v13 = [objc_alloc(MEMORY[0x277D05938]) initWithUUID:v6 startDate:v8 details:v10 source:v12];
  }

  return v13;
}

@end