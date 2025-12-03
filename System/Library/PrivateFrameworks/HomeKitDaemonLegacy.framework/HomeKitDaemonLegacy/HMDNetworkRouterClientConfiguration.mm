@interface HMDNetworkRouterClientConfiguration
+ (id)configurationForFirewallConfiguration:(id)configuration hapAccessory:(BOOL)accessory airplayAccessory:(BOOL)airplayAccessory withClientIdentifier:(id)identifier;
+ (id)configurationForOpenProtectionWithClientIdentifier:(id)identifier;
+ (id)configurationWithClientIdentifier:(id)identifier lanIdentifier:(int64_t)lanIdentifier;
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterClientConfiguration)init;
- (HMDNetworkRouterClientConfiguration)initWithClientIdentifier:(id)identifier lanIdentifier:(id)lanIdentifier credential:(id)credential wanFirewallConfiguration:(id)configuration lanFirewallConfiguration:(id)firewallConfiguration;
- (NSString)description;
- (NSUUID)fingerprint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDNetworkRouterClientConfiguration

- (NSUUID)fingerprint
{
  lanIdentifier = [(HMDNetworkRouterClientConfiguration *)self lanIdentifier];
  if (!lanIdentifier)
  {
    goto LABEL_6;
  }

  selfCopy = lanIdentifier;
  lanFirewallConfiguration = [(HMDNetworkRouterClientConfiguration *)self lanFirewallConfiguration];
  if (lanFirewallConfiguration)
  {
    wanFirewallConfiguration = [(HMDNetworkRouterClientConfiguration *)self wanFirewallConfiguration];

    if (wanFirewallConfiguration)
    {
      selfCopy = self;
      clientIdentifier = [(HMDNetworkRouterClientConfiguration *)selfCopy clientIdentifier];
      if (clientIdentifier)
      {
      }

      else
      {
        credential = [(HMDNetworkRouterClientConfiguration *)selfCopy credential];

        if (!credential)
        {
LABEL_9:
          v14 = [(HMDNetworkRouterClientConfiguration *)selfCopy serializeWithError:0];
          if (v14)
          {
            v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"5FA86C71-D9DE-4FE8-80BB-823164245F58"];
            lanFirewallConfiguration = [MEMORY[0x277CCAD78] hmf_UUIDWithNamespace:v15 data:v14];
          }

          else
          {
            lanFirewallConfiguration = 0;
          }

          goto LABEL_13;
        }
      }

      v9 = [HMDNetworkRouterClientConfiguration alloc];
      lanIdentifier2 = [(HMDNetworkRouterClientConfiguration *)selfCopy lanIdentifier];
      wanFirewallConfiguration2 = [(HMDNetworkRouterClientConfiguration *)selfCopy wanFirewallConfiguration];
      lanFirewallConfiguration2 = [(HMDNetworkRouterClientConfiguration *)selfCopy lanFirewallConfiguration];
      v13 = [(HMDNetworkRouterClientConfiguration *)v9 initWithClientIdentifier:0 lanIdentifier:lanIdentifier2 credential:0 wanFirewallConfiguration:wanFirewallConfiguration2 lanFirewallConfiguration:lanFirewallConfiguration2];

      selfCopy = v13;
      goto LABEL_9;
    }

LABEL_6:
    lanFirewallConfiguration = 0;
    goto LABEL_14;
  }

LABEL_13:

LABEL_14:

  return lanFirewallConfiguration;
}

+ (id)configurationForFirewallConfiguration:(id)configuration hapAccessory:(BOOL)accessory airplayAccessory:(BOOL)airplayAccessory withClientIdentifier:(id)identifier
{
  airplayAccessoryCopy = airplayAccessory;
  accessoryCopy = accessory;
  configurationCopy = configuration;
  identifierCopy = identifier;
  if ([configurationCopy hasFullAccessToLAN])
  {
    v11 = 1;
  }

  else
  {
    v11 = 3;
  }

  v12 = [HMDNetworkRouterClientConfiguration configurationWithClientIdentifier:identifierCopy lanIdentifier:v11];

  v13 = [HMDNetworkRouterLANFirewallConfiguration configurationFromFirewallRuleConfiguration:configurationCopy];
  [v12 setLanFirewallConfiguration:v13];

  v14 = [HMDNetworkRouterWANFirewallConfiguration configurationFromFirewallRuleConfiguration:configurationCopy];
  [v12 setWanFirewallConfiguration:v14];

  if (accessoryCopy && ([configurationCopy hasFullAccessToLAN] & 1) == 0)
  {
    v15 = +[HMDNetworkRouterDynamicPortRule ruleForHAP];
    lanFirewallConfiguration = [v12 lanFirewallConfiguration];
    ruleList = [lanFirewallConfiguration ruleList];
    [v15 addTo:ruleList];
  }

  if (airplayAccessoryCopy && ([configurationCopy hasAirplayRules] & 1) == 0)
  {
    v18 = [HMDNetworkRouterHomeKitOnlyFirewallConfiguration fallbackConfigurationForRuleset:@"AirPlay2"];
    lanFirewallConfiguration2 = [v12 lanFirewallConfiguration];
    [lanFirewallConfiguration2 addRulesFromFirewallConfiguration:v18];
  }

  return v12;
}

+ (id)configurationForOpenProtectionWithClientIdentifier:(id)identifier
{
  v3 = [HMDNetworkRouterClientConfiguration configurationWithClientIdentifier:identifier lanIdentifier:1];
  v4 = +[HMDNetworkRouterLANFirewallConfiguration configurationWithFullAccess];
  [v3 setLanFirewallConfiguration:v4];

  v5 = +[HMDNetworkRouterWANFirewallConfiguration configurationWithFullAccess];
  [v3 setWanFirewallConfiguration:v5];

  return v3;
}

+ (id)configurationWithClientIdentifier:(id)identifier lanIdentifier:(int64_t)lanIdentifier
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(HMDNetworkRouterClientConfiguration);
  if (identifierCopy)
  {
    v7 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:identifierCopy];
    [(HMDNetworkRouterClientConfiguration *)v6 setClientIdentifier:v7];
  }

  v8 = objc_alloc(MEMORY[0x277CFEC98]);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:lanIdentifier];
  v10 = [v8 initWithValue:v9];
  [(HMDNetworkRouterClientConfiguration *)v6 setLanIdentifier:v10];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  clientIdentifier = [(HMDNetworkRouterClientConfiguration *)self clientIdentifier];
  lanIdentifier = [(HMDNetworkRouterClientConfiguration *)self lanIdentifier];
  credential = [(HMDNetworkRouterClientConfiguration *)self credential];
  wanFirewallConfiguration = [(HMDNetworkRouterClientConfiguration *)self wanFirewallConfiguration];
  lanFirewallConfiguration = [(HMDNetworkRouterClientConfiguration *)self lanFirewallConfiguration];
  v9 = [v3 stringWithFormat:@"<HMDNetworkRouterClientConfiguration clientIdentifier=%@, lanIdentifier=%@, credential=%@, wanFirewallConfiguration=%@, lanFirewallConfiguration=%@>", clientIdentifier, lanIdentifier, credential, wanFirewallConfiguration, lanFirewallConfiguration];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      clientIdentifier = [(HMDNetworkRouterClientConfiguration *)self clientIdentifier];
      clientIdentifier2 = [(HMDNetworkRouterClientConfiguration *)v6 clientIdentifier];
      if (clientIdentifier != clientIdentifier2)
      {
        clientIdentifier3 = [(HMDNetworkRouterClientConfiguration *)self clientIdentifier];
        clientIdentifier4 = [(HMDNetworkRouterClientConfiguration *)v6 clientIdentifier];
        v40 = clientIdentifier3;
        if (![clientIdentifier3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_29;
        }
      }

      lanIdentifier = [(HMDNetworkRouterClientConfiguration *)self lanIdentifier];
      lanIdentifier2 = [(HMDNetworkRouterClientConfiguration *)v6 lanIdentifier];
      v41 = lanIdentifier;
      if (lanIdentifier != lanIdentifier2)
      {
        lanIdentifier3 = [(HMDNetworkRouterClientConfiguration *)self lanIdentifier];
        lanIdentifier4 = [(HMDNetworkRouterClientConfiguration *)v6 lanIdentifier];
        if (![lanIdentifier3 isEqual:?])
        {
          v10 = 0;
LABEL_27:

LABEL_28:
          if (clientIdentifier == clientIdentifier2)
          {
LABEL_30:

            goto LABEL_31;
          }

LABEL_29:

          goto LABEL_30;
        }
      }

      credential = [(HMDNetworkRouterClientConfiguration *)self credential];
      credential2 = [(HMDNetworkRouterClientConfiguration *)v6 credential];
      v38 = credential;
      v27 = credential == credential2;
      v15 = credential2;
      if (!v27)
      {
        credential3 = [(HMDNetworkRouterClientConfiguration *)self credential];
        credential4 = [(HMDNetworkRouterClientConfiguration *)v6 credential];
        v34 = credential3;
        if (![credential3 isEqual:?])
        {
          v10 = 0;
          v17 = v38;
LABEL_25:

LABEL_26:
          if (v41 == lanIdentifier2)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      wanFirewallConfiguration = [(HMDNetworkRouterClientConfiguration *)self wanFirewallConfiguration];
      wanFirewallConfiguration2 = [(HMDNetworkRouterClientConfiguration *)v6 wanFirewallConfiguration];
      v36 = v15;
      if (wanFirewallConfiguration == wanFirewallConfiguration2)
      {
        v31 = lanIdentifier3;
        v32 = lanIdentifier2;
      }

      else
      {
        wanFirewallConfiguration3 = [(HMDNetworkRouterClientConfiguration *)self wanFirewallConfiguration];
        wanFirewallConfiguration4 = [(HMDNetworkRouterClientConfiguration *)v6 wanFirewallConfiguration];
        v30 = wanFirewallConfiguration3;
        if (![wanFirewallConfiguration3 isEqual:?])
        {
          v10 = 0;
          v26 = wanFirewallConfiguration2;
          goto LABEL_23;
        }

        v31 = lanIdentifier3;
        v32 = lanIdentifier2;
      }

      lanFirewallConfiguration = [(HMDNetworkRouterClientConfiguration *)self lanFirewallConfiguration];
      lanFirewallConfiguration2 = [(HMDNetworkRouterClientConfiguration *)v6 lanFirewallConfiguration];
      v22 = lanFirewallConfiguration2;
      if (lanFirewallConfiguration == lanFirewallConfiguration2)
      {

        v10 = 1;
        v26 = wanFirewallConfiguration2;
        v27 = wanFirewallConfiguration == wanFirewallConfiguration2;
      }

      else
      {
        lanFirewallConfiguration3 = [(HMDNetworkRouterClientConfiguration *)self lanFirewallConfiguration];
        [(HMDNetworkRouterClientConfiguration *)v6 lanFirewallConfiguration];
        v25 = v24 = wanFirewallConfiguration;
        v10 = [lanFirewallConfiguration3 isEqual:v25];

        wanFirewallConfiguration = v24;
        v26 = wanFirewallConfiguration2;
        v27 = v24 == wanFirewallConfiguration2;
      }

      lanIdentifier3 = v31;
      lanIdentifier2 = v32;
      if (v27)
      {
LABEL_24:

        v17 = v38;
        v15 = v36;
        if (v38 == v36)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_23:

      goto LABEL_24;
    }

    v10 = 0;
  }

LABEL_31:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDNetworkRouterClientConfiguration allocWithZone:zone];
  clientIdentifier = [(HMDNetworkRouterClientConfiguration *)self clientIdentifier];
  lanIdentifier = [(HMDNetworkRouterClientConfiguration *)self lanIdentifier];
  credential = [(HMDNetworkRouterClientConfiguration *)self credential];
  wanFirewallConfiguration = [(HMDNetworkRouterClientConfiguration *)self wanFirewallConfiguration];
  lanFirewallConfiguration = [(HMDNetworkRouterClientConfiguration *)self lanFirewallConfiguration];
  v10 = [(HMDNetworkRouterClientConfiguration *)v4 initWithClientIdentifier:clientIdentifier lanIdentifier:lanIdentifier credential:credential wanFirewallConfiguration:wanFirewallConfiguration lanFirewallConfiguration:lanFirewallConfiguration];

  return v10;
}

- (id)serializeWithError:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  TLV8BufferInit();
  clientIdentifier = [(HMDNetworkRouterClientConfiguration *)self clientIdentifier];

  if (clientIdentifier)
  {
    clientIdentifier2 = [(HMDNetworkRouterClientConfiguration *)self clientIdentifier];
    v26 = 0;
    v7 = [clientIdentifier2 serializeWithError:&v26];
    v8 = v26;

    if (v8)
    {
      goto LABEL_23;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
      goto LABEL_16;
    }
  }

  lanIdentifier = [(HMDNetworkRouterClientConfiguration *)self lanIdentifier];

  if (lanIdentifier)
  {
    lanIdentifier2 = [(HMDNetworkRouterClientConfiguration *)self lanIdentifier];
    v25 = 0;
    v7 = [lanIdentifier2 serializeWithError:&v25];
    v8 = v25;

    if (v8)
    {
      goto LABEL_23;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
      goto LABEL_16;
    }
  }

  credential = [(HMDNetworkRouterClientConfiguration *)self credential];

  if (!credential)
  {
    goto LABEL_13;
  }

  credential2 = [(HMDNetworkRouterClientConfiguration *)self credential];
  v24 = 0;
  v7 = [credential2 serializeWithError:&v24];
  v8 = v24;

  if (v8)
  {
    goto LABEL_23;
  }

  [v7 bytes];
  [v7 length];
  if (TLV8BufferAppend())
  {
LABEL_16:

LABEL_17:
    if (error)
    {
      HMErrorFromOSStatus();
      v8 = 0;
      *error = v15 = 0;
      goto LABEL_26;
    }

    v8 = 0;
LABEL_25:
    v15 = 0;
    goto LABEL_26;
  }

LABEL_13:
  wanFirewallConfiguration = [(HMDNetworkRouterClientConfiguration *)self wanFirewallConfiguration];

  if (wanFirewallConfiguration)
  {
    wanFirewallConfiguration2 = [(HMDNetworkRouterClientConfiguration *)self wanFirewallConfiguration];
    v23 = 0;
    v7 = [wanFirewallConfiguration2 serializeWithError:&v23];
    v8 = v23;

    if (v8)
    {
      goto LABEL_23;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
      goto LABEL_16;
    }
  }

  lanFirewallConfiguration = [(HMDNetworkRouterClientConfiguration *)self lanFirewallConfiguration];

  if (lanFirewallConfiguration)
  {
    lanFirewallConfiguration2 = [(HMDNetworkRouterClientConfiguration *)self lanFirewallConfiguration];
    v22 = 0;
    v7 = [lanFirewallConfiguration2 serializeWithError:&v22];
    v8 = v22;

    if (v8)
    {
LABEL_23:

      if (error)
      {
        v18 = v8;
        v15 = 0;
        *error = v8;
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    [v7 bytes];
    [v7 length];
    v21 = TLV8BufferAppend();

    if (v21)
    {
      goto LABEL_17;
    }
  }

  v15 = [MEMORY[0x277CBEA90] dataWithBytes:v27 length:?];
  v8 = 0;
LABEL_26:
  TLV8BufferFree();

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = dataCopy;
  if (error)
  {
    *error = 0;
  }

  bytes = [dataCopy bytes];
  v9 = [v7 length];
  if (!v9)
  {
    v20 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_32;
  }

  selfCopy = self;
  errorCopy = error;
  v10 = 0;
  v27 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = bytes + v9;
  do
  {
    v37 = 0;
    v35 = 0;
    v36 = 0;
    v33 = 0;
    v34 = 0;
    if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
    {
      v20 = v27;
      if (errorCopy)
      {
        HMErrorFromOSStatus();
        *errorCopy = v22 = 0;
        goto LABEL_33;
      }

      goto LABEL_29;
    }

    if (!v36)
    {
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v10 = v23;
      if (v23)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    }

    if (v37 <= 3u)
    {
      if (v37 == 1)
      {
        v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v32 = v10;
        v17 = &v32;
        [MEMORY[0x277CFEC98] parsedFromData:v16 error:&v32];
        v27 = v18 = v27;
      }

      else
      {
        if (v37 != 3)
        {
          goto LABEL_20;
        }

        v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v31 = v10;
        v17 = &v31;
        [MEMORY[0x277CFEC98] parsedFromData:v16 error:&v31];
        v14 = v18 = v14;
      }
    }

    else
    {
      switch(v37)
      {
        case 4u:
          v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v30 = v10;
          v17 = &v30;
          [HMDNetworkRouterCredential parsedFromData:v16 error:&v30];
          v13 = v18 = v13;
          break;
        case 5u:
          v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v29 = v10;
          v17 = &v29;
          [HMDNetworkRouterWANFirewallConfiguration parsedFromData:v16 error:&v29];
          v12 = v18 = v12;
          break;
        case 6u:
          v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v28 = v10;
          v17 = &v28;
          [HMDNetworkRouterLANFirewallConfiguration parsedFromData:v16 error:&v28];
          v11 = v18 = v11;
          break;
        default:
          goto LABEL_20;
      }
    }

    v19 = *v17;

    v10 = v19;
LABEL_20:
    if (v35)
    {
      free(v35);
    }
  }

  while (v33 != v15);
  if (v10)
  {
LABEL_24:
    v20 = v27;
    if (errorCopy)
    {
      v21 = v10;
      v22 = 0;
      *errorCopy = v10;
      goto LABEL_33;
    }

LABEL_29:
    v22 = 0;
    goto LABEL_33;
  }

LABEL_31:
  v20 = v27;
  self = selfCopy;
LABEL_32:
  [(HMDNetworkRouterClientConfiguration *)self setClientIdentifier:v20];
  [(HMDNetworkRouterClientConfiguration *)self setLanIdentifier:v14];
  [(HMDNetworkRouterClientConfiguration *)self setCredential:v13];
  [(HMDNetworkRouterClientConfiguration *)self setWanFirewallConfiguration:v12];
  [(HMDNetworkRouterClientConfiguration *)self setLanFirewallConfiguration:v11];
  v10 = 0;
  v22 = 1;
LABEL_33:

  return v22;
}

- (HMDNetworkRouterClientConfiguration)initWithClientIdentifier:(id)identifier lanIdentifier:(id)lanIdentifier credential:(id)credential wanFirewallConfiguration:(id)configuration lanFirewallConfiguration:(id)firewallConfiguration
{
  identifierCopy = identifier;
  lanIdentifierCopy = lanIdentifier;
  credentialCopy = credential;
  configurationCopy = configuration;
  firewallConfigurationCopy = firewallConfiguration;
  v21.receiver = self;
  v21.super_class = HMDNetworkRouterClientConfiguration;
  v17 = [(HMDNetworkRouterClientConfiguration *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientIdentifier, identifier);
    objc_storeStrong(&v18->_lanIdentifier, lanIdentifier);
    objc_storeStrong(&v18->_credential, credential);
    objc_storeStrong(&v18->_wanFirewallConfiguration, configuration);
    objc_storeStrong(&v18->_lanFirewallConfiguration, firewallConfiguration);
  }

  return v18;
}

- (HMDNetworkRouterClientConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterClientConfiguration;
  return [(HMDNetworkRouterClientConfiguration *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterClientConfiguration);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterClientConfiguration *)v6 parseFromData:dataCopy error:&v11];
    v8 = v11;
    if (v8)
    {

      if (error)
      {
        v9 = v8;
        v7 = 0;
        *error = v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

@end