@interface ECDKIMPublicKey
- (ECDKIMPublicKey)initWithKeyValueDictionary:(id)a3;
- (ECDKIMPublicKey)initWithRecord:(id)a3;
- (ECDKIMPublicKey)initWithVersion:(id)a3 hashingAlgorithm:(unint64_t)a4 signingAlgorithm:(unint64_t)a5 notes:(id)a6 publicKeyData:(id)a7 serviceType:(id)a8 flags:(id)a9;
- (id)description;
- (void)_parseAcceptableHashingAlgorithmsFromDictionary:(id)a3;
- (void)_parseFlagsFromDictionary:(id)a3;
- (void)_parseNotesFromDictionary:(id)a3;
- (void)_parsePublicKeyDataFromDictionary:(id)a3;
- (void)_parseServiceTypeFromDictionary:(id)a3;
- (void)_parseSigningAlgorithmFromDictionary:(id)a3;
- (void)_parseVersionFromDictionary:(id)a3;
@end

@implementation ECDKIMPublicKey

- (ECDKIMPublicKey)initWithVersion:(id)a3 hashingAlgorithm:(unint64_t)a4 signingAlgorithm:(unint64_t)a5 notes:(id)a6 publicKeyData:(id)a7 serviceType:(id)a8 flags:(id)a9
{
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v32.receiver = self;
  v32.super_class = ECDKIMPublicKey;
  v20 = [(ECDKIMPublicKey *)&v32 init];
  if (v20)
  {
    v21 = [v15 copy];
    version = v20->_version;
    v20->_version = v21;

    v20->_hashingAlgorithm = a4;
    v20->_signingAlgorithm = a5;
    v23 = [v16 copy];
    notes = v20->_notes;
    v20->_notes = v23;

    v25 = [v17 copy];
    publicKeyData = v20->_publicKeyData;
    v20->_publicKeyData = v25;

    v27 = [v18 copy];
    serviceType = v20->_serviceType;
    v20->_serviceType = v27;

    v29 = [v19 copy];
    flags = v20->_flags;
    v20->_flags = v29;
  }

  return 0;
}

- (ECDKIMPublicKey)initWithKeyValueDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ECDKIMPublicKey;
  v5 = [(ECDKIMPublicKey *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ECDKIMPublicKey *)v5 _parseVersionFromDictionary:v4];
    [(ECDKIMPublicKey *)v6 _parseAcceptableHashingAlgorithmsFromDictionary:v4];
    [(ECDKIMPublicKey *)v6 _parseSigningAlgorithmFromDictionary:v4];
    [(ECDKIMPublicKey *)v6 _parseNotesFromDictionary:v4];
    [(ECDKIMPublicKey *)v6 _parsePublicKeyDataFromDictionary:v4];
    [(ECDKIMPublicKey *)v6 _parseServiceTypeFromDictionary:v4];
    [(ECDKIMPublicKey *)v6 _parseFlagsFromDictionary:v4];
  }

  return v6;
}

- (ECDKIMPublicKey)initWithRecord:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v17 = [a3 componentsSeparatedByString:@""];;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = objc_opt_new();
  obj = v17;
  v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = *v21;
    do
    {
      v5 = 0;
      do
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [*(*(&v20 + 1) + 8 * v5) ef_componentsSeparatedByString:@"=" maxSeparations:1];
        if ([v6 count] == 2)
        {
          v7 = [v6 firstObject];
          v8 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v9 = [v7 stringByTrimmingCharactersInSet:v8];

          v10 = [v6 lastObject];
          v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v12 = [v10 stringByTrimmingCharactersInSet:v11];

          [v18 setObject:v12 forKeyedSubscript:v9];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v3);
  }

  v13 = [(ECDKIMPublicKey *)self initWithKeyValueDictionary:v18];
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"\nDKIM PUBLIC KEY:\n"];
  [v3 appendFormat:@"Version:                 %@\n", self->_version];
  [v3 appendFormat:@"Hashing Algorithms:      %lu\n", self->_hashingAlgorithm];
  [v3 appendFormat:@"Signing Algorithm:       %lu\n", self->_signingAlgorithm];
  [v3 appendFormat:@"Public Key:              %@\n", self->_publicKeyData];

  return v3;
}

- (void)_parseVersionFromDictionary:(id)a3
{
  v6 = a3;
  v4 = [v6 objectForKeyedSubscript:@"v"];
  v5 = v4;
  if (v4 && ([v4 isEqualToString:@"DKIM1"] & 1) != 0)
  {
    objc_storeStrong(&self->_version, v5);
  }
}

- (void)_parseAcceptableHashingAlgorithmsFromDictionary:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:@"h"];
  v14 = v4;
  if (v4)
  {
    [v4 componentsSeparatedByString:@":"];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v5 = v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = *v16;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v11 = [v9 stringByTrimmingCharactersInSet:v10];

        if ([v11 isEqualToString:@"sha1"])
        {
          v12 = 0;
        }

        else
        {
          if (![v11 isEqualToString:@"sha256"])
          {
            goto LABEL_12;
          }

          v12 = 1;
        }

        self->_hashingAlgorithm = v12;
LABEL_12:

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (!v6)
      {
LABEL_14:

        v4 = v14;
        break;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_parseSigningAlgorithmFromDictionary:(id)a3
{
  self->_signingAlgorithm = 0;
  v4 = [a3 objectForKeyedSubscript:@"k"];
  if (v4)
  {
    v8 = v4;
    v5 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v6 = [v8 stringByTrimmingCharactersInSet:v5];

    if ([v6 isEqualToString:@"rsa"])
    {
      v7 = 0;
    }

    else
    {
      if (![v6 isEqualToString:@"ed25519"])
      {
LABEL_7:

        v4 = v8;
        goto LABEL_8;
      }

      v7 = 1;
    }

    self->_signingAlgorithm = v7;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_parseNotesFromDictionary:(id)a3
{
  v8 = a3;
  v4 = [v8 objectForKeyedSubscript:@"n"];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];
    notes = self->_notes;
    self->_notes = v6;
  }
}

- (void)_parsePublicKeyDataFromDictionary:(id)a3
{
  v6 = a3;
  v4 = [v6 objectForKeyedSubscript:@"p"];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v4 options:1];
    if (v5)
    {
      objc_storeStrong(&self->_publicKeyData, v5);
    }
  }
}

- (void)_parseServiceTypeFromDictionary:(id)a3
{
  v8 = a3;
  v4 = [v8 objectForKeyedSubscript:@"s"];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];
    serviceType = self->_serviceType;
    self->_serviceType = v6;
  }
}

- (void)_parseFlagsFromDictionary:(id)a3
{
  v8 = a3;
  v4 = [v8 objectForKeyedSubscript:@"t"];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];
    flags = self->_flags;
    self->_flags = v6;
  }
}

@end