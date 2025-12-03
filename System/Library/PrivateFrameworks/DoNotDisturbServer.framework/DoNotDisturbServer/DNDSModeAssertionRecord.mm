@interface DNDSModeAssertionRecord
+ (id)recordForAssertion:(id)assertion;
+ (id)recordForDictionary:(id)dictionary keys:(id *)keys;
- (id)dictionaryWithKeys:(id *)keys options:(unint64_t)options;
- (id)object;
@end

@implementation DNDSModeAssertionRecord

+ (id)recordForDictionary:(id)dictionary keys:(id *)keys
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v6 = objc_alloc_init(DNDSModeAssertionRecord);
    v7 = [dictionaryCopy bs_safeStringForKey:keys->var1.var0];
    [(DNDSModeAssertionRecord *)v6 setUUID:v7];

    v8 = [dictionaryCopy bs_safeNumberForKey:keys->var1.var1];
    [(DNDSModeAssertionRecord *)v6 setStartDate:v8];

    v9 = [dictionaryCopy bs_safeDictionaryForKey:keys->var1.var2];
    v10 = [DNDSModeAssertionDetailsRecord recordForDictionary:v9 keys:keys];
    [(DNDSModeAssertionRecord *)v6 setDetails:v10];

    v11 = [dictionaryCopy bs_safeDictionaryForKey:keys->var1.var3];

    v12 = [DNDSModeAssertionSourceRecord recordForDictionary:v11 keys:keys];
    [(DNDSModeAssertionRecord *)v6 setSource:v12];
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
  uUID = [(DNDSModeAssertionRecord *)self UUID];
  [dictionary bs_setSafeObject:uUID forKey:keys->var1.var0];

  startDate = [(DNDSModeAssertionRecord *)self startDate];
  [dictionary bs_setSafeObject:startDate forKey:keys->var1.var1];

  details = [(DNDSModeAssertionRecord *)self details];
  v11 = [details dictionaryWithKeys:keys options:options];
  [dictionary bs_setSafeObject:v11 forKey:keys->var1.var2];

  source = [(DNDSModeAssertionRecord *)self source];
  v13 = [source dictionaryWithKeys:keys options:options];
  [dictionary bs_setSafeObject:v13 forKey:keys->var1.var3];

  if (options)
  {
    startDate2 = [(DNDSModeAssertionRecord *)self startDate];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Local", keys->var1.var1];
    [dictionary dnds_setSafeLocalDateForTimestamp:startDate2 key:v15];
  }

  return dictionary;
}

+ (id)recordForAssertion:(id)assertion
{
  if (assertion)
  {
    assertionCopy = assertion;
    v4 = objc_alloc_init(DNDSModeAssertionRecord);
    uUID = [assertionCopy UUID];
    uUIDString = [uUID UUIDString];
    [(DNDSModeAssertionRecord *)v4 setUUID:uUIDString];

    v7 = MEMORY[0x277CCABB0];
    startDate = [assertionCopy startDate];
    v9 = [v7 dnds_numberWithDate:startDate];
    [(DNDSModeAssertionRecord *)v4 setStartDate:v9];

    details = [assertionCopy details];
    v11 = [DNDSModeAssertionDetailsRecord recordForAssertionDetails:details];
    [(DNDSModeAssertionRecord *)v4 setDetails:v11];

    source = [assertionCopy source];

    v13 = [DNDSModeAssertionSourceRecord recordForAssertionSource:source];
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
  uUID = [(DNDSModeAssertionRecord *)self UUID];
  if (uUID)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    uUID2 = [(DNDSModeAssertionRecord *)self UUID];
    v6 = [v4 initWithUUIDString:uUID2];
  }

  else
  {
    v6 = 0;
  }

  startDate = [(DNDSModeAssertionRecord *)self startDate];
  dnds_dateValue = [startDate dnds_dateValue];

  details = [(DNDSModeAssertionRecord *)self details];
  object = [details object];

  source = [(DNDSModeAssertionRecord *)self source];
  object2 = [source object];

  v13 = 0;
  if (v6 && dnds_dateValue && object && object2)
  {
    v13 = [objc_alloc(MEMORY[0x277D05938]) initWithUUID:v6 startDate:dnds_dateValue details:object source:object2];
  }

  return v13;
}

@end