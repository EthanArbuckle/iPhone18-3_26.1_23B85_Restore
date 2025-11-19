@interface DNDSModeAssertionInvalidationRecord
+ (id)recordForDictionary:(id)a3 keys:(id *)a4;
+ (id)recordForInvalidation:(id)a3;
- (id)dictionaryWithKeys:(id *)a3 options:(unint64_t)a4;
- (id)object;
@end

@implementation DNDSModeAssertionInvalidationRecord

+ (id)recordForDictionary:(id)a3 keys:(id *)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = objc_alloc_init(DNDSModeAssertionInvalidationRecord);
    v7 = [v5 bs_safeDictionaryForKey:a4->var5.var0];
    v8 = [DNDSModeAssertionRecord recordForDictionary:v7 keys:a4];
    [(DNDSModeAssertionInvalidationRecord *)v6 setAssertion:v8];

    v9 = [v5 bs_safeNumberForKey:a4->var5.var1];
    [(DNDSModeAssertionInvalidationRecord *)v6 setInvalidationDate:v9];

    v10 = [v5 bs_safeDictionaryForKey:a4->var5.var2];
    v11 = [DNDSModeAssertionInvalidationDetailsRecord recordForDictionary:v10 keys:a4];
    [(DNDSModeAssertionInvalidationRecord *)v6 setDetails:v11];

    v12 = [v5 bs_safeDictionaryForKey:a4->var5.var3];
    v13 = [DNDSModeAssertionSourceRecord recordForDictionary:v12 keys:a4];
    [(DNDSModeAssertionInvalidationRecord *)v6 setSource:v13];

    v14 = [v5 bs_safeStringForKey:a4->var5.var4];
    [(DNDSModeAssertionInvalidationRecord *)v6 setReason:v14];

    v15 = [v5 bs_safeStringForKey:a4->var5.var5];

    [(DNDSModeAssertionInvalidationRecord *)v6 setReasonOverride:v15];
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
  v8 = [(DNDSModeAssertionInvalidationRecord *)self assertion];
  v9 = [v8 dictionaryWithKeys:a3 options:a4];
  [v7 bs_setSafeObject:v9 forKey:a3->var5.var0];

  v10 = [(DNDSModeAssertionInvalidationRecord *)self invalidationDate];
  [v7 bs_setSafeObject:v10 forKey:a3->var5.var1];

  v11 = [(DNDSModeAssertionInvalidationRecord *)self details];
  v12 = [v11 dictionaryWithKeys:a3 options:a4];
  [v7 bs_setSafeObject:v12 forKey:a3->var5.var2];

  v13 = [(DNDSModeAssertionInvalidationRecord *)self source];
  v14 = [v13 dictionaryWithKeys:a3 options:a4];
  [v7 bs_setSafeObject:v14 forKey:a3->var5.var3];

  v15 = [(DNDSModeAssertionInvalidationRecord *)self reason];
  [v7 bs_setSafeObject:v15 forKey:a3->var5.var4];

  v16 = [(DNDSModeAssertionInvalidationRecord *)self reasonOverride];
  [v7 bs_setSafeObject:v16 forKey:a3->var5.var5];

  if (a4)
  {
    v17 = [(DNDSModeAssertionInvalidationRecord *)self invalidationDate];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Local", a3->var5.var1];
    [v7 dnds_setSafeLocalDateForTimestamp:v17 key:v18];
  }

  return v7;
}

+ (id)recordForInvalidation:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(DNDSModeAssertionInvalidationRecord);
    v5 = [v3 assertion];
    v6 = [DNDSModeAssertionRecord recordForAssertion:v5];
    [(DNDSModeAssertionInvalidationRecord *)v4 setAssertion:v6];

    v7 = MEMORY[0x277CCABB0];
    v8 = [v3 invalidationDate];
    v9 = [v7 dnds_numberWithDate:v8];
    [(DNDSModeAssertionInvalidationRecord *)v4 setInvalidationDate:v9];

    v10 = [v3 details];
    v11 = [DNDSModeAssertionInvalidationDetailsRecord recordForInvalidationDetails:v10];
    [(DNDSModeAssertionInvalidationRecord *)v4 setDetails:v11];

    v12 = [v3 source];
    v13 = [DNDSModeAssertionSourceRecord recordForAssertionSource:v12];
    [(DNDSModeAssertionInvalidationRecord *)v4 setSource:v13];

    v14 = [MEMORY[0x277CCACA8] dnds_stringForInvalidationReason:{objc_msgSend(v3, "reason")}];
    [(DNDSModeAssertionInvalidationRecord *)v4 setReason:v14];

    v15 = MEMORY[0x277CCACA8];
    v16 = [v3 reasonOverride];

    v17 = [v15 dnds_stringForInvalidationReasonOverride:v16];
    [(DNDSModeAssertionInvalidationRecord *)v4 setReasonOverride:v17];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)object
{
  v3 = [(DNDSModeAssertionInvalidationRecord *)self assertion];
  v4 = [v3 object];

  v5 = [(DNDSModeAssertionInvalidationRecord *)self invalidationDate];
  v6 = [v5 dnds_dateValue];

  v7 = [(DNDSModeAssertionInvalidationRecord *)self details];
  v8 = [v7 object];
  v9 = [(DNDSModeAssertionInvalidationRecord *)self source];
  v10 = [v9 object];

  v11 = [(DNDSModeAssertionInvalidationRecord *)self reason];
  v12 = [v11 dnds_invalidationReasonValue];
  v13 = [(DNDSModeAssertionInvalidationRecord *)self reasonOverride];
  v14 = [v13 dnds_invalidationReasonOverrideValue];
  v15 = 0;
  if (v4 && v6)
  {
    v15 = 0;
    v16 = v13 && v14 == 0;
    v17 = v16;
    v18 = v11 && v12 == 0;
    v19 = v18;
    v20 = v8 || v7 == 0;
    if (v20 && v10 && !v19 && !v17)
    {
      v15 = [objc_alloc(MEMORY[0x277D05968]) initWithAssertion:v4 invalidationDate:v6 details:v8 source:v10 reason:v12 reasonOverride:v14];
    }
  }

  return v15;
}

@end