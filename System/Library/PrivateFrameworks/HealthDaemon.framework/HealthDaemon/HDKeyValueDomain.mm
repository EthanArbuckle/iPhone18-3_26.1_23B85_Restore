@interface HDKeyValueDomain
+ (id)_wristTemperatureIdentifierDomainWithProfile:(id)profile;
+ (id)healthAppUserDefaultsDomainWithProfile:(id)profile;
- (BOOL)removeValuesForKeys:(id)keys error:(id *)error;
- (BOOL)setData:(id)data forKey:(id)key error:(id *)error;
- (BOOL)setData:(id)data forKey:(id)key syncIdentity:(int64_t)identity error:(id *)error;
- (BOOL)setDate:(id)date forKey:(id)key error:(id *)error;
- (BOOL)setNumber:(id)number forKey:(id)key error:(id *)error;
- (BOOL)setPropertyListValue:(id)value forKey:(id)key error:(id *)error;
- (BOOL)setQuantity:(id)quantity unit:(id)unit forKey:(id)key error:(id *)error;
- (BOOL)setString:(id)string forKey:(id)key error:(id *)error;
- (BOOL)setValueForAllKeys:(id)keys error:(id *)error;
- (BOOL)setValuesWithDictionary:(id)dictionary error:(id *)error;
- (HDKeyValueDomain)initWithCategory:(int64_t)category domainName:(id)name profile:(id)profile;
- (id)_wristTemperatureResolvedSourceIdentifiersBySourceIdentifier;
- (id)_wristTemperatureSerialNumbersBySourceIdentifier;
- (id)allValuesWithError:(id *)error;
- (id)dataForKey:(id)key error:(id *)error;
- (id)dateForKey:(id)key error:(id *)error;
- (id)modificationDatesForKeys:(id)keys error:(id *)error;
- (id)numberForKey:(id)key error:(id *)error;
- (id)propertyListValueForKey:(id)key error:(id *)error;
- (id)quantityForKey:(id)key unit:(id)unit error:(id *)error;
- (id)stringForKey:(id)key error:(id *)error;
- (id)valuesForKeys:(id)keys error:(id *)error;
- (unint64_t)_unitTest_countOfObservers;
- (void)notifyObservers;
- (void)startObservation:(id)observation;
- (void)stopObservation:(id)observation;
@end

@implementation HDKeyValueDomain

+ (id)_wristTemperatureIdentifierDomainWithProfile:(id)profile
{
  profileCopy = profile;
  v4 = [[HDKeyValueDomain alloc] initWithCategory:105 domainName:@"wrist-temperature-identifiers" profile:profileCopy];

  return v4;
}

- (id)_wristTemperatureSerialNumbersBySourceIdentifier
{
  v15 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleInternalInstall = [mEMORY[0x277CCDD30] isAppleInternalInstall];

  if (isAppleInternalInstall)
  {
    v12 = 0;
    v5 = [(HDKeyValueDomain *)self allValuesWithError:&v12];
    v6 = v12;
    v7 = v5;
    if (!v5)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = v6;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "[Wrist Temperature] Failed to retrieve serial numbers by source identifier: %{public}@", buf, 0xCu);
      }

      v7 = MEMORY[0x277CBEC10];
    }

    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_wristTemperatureResolvedSourceIdentifiersBySourceIdentifier
{
  _wristTemperatureSerialNumbersBySourceIdentifier = [(HDKeyValueDomain *)self _wristTemperatureSerialNumbersBySourceIdentifier];
  hk_sortedKeys = [_wristTemperatureSerialNumbersBySourceIdentifier hk_sortedKeys];
  allValues = [_wristTemperatureSerialNumbersBySourceIdentifier allValues];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __109__HDKeyValueDomain_WristTemperatureIdentifiers___wristTemperatureResolvedSourceIdentifiersBySourceIdentifier__block_invoke;
  v13[3] = &unk_2786158A0;
  v14 = hk_sortedKeys;
  v15 = _wristTemperatureSerialNumbersBySourceIdentifier;
  v5 = _wristTemperatureSerialNumbersBySourceIdentifier;
  v6 = hk_sortedKeys;
  v7 = [allValues hk_mapToDictionary:v13];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __109__HDKeyValueDomain_WristTemperatureIdentifiers___wristTemperatureResolvedSourceIdentifiersBySourceIdentifier__block_invoke_3;
  v11[3] = &unk_2786158C8;
  v12 = v7;
  v8 = v7;
  v9 = [v5 hk_map:v11];

  return v9;
}

void __109__HDKeyValueDomain_WristTemperatureIdentifiers___wristTemperatureResolvedSourceIdentifiersBySourceIdentifier__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __109__HDKeyValueDomain_WristTemperatureIdentifiers___wristTemperatureResolvedSourceIdentifiersBySourceIdentifier__block_invoke_2;
  v10[3] = &unk_278615878;
  v6 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v5;
  v7 = v5;
  v8 = a3;
  v9 = [v6 hk_firstObjectPassingTest:v10];
  v8[2](v8, v7, v9);
}

uint64_t __109__HDKeyValueDomain_WristTemperatureIdentifiers___wristTemperatureResolvedSourceIdentifiersBySourceIdentifier__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  return v4;
}

void __109__HDKeyValueDomain_WristTemperatureIdentifiers___wristTemperatureResolvedSourceIdentifiersBySourceIdentifier__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a2;
  v10 = [v7 objectForKeyedSubscript:a3];
  (a4)[2](v8, v9, v10);
}

- (HDKeyValueDomain)initWithCategory:(int64_t)category domainName:(id)name profile:(id)profile
{
  nameCopy = name;
  profileCopy = profile;
  v20.receiver = self;
  v20.super_class = HDKeyValueDomain;
  v10 = [(HDKeyValueDomain *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_category = category;
    v12 = [nameCopy copy];
    domainName = v11->_domainName;
    v11->_domainName = v12;

    objc_storeWeak(&v11->_profile, profileCopy);
    v11->_entityClass = [HDKeyValueEntity _entityClassForKeyValueCategory:category];
    v14 = objc_alloc(MEMORY[0x277CCD738]);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 initWithName:v16 loggingCategory:*MEMORY[0x277CCC2B0]];
    observers = v11->_observers;
    v11->_observers = v17;
  }

  return v11;
}

- (id)dataForKey:(id)key error:(id *)error
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [(objc_class *)entityClass dataForKey:keyCopy domain:domainName category:category profile:WeakRetained entity:0 error:error];

  return v11;
}

- (id)dateForKey:(id)key error:(id *)error
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [(objc_class *)entityClass dateForKey:keyCopy domain:domainName category:category profile:WeakRetained entity:0 error:error];

  return v11;
}

- (id)quantityForKey:(id)key unit:(id)unit error:(id *)error
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  unitCopy = unit;
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v14 = [(objc_class *)entityClass quantityForKey:keyCopy unit:unitCopy domain:domainName category:category profile:WeakRetained entity:0 error:error];

  return v14;
}

- (id)numberForKey:(id)key error:(id *)error
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [(objc_class *)entityClass numberForKey:keyCopy domain:domainName category:category profile:WeakRetained entity:0 error:error];

  return v11;
}

- (id)stringForKey:(id)key error:(id *)error
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [(objc_class *)entityClass stringForKey:keyCopy domain:domainName category:category profile:WeakRetained entity:0 error:error];

  return v11;
}

- (id)propertyListValueForKey:(id)key error:(id *)error
{
  v5 = [(HDKeyValueDomain *)self dataForKey:key error:?];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)valuesForKeys:(id)keys error:(id *)error
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  keysCopy = keys;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [(objc_class *)entityClass valuesForKeys:keysCopy domain:domainName category:category profile:WeakRetained error:error];

  return v11;
}

- (id)allValuesWithError:(id *)error
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [(objc_class *)entityClass allValuesForDomain:domainName category:category profile:WeakRetained error:error];

  return v8;
}

- (id)modificationDatesForKeys:(id)keys error:(id *)error
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  keysCopy = keys;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [(objc_class *)entityClass modificationDatesForKeys:keysCopy domain:domainName category:category profile:WeakRetained error:error];

  return v11;
}

- (BOOL)setData:(id)data forKey:(id)key error:(id *)error
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  keyCopy = key;
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [(objc_class *)entityClass setData:dataCopy forKey:keyCopy domain:domainName category:category profile:WeakRetained error:error];

  return error;
}

- (BOOL)setData:(id)data forKey:(id)key syncIdentity:(int64_t)identity error:(id *)error
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  keyCopy = key;
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [(objc_class *)entityClass setData:dataCopy forKey:keyCopy domain:domainName category:category syncIdentity:identity profile:WeakRetained error:error];

  return error;
}

- (BOOL)setDate:(id)date forKey:(id)key error:(id *)error
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  keyCopy = key;
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [(objc_class *)entityClass setDate:dateCopy forKey:keyCopy domain:domainName category:category profile:WeakRetained error:error];

  return error;
}

- (BOOL)setQuantity:(id)quantity unit:(id)unit forKey:(id)key error:(id *)error
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  keyCopy = key;
  unitCopy = unit;
  quantityCopy = quantity;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [(objc_class *)entityClass setQuantity:quantityCopy unit:unitCopy forKey:keyCopy domain:domainName category:category profile:WeakRetained error:error];

  return error;
}

- (BOOL)setNumber:(id)number forKey:(id)key error:(id *)error
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  keyCopy = key;
  numberCopy = number;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [(objc_class *)entityClass setNumber:numberCopy forKey:keyCopy domain:domainName category:category profile:WeakRetained error:error];

  return error;
}

- (BOOL)setString:(id)string forKey:(id)key error:(id *)error
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  keyCopy = key;
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [(objc_class *)entityClass setString:stringCopy forKey:keyCopy domain:domainName category:category profile:WeakRetained error:error];

  return error;
}

- (BOOL)setPropertyListValue:(id)value forKey:(id)key error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  if (!valueCopy)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:valueCopy format:200 options:0 error:error];
  if (v10)
  {
LABEL_5:
    v11 = [(HDKeyValueDomain *)self setData:v10 forKey:keyCopy error:error];

    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (BOOL)setValuesWithDictionary:(id)dictionary error:(id *)error
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  dictionaryCopy = dictionary;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [(objc_class *)entityClass setValuesWithDictionary:dictionaryCopy domain:domainName category:category profile:WeakRetained error:error];

  return error;
}

- (BOOL)setValueForAllKeys:(id)keys error:(id *)error
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  keysCopy = keys;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [(objc_class *)entityClass setValueForAllKeys:keysCopy domain:domainName category:category profile:WeakRetained error:error];

  return error;
}

- (BOOL)removeValuesForKeys:(id)keys error:(id *)error
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  allObjects = [keys allObjects];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [(objc_class *)entityClass removeValuesForDomain:domainName category:category keys:allObjects profile:WeakRetained error:error];

  return error;
}

- (void)startObservation:(id)observation
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__HDKeyValueDomain_startObservation___block_invoke;
  v4[3] = &unk_278613968;
  v4[4] = self;
  [(HKObserverSet *)observers registerObserver:observation queue:0 runIfFirstObserver:v4];
}

void __37__HDKeyValueDomain_startObservation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = [WeakRetained keyValueDomainManager];
  [v2 startObservationForDomain:*(a1 + 32)];
}

- (void)stopObservation:(id)observation
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__HDKeyValueDomain_stopObservation___block_invoke;
  v4[3] = &unk_278613968;
  v4[4] = self;
  [(HKObserverSet *)observers unregisterObserver:observation runIfLastObserver:v4];
}

void __36__HDKeyValueDomain_stopObservation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = [WeakRetained keyValueDomainManager];
  [v2 stopObservationForDomain:*(a1 + 32)];
}

- (void)notifyObservers
{
  observers = self->_observers;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__HDKeyValueDomain_notifyObservers__block_invoke;
  v3[3] = &unk_2786256E0;
  v3[4] = self;
  [(HKObserverSet *)observers notifyObservers:v3];
}

- (unint64_t)_unitTest_countOfObservers
{
  allObservers = [(HKObserverSet *)self->_observers allObservers];
  v3 = [allObservers count];

  return v3;
}

+ (id)healthAppUserDefaultsDomainWithProfile:(id)profile
{
  profileCopy = profile;
  v4 = [HDKeyValueDomain alloc];
  v5 = [(HDKeyValueDomain *)v4 initWithCategory:102 domainName:*MEMORY[0x277CCE3A8] profile:profileCopy];

  return v5;
}

@end