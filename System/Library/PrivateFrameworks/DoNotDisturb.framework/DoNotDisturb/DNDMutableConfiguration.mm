@interface DNDMutableConfiguration
+ (id)configurationOfType:(unint64_t)type;
+ (id)defaultConfiguration;
- (BOOL)hasSecureData;
- (id)_configurationForApplicationIdentifier:(id)identifier;
- (void)removeExceptionForApplication:(id)application;
- (void)removeExceptionForApplication:(id)application thread:(id)thread;
- (void)removeExceptionForApplicationIdentifier:(id)identifier;
- (void)removeExceptionForApplicationIdentifier:(id)identifier thread:(id)thread;
- (void)removeExceptionForContact:(id)contact;
- (void)removeExceptionForContactGroup:(id)group;
- (void)removeExceptionForContactType:(unint64_t)type;
- (void)removeExceptionForWebApplicationIdentifier:(id)identifier;
- (void)setAllowedApplicationIdentifiers:(id)identifiers;
- (void)setAllowedApplications:(id)applications;
- (void)setAllowedWebApplicationIdentifiers:(id)identifiers;
- (void)setDeniedApplicationIdentifiers:(id)identifiers;
- (void)setDeniedApplications:(id)applications;
- (void)setDeniedWebApplicationIdentifiers:(id)identifiers;
- (void)setExceptionForApplication:(id)application;
- (void)setExceptionForApplication:(id)application thread:(id)thread;
- (void)setExceptionForApplicationIdentifier:(id)identifier;
- (void)setExceptionForApplicationIdentifier:(id)identifier thread:(id)thread;
- (void)setExceptionForContact:(id)contact;
- (void)setExceptionForContactGroup:(id)group;
- (void)setExceptionForContactType:(unint64_t)type;
- (void)setExceptionForWebApplicationIdentifier:(id)identifier;
- (void)setExceptionOfType:(unint64_t)type forApplication:(id)application;
- (void)setExceptionOfType:(unint64_t)type forApplication:(id)application thread:(id)thread;
- (void)setExceptionOfType:(unint64_t)type forApplicationIdentifier:(id)identifier;
- (void)setExceptionOfType:(unint64_t)type forApplicationIdentifier:(id)identifier thread:(id)thread;
- (void)setExceptionOfType:(unint64_t)type forContact:(id)contact;
- (void)setExceptionOfType:(unint64_t)type forContactGroup:(id)group;
- (void)setExceptionOfType:(unint64_t)type forContactType:(unint64_t)contactType;
- (void)setMinimumBreakthroughUrgency:(unint64_t)urgency forApplication:(id)application;
- (void)setMinimumBreakthroughUrgency:(unint64_t)urgency forApplicationIdentifier:(id)identifier;
- (void)setSenderConfiguration:(id)configuration;
@end

@implementation DNDMutableConfiguration

+ (id)defaultConfiguration
{
  v2 = +[DNDConfiguration defaultConfigurationType];

  return [DNDMutableConfiguration configurationOfType:v2];
}

+ (id)configurationOfType:(unint64_t)type
{
  v3 = [(DNDConfiguration *)[DNDMutableConfiguration alloc] _initWithConfigurationType:type];

  return v3;
}

- (void)setAllowedApplicationIdentifiers:(id)identifiers
{
  v4 = [identifiers mutableCopy];
  allowedApplicationIdentifiers = self->super._allowedApplicationIdentifiers;
  self->super._allowedApplicationIdentifiers = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setDeniedApplicationIdentifiers:(id)identifiers
{
  v4 = [identifiers mutableCopy];
  deniedApplicationIdentifiers = self->super._deniedApplicationIdentifiers;
  self->super._deniedApplicationIdentifiers = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setAllowedWebApplicationIdentifiers:(id)identifiers
{
  v4 = [identifiers mutableCopy];
  allowedWebApplicationIdentifiers = self->super._allowedWebApplicationIdentifiers;
  self->super._allowedWebApplicationIdentifiers = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setDeniedWebApplicationIdentifiers:(id)identifiers
{
  v4 = [identifiers mutableCopy];
  deniedWebApplicationIdentifiers = self->super._deniedWebApplicationIdentifiers;
  self->super._deniedWebApplicationIdentifiers = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setAllowedApplications:(id)applications
{
  v22 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  allowedApplicationIdentifiers = self->super._allowedApplicationIdentifiers;
  self->super._allowedApplicationIdentifiers = dictionary;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = applicationsCopy;
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

- (void)setDeniedApplications:(id)applications
{
  v21 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  v5 = [MEMORY[0x277CBEB58] set];
  deniedApplicationIdentifiers = self->super._deniedApplicationIdentifiers;
  self->super._deniedApplicationIdentifiers = v5;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = applicationsCopy;
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

- (void)setSenderConfiguration:(id)configuration
{
  v4 = [configuration mutableCopy];
  senderConfiguration = self->super._senderConfiguration;
  self->super._senderConfiguration = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setExceptionForApplication:(id)application
{
  applicationCopy = application;
  v5 = [[DNDApplicationIdentifier alloc] initWithBundleID:applicationCopy];

  [(DNDMutableConfiguration *)self setExceptionForApplicationIdentifier:v5];
}

- (void)setExceptionForApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  applicationConfigurationType = [(DNDConfiguration *)self applicationConfigurationType];
  if (applicationConfigurationType == 1)
  {
    [(NSMutableDictionary *)self->super._allowedApplicationIdentifiers removeObjectForKey:identifierCopy];
    [(NSMutableSet *)self->super._deniedApplicationIdentifiers addObject:identifierCopy];
  }

  else if (!applicationConfigurationType)
  {
    [(NSMutableSet *)self->super._deniedApplicationIdentifiers removeObject:identifierCopy];
    allowedApplicationIdentifiers = self->super._allowedApplicationIdentifiers;
    v6 = +[DNDApplicationConfiguration defaultConfiguration];
    [(NSMutableDictionary *)allowedApplicationIdentifiers setObject:v6 forKey:identifierCopy];
  }

  MEMORY[0x2821F96F8]();
}

- (void)removeExceptionForApplication:(id)application
{
  applicationCopy = application;
  v5 = [[DNDApplicationIdentifier alloc] initWithBundleID:applicationCopy];

  [(DNDMutableConfiguration *)self removeExceptionForApplicationIdentifier:v5];
}

- (void)removeExceptionForApplicationIdentifier:(id)identifier
{
  allowedApplicationIdentifiers = self->super._allowedApplicationIdentifiers;
  identifierCopy = identifier;
  [(NSMutableDictionary *)allowedApplicationIdentifiers removeObjectForKey:identifierCopy];
  [(NSMutableSet *)self->super._deniedApplicationIdentifiers removeObject:identifierCopy];
}

- (void)setExceptionForApplication:(id)application thread:(id)thread
{
  threadCopy = thread;
  applicationCopy = application;
  v8 = [[DNDApplicationIdentifier alloc] initWithBundleID:applicationCopy];

  [(DNDMutableConfiguration *)self setExceptionForApplicationIdentifier:v8 thread:threadCopy];
}

- (void)setExceptionForApplicationIdentifier:(id)identifier thread:(id)thread
{
  identifierCopy = identifier;
  threadCopy = thread;
  v7 = [(DNDMutableConfiguration *)self _configurationForApplicationIdentifier:identifierCopy];
  v8 = [v7 mutableCopy];

  threadConfigurationType = [(DNDConfiguration *)self threadConfigurationType];
  if (threadConfigurationType == 1)
  {
    allowedThreads = [v8 allowedThreads];
    [allowedThreads removeObject:threadCopy];

    deniedThreads = [v8 deniedThreads];
  }

  else
  {
    if (threadConfigurationType)
    {
      goto LABEL_6;
    }

    deniedThreads2 = [v8 deniedThreads];
    [deniedThreads2 removeObject:threadCopy];

    deniedThreads = [v8 allowedThreads];
  }

  v13 = deniedThreads;
  [deniedThreads addObject:threadCopy];

LABEL_6:
  [(NSMutableDictionary *)self->super._allowedApplicationIdentifiers setObject:v8 forKey:identifierCopy];
}

- (void)removeExceptionForApplication:(id)application thread:(id)thread
{
  threadCopy = thread;
  applicationCopy = application;
  v8 = [[DNDApplicationIdentifier alloc] initWithBundleID:applicationCopy];

  [(DNDMutableConfiguration *)self removeExceptionForApplicationIdentifier:v8 thread:threadCopy];
}

- (void)removeExceptionForApplicationIdentifier:(id)identifier thread:(id)thread
{
  threadCopy = thread;
  identifierCopy = identifier;
  v8 = [(DNDMutableConfiguration *)self _configurationForApplicationIdentifier:identifierCopy];
  v11 = [v8 mutableCopy];

  allowedThreads = [v11 allowedThreads];
  [allowedThreads removeObject:threadCopy];

  deniedThreads = [v11 deniedThreads];
  [deniedThreads removeObject:threadCopy];

  [(NSMutableDictionary *)self->super._allowedApplicationIdentifiers setObject:v11 forKey:identifierCopy];
}

- (void)setExceptionForWebApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  applicationConfigurationType = [(DNDConfiguration *)self applicationConfigurationType];
  if (applicationConfigurationType)
  {
    if (applicationConfigurationType != 1)
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

  [*(&self->super.super.isa + v6) removeObject:identifierCopy];
  [*(&self->super.super.isa + v5) addObject:identifierCopy];
LABEL_6:
}

- (void)removeExceptionForWebApplicationIdentifier:(id)identifier
{
  allowedWebApplicationIdentifiers = self->super._allowedWebApplicationIdentifiers;
  identifierCopy = identifier;
  [(NSMutableSet *)allowedWebApplicationIdentifiers removeObject:identifierCopy];
  [(NSMutableSet *)self->super._deniedWebApplicationIdentifiers removeObject:identifierCopy];
}

- (void)setExceptionForContactType:(unint64_t)type
{
  senderConfigurationType = [(DNDConfiguration *)self senderConfigurationType];
  if (senderConfigurationType == 1)
  {
    allowedContactTypes = [(DNDSenderConfiguration *)self->super._senderConfiguration allowedContactTypes];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    [allowedContactTypes removeObject:v10];

    deniedContactTypes = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContactTypes];
  }

  else
  {
    if (senderConfigurationType)
    {
      return;
    }

    deniedContactTypes2 = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContactTypes];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    [deniedContactTypes2 removeObject:v7];

    deniedContactTypes = [(DNDSenderConfiguration *)self->super._senderConfiguration allowedContactTypes];
  }

  v12 = deniedContactTypes;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [v12 addObject:v11];
}

- (void)removeExceptionForContactType:(unint64_t)type
{
  allowedContactTypes = [(DNDSenderConfiguration *)self->super._senderConfiguration allowedContactTypes];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [allowedContactTypes removeObject:v6];

  deniedContactTypes = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContactTypes];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [deniedContactTypes removeObject:v7];
}

- (void)setExceptionForContactGroup:(id)group
{
  groupCopy = group;
  senderConfigurationType = [(DNDConfiguration *)self senderConfigurationType];
  if (senderConfigurationType == 1)
  {
    allowedContactGroups = [(DNDSenderConfiguration *)self->super._senderConfiguration allowedContactGroups];
    [allowedContactGroups removeObject:groupCopy];

    deniedContactGroups = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContactGroups];
  }

  else
  {
    if (senderConfigurationType)
    {
      goto LABEL_6;
    }

    deniedContactGroups2 = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContactGroups];
    [deniedContactGroups2 removeObject:groupCopy];

    deniedContactGroups = [(DNDSenderConfiguration *)self->super._senderConfiguration allowedContactGroups];
  }

  v8 = deniedContactGroups;
  [deniedContactGroups addObject:groupCopy];

LABEL_6:
}

- (void)removeExceptionForContactGroup:(id)group
{
  senderConfiguration = self->super._senderConfiguration;
  groupCopy = group;
  allowedContactGroups = [(DNDSenderConfiguration *)senderConfiguration allowedContactGroups];
  [allowedContactGroups removeObject:groupCopy];

  deniedContactGroups = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContactGroups];
  [deniedContactGroups removeObject:groupCopy];
}

- (void)setExceptionForContact:(id)contact
{
  contactCopy = contact;
  senderConfigurationType = [(DNDConfiguration *)self senderConfigurationType];
  if (senderConfigurationType == 1)
  {
    [(DNDMutableSenderConfiguration *)self->super._senderConfiguration removeAllowedContactMatchingContact:contactCopy];
    deniedContacts = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContacts];
  }

  else
  {
    if (senderConfigurationType)
    {
      goto LABEL_6;
    }

    [(DNDMutableSenderConfiguration *)self->super._senderConfiguration removeDeniedContactMatchingContact:contactCopy];
    deniedContacts = [(DNDSenderConfiguration *)self->super._senderConfiguration allowedContacts];
  }

  v6 = deniedContacts;
  [deniedContacts addObject:contactCopy];

LABEL_6:

  MEMORY[0x2821F9730]();
}

- (void)removeExceptionForContact:(id)contact
{
  senderConfiguration = self->super._senderConfiguration;
  contactCopy = contact;
  [(DNDMutableSenderConfiguration *)senderConfiguration removeAllowedContactMatchingContact:contactCopy];
  [(DNDMutableSenderConfiguration *)self->super._senderConfiguration removeDeniedContactMatchingContact:contactCopy];
}

- (BOOL)hasSecureData
{
  allowedContacts = [(DNDSenderConfiguration *)self->super._senderConfiguration allowedContacts];
  v4 = [allowedContacts count];

  if (v4)
  {
    return 1;
  }

  deniedContacts = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContacts];
  v6 = [deniedContacts count];

  if (v6)
  {
    return 1;
  }

  allowedContactGroups = [(DNDSenderConfiguration *)self->super._senderConfiguration allowedContactGroups];
  v8 = [allowedContactGroups count];

  if (v8)
  {
    return 1;
  }

  deniedContactGroups = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContactGroups];
  v10 = [deniedContactGroups count];

  if (v10)
  {
    return 1;
  }

  allowedContactTypes = [(DNDSenderConfiguration *)self->super._senderConfiguration allowedContactTypes];
  v12 = [allowedContactTypes count];

  if (v12)
  {
    return 1;
  }

  deniedContactTypes = [(DNDSenderConfiguration *)self->super._senderConfiguration deniedContactTypes];
  v14 = [deniedContactTypes count];

  return v14 || [(NSMutableDictionary *)self->super._allowedApplicationIdentifiers count]|| [(NSMutableSet *)self->super._deniedApplicationIdentifiers count]!= 0;
}

- (id)_configurationForApplicationIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->super._allowedApplicationIdentifiers objectForKeyedSubscript:identifier];
  if (!v3)
  {
    v3 = +[DNDApplicationConfiguration defaultConfiguration];
  }

  return v3;
}

- (void)setExceptionOfType:(unint64_t)type forApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (type)
  {
    v7 = identifierCopy;
    if (type == 1)
    {
      identifierCopy = [(DNDConfiguration *)self applicationConfigurationType];
      v7 = v8;
      if (identifierCopy == 1)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    identifierCopy = [(DNDConfiguration *)self applicationConfigurationType];
    v7 = v8;
    if (!identifierCopy)
    {
LABEL_4:
      identifierCopy = [(DNDMutableConfiguration *)self setExceptionForApplicationIdentifier:v8];
      v7 = v8;
    }
  }

  MEMORY[0x2821F96F8](identifierCopy, v7);
}

- (void)setExceptionOfType:(unint64_t)type forApplicationIdentifier:(id)identifier thread:(id)thread
{
  identifierCopy = identifier;
  threadCopy = thread;
  if (type)
  {
    if (type == 1 && [(DNDConfiguration *)self threadConfigurationType]== 1)
    {
      goto LABEL_4;
    }
  }

  else if (![(DNDConfiguration *)self threadConfigurationType])
  {
LABEL_4:
    [(DNDMutableConfiguration *)self setExceptionForApplicationIdentifier:identifierCopy thread:threadCopy];
  }
}

- (void)setMinimumBreakthroughUrgency:(unint64_t)urgency forApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [(DNDMutableConfiguration *)self _configurationForApplicationIdentifier:identifierCopy];
  v8 = [v7 mutableCopy];

  [v8 setMinimumBreakthroughUrgency:urgency];
  [(NSMutableDictionary *)self->super._allowedApplicationIdentifiers setObject:v8 forKey:identifierCopy];
}

- (void)setMinimumBreakthroughUrgency:(unint64_t)urgency forApplication:(id)application
{
  applicationCopy = application;
  v7 = [[DNDApplicationIdentifier alloc] initWithBundleID:applicationCopy];

  [(DNDMutableConfiguration *)self setMinimumBreakthroughUrgency:urgency forApplicationIdentifier:v7];
}

- (void)setExceptionOfType:(unint64_t)type forContactGroup:(id)group
{
  groupCopy = group;
  v8 = groupCopy;
  if (type)
  {
    v7 = groupCopy;
    if (type == 1)
    {
      groupCopy = [(DNDConfiguration *)self senderConfigurationType];
      v7 = v8;
      if (groupCopy == 1)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    groupCopy = [(DNDConfiguration *)self senderConfigurationType];
    v7 = v8;
    if (!groupCopy)
    {
LABEL_4:
      groupCopy = [(DNDMutableConfiguration *)self setExceptionForContactGroup:v8];
      v7 = v8;
    }
  }

  MEMORY[0x2821F96F8](groupCopy, v7);
}

- (void)setExceptionOfType:(unint64_t)type forContactType:(unint64_t)contactType
{
  if (type)
  {
    if (type != 1 || [(DNDConfiguration *)self senderConfigurationType]!= 1)
    {
      return;
    }
  }

  else if ([(DNDConfiguration *)self senderConfigurationType])
  {
    return;
  }

  [(DNDMutableConfiguration *)self setExceptionForContactType:contactType];
}

- (void)setExceptionOfType:(unint64_t)type forContact:(id)contact
{
  contactCopy = contact;
  v8 = contactCopy;
  if (type)
  {
    v7 = contactCopy;
    if (type == 1)
    {
      contactCopy = [(DNDConfiguration *)self senderConfigurationType];
      v7 = v8;
      if (contactCopy == 1)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    contactCopy = [(DNDConfiguration *)self senderConfigurationType];
    v7 = v8;
    if (!contactCopy)
    {
LABEL_4:
      contactCopy = [(DNDMutableConfiguration *)self setExceptionForContact:v8];
      v7 = v8;
    }
  }

  MEMORY[0x2821F96F8](contactCopy, v7);
}

- (void)setExceptionOfType:(unint64_t)type forApplication:(id)application
{
  applicationCopy = application;
  v7 = [[DNDApplicationIdentifier alloc] initWithBundleID:applicationCopy];

  [(DNDMutableConfiguration *)self setExceptionOfType:type forApplicationIdentifier:v7];
}

- (void)setExceptionOfType:(unint64_t)type forApplication:(id)application thread:(id)thread
{
  threadCopy = thread;
  applicationCopy = application;
  v10 = [[DNDApplicationIdentifier alloc] initWithBundleID:applicationCopy];

  [(DNDMutableConfiguration *)self setExceptionOfType:type forApplicationIdentifier:v10 thread:threadCopy];
}

@end