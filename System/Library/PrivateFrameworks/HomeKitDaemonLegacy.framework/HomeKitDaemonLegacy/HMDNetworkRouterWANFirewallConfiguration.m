@interface HMDNetworkRouterWANFirewallConfiguration
+ (HMDNetworkRouterWANFirewallConfiguration)configurationWithFullAccess;
+ (id)configurationFromFirewallRuleConfiguration:(id)a3;
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDNetworkRouterWANFirewallConfiguration)init;
- (HMDNetworkRouterWANFirewallConfiguration)initWithType:(id)a3 ruleList:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDNetworkRouterWANFirewallConfiguration

+ (id)configurationFromFirewallRuleConfiguration:(id)a3
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(HMDNetworkRouterWANFirewallConfiguration);
  v5 = [v3 hasFullAccessToWAN];
  v6 = v5;
  v7 = [[HMDNetworkRouterWANFirewall alloc] initWithType:v5 ^ 1u];
  v68 = v4;
  [(HMDNetworkRouterWANFirewallConfiguration *)v4 setType:v7];

  if ((v6 & 1) == 0)
  {
    v8 = objc_alloc_init(HMDNetworkRouterWANFirewallRuleList);
    [(HMDNetworkRouterWANFirewallConfiguration *)v4 setRuleList:v8];

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v62 = v3;
    obj = [v3 wanRules];
    v74 = [obj countByEnumeratingWithState:&v80 objects:v84 count:16];
    if (!v74)
    {
      goto LABEL_35;
    }

    v73 = *v81;
    v9 = 0x277CFE000uLL;
    v10 = 0x277CCA000uLL;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v81 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v80 + 1) + 8 * v11);
        if ([v12 transportProtocol] == 2)
        {
          v13 = [v12 icmpTypes];
          v14 = [HMDNetworkRouterICMPTypeList typeListFromICMPTypes:v13];

          if (!v14)
          {
            goto LABEL_13;
          }

          v15 = 0;
          v16 = 0;
          v77 = 0;
        }

        else
        {
          v17 = +[HMDNetworkRouterProtocol protocolFromTransportProtocol:](HMDNetworkRouterProtocol, "protocolFromTransportProtocol:", [v12 transportProtocol]);
          if (!v17)
          {
LABEL_13:

            goto LABEL_24;
          }

          v15 = v17;
          v18 = objc_alloc(*(v9 + 3224));
          v19 = [*(v10 + 2992) numberWithUnsignedShort:{objc_msgSend(v12, "portStart")}];
          v16 = [v18 initWithValue:v19];

          LODWORD(v18) = [v12 portStart];
          if (v18 == [v12 portEnd])
          {
            v77 = 0;
          }

          else
          {
            v20 = objc_alloc(*(v9 + 3224));
            v21 = [*(v10 + 2992) numberWithUnsignedShort:{objc_msgSend(v12, "portEnd")}];
            v77 = [v20 initWithValue:v21];
          }

          v14 = 0;
        }

        v22 = [v12 subject];
        v23 = [v22 hostnames];

        v75 = v22;
        v76 = v15;
        if (v23)
        {
          v24 = [v22 hostnames];
          v25 = v14;
          v26 = v15;
          v27 = v16;
          v28 = v77;
          [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v24, "count")}];
          v70 = v14;
          v30 = v29 = v16;
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __HMDNetworkRouterWANRulesFromHostNames_block_invoke;
          v86 = &unk_279727850;
          v87 = v25;
          v88 = v26;
          v89 = v27;
          v90 = v28;
          v91 = v30;
          v31 = v25;
          v32 = v26;
          v33 = v27;
          v34 = v28;
          v35 = v30;
          [v24 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];
          v36 = [v35 copy];

          v9 = 0x277CFE000;
          v16 = v29;
          v14 = v70;

          goto LABEL_20;
        }

        v37 = [v22 addresses];

        if (v37)
        {
          v24 = [v22 addresses];
          v38 = v14;
          v39 = v15;
          v71 = v16;
          v40 = v16;
          v41 = v77;
          v42 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v24, "count")}];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __HMDNetworkRouterWANRulesFromAddresses_block_invoke;
          v86 = &unk_279727878;
          v87 = v38;
          v88 = v39;
          v89 = v40;
          v90 = v41;
          v91 = v42;
          v66 = v38;
          v32 = v39;
          v33 = v40;
          v43 = v41;
          v9 = 0x277CFE000;
          v44 = v43;
          v45 = v42;
          [v24 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];
          v36 = [v45 copy];

          v16 = v71;
LABEL_20:

LABEL_21:
          v10 = 0x277CCA000;
          v22 = v75;
          v15 = v76;
          goto LABEL_22;
        }

        v36 = [v22 addressRange];

        if (v36)
        {
          v49 = [v22 addressRange];
          v50 = v14;
          v63 = v15;
          v72 = v16;
          v67 = v16;
          v65 = v77;
          v51 = [v49 addressStart];
          v52 = [HMDNetworkRouterIPAddress ipAddressFromRuleAddress:v51 allowWildcard:0];

          v64 = v49;
          v53 = v49;
          v54 = v50;
          v55 = [v53 addressEnd];
          v56 = [HMDNetworkRouterIPAddress ipAddressFromRuleAddress:v55 allowWildcard:0];

          if (v50)
          {
            v57 = [[HMDNetworkRouterWANICMPRule alloc] initWithHostDNSName:0 hostIPStart:v52 hostIPEnd:v56 icmpTypes:v50];
            v58 = v63;
          }

          else
          {
            v58 = v63;
            v57 = [[HMDNetworkRouterWANPortRule alloc] initWithProtocol:v63 hostDNSName:0 hostIPStart:v52 hostIPEnd:v56 hostPortStart:v67 hostPortEnd:v65];
          }

          *buf = v57;
          v36 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];

          v16 = v72;
          v24 = v64;
          goto LABEL_21;
        }

LABEL_22:

        if (v36)
        {
          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = __98__HMDNetworkRouterWANFirewallConfiguration_Additions__configurationFromFirewallRuleConfiguration___block_invoke;
          v78[3] = &unk_279727828;
          v79 = v68;
          [v36 hmf_enumerateWithAutoreleasePoolUsingBlock:v78];

          goto LABEL_27;
        }

LABEL_24:
        v46 = objc_autoreleasePoolPush();
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v48;
          *&buf[12] = 2112;
          *&buf[14] = v12;
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert WAN rule to TLV, skipping: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v46);
        v36 = 0;
LABEL_27:

        ++v11;
      }

      while (v74 != v11);
      v59 = [obj countByEnumeratingWithState:&v80 objects:v84 count:16];
      v74 = v59;
      if (!v59)
      {
LABEL_35:

        v3 = v62;
        break;
      }
    }
  }

  v60 = *MEMORY[0x277D85DE8];

  return v68;
}

void __98__HMDNetworkRouterWANFirewallConfiguration_Additions__configurationFromFirewallRuleConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 ruleList];
  [v3 addTo:v4];
}

+ (HMDNetworkRouterWANFirewallConfiguration)configurationWithFullAccess
{
  v2 = objc_alloc_init(HMDNetworkRouterWANFirewallConfiguration);
  v3 = [[HMDNetworkRouterWANFirewall alloc] initWithType:0];
  [(HMDNetworkRouterWANFirewallConfiguration *)v2 setType:v3];

  v4 = objc_alloc_init(HMDNetworkRouterWANFirewallRuleList);
  [(HMDNetworkRouterWANFirewallConfiguration *)v2 setRuleList:v4];

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDNetworkRouterWANFirewallConfiguration *)self type];
  v5 = [(HMDNetworkRouterWANFirewallConfiguration *)self ruleList];
  v6 = [v3 stringWithFormat:@"<HMDNetworkRouterWANFirewallConfiguration type=%@, ruleList=%@>", v4, v5];

  return v6;
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
      v7 = [(HMDNetworkRouterWANFirewallConfiguration *)self type];
      v8 = [(HMDNetworkRouterWANFirewallConfiguration *)v6 type];
      if (v7 != v8)
      {
        v9 = [(HMDNetworkRouterWANFirewallConfiguration *)self type];
        v3 = [(HMDNetworkRouterWANFirewallConfiguration *)v6 type];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(HMDNetworkRouterWANFirewallConfiguration *)self ruleList];
      v12 = [(HMDNetworkRouterWANFirewallConfiguration *)v6 ruleList];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(HMDNetworkRouterWANFirewallConfiguration *)self ruleList];
        v14 = [(HMDNetworkRouterWANFirewallConfiguration *)v6 ruleList];
        v10 = [v13 isEqual:v14];
      }

      v9 = v16;
      if (v7 == v8)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDNetworkRouterWANFirewallConfiguration allocWithZone:a3];
  v5 = [(HMDNetworkRouterWANFirewallConfiguration *)self type];
  v6 = [(HMDNetworkRouterWANFirewallConfiguration *)self ruleList];
  v7 = [(HMDNetworkRouterWANFirewallConfiguration *)v4 initWithType:v5 ruleList:v6];

  return v7;
}

- (id)serializeWithError:(id *)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  TLV8BufferInit();
  v5 = [(HMDNetworkRouterWANFirewallConfiguration *)self type];

  if (v5)
  {
    v6 = [(HMDNetworkRouterWANFirewallConfiguration *)self type];
    v18 = 0;
    v7 = [v6 serializeWithError:&v18];
    v8 = v18;

    if (v8)
    {
      goto LABEL_6;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
LABEL_9:
      if (a3)
      {
        HMErrorFromOSStatus();
        v8 = 0;
        *a3 = v13 = 0;
        goto LABEL_14;
      }

      v8 = 0;
      goto LABEL_13;
    }
  }

  v10 = [(HMDNetworkRouterWANFirewallConfiguration *)self ruleList];

  if (!v10)
  {
LABEL_11:
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:?];
    v8 = 0;
    goto LABEL_14;
  }

  v11 = [(HMDNetworkRouterWANFirewallConfiguration *)self ruleList];
  v17 = 0;
  v7 = [v11 serializeWithError:&v17];
  v8 = v17;

  if (!v8)
  {
    [v7 bytes];
    [v7 length];
    v14 = TLV8BufferAppend();

    if (v14)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

LABEL_6:

  if (a3)
  {
    v12 = v8;
    v13 = 0;
    *a3 = v8;
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  TLV8BufferFree();

  v15 = *MEMORY[0x277D85DE8];

  return v13;
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
    v10 = 0;
    v11 = 0;
    goto LABEL_25;
  }

  v22 = self;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v8 + v9;
  do
  {
    v29 = 0;
    v27 = 0;
    v28 = 0;
    v25 = 0;
    v26 = 0;
    if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
    {
      if (a4)
      {
        HMErrorFromOSStatus();
        *a4 = v19 = 0;
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    if (!v28)
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v12 = v20;
      if (v20)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }

    if (v29 == 2)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v23 = v12;
      v15 = &v23;
      [HMDNetworkRouterWANFirewallRuleList parsedFromData:v14 error:&v23];
      v10 = v16 = v10;
    }

    else
    {
      if (v29 != 1)
      {
        goto LABEL_13;
      }

      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v24 = v12;
      v15 = &v24;
      [HMDNetworkRouterWANFirewall parsedFromData:v14 error:&v24];
      v11 = v16 = v11;
    }

    v17 = *v15;

    v12 = v17;
LABEL_13:
    if (v27)
    {
      free(v27);
    }
  }

  while (v25 != v13);
  if (v12)
  {
LABEL_17:
    if (a4)
    {
      v18 = v12;
      v19 = 0;
      *a4 = v12;
      goto LABEL_26;
    }

LABEL_22:
    v19 = 0;
    goto LABEL_26;
  }

LABEL_24:
  self = v22;
LABEL_25:
  [(HMDNetworkRouterWANFirewallConfiguration *)self setType:v11, v22];
  [(HMDNetworkRouterWANFirewallConfiguration *)self setRuleList:v10];
  v12 = 0;
  v19 = 1;
LABEL_26:

  return v19;
}

- (HMDNetworkRouterWANFirewallConfiguration)initWithType:(id)a3 ruleList:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDNetworkRouterWANFirewallConfiguration;
  v9 = [(HMDNetworkRouterWANFirewallConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_type, a3);
    objc_storeStrong(&v10->_ruleList, a4);
  }

  return v10;
}

- (HMDNetworkRouterWANFirewallConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterWANFirewallConfiguration;
  return [(HMDNetworkRouterWANFirewallConfiguration *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDNetworkRouterWANFirewallConfiguration);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterWANFirewallConfiguration *)v6 parseFromData:v5 error:&v11];
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