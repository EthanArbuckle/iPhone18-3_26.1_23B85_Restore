@interface OspreyPreferences
- (OspreyPreferences)initWithKeychain:(id)keychain;
- (id)connectionPreferencesForHost:(id)host;
- (id)connections;
- (void)deleteConnectionPreferencesForHost:(id)host;
- (void)setConnectionPreferences:(id)preferences;
@end

@implementation OspreyPreferences

- (OspreyPreferences)initWithKeychain:(id)keychain
{
  keychainCopy = keychain;
  v9.receiver = self;
  v9.super_class = OspreyPreferences;
  v6 = [(OspreyPreferences *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keychain, keychain);
  }

  return v7;
}

- (id)connectionPreferencesForHost:(id)host
{
  hostCopy = host;
  v5 = hostCopy;
  if (hostCopy)
  {
    lowercaseString = [hostCopy lowercaseString];
    v7 = CFPreferencesCopyAppValue(@"Connections", @"com.apple.osprey");
    v8 = [v7 objectForKey:lowercaseString];
    v9 = [OspreyConnectionPreferences alloc];
    keychain = self->_keychain;
    if (v8)
    {
      v11 = [(OspreyConnectionPreferences *)v9 initWithDictionary:v8 keychain:keychain];
    }

    else
    {
      v11 = [(OspreyConnectionPreferences *)v9 initWithConnectionHost:v5 keychain:keychain];
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)deleteConnectionPreferencesForHost:(id)host
{
  hostCopy = host;
  v4 = CFPreferencesCopyAppValue(@"Connections", @"com.apple.osprey");
  v5 = [v4 mutableCopy];

  if (v5)
  {
    lowercaseString = [hostCopy lowercaseString];
    v7 = [v5 objectForKey:lowercaseString];
    if (v7)
    {
      v8 = [[OspreyConnectionPreferences alloc] initWithDictionary:v7 keychain:self->_keychain];
      [(OspreyConnectionPreferences *)v8 deleteAll];

      [v5 removeObjectForKey:lowercaseString];
      CFPreferencesSetAppValue(@"Connections", v5, @"com.apple.osprey");
    }
  }
}

- (void)setConnectionPreferences:(id)preferences
{
  preferencesCopy = preferences;
  connectionHost = [preferencesCopy connectionHost];

  v4 = preferencesCopy;
  if (connectionHost)
  {
    connectionHost2 = [preferencesCopy connectionHost];
    lowercaseString = [connectionHost2 lowercaseString];

    v7 = CFPreferencesCopyAppValue(@"Connections", @"com.apple.osprey");
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    dictionaryRepresentation = [preferencesCopy dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [v8 setValue:dictionaryRepresentation forKey:lowercaseString];
    }

    else
    {
      [v8 removeObjectForKey:lowercaseString];
    }

    CFPreferencesSetAppValue(@"Connections", v8, @"com.apple.osprey");

    v4 = preferencesCopy;
  }
}

- (id)connections
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = CFPreferencesCopyAppValue(@"Connections", @"com.apple.osprey");
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [v3 allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [OspreyConnectionPreferences alloc];
        v12 = [v3 objectForKey:v10];
        v13 = [(OspreyConnectionPreferences *)v11 initWithDictionary:v12 keychain:self->_keychain];

        [v4 addObject:v13];
      }

      v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

@end