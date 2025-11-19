@interface DNDMutableSenderConfiguration
- (void)removeAllowedContactMatchingContact:(id)a3;
- (void)removeDeniedContactMatchingContact:(id)a3;
- (void)setAllowedContactGroups:(id)a3;
- (void)setAllowedContactTypes:(id)a3;
- (void)setAllowedContacts:(id)a3;
- (void)setDeniedContactGroups:(id)a3;
- (void)setDeniedContactTypes:(id)a3;
- (void)setDeniedContacts:(id)a3;
- (void)setPhoneCallBypassSettings:(id)a3;
@end

@implementation DNDMutableSenderConfiguration

- (void)setAllowedContactTypes:(id)a3
{
  v4 = [a3 mutableCopy];
  allowedContactTypes = self->super._allowedContactTypes;
  self->super._allowedContactTypes = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setDeniedContactTypes:(id)a3
{
  v4 = [a3 mutableCopy];
  deniedContactTypes = self->super._deniedContactTypes;
  self->super._deniedContactTypes = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setAllowedContactGroups:(id)a3
{
  v4 = [a3 mutableCopy];
  allowedContactGroups = self->super._allowedContactGroups;
  self->super._allowedContactGroups = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setDeniedContactGroups:(id)a3
{
  v4 = [a3 mutableCopy];
  deniedContactGroups = self->super._deniedContactGroups;
  self->super._deniedContactGroups = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setAllowedContacts:(id)a3
{
  v4 = [a3 mutableCopy];
  allowedContacts = self->super._allowedContacts;
  self->super._allowedContacts = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setDeniedContacts:(id)a3
{
  v4 = [a3 mutableCopy];
  deniedContacts = self->super._deniedContacts;
  self->super._deniedContacts = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setPhoneCallBypassSettings:(id)a3
{
  v4 = [a3 copy];
  phoneCallBypassSettings = self->super._phoneCallBypassSettings;
  self->super._phoneCallBypassSettings = v4;

  MEMORY[0x2821F96F8]();
}

- (void)removeAllowedContactMatchingContact:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->super._allowedContacts;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if ([v4 matchesContact:{v10, v13}])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v11 = v10;

    if (!v11)
    {
      goto LABEL_13;
    }

    [(NSMutableSet *)self->super._allowedContacts removeObject:v11];
    v5 = v11;
  }

LABEL_12:

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeDeniedContactMatchingContact:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->super._deniedContacts;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if ([v4 matchesContact:{v10, v13}])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v11 = v10;

    if (!v11)
    {
      goto LABEL_13;
    }

    [(NSMutableSet *)self->super._deniedContacts removeObject:v11];
    v5 = v11;
  }

LABEL_12:

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
}

@end