@interface DNDSModeAssertionInvalidationRequestRecord
+ (id)recordForDictionary:(id)a3 keys:(id *)a4;
+ (id)recordForInvalidationRequest:(id)a3;
- (id)dictionaryWithKeys:(id *)a3 options:(unint64_t)a4;
- (id)object;
@end

@implementation DNDSModeAssertionInvalidationRequestRecord

+ (id)recordForDictionary:(id)a3 keys:(id *)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = objc_alloc_init(DNDSModeAssertionInvalidationRequestRecord);
    v7 = [v5 bs_safeStringForKey:a4->var7.var0];
    [(DNDSModeAssertionInvalidationRequestRecord *)v6 setUUID:v7];

    v8 = [v5 bs_safeDictionaryForKey:a4->var7.var1];
    v9 = [DNDSModeAssertionInvalidationPredicateRecord recordForDictionary:v8 keys:a4];
    [(DNDSModeAssertionInvalidationRequestRecord *)v6 setPredicate:v9];

    v10 = [v5 bs_safeNumberForKey:a4->var7.var2];
    [(DNDSModeAssertionInvalidationRequestRecord *)v6 setRequestDate:v10];

    v11 = [v5 bs_safeDictionaryForKey:a4->var7.var3];
    v12 = [DNDSModeAssertionInvalidationDetailsRecord recordForDictionary:v11 keys:a4];
    [(DNDSModeAssertionInvalidationRequestRecord *)v6 setDetails:v12];

    v13 = [v5 bs_safeDictionaryForKey:a4->var7.var4];
    v14 = [DNDSModeAssertionSourceRecord recordForDictionary:v13 keys:a4];
    [(DNDSModeAssertionInvalidationRequestRecord *)v6 setSource:v14];

    v15 = [v5 bs_safeStringForKey:a4->var7.var5];
    [(DNDSModeAssertionInvalidationRequestRecord *)v6 setReason:v15];

    v16 = [v5 bs_safeStringForKey:a4->var7.var6];

    [(DNDSModeAssertionInvalidationRequestRecord *)v6 setReasonOverride:v16];
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
  v8 = [(DNDSModeAssertionInvalidationRequestRecord *)self UUID];
  [v7 bs_setSafeObject:v8 forKey:a3->var7.var0];

  v9 = [(DNDSModeAssertionInvalidationRequestRecord *)self predicate];
  v10 = [v9 dictionaryWithKeys:a3 options:a4];
  [v7 bs_setSafeObject:v10 forKey:a3->var7.var1];

  v11 = [(DNDSModeAssertionInvalidationRequestRecord *)self requestDate];
  [v7 bs_setSafeObject:v11 forKey:a3->var7.var2];

  v12 = [(DNDSModeAssertionInvalidationRequestRecord *)self details];
  v13 = [v12 dictionaryWithKeys:a3 options:a4];
  [v7 bs_setSafeObject:v13 forKey:a3->var7.var3];

  v14 = [(DNDSModeAssertionInvalidationRequestRecord *)self source];
  v15 = [v14 dictionaryWithKeys:a3 options:a4];
  [v7 bs_setSafeObject:v15 forKey:a3->var7.var4];

  v16 = [(DNDSModeAssertionInvalidationRequestRecord *)self reason];
  [v7 bs_setSafeObject:v16 forKey:a3->var7.var5];

  v17 = [(DNDSModeAssertionInvalidationRequestRecord *)self reasonOverride];
  [v7 bs_setSafeObject:v17 forKey:a3->var7.var6];

  if (a4)
  {
    v18 = [(DNDSModeAssertionInvalidationRequestRecord *)self requestDate];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Local", a3->var7.var2];
    [v7 dnds_setSafeLocalDateForTimestamp:v18 key:v19];
  }

  return v7;
}

+ (id)recordForInvalidationRequest:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(DNDSModeAssertionInvalidationRequestRecord);
    v5 = [v3 UUID];
    v6 = [v5 UUIDString];
    [(DNDSModeAssertionInvalidationRequestRecord *)v4 setUUID:v6];

    v7 = [v3 predicate];
    v8 = [DNDSModeAssertionInvalidationPredicateRecord recordForInvalidationPredicate:v7];
    [(DNDSModeAssertionInvalidationRequestRecord *)v4 setPredicate:v8];

    v9 = MEMORY[0x277CCABB0];
    v10 = [v3 requestDate];
    v11 = [v9 dnds_numberWithDate:v10];
    [(DNDSModeAssertionInvalidationRequestRecord *)v4 setRequestDate:v11];

    v12 = [v3 details];
    v13 = [DNDSModeAssertionInvalidationDetailsRecord recordForInvalidationDetails:v12];
    [(DNDSModeAssertionInvalidationRequestRecord *)v4 setDetails:v13];

    v14 = [v3 source];
    v15 = [DNDSModeAssertionSourceRecord recordForAssertionSource:v14];
    [(DNDSModeAssertionInvalidationRequestRecord *)v4 setSource:v15];

    v16 = [MEMORY[0x277CCACA8] dnds_stringForInvalidationReason:{objc_msgSend(v3, "reason")}];
    [(DNDSModeAssertionInvalidationRequestRecord *)v4 setReason:v16];

    v17 = MEMORY[0x277CCACA8];
    v18 = [v3 reasonOverride];

    v19 = [v17 dnds_stringForInvalidationReasonOverride:v18];
    [(DNDSModeAssertionInvalidationRequestRecord *)v4 setReasonOverride:v19];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)object
{
  v3 = [(DNDSModeAssertionInvalidationRequestRecord *)self UUID];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    v5 = [(DNDSModeAssertionInvalidationRequestRecord *)self UUID];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(DNDSModeAssertionInvalidationRequestRecord *)self predicate];
  v8 = [v7 object];

  v9 = [(DNDSModeAssertionInvalidationRequestRecord *)self requestDate];
  v10 = [v9 dnds_dateValue];

  v11 = [(DNDSModeAssertionInvalidationRequestRecord *)self details];
  v12 = [v11 object];
  v13 = [(DNDSModeAssertionInvalidationRequestRecord *)self source];
  v14 = [v13 object];

  v15 = [(DNDSModeAssertionInvalidationRequestRecord *)self reason];
  v25 = [v15 dnds_invalidationReasonValue];
  v16 = [(DNDSModeAssertionInvalidationRequestRecord *)self reasonOverride];
  v17 = [v16 dnds_invalidationReasonOverrideValue];
  v18 = 0;
  if (v6 && v8 && v10)
  {
    v18 = 0;
    v19 = v16 && v17 == 0;
    v20 = v19;
    v21 = v15 && v25 == 0;
    v22 = v21;
    v23 = v12 || v11 == 0;
    if (v23 && v14 && !v22 && !v20)
    {
      v18 = [[DNDSModeAssertionInvalidationRequest alloc] initWithUUID:v6 predicate:v8 requestDate:v10 details:v12 source:v14 reason:v25 reasonOverride:v17];
    }
  }

  return v18;
}

@end