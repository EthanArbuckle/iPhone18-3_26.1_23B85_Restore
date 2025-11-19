@interface HMDNetworkRouterFirewallRuleWAN
+ (BOOL)__decodeAddress:(id)a3 subject:(id *)a4;
+ (BOOL)__decodeAddressRange:(id)a3 endValue:(id)a4 subject:(id *)a5;
+ (BOOL)__decodeAddresses:(id)a3 subject:(id *)a4;
+ (BOOL)__decodeFlags:(id)a3 critical:(BOOL *)a4;
+ (BOOL)__decodeHostnames:(id)a3 subject:(id *)a4;
+ (BOOL)__decodePorts:(id)a3 portStart:(unsigned __int16 *)a4 portEnd:(unsigned __int16 *)a5;
+ (BOOL)__decodePurpose:(id)a3 purpose:(unint64_t *)a4;
+ (BOOL)__decodeSubject:(id)a3 subject:(id *)a4;
+ (BOOL)__decodeType:(id)a3 transportProtocol:(unsigned __int8 *)a4 error:(id *)a5;
+ (HMFNetAddress)ipAddressAny;
+ (HMFNetAddress)ipAddressAnyIPv4;
+ (HMFNetAddress)ipAddressAnyIPv6;
+ (id)__nonWildcardAddressFrom:(id)a3 key:(id)a4;
+ (id)createWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)attributeDescriptions;
- (id)prettyJSONDictionary;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleWAN

- (id)prettyJSONDictionary
{
  v23.receiver = self;
  v23.super_class = HMDNetworkRouterFirewallRuleWAN;
  v3 = [(HMDNetworkRouterFirewallRule *)&v23 prettyJSONDictionary];
  v4 = [v3 mutableCopy];

  v5 = [objc_opt_class() __transportProtocolToString:{-[HMDNetworkRouterFirewallRuleWAN transportProtocol](self, "transportProtocol")}];
  [v4 setObject:v5 forKeyedSubscript:@"transportProtocol"];

  v6 = [(HMDNetworkRouterFirewallRuleWAN *)self purpose];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v6)
  {
    goto LABEL_41;
  }

  v8 = 1;
  v9 = v6;
  do
  {
    if ((v8 & v6) == 0)
    {
      goto LABEL_38;
    }

    if (v8 > 127)
    {
      if (v8 <= 1023)
      {
        switch(v8)
        {
          case 128:
            v10 = @"Metrics";
            break;
          case 256:
            v10 = @"Diagnostics";
            break;
          case 512:
            v10 = @"Remote Access";
            break;
          default:
            goto LABEL_38;
        }
      }

      else if (v8 > 4095)
      {
        if (v8 == 4096)
        {
          v10 = @"Connectivity Checks";
        }

        else
        {
          if (v8 != 0x2000)
          {
            goto LABEL_38;
          }

          v10 = @"Emergency Notifications";
        }
      }

      else if (v8 == 1024)
      {
        v10 = @"Alternative Home Ecosystem";
      }

      else
      {
        if (v8 != 2048)
        {
          goto LABEL_38;
        }

        v10 = @"Time Synchronization";
      }
    }

    else if (v8 <= 7)
    {
      switch(v8)
      {
        case 1:
          v10 = @"Other";
          break;
        case 2:
          v10 = @"Firmware Update";
          break;
        case 4:
          v10 = @"Account Management";
          break;
        default:
          goto LABEL_38;
      }
    }

    else if (v8 > 31)
    {
      if (v8 == 32)
      {
        v10 = @"Storage";
      }

      else
      {
        if (v8 != 64)
        {
          goto LABEL_38;
        }

        v10 = @"Notifications";
      }
    }

    else if (v8 == 8)
    {
      v10 = @"Peer to Peer";
    }

    else
    {
      if (v8 != 16)
      {
        goto LABEL_38;
      }

      v10 = @"Events";
    }

    v9 &= ~v8;
    [v7 addObject:v10];
LABEL_38:
    v8 *= 2;
  }

  while (v8 - 1 < v6);
  if (v9)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (0x%llx)", v9];
    [v7 addObject:v11];
  }

LABEL_41:
  if ([v7 count])
  {
    v12 = [v7 componentsJoinedByString:{@", "}];
  }

  else
  {
    v12 = @"none";
  }

  [v4 setObject:v12 forKeyedSubscript:@"purpose"];
  v13 = [(HMDNetworkRouterFirewallRuleWAN *)self subject];
  v14 = [v13 prettyJSONDictionary];
  [v4 addEntriesFromDictionary:v14];

  v15 = [(HMDNetworkRouterFirewallRuleWAN *)self transportProtocol];
  if (v15 >= 2)
  {
    if (v15 == 2)
    {
      v18 = [(HMDNetworkRouterFirewallRuleWAN *)self icmpTypes];
      v20 = [v18 na_map:&__block_literal_global_216_144118];
      [v4 setObject:v20 forKeyedSubscript:@"icmpTypes"];

      goto LABEL_51;
    }
  }

  else
  {
    v16 = [(HMDNetworkRouterFirewallRuleWAN *)self portStart];
    v17 = [(HMDNetworkRouterFirewallRuleWAN *)self portEnd];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleWAN portStart](self, "portStart")}];
    if (v16 == v17)
    {
      v19 = @"port";
    }

    else
    {
      [v4 setObject:v18 forKeyedSubscript:@"portStart"];

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleWAN portEnd](self, "portEnd")}];
      v19 = @"portEnd";
    }

    [v4 setObject:v18 forKeyedSubscript:v19];
LABEL_51:
  }

  v21 = [v4 copy];

  return v21;
}

- (id)attributeDescriptions
{
  v27[6] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = HMDNetworkRouterFirewallRuleWAN;
  v3 = [(HMDNetworkRouterFirewallRule *)&v26 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDNetworkRouterFirewallRuleWAN purpose](self, "purpose")}];
  v24 = [v4 initWithName:@"Purpose" value:v25];
  v27[0] = v24;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[HMDNetworkRouterFirewallRuleWAN transportProtocol](self, "transportProtocol")}];
  v22 = [v5 initWithName:@"TransportProtocol" value:v23];
  v27[1] = v22;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v21 = [(HMDNetworkRouterFirewallRuleWAN *)self subject];
  v7 = [v6 initWithName:@"Subject" value:v21];
  v27[2] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleWAN portStart](self, "portStart")}];
  v10 = [v8 initWithName:@"PortStart" value:v9];
  v27[3] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleWAN portEnd](self, "portEnd")}];
  v13 = [v11 initWithName:@"PortEnd" value:v12];
  v27[4] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [(HMDNetworkRouterFirewallRuleWAN *)self icmpTypes];
  v16 = [v14 initWithName:@"ICMPTypes" value:v15];
  v27[5] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:6];
  v18 = [v3 arrayByAddingObjectsFromArray:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (unint64_t)hash
{
  v3 = [(HMDNetworkRouterFirewallRuleWAN *)self purpose];
  v4 = [(HMDNetworkRouterFirewallRuleWAN *)self transportProtocol];
  v5 = [(HMDNetworkRouterFirewallRuleWAN *)self subject];
  v6 = v3 ^ [v5 hash] ^ v4;

  v7 = [(HMDNetworkRouterFirewallRuleWAN *)self portStart];
  v8 = v6 ^ v7 ^ [(HMDNetworkRouterFirewallRuleWAN *)self portEnd];
  v9 = [(HMDNetworkRouterFirewallRuleWAN *)self icmpTypes];
  v10 = [v9 hash];

  return v8 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = HMDNetworkRouterFirewallRuleWAN;
    if ([(HMDNetworkRouterFirewallRule *)&v18 isEqual:v4])
    {
      v5 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      if (v7 && (v8 = [(HMDNetworkRouterFirewallRuleWAN *)self purpose], v8 == [(HMDNetworkRouterFirewallRuleWAN *)v7 purpose]) && (v9 = [(HMDNetworkRouterFirewallRuleWAN *)self transportProtocol], v9 == [(HMDNetworkRouterFirewallRuleWAN *)v7 transportProtocol]))
      {
        v10 = [(HMDNetworkRouterFirewallRuleWAN *)self subject];
        v11 = [(HMDNetworkRouterFirewallRuleWAN *)v7 subject];
        if ([v10 isEqual:v11] && (v12 = -[HMDNetworkRouterFirewallRuleWAN portStart](self, "portStart"), v12 == -[HMDNetworkRouterFirewallRuleWAN portStart](v7, "portStart")) && (v13 = -[HMDNetworkRouterFirewallRuleWAN portEnd](self, "portEnd"), v13 == -[HMDNetworkRouterFirewallRuleWAN portEnd](v7, "portEnd")))
        {
          v14 = [(HMDNetworkRouterFirewallRuleWAN *)self icmpTypes];
          v15 = [(HMDNetworkRouterFirewallRuleWAN *)v7 icmpTypes];
          v16 = HMFEqualObjects();
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

+ (id)createWithJSONDictionary:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v30 = 0;
  if (![a1 __decodeType:v6 transportProtocol:&v30 error:a4])
  {
LABEL_15:
    v14 = 0;
    goto LABEL_33;
  }

  v29 = 0;
  if (([a1 __decodeFlags:v6 critical:&v29] & 1) == 0)
  {
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *a4 = v14 = 0;
      goto LABEL_33;
    }

    goto LABEL_15;
  }

  v7 = [HMDNetworkRouterFirewallRule alloc];
  v8 = [(HMDNetworkRouterFirewallRule *)v7 initWithJSONDictionary:v6 critical:v29];
  if (!v8 || (v28 = 0, ([a1 __decodePurpose:v6 purpose:&v28] & 1) == 0))
  {
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *a4 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_32;
  }

  v9 = [v6 objectForKeyedSubscript:@"r"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = a1;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v32 = v18;
      v33 = 2112;
      v34 = @"r";
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains an invalid '%@' value: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *a4 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_31;
  }

  v27 = 0;
  v12 = [a1 __decodeSubject:v11 subject:&v27];
  v13 = v27;
  if ((v12 & 1) == 0)
  {
    goto LABEL_25;
  }

  *buf = 0;
  v26 = 0;
  if (v30 < 2u)
  {
    if ([a1 __decodePorts:v11 portStart:buf portEnd:&v26])
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (v30 != 2)
  {
LABEL_28:
    v19 = 0;
    goto LABEL_29;
  }

  v19 = [HMDNetworkRouterFirewallRuleICMPType createListWithJSONDictionary:v11 key:@"it"];
  if (!v19)
  {
LABEL_25:
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *a4 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_30;
  }

LABEL_29:
  v20 = [a1 alloc];
  v21 = [(HMDNetworkRouterFirewallRule *)v8 name];
  v22 = [(HMDNetworkRouterFirewallRule *)v8 isCritical];
  WORD1(v25) = v26;
  LOWORD(v25) = *buf;
  v14 = [v20 initWithJSONDictionary:v6 name:v21 critical:v22 purpose:v28 transportProtocol:v30 subject:v13 portStart:v25 portEnd:v19 icmpTypes:?];

LABEL_30:
LABEL_31:

LABEL_32:
LABEL_33:

  v23 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (BOOL)__decodePorts:(id)a3 portStart:(unsigned __int16 *)a4 portEnd:(unsigned __int16 *)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v19 = 0;
  v9 = 0;
  if (decodePortFromJSONDictionary(v8, @"p", 1, &v19, 0))
  {
    v18 = 0;
    v17 = 0;
    v9 = 0;
    if (decodePortFromJSONDictionary(v8, @"q", 0, &v18, &v17))
    {
      v10 = v19;
      if (v17 && (v10 = v18, v19 > v18))
      {
        v11 = objc_autoreleasePoolPush();
        v12 = a1;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = HMFGetLogIdentifier();
          *buf = 138543362;
          v21 = v14;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Must have portStart less than or equal to portEnd", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
        v9 = 0;
      }

      else
      {
        *a4 = v19;
        *a5 = v10;
        v9 = 1;
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)__decodeSubject:(id)a3 subject:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"h"];
  v8 = [v6 objectForKeyedSubscript:@"i"];
  v9 = [v6 objectForKeyedSubscript:@"j"];
  v10 = [v6 objectForKeyedSubscript:@"is"];
  v11 = v10;
  if (!v7 && !v8 && !v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v15;
      v16 = "%{public}@One subject must be set";
LABEL_24:
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);

      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if (v8)
  {
    v17 = v10 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (v8 | v10)
  {
    v19 = v7 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19 || v18)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v15;
      v16 = "%{public}@Only one subject can be set";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (v9 && !v8)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v15;
      v16 = "%{public}@ipAddressEnd is only valid if ipAddressStart is specified";
      goto LABEL_24;
    }

LABEL_25:

    objc_autoreleasePoolPop(v12);
    v20 = 0;
    goto LABEL_26;
  }

  if (v7)
  {
    v23 = [a1 __decodeHostnames:v7 subject:a4];
LABEL_36:
    v20 = v23;
    goto LABEL_26;
  }

  if (v9)
  {
    v24 = 1;
  }

  else
  {
    v24 = v8 == 0;
  }

  if (v24 && !v10)
  {
    v23 = [a1 __decodeAddressRange:v8 endValue:v9 subject:a4];
    goto LABEL_36;
  }

  if (v8)
  {
    v25 = v8;
  }

  else
  {
    v25 = v10;
  }

  v26 = v25;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;
  if (v28)
  {
    v20 = [a1 __decodeAddresses:v28 subject:a4];
  }

  else
  {
    v29 = v26;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    if (v31)
    {
      v20 = [a1 __decodeAddress:v31 subject:a4];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v32 = a1;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v34;
        v38 = 2112;
        v39 = v29;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Invalid address value: %@", buf, 0x16u);

        v31 = 0;
      }

      objc_autoreleasePoolPop(context);
      v20 = 0;
    }

    v28 = 0;
  }

LABEL_26:
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (BOOL)__decodeAddressRange:(id)a3 endValue:(id)a4 subject:(id *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [a1 __nonWildcardAddressFrom:v8 key:@"addressStart"];
  if (v10)
  {
    v11 = [a1 __nonWildcardAddressFrom:v9 key:@"addressEnd"];
    if (v11)
    {
      v12 = [v10 addressFamily];
      if (v12 == [v11 addressFamily])
      {
        v13 = [[HMDNetworkRouterFirewallRuleWANAddressRange alloc] initWithAddressStart:v10 addressEnd:v11];
        *a5 = [[HMDNetworkRouterFirewallRuleWANSubject alloc] initWithHostnames:0 addresses:0 addressRange:v13];

        v14 = 1;
LABEL_10:

        goto LABEL_11;
      }

      v15 = objc_autoreleasePoolPush();
      v16 = a1;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@IP address range must have matching address family", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }

    v14 = 0;
    goto LABEL_10;
  }

  v14 = 0;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)__nonWildcardAddressFrom:(id)a3 key:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = a1;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v28 = 138543874;
      v29 = v14;
      v30 = 2112;
      v31 = v7;
      v32 = 2112;
      v33 = v8;
      v15 = "%{public}@WAN rule contains a non-string %@: %@";
      goto LABEL_10;
    }

LABEL_11:

    objc_autoreleasePoolPop(v11);
    v16 = 0;
    goto LABEL_23;
  }

  if ([v10 isEqualToString:@"*"])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = a1;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v28 = 138543874;
      v29 = v14;
      v30 = 2112;
      v31 = v7;
      v32 = 2112;
      v33 = v10;
      v15 = "%{public}@WAN rule contains a wildcard address for %@: %@";
LABEL_10:
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, v15, &v28, 0x20u);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v17 = createHMFNetAddressFromIPAddressString(v10);
  if (v17)
  {
    v18 = [a1 ipAddressAnyIPv4];
    if ([v17 isEqual:v18])
    {
    }

    else
    {
      v24 = [a1 ipAddressAnyIPv6];
      v25 = [v17 isEqual:v24];

      if (!v25)
      {
        v16 = v17;
        goto LABEL_22;
      }
    }

    v19 = objc_autoreleasePoolPush();
    v20 = a1;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v28 = 138543874;
      v29 = v22;
      v30 = 2112;
      v31 = v7;
      v32 = 2112;
      v33 = v10;
      v23 = "%{public}@WAN rule contains a wildcard address for %@: %@";
      goto LABEL_20;
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = a1;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v28 = 138543874;
      v29 = v22;
      v30 = 2112;
      v31 = v7;
      v32 = 2112;
      v33 = v10;
      v23 = "%{public}@WAN rule contains an invalid %@: %@";
LABEL_20:
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, v23, &v28, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v19);
  v16 = 0;
LABEL_22:

LABEL_23:
  v26 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (BOOL)__decodeAddresses:(id)a3 subject:(id *)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![v6 count])
  {
    v33 = objc_autoreleasePoolPush();
    v34 = a1;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543362;
      v63 = v36;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains an empty address array", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v33);
    v37 = 0;
    goto LABEL_48;
  }

  v55 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v53 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v6, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v7 = v6;
  v57 = [v7 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (!v57)
  {

    goto LABEL_41;
  }

  v50 = a4;
  v51 = v6;
  v54 = 0;
  v52 = 0;
  v56 = 0;
  v8 = *v59;
  v9 = 0x277CCA000uLL;
  v10 = v53;
  do
  {
    v11 = 0;
    do
    {
      if (*v59 != v8)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(v9 + 3240);
      v13 = *(*(&v58 + 1) + 8 * v11);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (!v15)
      {
        v38 = objc_autoreleasePoolPush();
        v39 = a1;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543618;
          v63 = v41;
          v64 = 2112;
          v65 = v13;
          _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains a non-string address: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v38);
        goto LABEL_45;
      }

      if ([v15 isEqualToString:@"*"])
      {
        v16 = [a1 ipAddressAny];
        v54 = 1;
LABEL_15:
        v56 = 1;
        goto LABEL_16;
      }

      v17 = createHMFNetAddressFromIPAddressString(v15);
      if (!v17)
      {
        v44 = objc_autoreleasePoolPush();
        v45 = a1;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543618;
          v63 = v47;
          v64 = 2112;
          v65 = v15;
          _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains an invalid address: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v44);
LABEL_45:
        v6 = v51;

LABEL_46:
        v37 = 0;
        goto LABEL_47;
      }

      v16 = v17;
      v18 = [a1 ipAddressAnyIPv4];
      v19 = [v16 isEqual:v18];

      if (v19)
      {
        goto LABEL_15;
      }

      v26 = [a1 ipAddressAnyIPv6];
      v27 = [v16 isEqual:v26];

      if (v27)
      {
        v54 = 1;
      }

      else if ([v16 addressFamily] == 1)
      {
        LODWORD(v52) = 1;
      }

      else
      {
        HIDWORD(v52) |= [v16 addressFamily] == 2;
      }

LABEL_16:
      if ([v10 containsObject:v16])
      {
        v20 = v8;
        v21 = v7;
        v22 = objc_autoreleasePoolPush();
        v23 = a1;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543618;
          v63 = v25;
          v64 = 2112;
          v65 = v16;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains a duplicate address: %@", buf, 0x16u);

          v10 = v53;
        }

        objc_autoreleasePoolPop(v22);
        v7 = v21;
        v8 = v20;
        v9 = 0x277CCA000;
      }

      else
      {
        [v55 addObject:v16];
        [v10 addObject:v16];
      }

      ++v11;
    }

    while (v57 != v11);
    v28 = [v7 countByEnumeratingWithState:&v58 objects:v66 count:16];
    v57 = v28;
  }

  while (v28);

  a4 = v50;
  v6 = v51;
  if (v56 & v52 & 1) != 0 || (v54 & HIDWORD(v52))
  {
    v29 = objc_autoreleasePoolPush();
    v30 = a1;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v63 = v32;
      v64 = 2112;
      v65 = v7;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains a mix of wildcard and non-wildcard addresses: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    goto LABEL_46;
  }

LABEL_41:
  v42 = [HMDNetworkRouterFirewallRuleWANSubject alloc];
  v43 = [v55 copy];
  *a4 = [(HMDNetworkRouterFirewallRuleWANSubject *)v42 initWithHostnames:0 addresses:v43 addressRange:0];

  v37 = 1;
LABEL_47:

LABEL_48:
  v48 = *MEMORY[0x277D85DE8];
  return v37;
}

+ (BOOL)__decodeAddress:(id)a3 subject:(id *)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v11 count:1];

  LOBYTE(a4) = [a1 __decodeAddresses:v8 subject:{a4, v11, v12}];
  v9 = *MEMORY[0x277D85DE8];
  return a4;
}

+ (BOOL)__decodeHostnames:(id)a3 subject:(id *)a4
{
  v117 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = v6;
  if (!v8)
  {
    v104 = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];
  }

  if (![v9 count])
  {
    v40 = objc_autoreleasePoolPush();
    v41 = a1;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543362;
      v114 = v43;
      _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains an empty hostname array", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v40);
    v39 = 0;
    goto LABEL_57;
  }

  v88 = a4;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v11 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v9, "count")}];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v95 objects:v103 count:16];
  if (!v13)
  {
    goto LABEL_41;
  }

  v14 = 0x277CCA000uLL;
  v15 = *v96;
  v91 = v11;
  v92 = v12;
  v93 = a1;
  v94 = v9;
  v89 = v10;
  v86 = *v96;
LABEL_9:
  v16 = 0;
  v87 = v13;
LABEL_10:
  if (*v96 != v15)
  {
    objc_enumerationMutation(v12);
  }

  v17 = v14;
  v18 = *(v14 + 3240);
  v19 = *(*(&v95 + 1) + 8 * v16);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  if (!v21)
  {
    v63 = objc_autoreleasePoolPush();
    v64 = a1;
    v65 = HMFGetOSLogHandle();
    v9 = v94;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v66 = HMFGetLogIdentifier();
      v67 = v19;
      v68 = v66;
      *buf = 138543618;
      v114 = v66;
      v115 = 2112;
      v116 = v67;
      _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains a non-string hostname: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v63);
    goto LABEL_55;
  }

  v90 = v19;
  v22 = v21;
  if (![v22 length] || objc_msgSend(v22, "length") >= 0xFE)
  {
    v58 = objc_autoreleasePoolPush();
    v59 = objc_opt_class();
    v60 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      v61 = HMFGetLogIdentifier();
      v62 = [v22 length];
      *v105 = 138543874;
      v106 = v61;
      v107 = 2112;
      v108 = v22;
      v109 = 2048;
      v110 = v62;
      _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_INFO, "%{public}@Hostname '%@' is invalid because its length is out of bounds: %lu", v105, 0x20u);

      v11 = v91;
    }

    objc_autoreleasePoolPop(v58);
LABEL_61:
    v9 = v94;
    goto LABEL_52;
  }

  v23 = [v22 componentsSeparatedByString:@"."];
  if ([v23 count] > 1)
  {
    if (validateHostNameForWANFirewallRule_onceTokenRegex != -1)
    {
      dispatch_once(&validateHostNameForWANFirewallRule_onceTokenRegex, &__block_literal_global_149399);
    }

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v23 = v23;
    v24 = [v23 countByEnumeratingWithState:&v99 objects:buf count:16];
    if (!v24)
    {
      goto LABEL_30;
    }

    v25 = v24;
    v26 = *v100;
LABEL_23:
    v27 = 0;
    while (1)
    {
      if (*v100 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v99 + 1) + 8 * v27);
      v29 = [v28 length];
      if ((v29 - 64) <= 0xFFFFFFFFFFFFFFC0)
      {
        break;
      }

      if ([validateHostNameForWANFirewallRule_componentRegex numberOfMatchesInString:v28 options:0 range:{0, v29}] != 1)
      {
        v44 = objc_autoreleasePoolPush();
        v45 = objc_opt_class();
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = HMFGetLogIdentifier();
          *v105 = 138543874;
          v106 = v47;
          v107 = 2112;
          v108 = v22;
          v109 = 2112;
          v110 = v28;
          v49 = "%{public}@Hostname '%@' component '%@' is invalid because it does not match regular expression";
          v50 = v46;
          v51 = 32;
LABEL_49:
          _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, v49, v105, v51);
        }

        goto LABEL_50;
      }

      if (v25 == ++v27)
      {
        v25 = [v23 countByEnumeratingWithState:&v99 objects:buf count:16];
        v12 = v92;
        if (v25)
        {
          goto LABEL_23;
        }

LABEL_30:

        v30 = [v23 objectAtIndexedSubscript:{objc_msgSend(v23, "count") - 2}];
        v31 = [v30 containsString:@"*"];

        if (v31)
        {
          v73 = objc_autoreleasePoolPush();
          v74 = objc_opt_class();
          v75 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
          {
            v76 = HMFGetLogIdentifier();
            *v105 = 138543618;
            v106 = v76;
            v107 = 2112;
            v108 = v22;
            _os_log_impl(&dword_2531F8000, v75, OS_LOG_TYPE_INFO, "%{public}@Hostname '%@' is invalid because its second-to-last component contains a wildcard", v105, 0x16u);
          }

          objc_autoreleasePoolPop(v73);
          a1 = v93;
          v9 = v94;
          goto LABEL_51;
        }

        v32 = [v23 lastObject];
        if ([v32 isEqualToString:@"local"])
        {
          v77 = objc_autoreleasePoolPush();
          v78 = objc_opt_class();
          v79 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
          {
            v80 = HMFGetLogIdentifier();
            *v105 = 138543618;
            v106 = v80;
            v107 = 2112;
            v108 = v22;
            _os_log_impl(&dword_2531F8000, v79, OS_LOG_TYPE_INFO, "%{public}@Hostname '%@' is invalid because its last component is 'local'", v105, 0x16u);
          }

          a1 = v93;
          v9 = v94;
          goto LABEL_76;
        }

        a1 = v93;
        if ([v32 containsString:@"*"])
        {
          v77 = objc_autoreleasePoolPush();
          v78 = objc_opt_class();
          v79 = HMFGetOSLogHandle();
          v9 = v94;
          if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
          {
            v81 = HMFGetLogIdentifier();
            *v105 = 138543618;
            v106 = v81;
            v107 = 2112;
            v108 = v22;
            _os_log_impl(&dword_2531F8000, v79, OS_LOG_TYPE_INFO, "%{public}@Hostname '%@' is invalid because its last component contains a wildcard", v105, 0x16u);

            a1 = v93;
          }

LABEL_76:

          objc_autoreleasePoolPop(v77);
          goto LABEL_51;
        }

        v33 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
        if ([v32 rangeOfCharacterFromSet:v33] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v82 = objc_autoreleasePoolPush();
          v83 = objc_opt_class();
          v84 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
          {
            v85 = HMFGetLogIdentifier();
            *v105 = 138543618;
            v106 = v85;
            v107 = 2112;
            v108 = v22;
            _os_log_impl(&dword_2531F8000, v84, OS_LOG_TYPE_INFO, "%{public}@Hostname '%@' is invalid because its last component does not contain letters", v105, 0x16u);

            a1 = v93;
          }

          objc_autoreleasePoolPop(v82);
          v11 = v91;
          goto LABEL_61;
        }

        v11 = v91;
        if ([v91 containsObject:v22])
        {
          v34 = objc_autoreleasePoolPush();
          v35 = v93;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138543618;
            v114 = v37;
            v115 = 2112;
            v116 = v22;
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains a duplicate hostname: %@", buf, 0x16u);

            a1 = v93;
          }

          objc_autoreleasePoolPop(v34);
          v12 = v92;
        }

        else
        {
          [v89 addObject:v22];
          [v91 addObject:v22];
        }

        ++v16;
        v15 = v86;
        v14 = v17;
        v9 = v94;
        if (v16 == v87)
        {
          v13 = [v12 countByEnumeratingWithState:&v95 objects:v103 count:16];
          v10 = v89;
          if (!v13)
          {
LABEL_41:

            v38 = [HMDNetworkRouterFirewallRuleWANSubject alloc];
            v12 = [v10 copy];
            *v88 = [(HMDNetworkRouterFirewallRuleWANSubject *)v38 initWithHostnames:v12 addresses:0 addressRange:0];
            v39 = 1;
            goto LABEL_56;
          }

          goto LABEL_9;
        }

        goto LABEL_10;
      }
    }

    v44 = objc_autoreleasePoolPush();
    v45 = objc_opt_class();
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = HMFGetLogIdentifier();
      v48 = [v28 length];
      *v105 = 138544130;
      v106 = v47;
      v107 = 2112;
      v108 = v22;
      v109 = 2112;
      v110 = v28;
      v111 = 2048;
      v112 = v48;
      v49 = "%{public}@Hostname '%@' component '%@' is invalid because its length is out of bounds: %lu";
      v50 = v46;
      v51 = 42;
      goto LABEL_49;
    }

LABEL_50:
    v12 = v92;
    a1 = v93;
    v9 = v94;

    objc_autoreleasePoolPop(v44);
    goto LABEL_51;
  }

  v69 = objc_autoreleasePoolPush();
  v70 = objc_opt_class();
  v71 = HMFGetOSLogHandle();
  v9 = v94;
  if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
  {
    v72 = HMFGetLogIdentifier();
    *v105 = 138543874;
    v106 = v72;
    v107 = 2112;
    v108 = v22;
    v109 = 2048;
    v110 = 2;
    _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_INFO, "%{public}@Hostname '%@' is invalid because it does not contain at least %lu components", v105, 0x20u);
  }

  objc_autoreleasePoolPop(v69);
LABEL_51:

  v11 = v91;
LABEL_52:
  v52 = objc_autoreleasePoolPush();
  v53 = a1;
  v54 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    v55 = HMFGetLogIdentifier();
    *buf = 138543618;
    v114 = v55;
    v115 = 2112;
    v116 = v22;
    _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains an invalid hostname: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v52);
LABEL_55:
  v39 = 0;
  v10 = v89;
LABEL_56:

LABEL_57:
  v56 = *MEMORY[0x277D85DE8];
  return v39;
}

+ (BOOL)__decodeType:(id)a3 transportProtocol:(unsigned __int8 *)a4 error:(id *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v21 = 0;
  v9 = decodeUnsignedIntegerFromJSONDictionary(v8, @"t", 1, 0xFFuLL, &v21);
  v10 = v21;
  v11 = v10;
  if (v9)
  {
    v12 = [v10 unsignedCharValue];
    switch(v12)
    {
      case 5:
        *a4 = 2;
        goto LABEL_11;
      case 2:
        v14 = 1;
        *a4 = 1;
        goto LABEL_17;
      case 1:
        *a4 = 0;
LABEL_11:
        v14 = 1;
        goto LABEL_17;
    }

    v15 = objc_autoreleasePoolPush();
    v16 = a1;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v18;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@WAN rule contains an unkown type value %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    if (a5)
    {
      v13 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1070];
      goto LABEL_8;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  if (!a5)
  {
    goto LABEL_16;
  }

  v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
LABEL_8:
  v14 = 0;
  *a5 = v13;
LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)__decodeFlags:(id)a3 critical:(BOOL *)a4
{
  v9 = 0;
  v5 = decodeUnsignedIntegerFromJSONDictionary(a3, @"f", 0, 0xFFFFFFFFuLL, &v9);
  v6 = v9;
  v7 = v6;
  if (v5)
  {
    *a4 = [v6 unsignedLongValue] & 1;
  }

  return v5;
}

+ (BOOL)__decodePurpose:(id)a3 purpose:(unint64_t *)a4
{
  v9 = 0;
  v5 = decodeUnsignedIntegerFromJSONDictionary(a3, @"u", 1, 0xFFFFFFFFFFFFFFFFLL, &v9);
  v6 = v9;
  v7 = v6;
  if (v5)
  {
    *a4 = [v6 unsignedLongLongValue];
  }

  return v5;
}

+ (HMFNetAddress)ipAddressAny
{
  if (ipAddressAny_onceToken != -1)
  {
    dispatch_once(&ipAddressAny_onceToken, &__block_literal_global_168_144297);
  }

  v3 = ipAddressAny_address;

  return v3;
}

uint64_t __47__HMDNetworkRouterFirewallRuleWAN_ipAddressAny__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277D0F858]) initWithHostname:@"*"];
  v1 = ipAddressAny_address;
  ipAddressAny_address = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (HMFNetAddress)ipAddressAnyIPv6
{
  if (ipAddressAnyIPv6_onceToken != -1)
  {
    dispatch_once(&ipAddressAnyIPv6_onceToken, &__block_literal_global_165_144300);
  }

  v3 = ipAddressAnyIPv6_address;

  return v3;
}

void __51__HMDNetworkRouterFirewallRuleWAN_ipAddressAnyIPv6__block_invoke()
{
  v2[0] = xmmword_253D4C070;
  *(v2 + 12) = *(&xmmword_253D4C070 + 12);
  v0 = [objc_alloc(MEMORY[0x277D0F858]) initWithSocketAddress:v2];
  v1 = ipAddressAnyIPv6_address;
  ipAddressAnyIPv6_address = v0;
}

+ (HMFNetAddress)ipAddressAnyIPv4
{
  if (ipAddressAnyIPv4_onceToken != -1)
  {
    dispatch_once(&ipAddressAnyIPv4_onceToken, &__block_literal_global_162);
  }

  v3 = ipAddressAnyIPv4_address;

  return v3;
}

void __51__HMDNetworkRouterFirewallRuleWAN_ipAddressAnyIPv4__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = xmmword_253D4B590;
  v0 = [objc_alloc(MEMORY[0x277D0F858]) initWithSocketAddress:&v3];
  v1 = ipAddressAnyIPv4_address;
  ipAddressAnyIPv4_address = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end