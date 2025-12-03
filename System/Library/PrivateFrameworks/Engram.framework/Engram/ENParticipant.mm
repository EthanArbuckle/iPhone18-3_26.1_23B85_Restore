@interface ENParticipant
- (BOOL)supportsEngram;
- (ENParticipant)initWithAccountPublicKey:(id)key aliases:(id)aliases devices:(id)devices;
- (ENParticipant)initWithCoder:(id)coder;
- (id)description;
- (id)deviceWithIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENParticipant

- (ENParticipant)initWithAccountPublicKey:(id)key aliases:(id)aliases devices:(id)devices
{
  keyCopy = key;
  aliasesCopy = aliases;
  devicesCopy = devices;
  v15.receiver = self;
  v15.super_class = ENParticipant;
  v12 = [(ENParticipant *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountPublicKey, key);
    objc_storeStrong(&v13->_aliases, aliases);
    objc_storeStrong(&v13->_devices, devices);
  }

  return v13;
}

- (ENParticipant)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"kENParticipantAliasesKey"];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"kENParticipantDevicesKey"];

  v13 = [(ENParticipant *)self initWithAccountPublicKey:0 aliases:v8 devices:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountPublicKey = [(ENParticipant *)self accountPublicKey];
  [coderCopy encodeObject:accountPublicKey forKey:@"kENParticipantAccountPublicKey"];

  aliases = [(ENParticipant *)self aliases];
  [coderCopy encodeObject:aliases forKey:@"kENParticipantAliasesKey"];

  devices = [(ENParticipant *)self devices];
  [coderCopy encodeObject:devices forKey:@"kENParticipantDevicesKey"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  aliases = [(ENParticipant *)self aliases];
  accountPublicKey = [(ENParticipant *)self accountPublicKey];
  supportsEngram = [(ENParticipant *)self supportsEngram];
  v8 = @"NO";
  if (supportsEngram)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<%@ %p aliases: %@ accountPublicKey: %@, supportEngram: %@>", v4, self, aliases, accountPublicKey, v8];

  return v9;
}

- (BOOL)supportsEngram
{
  accountPublicKey = [(ENParticipant *)self accountPublicKey];
  if (accountPublicKey)
  {
    devices = [(ENParticipant *)self devices];
    v5 = [devices count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)deviceWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  devices = [(ENParticipant *)self devices];
  v6 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

@end