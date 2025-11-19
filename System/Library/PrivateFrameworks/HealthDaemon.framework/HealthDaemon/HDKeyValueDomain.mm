@interface HDKeyValueDomain
+ (id)_wristTemperatureIdentifierDomainWithProfile:(id)a3;
+ (id)healthAppUserDefaultsDomainWithProfile:(id)a3;
- (BOOL)removeValuesForKeys:(id)a3 error:(id *)a4;
- (BOOL)setData:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)setData:(id)a3 forKey:(id)a4 syncIdentity:(int64_t)a5 error:(id *)a6;
- (BOOL)setDate:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)setNumber:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)setPropertyListValue:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)setQuantity:(id)a3 unit:(id)a4 forKey:(id)a5 error:(id *)a6;
- (BOOL)setString:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)setValueForAllKeys:(id)a3 error:(id *)a4;
- (BOOL)setValuesWithDictionary:(id)a3 error:(id *)a4;
- (HDKeyValueDomain)initWithCategory:(int64_t)a3 domainName:(id)a4 profile:(id)a5;
- (id)_wristTemperatureResolvedSourceIdentifiersBySourceIdentifier;
- (id)_wristTemperatureSerialNumbersBySourceIdentifier;
- (id)allValuesWithError:(id *)a3;
- (id)dataForKey:(id)a3 error:(id *)a4;
- (id)dateForKey:(id)a3 error:(id *)a4;
- (id)modificationDatesForKeys:(id)a3 error:(id *)a4;
- (id)numberForKey:(id)a3 error:(id *)a4;
- (id)propertyListValueForKey:(id)a3 error:(id *)a4;
- (id)quantityForKey:(id)a3 unit:(id)a4 error:(id *)a5;
- (id)stringForKey:(id)a3 error:(id *)a4;
- (id)valuesForKeys:(id)a3 error:(id *)a4;
- (unint64_t)_unitTest_countOfObservers;
- (void)notifyObservers;
- (void)startObservation:(id)a3;
- (void)stopObservation:(id)a3;
@end

@implementation HDKeyValueDomain

+ (id)_wristTemperatureIdentifierDomainWithProfile:(id)a3
{
  v3 = a3;
  v4 = [[HDKeyValueDomain alloc] initWithCategory:105 domainName:@"wrist-temperature-identifiers" profile:v3];

  return v4;
}

- (id)_wristTemperatureSerialNumbersBySourceIdentifier
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleInternalInstall];

  if (v4)
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
  v2 = [(HDKeyValueDomain *)self _wristTemperatureSerialNumbersBySourceIdentifier];
  v3 = [v2 hk_sortedKeys];
  v4 = [v2 allValues];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __109__HDKeyValueDomain_WristTemperatureIdentifiers___wristTemperatureResolvedSourceIdentifiersBySourceIdentifier__block_invoke;
  v13[3] = &unk_2786158A0;
  v14 = v3;
  v15 = v2;
  v5 = v2;
  v6 = v3;
  v7 = [v4 hk_mapToDictionary:v13];

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

- (HDKeyValueDomain)initWithCategory:(int64_t)a3 domainName:(id)a4 profile:(id)a5
{
  v8 = a4;
  v9 = a5;
  v20.receiver = self;
  v20.super_class = HDKeyValueDomain;
  v10 = [(HDKeyValueDomain *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_category = a3;
    v12 = [v8 copy];
    domainName = v11->_domainName;
    v11->_domainName = v12;

    objc_storeWeak(&v11->_profile, v9);
    v11->_entityClass = [HDKeyValueEntity _entityClassForKeyValueCategory:a3];
    v14 = objc_alloc(MEMORY[0x277CCD738]);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 initWithName:v16 loggingCategory:*MEMORY[0x277CCC2B0]];
    observers = v11->_observers;
    v11->_observers = v17;
  }

  return v11;
}

- (id)dataForKey:(id)a3 error:(id *)a4
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [(objc_class *)entityClass dataForKey:v9 domain:domainName category:category profile:WeakRetained entity:0 error:a4];

  return v11;
}

- (id)dateForKey:(id)a3 error:(id *)a4
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [(objc_class *)entityClass dateForKey:v9 domain:domainName category:category profile:WeakRetained entity:0 error:a4];

  return v11;
}

- (id)quantityForKey:(id)a3 unit:(id)a4 error:(id *)a5
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  v11 = a4;
  v12 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v14 = [(objc_class *)entityClass quantityForKey:v12 unit:v11 domain:domainName category:category profile:WeakRetained entity:0 error:a5];

  return v14;
}

- (id)numberForKey:(id)a3 error:(id *)a4
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [(objc_class *)entityClass numberForKey:v9 domain:domainName category:category profile:WeakRetained entity:0 error:a4];

  return v11;
}

- (id)stringForKey:(id)a3 error:(id *)a4
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [(objc_class *)entityClass stringForKey:v9 domain:domainName category:category profile:WeakRetained entity:0 error:a4];

  return v11;
}

- (id)propertyListValueForKey:(id)a3 error:(id *)a4
{
  v5 = [(HDKeyValueDomain *)self dataForKey:a3 error:?];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:a4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)valuesForKeys:(id)a3 error:(id *)a4
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [(objc_class *)entityClass valuesForKeys:v9 domain:domainName category:category profile:WeakRetained error:a4];

  return v11;
}

- (id)allValuesWithError:(id *)a3
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [(objc_class *)entityClass allValuesForDomain:domainName category:category profile:WeakRetained error:a3];

  return v8;
}

- (id)modificationDatesForKeys:(id)a3 error:(id *)a4
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [(objc_class *)entityClass modificationDatesForKeys:v9 domain:domainName category:category profile:WeakRetained error:a4];

  return v11;
}

- (BOOL)setData:(id)a3 forKey:(id)a4 error:(id *)a5
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  v11 = a4;
  v12 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a5) = [(objc_class *)entityClass setData:v12 forKey:v11 domain:domainName category:category profile:WeakRetained error:a5];

  return a5;
}

- (BOOL)setData:(id)a3 forKey:(id)a4 syncIdentity:(int64_t)a5 error:(id *)a6
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  v13 = a4;
  v14 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a6) = [(objc_class *)entityClass setData:v14 forKey:v13 domain:domainName category:category syncIdentity:a5 profile:WeakRetained error:a6];

  return a6;
}

- (BOOL)setDate:(id)a3 forKey:(id)a4 error:(id *)a5
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  v11 = a4;
  v12 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a5) = [(objc_class *)entityClass setDate:v12 forKey:v11 domain:domainName category:category profile:WeakRetained error:a5];

  return a5;
}

- (BOOL)setQuantity:(id)a3 unit:(id)a4 forKey:(id)a5 error:(id *)a6
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a6) = [(objc_class *)entityClass setQuantity:v15 unit:v14 forKey:v13 domain:domainName category:category profile:WeakRetained error:a6];

  return a6;
}

- (BOOL)setNumber:(id)a3 forKey:(id)a4 error:(id *)a5
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  v11 = a4;
  v12 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a5) = [(objc_class *)entityClass setNumber:v12 forKey:v11 domain:domainName category:category profile:WeakRetained error:a5];

  return a5;
}

- (BOOL)setString:(id)a3 forKey:(id)a4 error:(id *)a5
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  v11 = a4;
  v12 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a5) = [(objc_class *)entityClass setString:v12 forKey:v11 domain:domainName category:category profile:WeakRetained error:a5];

  return a5;
}

- (BOOL)setPropertyListValue:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:v8 format:200 options:0 error:a5];
  if (v10)
  {
LABEL_5:
    v11 = [(HDKeyValueDomain *)self setData:v10 forKey:v9 error:a5];

    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (BOOL)setValuesWithDictionary:(id)a3 error:(id *)a4
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a4) = [(objc_class *)entityClass setValuesWithDictionary:v9 domain:domainName category:category profile:WeakRetained error:a4];

  return a4;
}

- (BOOL)setValueForAllKeys:(id)a3 error:(id *)a4
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a4) = [(objc_class *)entityClass setValueForAllKeys:v9 domain:domainName category:category profile:WeakRetained error:a4];

  return a4;
}

- (BOOL)removeValuesForKeys:(id)a3 error:(id *)a4
{
  entityClass = self->_entityClass;
  category = self->_category;
  domainName = self->_domainName;
  v9 = [a3 allObjects];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a4) = [(objc_class *)entityClass removeValuesForDomain:domainName category:category keys:v9 profile:WeakRetained error:a4];

  return a4;
}

- (void)startObservation:(id)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__HDKeyValueDomain_startObservation___block_invoke;
  v4[3] = &unk_278613968;
  v4[4] = self;
  [(HKObserverSet *)observers registerObserver:a3 queue:0 runIfFirstObserver:v4];
}

void __37__HDKeyValueDomain_startObservation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = [WeakRetained keyValueDomainManager];
  [v2 startObservationForDomain:*(a1 + 32)];
}

- (void)stopObservation:(id)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__HDKeyValueDomain_stopObservation___block_invoke;
  v4[3] = &unk_278613968;
  v4[4] = self;
  [(HKObserverSet *)observers unregisterObserver:a3 runIfLastObserver:v4];
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
  v2 = [(HKObserverSet *)self->_observers allObservers];
  v3 = [v2 count];

  return v3;
}

+ (id)healthAppUserDefaultsDomainWithProfile:(id)a3
{
  v3 = a3;
  v4 = [HDKeyValueDomain alloc];
  v5 = [(HDKeyValueDomain *)v4 initWithCategory:102 domainName:*MEMORY[0x277CCE3A8] profile:v3];

  return v5;
}

@end