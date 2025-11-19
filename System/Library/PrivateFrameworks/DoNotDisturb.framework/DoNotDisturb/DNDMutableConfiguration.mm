@interface DNDMutableConfiguration
+ (id)configurationOfType:(unint64_t)a3;
+ (id)defaultConfiguration;
- (BOOL)hasSecureData;
- (id)_configurationForApplicationIdentifier:(id)a3;
- (void)removeExceptionForApplication:(id)a3;
- (void)removeExceptionForApplication:(id)a3 thread:(id)a4;
- (void)removeExceptionForApplicationIdentifier:(id)a3;
- (void)removeExceptionForApplicationIdentifier:(id)a3 thread:(id)a4;
- (void)removeExceptionForContact:(id)a3;
- (void)removeExceptionForContactGroup:(id)a3;
- (void)removeExceptionForContactType:(unint64_t)a3;
- (void)removeExceptionForWebApplicationIdentifier:(id)a3;
- (void)setAllowedApplicationIdentifiers:(id)a3;
- (void)setAllowedApplications:(id)a3;
- (void)setAllowedWebApplicationIdentifiers:(id)a3;
- (void)setDeniedApplicationIdentifiers:(id)a3;
- (void)setDeniedApplications:(id)a3;
- (void)setDeniedWebApplicationIdentifiers:(id)a3;
- (void)setExceptionForApplication:(id)a3;
- (void)setExceptionForApplication:(id)a3 thread:(id)a4;
- (void)setExceptionForApplicationIdentifier:(id)a3;
- (void)setExceptionForApplicationIdentifier:(id)a3 thread:(id)a4;
- (void)setExceptionForContact:(id)a3;
- (void)setExceptionForContactGroup:(id)a3;
- (void)setExceptionForContactType:(unint64_t)a3;
- (void)setExceptionForWebApplicationIdentifier:(id)a3;
- (void)setExceptionOfType:(unint64_t)a3 forApplication:(id)a4;
- (void)setExceptionOfType:(unint64_t)a3 forApplication:(id)a4 thread:(id)a5;
- (void)setExceptionOfType:(unint64_t)a3 forApplicationIdentifier:(id)a4;
- (void)setExceptionOfType:(unint64_t)a3 forApplicationIdentifier:(id)a4 thread:(id)a5;
- (void)setExceptionOfType:(unint64_t)a3 forContact:(id)a4;
- (void)setExceptionOfType:(unint64_t)a3 forContactGroup:(id)a4;
- (void)setExceptionOfType:(unint64_t)a3 forContactType:(unint64_t)a4;
- (void)setMinimumBreakthroughUrgency:(unint64_t)a3 forApplication:(id)a4;
- (void)setMinimumBreakthroughUrgency:(unint64_t)a3 forApplicationIdentifier:(id)a4;
- (void)setSenderConfiguration:(id)a3;
@end

@implementation DNDMutableConfiguration

+ (id)defaultConfiguration
{
  v2 = +[DNDConfiguration defaultConfigurationType];

  return [DNDMutableConfiguration configurationOfType:v2];
}

+ (id)configurationOfType:(unint64_t)a3
{
  v3 = [(DNDConfiguration *)[DNDMutableConfiguration alloc] _initWithConfigurationType:a3];

  return v3;
}

- (void)setAllowedApplicationIdentifiers:(id)a3
{
  v4 = [a3 mutableCopy];
  allowedApplicationIdentifiers = self->super._allowedApplicationIdentifiers;
  self->super._allowedApplicationIdentifiers = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setDeniedApplicationIdentifiers:(id)a3
{
  v4 = [a3 mutableCopy];
  deniedApplicationIdentifiers = self->super._deniedApplicationIdentifiers;
  self->super._deniedApplicationIdentifiers = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setAllowedWebApplicationIdentifiers:(id)a3
{
  v4 = [a3 mutableCopy];
  allowedWebApplicationIdentifiers = self->super._allowedWebApplicationIdentifiers;
  self->super._allowedWebApplicationIdentifiers = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setDeniedWebApplicationIdentifiers:(id)a3
{
  v4 = [a3 mutableCopy];
  deniedWebApplicationIdentifiers = self->super._deniedWebApplicationIdentifiers;
  self->super._deniedWebApplicationIdentifiers = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setAllowedApplications:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  allowedApplicationIdentifiers = self->super._allowedApplicationIdentifiers;
  self->super._allowedApplicationIdentifiers = v5;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = [DNDApplicationIdentifier alloc];
        v14 = [(DNDApplicationIdentifier *)v13 initWithBundleID:v12, v17];
        v15 = [v7 objectForKeyedSubscript:v12];
        [(NSMutableDictionary *)self->super._allowedApplicationIdentifiers setObject:v15 forKeyedSubscript:v14];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setDeniedApplications:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  deniedApplicationIdentifiers = self->super._deniedApplicationIdentifiers;
  self->super._deniedApplicationIdentifiers = v5;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = [DNDApplicationIdentifier alloc];
        v14 = [(DNDApplicationIdentifier *)v13 initWithBundleID:v12, v16];
        [(NSMutableSet *)self->super._deniedApplicationIdentifiers addObject:v14];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setSenderConfiguration:(id)a3
{
  v4 = [a3 mutableCopy];
  senderConfiguration = self->super._senderConfiguration;
  self->super._senderConfiguration = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setExceptionForApplication:(id)a3
{
  v4 = a3;
  v5 = [[DNDApplicationIdentifier alloc] initWithBundleID:v4];

  [(DNDMutableConfiguration *)self setExceptionForApplicationIdentifier:v5];
}

- (void)setExceptionForApplicationIdentifier:(id)a3
{
  v7 = a3;
  v4 = [(DNDConfiguration *)self applicationConfigurationType];
  if (v4 == 1)
  {
    [(NSMutableDictionary *)self->super._allowedApplicationIdentifiers removeObjectForKey:v7];
    [(NSMutableSet *)self->super._deniedApplicationIdentifiers addObject:v7];
  }

  else if (!v4)
  {
    [(NSMutableSet *)self->super._deniedApplicationIdentifiers removeObject:v7];
    allowedApplicationIdentifiers = self->super._allowedApplicationIdentifiers;
    v6 = +[DNDApplicationConfiguration defaultConfiguration];
    [(NSMutableDictionary *)allowedApplicationIdentifiers setObject:v6 forKey:v7];
  }

  MEMORY[0x2821F96F8]();
}

- (void)removeExceptionForApplication:(id)a3
{
  v4 = a3;
  v5 = [[DNDApplicationIdentifier alloc] initWithBundleID:v4];

  [(DNDMutableConfiguration *)self removeExceptionForApplicationIdentifier:v5];
}

- (void)removeExceptionForApplicationIdentifier:(id)a3
{
  allowedApplicationIdentifiers = self->super._allowedApplicationIdentifiers;
  v5 = a3;
  [(NSMutableDictionary *)allowedApplicationIdentifiers removeObjectForKey:v5];
  [(NSMutableSet *)self->super._deniedApplicationIdentifiers removeObject:v5];
}

- (void)setExceptionForApplication:(id)a3 thread:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[DNDApplicationIdentifier alloc] initWithBundleID:v7];

  [(DNDMutableConfiguration *)self setExceptionForApplicationIdentifier:v8 thread:v6];
}

- (void)setExceptionForApplicationIdentifier:(id)a3 thread:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(DNDMutableConfiguration *)self _configurationForApplicationIdentifier:v14];
  v8 = [v7 mutableCopy];

  v9 = [(DNDConfiguration *)self threadConfigurationType];
  if (v9 == 1)
  {
    v12 = [v8 allowedThreads];
    [v12 removeObject:v6];

    v11 = [v8 deniedThreads];
  }

  else
  {
    if (v9)
    {
      goto LABEL_6;
    }

    v10 = [v8 deniedThreads];
    [v10 removeObject:v6];

    v11 = [v8 allowedThreads];
  }

  v13 = v11;
  [v11 addObject:v6];

LABEL_6:
  [(NSMutableDictionary *)self->super._allowedApplicationIdentifiers setObject:v8 forKey:v14];
}

- (void)removeExceptionForApplication:(id)a3 thread:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[DNDApplicationIdentifier alloc] initWithBundleID:v7];

  [(DNDMutableConfiguration *)self removeExceptionForApplicationIdentifier:v8 thread:v6];
}

- (void)removeExceptionForApplicationIdentifier:(id)a3 thread:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDMutableConfiguration *)self _configurationForApplicationIdentifier:v7];
  v11 = [v8 mutableCopy];

  v9 = [v11 allowedThreads];
  [v9 removeObject:v6];

  v10 = [v11 deniedThreads];
  [v10 removeObject:v6];

  [(NSMutableDictionary *)self->super._allowedApplicationIdentifiers setObject:v11 forKey:v7];
}

- (void)setExceptionForWebApplicationIdentifier:(id)a3
{
  v7 = a3;
  v4 = [(DNDConfiguration *)self applicationConfigurationType];
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    v5 = 48;
    v6 = 40;
  }

  else
  {
    v5 = 40;
    v6 = 48;
  }

  [*(&self->super.super.isa + v6) removeObject:v7];
  [*(&self->super.super.isa + v5) addObject:v7];
LABEL_6:
}

- (void)removeExceptionForWebApplicationIdentifier:(id)a3
{
  allowedWebApplicationIdentifiers = self->super._allowedWebApplicationIdentifiers;
  v5 = a3;
  [(NSMutableSet *)allowedWebApplicationIdentifiers removeObject:v5];
  [(NSMutableSet *)self->super._deniedWebApplicationIdentifiers removeObject:v5];
}

- (void)setExceptionForContactType:(unint64_t)a3
{
  v5 = [(DNDConfiguration *)self senderConfigurationType];
  if (v5 == 1)
  {
    v9 = [(DNDSenderConfiguration *)self->super._senderConfiguration allowedContactTypes];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v9 removeObject:v10];

    v8 = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContactTypes];
  }

  else
  {
    if (v5)
    {
      return;
    }

    v6 = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContactTypes];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v6 removeObject:v7];

    v8 = [(DNDSenderConfiguration *)self->super._senderConfiguration allowedContactTypes];
  }

  v12 = v8;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v12 addObject:v11];
}

- (void)removeExceptionForContactType:(unint64_t)a3
{
  v5 = [(DNDSenderConfiguration *)self->super._senderConfiguration allowedContactTypes];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 removeObject:v6];

  v8 = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContactTypes];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v8 removeObject:v7];
}

- (void)setExceptionForContactGroup:(id)a3
{
  v9 = a3;
  v4 = [(DNDConfiguration *)self senderConfigurationType];
  if (v4 == 1)
  {
    v7 = [(DNDSenderConfiguration *)self->super._senderConfiguration allowedContactGroups];
    [v7 removeObject:v9];

    v6 = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContactGroups];
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContactGroups];
    [v5 removeObject:v9];

    v6 = [(DNDSenderConfiguration *)self->super._senderConfiguration allowedContactGroups];
  }

  v8 = v6;
  [v6 addObject:v9];

LABEL_6:
}

- (void)removeExceptionForContactGroup:(id)a3
{
  senderConfiguration = self->super._senderConfiguration;
  v5 = a3;
  v6 = [(DNDSenderConfiguration *)senderConfiguration allowedContactGroups];
  [v6 removeObject:v5];

  v7 = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContactGroups];
  [v7 removeObject:v5];
}

- (void)setExceptionForContact:(id)a3
{
  v7 = a3;
  v4 = [(DNDConfiguration *)self senderConfigurationType];
  if (v4 == 1)
  {
    [(DNDMutableSenderConfiguration *)self->super._senderConfiguration removeAllowedContactMatchingContact:v7];
    v5 = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContacts];
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    [(DNDMutableSenderConfiguration *)self->super._senderConfiguration removeDeniedContactMatchingContact:v7];
    v5 = [(DNDSenderConfiguration *)self->super._senderConfiguration allowedContacts];
  }

  v6 = v5;
  [v5 addObject:v7];

LABEL_6:

  MEMORY[0x2821F9730]();
}

- (void)removeExceptionForContact:(id)a3
{
  senderConfiguration = self->super._senderConfiguration;
  v5 = a3;
  [(DNDMutableSenderConfiguration *)senderConfiguration removeAllowedContactMatchingContact:v5];
  [(DNDMutableSenderConfiguration *)self->super._senderConfiguration removeDeniedContactMatchingContact:v5];
}

- (BOOL)hasSecureData
{
  v3 = [(DNDSenderConfiguration *)self->super._senderConfiguration allowedContacts];
  v4 = [v3 count];

  if (v4)
  {
    return 1;
  }

  v5 = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContacts];
  v6 = [v5 count];

  if (v6)
  {
    return 1;
  }

  v7 = [(DNDSenderConfiguration *)self->super._senderConfiguration allowedContactGroups];
  v8 = [v7 count];

  if (v8)
  {
    return 1;
  }

  v9 = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContactGroups];
  v10 = [v9 count];

  if (v10)
  {
    return 1;
  }

  v11 = [(DNDSenderConfiguration *)self->super._senderConfiguration allowedContactTypes];
  v12 = [v11 count];

  if (v12)
  {
    return 1;
  }

  v13 = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContactTypes];
  v14 = [v13 count];

  return v14 || [(NSMutableDictionary *)self->super._allowedApplicationIdentifiers count]|| [(NSMutableSet *)self->super._deniedApplicationIdentifiers count]!= 0;
}

- (id)_configurationForApplicationIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->super._allowedApplicationIdentifiers objectForKeyedSubscript:a3];
  if (!v3)
  {
    v3 = +[DNDApplicationConfiguration defaultConfiguration];
  }

  return v3;
}

- (void)setExceptionOfType:(unint64_t)a3 forApplicationIdentifier:(id)a4
{
  v6 = a4;
  v8 = v6;
  if (a3)
  {
    v7 = v6;
    if (a3 == 1)
    {
      v6 = [(DNDConfiguration *)self applicationConfigurationType];
      v7 = v8;
      if (v6 == 1)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v6 = [(DNDConfiguration *)self applicationConfigurationType];
    v7 = v8;
    if (!v6)
    {
LABEL_4:
      v6 = [(DNDMutableConfiguration *)self setExceptionForApplicationIdentifier:v8];
      v7 = v8;
    }
  }

  MEMORY[0x2821F96F8](v6, v7);
}

- (void)setExceptionOfType:(unint64_t)a3 forApplicationIdentifier:(id)a4 thread:(id)a5
{
  v9 = a4;
  v8 = a5;
  if (a3)
  {
    if (a3 == 1 && [(DNDConfiguration *)self threadConfigurationType]== 1)
    {
      goto LABEL_4;
    }
  }

  else if (![(DNDConfiguration *)self threadConfigurationType])
  {
LABEL_4:
    [(DNDMutableConfiguration *)self setExceptionForApplicationIdentifier:v9 thread:v8];
  }
}

- (void)setMinimumBreakthroughUrgency:(unint64_t)a3 forApplicationIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(DNDMutableConfiguration *)self _configurationForApplicationIdentifier:v6];
  v8 = [v7 mutableCopy];

  [v8 setMinimumBreakthroughUrgency:a3];
  [(NSMutableDictionary *)self->super._allowedApplicationIdentifiers setObject:v8 forKey:v6];
}

- (void)setMinimumBreakthroughUrgency:(unint64_t)a3 forApplication:(id)a4
{
  v6 = a4;
  v7 = [[DNDApplicationIdentifier alloc] initWithBundleID:v6];

  [(DNDMutableConfiguration *)self setMinimumBreakthroughUrgency:a3 forApplicationIdentifier:v7];
}

- (void)setExceptionOfType:(unint64_t)a3 forContactGroup:(id)a4
{
  v6 = a4;
  v8 = v6;
  if (a3)
  {
    v7 = v6;
    if (a3 == 1)
    {
      v6 = [(DNDConfiguration *)self senderConfigurationType];
      v7 = v8;
      if (v6 == 1)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v6 = [(DNDConfiguration *)self senderConfigurationType];
    v7 = v8;
    if (!v6)
    {
LABEL_4:
      v6 = [(DNDMutableConfiguration *)self setExceptionForContactGroup:v8];
      v7 = v8;
    }
  }

  MEMORY[0x2821F96F8](v6, v7);
}

- (void)setExceptionOfType:(unint64_t)a3 forContactType:(unint64_t)a4
{
  if (a3)
  {
    if (a3 != 1 || [(DNDConfiguration *)self senderConfigurationType]!= 1)
    {
      return;
    }
  }

  else if ([(DNDConfiguration *)self senderConfigurationType])
  {
    return;
  }

  [(DNDMutableConfiguration *)self setExceptionForContactType:a4];
}

- (void)setExceptionOfType:(unint64_t)a3 forContact:(id)a4
{
  v6 = a4;
  v8 = v6;
  if (a3)
  {
    v7 = v6;
    if (a3 == 1)
    {
      v6 = [(DNDConfiguration *)self senderConfigurationType];
      v7 = v8;
      if (v6 == 1)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v6 = [(DNDConfiguration *)self senderConfigurationType];
    v7 = v8;
    if (!v6)
    {
LABEL_4:
      v6 = [(DNDMutableConfiguration *)self setExceptionForContact:v8];
      v7 = v8;
    }
  }

  MEMORY[0x2821F96F8](v6, v7);
}

- (void)setExceptionOfType:(unint64_t)a3 forApplication:(id)a4
{
  v6 = a4;
  v7 = [[DNDApplicationIdentifier alloc] initWithBundleID:v6];

  [(DNDMutableConfiguration *)self setExceptionOfType:a3 forApplicationIdentifier:v7];
}

- (void)setExceptionOfType:(unint64_t)a3 forApplication:(id)a4 thread:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[DNDApplicationIdentifier alloc] initWithBundleID:v9];

  [(DNDMutableConfiguration *)self setExceptionOfType:a3 forApplicationIdentifier:v10 thread:v8];
}

@end