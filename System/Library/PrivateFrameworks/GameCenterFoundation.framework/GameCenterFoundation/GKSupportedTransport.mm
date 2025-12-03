@interface GKSupportedTransport
+ (id)secureCodedPropertyKeys;
+ (id)supportedTransportVersionsFromSupportedTransportVersionSet:(unsigned int)set;
+ (unsigned)supportedTransportVersionSetForSupportedTransportVersion:(int64_t)version;
+ (unsigned)supportedTransportVersionSetForTransportVersionStrings:(id)strings;
- (BOOL)isEqual:(id)equal;
- (GKSupportedTransport)initWithVersionNumber:(id)number;
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

- (GKSupportedTransport)initWithVersionNumber:(id)number
{
  numberCopy = number;
  v10.receiver = self;
  v10.super_class = GKSupportedTransport;
  v5 = [(GKSupportedTransport *)&v10 init];
  if (v5)
  {
    integerValue = [numberCopy integerValue];
    if (integerValue <= 2)
    {
      v7 = integerValue;
      name = v5->_name;
      v5->_name = &off_2785E06C0[integerValue]->isa;

      v5->_version = v7;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [v5 name];
    name2 = [(GKSupportedTransport *)self name];
    if ([name isEqualToString:name2])
    {
      version = [v5 version];
      v9 = version == [(GKSupportedTransport *)self version];
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
  version = [(GKSupportedTransport *)self version];
  name = [(GKSupportedTransport *)self name];
  v5 = [name hash];

  return v5 ^ version;
}

+ (unsigned)supportedTransportVersionSetForSupportedTransportVersion:(int64_t)version
{
  if (version == 2)
  {
    return 4;
  }

  else
  {
    return 2 * (version == 1);
  }
}

+ (unsigned)supportedTransportVersionSetForTransportVersionStrings:(id)strings
{
  v16 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [stringsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(stringsCopy);
        }

        v6 |= +[GKSupportedTransport supportedTransportVersionSetForSupportedTransportVersion:](GKSupportedTransport, "supportedTransportVersionSetForSupportedTransportVersion:", [*(*(&v11 + 1) + 8 * i) integerValue]);
      }

      v5 = [stringsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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

+ (id)supportedTransportVersionsFromSupportedTransportVersionSet:(unsigned int)set
{
  setCopy = set;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ((setCopy & 2) != 0)
  {
    v5 = [[GKSupportedTransport alloc] initWithVersionNumber:&unk_283B332F8];
    [v4 addObject:v5];
  }

  if ((setCopy & 4) != 0)
  {
    v6 = [[GKSupportedTransport alloc] initWithVersionNumber:&unk_283B33310];
    [v4 addObject:v6];
  }

  return v4;
}

@end