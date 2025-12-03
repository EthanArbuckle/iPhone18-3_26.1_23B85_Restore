@interface FINPSDomainAccessorWrapper
- (BOOL)BOOLForKey:(id)key;
- (FINPSDomainAccessorWrapper)initWithDomain:(id)domain;
- (id)dataForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)synchronize;
- (void)migrateUserDefaultsToNPS;
- (void)setInteger:(int64_t)integer forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation FINPSDomainAccessorWrapper

- (id)synchronize
{
  npsDomainAccessor = self->_npsDomainAccessor;
  if (npsDomainAccessor)
  {
    synchronize = [(NPSDomainAccessor *)npsDomainAccessor synchronize];
  }

  else
  {
    [(NSUserDefaults *)self->_userDefaults synchronize];
    synchronize = 0;
  }

  return synchronize;
}

- (FINPSDomainAccessorWrapper)initWithDomain:(id)domain
{
  domainCopy = domain;
  v15.receiver = self;
  v15.super_class = FINPSDomainAccessorWrapper;
  v6 = [(FINPSDomainAccessorWrapper *)&v15 init];
  v7 = v6;
  if (!v6)
  {
LABEL_10:
    v12 = v7;
    goto LABEL_11;
  }

  if (domainCopy)
  {
    objc_storeStrong(&v6->_domain, domain);
    v8 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:domainCopy];
    npsDomainAccessor = v7->_npsDomainAccessor;
    v7->_npsDomainAccessor = v8;

    if (v7->_npsDomainAccessor)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      userDefaults = [standardUserDefaults objectForKey:@"MigrationToNPSCompleted"];

      if (!userDefaults || ([userDefaults BOOLValue] & 1) == 0)
      {
        [(FINPSDomainAccessorWrapper *)v7 migrateUserDefaultsToNPS];
      }
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:domainCopy];
      userDefaults = v7->_userDefaults;
      v7->_userDefaults = v13;
    }

    goto LABEL_10;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)migrateUserDefaultsToNPS
{
  v32 = *MEMORY[0x277D85DE8];
  userDefaults = self->_userDefaults;
  if (userDefaults && self->_npsDomainAccessor)
  {
    dictionaryRepresentation = [(NSUserDefaults *)userDefaults dictionaryRepresentation];
    _HKInitializeLogging();
    v5 = MEMORY[0x277CCC330];
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      domain = self->_domain;
      *buf = 138412546;
      v29 = domain;
      v30 = 2112;
      v31 = dictionaryRepresentation;
      _os_log_impl(&dword_24B35E000, v6, OS_LOG_TYPE_DEFAULT, "NSUserDefaults values to be migrated (domain: %@): %@", buf, 0x16u);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = dictionaryRepresentation;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        v12 = 0;
        do
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * v12);
          v14 = [v8 objectForKeyedSubscript:{v13, v23}];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && (v15 = [v14 objCType], *v15 == 66) && !v15[1])
          {
            -[NPSDomainAccessor setBool:forKey:](self->_npsDomainAccessor, "setBool:forKey:", [v14 BOOLValue], v13);
          }

          else
          {
            [(NPSDomainAccessor *)self->_npsDomainAccessor setObject:v14 forKey:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v16 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        v10 = v16;
      }

      while (v16);
    }

    synchronize = [(NPSDomainAccessor *)self->_npsDomainAccessor synchronize];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setBool:1 forKey:@"MigrationToNPSCompleted"];

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults2 synchronize];

    _HKInitializeLogging();
    v20 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B35E000, v20, OS_LOG_TYPE_DEFAULT, "Migration to NPS completed. Set kFIMigrationToNPSCompletedKey to YES", buf, 2u);
    }

    [(NSUserDefaults *)self->_userDefaults removePersistentDomainForName:self->_domain, v23];
  }

  else
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      [(FINPSDomainAccessorWrapper *)v21 migrateUserDefaultsToNPS];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)BOOLForKey:(id)key
{
  npsDomainAccessor = self->_npsDomainAccessor;
  if (!npsDomainAccessor)
  {
    npsDomainAccessor = self->_userDefaults;
  }

  return [npsDomainAccessor BOOLForKey:key];
}

- (id)dataForKey:(id)key
{
  npsDomainAccessor = self->_npsDomainAccessor;
  if (!npsDomainAccessor)
  {
    npsDomainAccessor = self->_userDefaults;
  }

  v5 = [npsDomainAccessor dataForKey:key];

  return v5;
}

- (id)objectForKey:(id)key
{
  npsDomainAccessor = self->_npsDomainAccessor;
  if (!npsDomainAccessor)
  {
    npsDomainAccessor = self->_userDefaults;
  }

  v5 = [npsDomainAccessor objectForKey:key];

  return v5;
}

- (void)setObject:(id)object forKey:(id)key
{
  npsDomainAccessor = self->_npsDomainAccessor;
  if (!npsDomainAccessor)
  {
    npsDomainAccessor = self->_userDefaults;
  }

  [npsDomainAccessor setObject:object forKey:key];
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  npsDomainAccessor = self->_npsDomainAccessor;
  if (!npsDomainAccessor)
  {
    npsDomainAccessor = self->_userDefaults;
  }

  [npsDomainAccessor setInteger:integer forKey:key];
}

@end