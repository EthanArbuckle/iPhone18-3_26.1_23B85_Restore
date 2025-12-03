@interface DNDSModeAssertionInvalidationRequestRecord
+ (id)recordForDictionary:(id)dictionary keys:(id *)keys;
+ (id)recordForInvalidationRequest:(id)request;
- (id)dictionaryWithKeys:(id *)keys options:(unint64_t)options;
- (id)object;
@end

@implementation DNDSModeAssertionInvalidationRequestRecord

+ (id)recordForDictionary:(id)dictionary keys:(id *)keys
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v6 = objc_alloc_init(DNDSModeAssertionInvalidationRequestRecord);
    v7 = [dictionaryCopy bs_safeStringForKey:keys->var7.var0];
    [(DNDSModeAssertionInvalidationRequestRecord *)v6 setUUID:v7];

    v8 = [dictionaryCopy bs_safeDictionaryForKey:keys->var7.var1];
    v9 = [DNDSModeAssertionInvalidationPredicateRecord recordForDictionary:v8 keys:keys];
    [(DNDSModeAssertionInvalidationRequestRecord *)v6 setPredicate:v9];

    v10 = [dictionaryCopy bs_safeNumberForKey:keys->var7.var2];
    [(DNDSModeAssertionInvalidationRequestRecord *)v6 setRequestDate:v10];

    v11 = [dictionaryCopy bs_safeDictionaryForKey:keys->var7.var3];
    v12 = [DNDSModeAssertionInvalidationDetailsRecord recordForDictionary:v11 keys:keys];
    [(DNDSModeAssertionInvalidationRequestRecord *)v6 setDetails:v12];

    v13 = [dictionaryCopy bs_safeDictionaryForKey:keys->var7.var4];
    v14 = [DNDSModeAssertionSourceRecord recordForDictionary:v13 keys:keys];
    [(DNDSModeAssertionInvalidationRequestRecord *)v6 setSource:v14];

    v15 = [dictionaryCopy bs_safeStringForKey:keys->var7.var5];
    [(DNDSModeAssertionInvalidationRequestRecord *)v6 setReason:v15];

    v16 = [dictionaryCopy bs_safeStringForKey:keys->var7.var6];

    [(DNDSModeAssertionInvalidationRequestRecord *)v6 setReasonOverride:v16];
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
  uUID = [(DNDSModeAssertionInvalidationRequestRecord *)self UUID];
  [dictionary bs_setSafeObject:uUID forKey:keys->var7.var0];

  predicate = [(DNDSModeAssertionInvalidationRequestRecord *)self predicate];
  v10 = [predicate dictionaryWithKeys:keys options:options];
  [dictionary bs_setSafeObject:v10 forKey:keys->var7.var1];

  requestDate = [(DNDSModeAssertionInvalidationRequestRecord *)self requestDate];
  [dictionary bs_setSafeObject:requestDate forKey:keys->var7.var2];

  details = [(DNDSModeAssertionInvalidationRequestRecord *)self details];
  v13 = [details dictionaryWithKeys:keys options:options];
  [dictionary bs_setSafeObject:v13 forKey:keys->var7.var3];

  source = [(DNDSModeAssertionInvalidationRequestRecord *)self source];
  v15 = [source dictionaryWithKeys:keys options:options];
  [dictionary bs_setSafeObject:v15 forKey:keys->var7.var4];

  reason = [(DNDSModeAssertionInvalidationRequestRecord *)self reason];
  [dictionary bs_setSafeObject:reason forKey:keys->var7.var5];

  reasonOverride = [(DNDSModeAssertionInvalidationRequestRecord *)self reasonOverride];
  [dictionary bs_setSafeObject:reasonOverride forKey:keys->var7.var6];

  if (options)
  {
    requestDate2 = [(DNDSModeAssertionInvalidationRequestRecord *)self requestDate];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Local", keys->var7.var2];
    [dictionary dnds_setSafeLocalDateForTimestamp:requestDate2 key:v19];
  }

  return dictionary;
}

+ (id)recordForInvalidationRequest:(id)request
{
  if (request)
  {
    requestCopy = request;
    v4 = objc_alloc_init(DNDSModeAssertionInvalidationRequestRecord);
    uUID = [requestCopy UUID];
    uUIDString = [uUID UUIDString];
    [(DNDSModeAssertionInvalidationRequestRecord *)v4 setUUID:uUIDString];

    predicate = [requestCopy predicate];
    v8 = [DNDSModeAssertionInvalidationPredicateRecord recordForInvalidationPredicate:predicate];
    [(DNDSModeAssertionInvalidationRequestRecord *)v4 setPredicate:v8];

    v9 = MEMORY[0x277CCABB0];
    requestDate = [requestCopy requestDate];
    v11 = [v9 dnds_numberWithDate:requestDate];
    [(DNDSModeAssertionInvalidationRequestRecord *)v4 setRequestDate:v11];

    details = [requestCopy details];
    v13 = [DNDSModeAssertionInvalidationDetailsRecord recordForInvalidationDetails:details];
    [(DNDSModeAssertionInvalidationRequestRecord *)v4 setDetails:v13];

    source = [requestCopy source];
    v15 = [DNDSModeAssertionSourceRecord recordForAssertionSource:source];
    [(DNDSModeAssertionInvalidationRequestRecord *)v4 setSource:v15];

    v16 = [MEMORY[0x277CCACA8] dnds_stringForInvalidationReason:{objc_msgSend(requestCopy, "reason")}];
    [(DNDSModeAssertionInvalidationRequestRecord *)v4 setReason:v16];

    v17 = MEMORY[0x277CCACA8];
    reasonOverride = [requestCopy reasonOverride];

    v19 = [v17 dnds_stringForInvalidationReasonOverride:reasonOverride];
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
  uUID = [(DNDSModeAssertionInvalidationRequestRecord *)self UUID];
  if (uUID)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    uUID2 = [(DNDSModeAssertionInvalidationRequestRecord *)self UUID];
    v6 = [v4 initWithUUIDString:uUID2];
  }

  else
  {
    v6 = 0;
  }

  predicate = [(DNDSModeAssertionInvalidationRequestRecord *)self predicate];
  object = [predicate object];

  requestDate = [(DNDSModeAssertionInvalidationRequestRecord *)self requestDate];
  dnds_dateValue = [requestDate dnds_dateValue];

  details = [(DNDSModeAssertionInvalidationRequestRecord *)self details];
  object2 = [details object];
  source = [(DNDSModeAssertionInvalidationRequestRecord *)self source];
  object3 = [source object];

  reason = [(DNDSModeAssertionInvalidationRequestRecord *)self reason];
  dnds_invalidationReasonValue = [reason dnds_invalidationReasonValue];
  reasonOverride = [(DNDSModeAssertionInvalidationRequestRecord *)self reasonOverride];
  dnds_invalidationReasonOverrideValue = [reasonOverride dnds_invalidationReasonOverrideValue];
  v18 = 0;
  if (v6 && object && dnds_dateValue)
  {
    v18 = 0;
    v19 = reasonOverride && dnds_invalidationReasonOverrideValue == 0;
    v20 = v19;
    v21 = reason && dnds_invalidationReasonValue == 0;
    v22 = v21;
    v23 = object2 || details == 0;
    if (v23 && object3 && !v22 && !v20)
    {
      v18 = [[DNDSModeAssertionInvalidationRequest alloc] initWithUUID:v6 predicate:object requestDate:dnds_dateValue details:object2 source:object3 reason:dnds_invalidationReasonValue reasonOverride:dnds_invalidationReasonOverrideValue];
    }
  }

  return v18;
}

@end