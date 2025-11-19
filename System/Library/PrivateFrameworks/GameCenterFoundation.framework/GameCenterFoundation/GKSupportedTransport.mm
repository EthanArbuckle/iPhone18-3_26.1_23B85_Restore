@interface GKSupportedTransport
+ (id)secureCodedPropertyKeys;
+ (id)supportedTransportVersionsFromSupportedTransportVersionSet:(unsigned int)a3;
+ (unsigned)supportedTransportVersionSetForSupportedTransportVersion:(int64_t)a3;
+ (unsigned)supportedTransportVersionSetForTransportVersionStrings:(id)a3;
- (BOOL)isEqual:(id)a3;
- (GKSupportedTransport)initWithVersionNumber:(id)a3;
- (unint64_t)hash;
@end

@implementation GKSupportedTransport

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_8 != -1)
  {
    +[GKSupportedTransport secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_8;

  return v3;
}

void __47__GKSupportedTransport_secureCodedPropertyKeys__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"name";
  v3[1] = @"version";
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_8;
  secureCodedPropertyKeys_sSecureCodedKeys_8 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (GKSupportedTransport)initWithVersionNumber:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GKSupportedTransport;
  v5 = [(GKSupportedTransport *)&v10 init];
  if (v5)
  {
    v6 = [v4 integerValue];
    if (v6 <= 2)
    {
      v7 = v6;
      name = v5->_name;
      v5->_name = &off_2785E06C0[v6]->isa;

      v5->_version = v7;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 name];
    v7 = [(GKSupportedTransport *)self name];
    if ([v6 isEqualToString:v7])
    {
      v8 = [v5 version];
      v9 = v8 == [(GKSupportedTransport *)self version];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(GKSupportedTransport *)self version];
  v4 = [(GKSupportedTransport *)self name];
  v5 = [v4 hash];

  return v5 ^ v3;
}

+ (unsigned)supportedTransportVersionSetForSupportedTransportVersion:(int64_t)a3
{
  if (a3 == 2)
  {
    return 4;
  }

  else
  {
    return 2 * (a3 == 1);
  }
}

+ (unsigned)supportedTransportVersionSetForTransportVersionStrings:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 |= +[GKSupportedTransport supportedTransportVersionSetForSupportedTransportVersion:](GKSupportedTransport, "supportedTransportVersionSetForSupportedTransportVersion:", [*(*(&v11 + 1) + 8 * i) integerValue]);
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)supportedTransportVersionsFromSupportedTransportVersionSet:(unsigned int)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ((v3 & 2) != 0)
  {
    v5 = [[GKSupportedTransport alloc] initWithVersionNumber:&unk_283B332F8];
    [v4 addObject:v5];
  }

  if ((v3 & 4) != 0)
  {
    v6 = [[GKSupportedTransport alloc] initWithVersionNumber:&unk_283B33310];
    [v4 addObject:v6];
  }

  return v4;
}

@end