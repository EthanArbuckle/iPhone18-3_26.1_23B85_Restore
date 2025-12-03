@interface DNDSModeAssertionInvalidationRecord
+ (id)recordForDictionary:(id)dictionary keys:(id *)keys;
+ (id)recordForInvalidation:(id)invalidation;
- (id)dictionaryWithKeys:(id *)keys options:(unint64_t)options;
- (id)object;
@end

@implementation DNDSModeAssertionInvalidationRecord

+ (id)recordForDictionary:(id)dictionary keys:(id *)keys
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v6 = objc_alloc_init(DNDSModeAssertionInvalidationRecord);
    v7 = [dictionaryCopy bs_safeDictionaryForKey:keys->var5.var0];
    v8 = [DNDSModeAssertionRecord recordForDictionary:v7 keys:keys];
    [(DNDSModeAssertionInvalidationRecord *)v6 setAssertion:v8];

    v9 = [dictionaryCopy bs_safeNumberForKey:keys->var5.var1];
    [(DNDSModeAssertionInvalidationRecord *)v6 setInvalidationDate:v9];

    v10 = [dictionaryCopy bs_safeDictionaryForKey:keys->var5.var2];
    v11 = [DNDSModeAssertionInvalidationDetailsRecord recordForDictionary:v10 keys:keys];
    [(DNDSModeAssertionInvalidationRecord *)v6 setDetails:v11];

    v12 = [dictionaryCopy bs_safeDictionaryForKey:keys->var5.var3];
    v13 = [DNDSModeAssertionSourceRecord recordForDictionary:v12 keys:keys];
    [(DNDSModeAssertionInvalidationRecord *)v6 setSource:v13];

    v14 = [dictionaryCopy bs_safeStringForKey:keys->var5.var4];
    [(DNDSModeAssertionInvalidationRecord *)v6 setReason:v14];

    v15 = [dictionaryCopy bs_safeStringForKey:keys->var5.var5];

    [(DNDSModeAssertionInvalidationRecord *)v6 setReasonOverride:v15];
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
  assertion = [(DNDSModeAssertionInvalidationRecord *)self assertion];
  v9 = [assertion dictionaryWithKeys:keys options:options];
  [dictionary bs_setSafeObject:v9 forKey:keys->var5.var0];

  invalidationDate = [(DNDSModeAssertionInvalidationRecord *)self invalidationDate];
  [dictionary bs_setSafeObject:invalidationDate forKey:keys->var5.var1];

  details = [(DNDSModeAssertionInvalidationRecord *)self details];
  v12 = [details dictionaryWithKeys:keys options:options];
  [dictionary bs_setSafeObject:v12 forKey:keys->var5.var2];

  source = [(DNDSModeAssertionInvalidationRecord *)self source];
  v14 = [source dictionaryWithKeys:keys options:options];
  [dictionary bs_setSafeObject:v14 forKey:keys->var5.var3];

  reason = [(DNDSModeAssertionInvalidationRecord *)self reason];
  [dictionary bs_setSafeObject:reason forKey:keys->var5.var4];

  reasonOverride = [(DNDSModeAssertionInvalidationRecord *)self reasonOverride];
  [dictionary bs_setSafeObject:reasonOverride forKey:keys->var5.var5];

  if (options)
  {
    invalidationDate2 = [(DNDSModeAssertionInvalidationRecord *)self invalidationDate];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Local", keys->var5.var1];
    [dictionary dnds_setSafeLocalDateForTimestamp:invalidationDate2 key:v18];
  }

  return dictionary;
}

+ (id)recordForInvalidation:(id)invalidation
{
  if (invalidation)
  {
    invalidationCopy = invalidation;
    v4 = objc_alloc_init(DNDSModeAssertionInvalidationRecord);
    assertion = [invalidationCopy assertion];
    v6 = [DNDSModeAssertionRecord recordForAssertion:assertion];
    [(DNDSModeAssertionInvalidationRecord *)v4 setAssertion:v6];

    v7 = MEMORY[0x277CCABB0];
    invalidationDate = [invalidationCopy invalidationDate];
    v9 = [v7 dnds_numberWithDate:invalidationDate];
    [(DNDSModeAssertionInvalidationRecord *)v4 setInvalidationDate:v9];

    details = [invalidationCopy details];
    v11 = [DNDSModeAssertionInvalidationDetailsRecord recordForInvalidationDetails:details];
    [(DNDSModeAssertionInvalidationRecord *)v4 setDetails:v11];

    source = [invalidationCopy source];
    v13 = [DNDSModeAssertionSourceRecord recordForAssertionSource:source];
    [(DNDSModeAssertionInvalidationRecord *)v4 setSource:v13];

    v14 = [MEMORY[0x277CCACA8] dnds_stringForInvalidationReason:{objc_msgSend(invalidationCopy, "reason")}];
    [(DNDSModeAssertionInvalidationRecord *)v4 setReason:v14];

    v15 = MEMORY[0x277CCACA8];
    reasonOverride = [invalidationCopy reasonOverride];

    v17 = [v15 dnds_stringForInvalidationReasonOverride:reasonOverride];
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
  assertion = [(DNDSModeAssertionInvalidationRecord *)self assertion];
  object = [assertion object];

  invalidationDate = [(DNDSModeAssertionInvalidationRecord *)self invalidationDate];
  dnds_dateValue = [invalidationDate dnds_dateValue];

  details = [(DNDSModeAssertionInvalidationRecord *)self details];
  object2 = [details object];
  source = [(DNDSModeAssertionInvalidationRecord *)self source];
  object3 = [source object];

  reason = [(DNDSModeAssertionInvalidationRecord *)self reason];
  dnds_invalidationReasonValue = [reason dnds_invalidationReasonValue];
  reasonOverride = [(DNDSModeAssertionInvalidationRecord *)self reasonOverride];
  dnds_invalidationReasonOverrideValue = [reasonOverride dnds_invalidationReasonOverrideValue];
  v15 = 0;
  if (object && dnds_dateValue)
  {
    v15 = 0;
    v16 = reasonOverride && dnds_invalidationReasonOverrideValue == 0;
    v17 = v16;
    v18 = reason && dnds_invalidationReasonValue == 0;
    v19 = v18;
    v20 = object2 || details == 0;
    if (v20 && object3 && !v19 && !v17)
    {
      v15 = [objc_alloc(MEMORY[0x277D05968]) initWithAssertion:object invalidationDate:dnds_dateValue details:object2 source:object3 reason:dnds_invalidationReasonValue reasonOverride:dnds_invalidationReasonOverrideValue];
    }
  }

  return v15;
}

@end