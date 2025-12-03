@interface DNDSModeAssertionSourceRecord
+ (id)recordForAssertionSource:(id)source;
+ (id)recordForDictionary:(id)dictionary keys:(id *)keys;
- (id)dictionaryWithKeys:(id *)keys options:(unint64_t)options;
- (id)object;
@end

@implementation DNDSModeAssertionSourceRecord

+ (id)recordForDictionary:(id)dictionary keys:(id *)keys
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v6 = objc_alloc_init(DNDSModeAssertionSourceRecord);
    v7 = [dictionaryCopy bs_safeStringForKey:keys->var4.var0];
    [(DNDSModeAssertionSourceRecord *)v6 setClientIdentifier:v7];

    v8 = [dictionaryCopy bs_safeStringForKey:keys->var4.var1];

    [(DNDSModeAssertionSourceRecord *)v6 setDeviceIdentifier:v8];
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
  clientIdentifier = [(DNDSModeAssertionSourceRecord *)self clientIdentifier];
  [dictionary bs_setSafeObject:clientIdentifier forKey:keys->var4.var0];

  deviceIdentifier = [(DNDSModeAssertionSourceRecord *)self deviceIdentifier];
  [dictionary bs_setSafeObject:deviceIdentifier forKey:keys->var4.var1];

  return dictionary;
}

+ (id)recordForAssertionSource:(id)source
{
  if (source)
  {
    sourceCopy = source;
    v4 = objc_alloc_init(DNDSModeAssertionSourceRecord);
    clientIdentifier = [sourceCopy clientIdentifier];
    [(DNDSModeAssertionSourceRecord *)v4 setClientIdentifier:clientIdentifier];

    deviceIdentifier = [sourceCopy deviceIdentifier];

    [(DNDSModeAssertionSourceRecord *)v4 setDeviceIdentifier:deviceIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)object
{
  clientIdentifier = [(DNDSModeAssertionSourceRecord *)self clientIdentifier];
  deviceIdentifier = [(DNDSModeAssertionSourceRecord *)self deviceIdentifier];
  if (clientIdentifier)
  {
    v5 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:clientIdentifier deviceIdentifier:deviceIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end