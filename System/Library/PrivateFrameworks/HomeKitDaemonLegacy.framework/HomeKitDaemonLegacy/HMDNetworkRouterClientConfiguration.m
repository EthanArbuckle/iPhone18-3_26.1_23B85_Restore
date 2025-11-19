@interface HMDNetworkRouterClientConfiguration
+ (id)configurationForFirewallConfiguration:(id)a3 hapAccessory:(BOOL)a4 airplayAccessory:(BOOL)a5 withClientIdentifier:(id)a6;
+ (id)configurationForOpenProtectionWithClientIdentifier:(id)a3;
+ (id)configurationWithClientIdentifier:(id)a3 lanIdentifier:(int64_t)a4;
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDNetworkRouterClientConfiguration)init;
- (HMDNetworkRouterClientConfiguration)initWithClientIdentifier:(id)a3 lanIdentifier:(id)a4 credential:(id)a5 wanFirewallConfiguration:(id)a6 lanFirewallConfiguration:(id)a7;
- (NSString)description;
- (NSUUID)fingerprint;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDNetworkRouterClientConfiguration

- (NSUUID)fingerprint
{
  v3 = [(HMDNetworkRouterClientConfiguration *)self lanIdentifier];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [(HMDNetworkRouterClientConfiguration *)self lanFirewallConfiguration];
  if (v5)
  {
    v6 = [(HMDNetworkRouterClientConfiguration *)self wanFirewallConfiguration];

    if (v6)
    {
      v4 = self;
      v7 = [(HMDNetworkRouterClientConfiguration *)v4 clientIdentifier];
      if (v7)
      {
      }

      else
      {
        v8 = [(HMDNetworkRouterClientConfiguration *)v4 credential];

        if (!v8)
        {
LABEL_9:
          v14 = [(HMDNetworkRouterClientConfiguration *)v4 serializeWithError:0];
          if (v14)
          {
            v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"5FA86C71-D9DE-4FE8-80BB-823164245F58"];
            v5 = [MEMORY[0x277CCAD78] hmf_UUIDWithNamespace:v15 data:v14];
          }

          else
          {
            v5 = 0;
          }

          goto LABEL_13;
        }
      }

      v9 = [HMDNetworkRouterClientConfiguration alloc];
      v10 = [(HMDNetworkRouterClientConfiguration *)v4 lanIdentifier];
      v11 = [(HMDNetworkRouterClientConfiguration *)v4 wanFirewallConfiguration];
      v12 = [(HMDNetworkRouterClientConfiguration *)v4 lanFirewallConfiguration];
      v13 = [(HMDNetworkRouterClientConfiguration *)v9 initWithClientIdentifier:0 lanIdentifier:v10 credential:0 wanFirewallConfiguration:v11 lanFirewallConfiguration:v12];

      v4 = v13;
      goto LABEL_9;
    }

LABEL_6:
    v5 = 0;
    goto LABEL_14;
  }

LABEL_13:

LABEL_14:

  return v5;
}

+ (id)configurationForFirewallConfiguration:(id)a3 hapAccessory:(BOOL)a4 airplayAccessory:(BOOL)a5 withClientIdentifier:(id)a6
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = a6;
  if ([v9 hasFullAccessToLAN])
  {
    v11 = 1;
  }

  else
  {
    v11 = 3;
  }

  v12 = [HMDNetworkRouterClientConfiguration configurationWithClientIdentifier:v10 lanIdentifier:v11];

  v13 = [HMDNetworkRouterLANFirewallConfiguration configurationFromFirewallRuleConfiguration:v9];
  [v12 setLanFirewallConfiguration:v13];

  v14 = [HMDNetworkRouterWANFirewallConfiguration configurationFromFirewallRuleConfiguration:v9];
  [v12 setWanFirewallConfiguration:v14];

  if (v8 && ([v9 hasFullAccessToLAN] & 1) == 0)
  {
    v15 = +[HMDNetworkRouterDynamicPortRule ruleForHAP];
    v16 = [v12 lanFirewallConfiguration];
    v17 = [v16 ruleList];
    [v15 addTo:v17];
  }

  if (v7 && ([v9 hasAirplayRules] & 1) == 0)
  {
    v18 = [HMDNetworkRouterHomeKitOnlyFirewallConfiguration fallbackConfigurationForRuleset:@"AirPlay2"];
    v19 = [v12 lanFirewallConfiguration];
    [v19 addRulesFromFirewallConfiguration:v18];
  }

  return v12;
}

+ (id)configurationForOpenProtectionWithClientIdentifier:(id)a3
{
  v3 = [HMDNetworkRouterClientConfiguration configurationWithClientIdentifier:a3 lanIdentifier:1];
  v4 = +[HMDNetworkRouterLANFirewallConfiguration configurationWithFullAccess];
  [v3 setLanFirewallConfiguration:v4];

  v5 = +[HMDNetworkRouterWANFirewallConfiguration configurationWithFullAccess];
  [v3 setWanFirewallConfiguration:v5];

  return v3;
}

+ (id)configurationWithClientIdentifier:(id)a3 lanIdentifier:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDNetworkRouterClientConfiguration);
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:v5];
    [(HMDNetworkRouterClientConfiguration *)v6 setClientIdentifier:v7];
  }

  v8 = objc_alloc(MEMORY[0x277CFEC98]);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v10 = [v8 initWithValue:v9];
  [(HMDNetworkRouterClientConfiguration *)v6 setLanIdentifier:v10];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDNetworkRouterClientConfiguration *)self clientIdentifier];
  v5 = [(HMDNetworkRouterClientConfiguration *)self lanIdentifier];
  v6 = [(HMDNetworkRouterClientConfiguration *)self credential];
  v7 = [(HMDNetworkRouterClientConfiguration *)self wanFirewallConfiguration];
  v8 = [(HMDNetworkRouterClientConfiguration *)self lanFirewallConfiguration];
  v9 = [v3 stringWithFormat:@"<HMDNetworkRouterClientConfiguration clientIdentifier=%@, lanIdentifier=%@, credential=%@, wanFirewallConfiguration=%@, lanFirewallConfiguration=%@>", v4, v5, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(HMDNetworkRouterClientConfiguration *)self clientIdentifier];
      v8 = [(HMDNetworkRouterClientConfiguration *)v6 clientIdentifier];
      if (v7 != v8)
      {
        v9 = [(HMDNetworkRouterClientConfiguration *)self clientIdentifier];
        v39 = [(HMDNetworkRouterClientConfiguration *)v6 clientIdentifier];
        v40 = v9;
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_29;
        }
      }

      v11 = [(HMDNetworkRouterClientConfiguration *)self lanIdentifier];
      v12 = [(HMDNetworkRouterClientConfiguration *)v6 lanIdentifier];
      v41 = v11;
      if (v11 != v12)
      {
        v3 = [(HMDNetworkRouterClientConfiguration *)self lanIdentifier];
        v37 = [(HMDNetworkRouterClientConfiguration *)v6 lanIdentifier];
        if (![v3 isEqual:?])
        {
          v10 = 0;
LABEL_27:

LABEL_28:
          if (v7 == v8)
          {
LABEL_30:

            goto LABEL_31;
          }

LABEL_29:

          goto LABEL_30;
        }
      }

      v13 = [(HMDNetworkRouterClientConfiguration *)self credential];
      v14 = [(HMDNetworkRouterClientConfiguration *)v6 credential];
      v38 = v13;
      v27 = v13 == v14;
      v15 = v14;
      if (!v27)
      {
        v16 = [(HMDNetworkRouterClientConfiguration *)self credential];
        v33 = [(HMDNetworkRouterClientConfiguration *)v6 credential];
        v34 = v16;
        if (![v16 isEqual:?])
        {
          v10 = 0;
          v17 = v38;
LABEL_25:

LABEL_26:
          if (v41 == v12)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      v18 = [(HMDNetworkRouterClientConfiguration *)self wanFirewallConfiguration];
      v35 = [(HMDNetworkRouterClientConfiguration *)v6 wanFirewallConfiguration];
      v36 = v15;
      if (v18 == v35)
      {
        v31 = v3;
        v32 = v12;
      }

      else
      {
        v19 = [(HMDNetworkRouterClientConfiguration *)self wanFirewallConfiguration];
        v29 = [(HMDNetworkRouterClientConfiguration *)v6 wanFirewallConfiguration];
        v30 = v19;
        if (![v19 isEqual:?])
        {
          v10 = 0;
          v26 = v35;
          goto LABEL_23;
        }

        v31 = v3;
        v32 = v12;
      }

      v20 = [(HMDNetworkRouterClientConfiguration *)self lanFirewallConfiguration];
      v21 = [(HMDNetworkRouterClientConfiguration *)v6 lanFirewallConfiguration];
      v22 = v21;
      if (v20 == v21)
      {

        v10 = 1;
        v26 = v35;
        v27 = v18 == v35;
      }

      else
      {
        v23 = [(HMDNetworkRouterClientConfiguration *)self lanFirewallConfiguration];
        [(HMDNetworkRouterClientConfiguration *)v6 lanFirewallConfiguration];
        v25 = v24 = v18;
        v10 = [v23 isEqual:v25];

        v18 = v24;
        v26 = v35;
        v27 = v24 == v35;
      }

      v3 = v31;
      v12 = v32;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDNetworkRouterClientConfiguration allocWithZone:a3];
  v5 = [(HMDNetworkRouterClientConfiguration *)self clientIdentifier];
  v6 = [(HMDNetworkRouterClientConfiguration *)self lanIdentifier];
  v7 = [(HMDNetworkRouterClientConfiguration *)self credential];
  v8 = [(HMDNetworkRouterClientConfiguration *)self wanFirewallConfiguration];
  v9 = [(HMDNetworkRouterClientConfiguration *)self lanFirewallConfiguration];
  v10 = [(HMDNetworkRouterClientConfiguration *)v4 initWithClientIdentifier:v5 lanIdentifier:v6 credential:v7 wanFirewallConfiguration:v8 lanFirewallConfiguration:v9];

  return v10;
}

- (id)serializeWithError:(id *)a3
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
  v5 = [(HMDNetworkRouterClientConfiguration *)self clientIdentifier];

  if (v5)
  {
    v6 = [(HMDNetworkRouterClientConfiguration *)self clientIdentifier];
    v26 = 0;
    v7 = [v6 serializeWithError:&v26];
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

  v9 = [(HMDNetworkRouterClientConfiguration *)self lanIdentifier];

  if (v9)
  {
    v10 = [(HMDNetworkRouterClientConfiguration *)self lanIdentifier];
    v25 = 0;
    v7 = [v10 serializeWithError:&v25];
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

  v11 = [(HMDNetworkRouterClientConfiguration *)self credential];

  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = [(HMDNetworkRouterClientConfiguration *)self credential];
  v24 = 0;
  v7 = [v12 serializeWithError:&v24];
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
    if (a3)
    {
      HMErrorFromOSStatus();
      v8 = 0;
      *a3 = v15 = 0;
      goto LABEL_26;
    }

    v8 = 0;
LABEL_25:
    v15 = 0;
    goto LABEL_26;
  }

LABEL_13:
  v13 = [(HMDNetworkRouterClientConfiguration *)self wanFirewallConfiguration];

  if (v13)
  {
    v14 = [(HMDNetworkRouterClientConfiguration *)self wanFirewallConfiguration];
    v23 = 0;
    v7 = [v14 serializeWithError:&v23];
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

  v16 = [(HMDNetworkRouterClientConfiguration *)self lanFirewallConfiguration];

  if (v16)
  {
    v17 = [(HMDNetworkRouterClientConfiguration *)self lanFirewallConfiguration];
    v22 = 0;
    v7 = [v17 serializeWithError:&v22];
    v8 = v22;

    if (v8)
    {
LABEL_23:

      if (a3)
      {
        v18 = v8;
        v15 = 0;
        *a3 = v8;
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

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  v8 = [v6 bytes];
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

  v25 = self;
  v26 = a4;
  v10 = 0;
  v27 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = v8 + v9;
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
      if (v26)
      {
        HMErrorFromOSStatus();
        *v26 = v22 = 0;
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
    if (v26)
    {
      v21 = v10;
      v22 = 0;
      *v26 = v10;
      goto LABEL_33;
    }

LABEL_29:
    v22 = 0;
    goto LABEL_33;
  }

LABEL_31:
  v20 = v27;
  self = v25;
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

- (HMDNetworkRouterClientConfiguration)initWithClientIdentifier:(id)a3 lanIdentifier:(id)a4 credential:(id)a5 wanFirewallConfiguration:(id)a6 lanFirewallConfiguration:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = HMDNetworkRouterClientConfiguration;
  v17 = [(HMDNetworkRouterClientConfiguration *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientIdentifier, a3);
    objc_storeStrong(&v18->_lanIdentifier, a4);
    objc_storeStrong(&v18->_credential, a5);
    objc_storeStrong(&v18->_wanFirewallConfiguration, a6);
    objc_storeStrong(&v18->_lanFirewallConfiguration, a7);
  }

  return v18;
}

- (HMDNetworkRouterClientConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterClientConfiguration;
  return [(HMDNetworkRouterClientConfiguration *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDNetworkRouterClientConfiguration);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterClientConfiguration *)v6 parseFromData:v5 error:&v11];
    v8 = v11;
    if (v8)
    {

      if (a4)
      {
        v9 = v8;
        v7 = 0;
        *a4 = v8;
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