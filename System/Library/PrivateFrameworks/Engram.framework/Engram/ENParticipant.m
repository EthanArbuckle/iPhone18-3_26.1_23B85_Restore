@interface ENParticipant
- (BOOL)supportsEngram;
- (ENParticipant)initWithAccountPublicKey:(id)a3 aliases:(id)a4 devices:(id)a5;
- (ENParticipant)initWithCoder:(id)a3;
- (id)description;
- (id)deviceWithIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENParticipant

- (ENParticipant)initWithAccountPublicKey:(id)a3 aliases:(id)a4 devices:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ENParticipant;
  v12 = [(ENParticipant *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountPublicKey, a3);
    objc_storeStrong(&v13->_aliases, a4);
    objc_storeStrong(&v13->_devices, a5);
  }

  return v13;
}

- (ENParticipant)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"kENParticipantAliasesKey"];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"kENParticipantDevicesKey"];

  v13 = [(ENParticipant *)self initWithAccountPublicKey:0 aliases:v8 devices:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ENParticipant *)self accountPublicKey];
  [v4 encodeObject:v5 forKey:@"kENParticipantAccountPublicKey"];

  v6 = [(ENParticipant *)self aliases];
  [v4 encodeObject:v6 forKey:@"kENParticipantAliasesKey"];

  v7 = [(ENParticipant *)self devices];
  [v4 encodeObject:v7 forKey:@"kENParticipantDevicesKey"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ENParticipant *)self aliases];
  v6 = [(ENParticipant *)self accountPublicKey];
  v7 = [(ENParticipant *)self supportsEngram];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<%@ %p aliases: %@ accountPublicKey: %@, supportEngram: %@>", v4, self, v5, v6, v8];

  return v9;
}

- (BOOL)supportsEngram
{
  v3 = [(ENParticipant *)self accountPublicKey];
  if (v3)
  {
    v4 = [(ENParticipant *)self devices];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)deviceWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(ENParticipant *)self devices];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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