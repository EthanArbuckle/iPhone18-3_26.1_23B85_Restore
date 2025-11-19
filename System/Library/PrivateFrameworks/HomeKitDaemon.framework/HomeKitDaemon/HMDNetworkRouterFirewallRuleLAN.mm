@interface HMDNetworkRouterFirewallRuleLAN
+ (BOOL)__decodeDirection:(id)a3 direction:(unsigned __int8 *)a4 error:(id *)a5;
+ (BOOL)__decodeFlags:(id)a3 critical:(BOOL *)a4 allowInterAccessoryConnections:(BOOL *)a5 requiredForHAPFunctionality:(BOOL *)a6 error:(id *)a7;
+ (BOOL)__decodePurpose:(id)a3 purpose:(unint64_t *)a4 error:(id *)a5;
+ (BOOL)__decodeTransportProtocolFromJSONDictionary:(id)a3 key:(id)a4 transportProtocol:(unsigned __int8 *)a5 error:(id *)a6;
+ (BOOL)__decodeType:(id)a3 type:(unsigned __int8 *)a4 error:(id *)a5;
+ (id)createWithJSONDictionary:(id)a3 error:(id *)a4;
+ (id)createWithJSONDictionary:(id)a3 name:(id)a4 critical:(BOOL)a5 purpose:(unint64_t)a6 allowInterAccessoryConnections:(BOOL)a7 direction:(unsigned __int8)a8 requiredForHAPFunctionality:(BOOL)a9 ruleDictionary:(id)a10 error:(id *)a11;
- (BOOL)isEqual:(id)a3;
- (id)attributeDescriptions;
- (id)prettyJSONDictionary;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleLAN

- (id)prettyJSONDictionary
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDNetworkRouterFirewallRuleLAN *)self direction];
  v4 = @"fromAccessory";
  if (v3 == 1)
  {
    v4 = @"toAccessory";
  }

  v19.receiver = self;
  v19.super_class = HMDNetworkRouterFirewallRuleLAN;
  v5 = v4;
  v6 = [(HMDNetworkRouterFirewallRule *)&v19 prettyJSONDictionary];
  v7 = [v6 mutableCopy];

  v20[0] = @"direction";
  v20[1] = @"purpose";
  v21[0] = v5;
  v8 = [(HMDNetworkRouterFirewallRuleLAN *)self purpose];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v8)
  {
    v10 = 1;
    v11 = v8;
    while (1)
    {
      if ((v10 & v8) != 0)
      {
        if (v10 <= 7)
        {
          switch(v10)
          {
            case 1:
              v12 = @"Other";
              goto LABEL_22;
            case 2:
              v12 = @"Local Access";
              goto LABEL_22;
            case 4:
              v12 = @"Local IoT Access";
              goto LABEL_22;
          }
        }

        else if (v10 > 31)
        {
          if (v10 == 32)
          {
            v12 = @"Connectivity Checks";
            goto LABEL_22;
          }

          if (v10 == 64)
          {
            v12 = @"Emergency Notifications";
            goto LABEL_22;
          }
        }

        else
        {
          if (v10 == 8)
          {
            v12 = @"Firmware Update";
            goto LABEL_22;
          }

          if (v10 == 16)
          {
            v12 = @"Time Synchronization";
LABEL_22:
            v11 &= ~v10;
            [v9 addObject:v12];
          }
        }
      }

      v10 *= 2;
      if (v10 - 1 >= v8)
      {
        if (v11)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (0x%llx)", v11, v19.receiver, v19.super_class];
          [v9 addObject:v13];
        }

        break;
      }
    }
  }

  if ([v9 count])
  {
    v14 = [v9 componentsJoinedByString:{@", "}];
  }

  else
  {
    v14 = @"none";
  }

  v21[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  [v7 addEntriesFromDictionary:v15];
  if ([(HMDNetworkRouterFirewallRuleLAN *)self areConnectionsWithOtherAccessoriesAllowed])
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"allowInterAccessoryConnections"];
  }

  if ([(HMDNetworkRouterFirewallRuleLAN *)self isRequiredForHAPFunctionality])
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"requiredForHAPFunctionality"];
  }

  v16 = [v7 copy];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)attributeDescriptions
{
  v21[4] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = HMDNetworkRouterFirewallRuleLAN;
  v18 = [(HMDNetworkRouterFirewallRule *)&v20 attributeDescriptions];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDNetworkRouterFirewallRuleLAN purpose](self, "purpose")}];
  v4 = [v3 initWithName:@"Purpose" value:v19];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRuleLAN areConnectionsWithOtherAccessoriesAllowed](self, "areConnectionsWithOtherAccessoriesAllowed")}];
  v7 = [v5 initWithName:@"AreConnectionsWithOtherAccessoriesAllowed" value:v6];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[HMDNetworkRouterFirewallRuleLAN direction](self, "direction")}];
  v10 = [v8 initWithName:@"Direction" value:v9];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRuleLAN isRequiredForHAPFunctionality](self, "isRequiredForHAPFunctionality")}];
  v13 = [v11 initWithName:@"IsRequiredForHAPFunctionality" value:v12];
  v21[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  v15 = [v18 arrayByAddingObjectsFromArray:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (unint64_t)hash
{
  v3 = [(HMDNetworkRouterFirewallRuleLAN *)self purpose];
  v4 = [(HMDNetworkRouterFirewallRuleLAN *)self areConnectionsWithOtherAccessoriesAllowed];
  v5 = 2;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = v5 ^ v3 ^ (4 * [(HMDNetworkRouterFirewallRuleLAN *)self direction]);
  v7 = [(HMDNetworkRouterFirewallRuleLAN *)self isRequiredForHAPFunctionality];
  v8 = 8;
  if (!v7)
  {
    v8 = 0;
  }

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HMDNetworkRouterFirewallRuleLAN;
    if ([(HMDNetworkRouterFirewallRule *)&v14 isEqual:v4])
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

      if (v7 && (v8 = [(HMDNetworkRouterFirewallRuleLAN *)self purpose], v8 == [(HMDNetworkRouterFirewallRuleLAN *)v7 purpose]) && (v9 = [(HMDNetworkRouterFirewallRuleLAN *)self areConnectionsWithOtherAccessoriesAllowed], v9 == [(HMDNetworkRouterFirewallRuleLAN *)v7 areConnectionsWithOtherAccessoriesAllowed]) && (v10 = [(HMDNetworkRouterFirewallRuleLAN *)self direction], v10 == [(HMDNetworkRouterFirewallRuleLAN *)v7 direction]))
      {
        v11 = [(HMDNetworkRouterFirewallRuleLAN *)self isRequiredForHAPFunctionality];
        v12 = v11 ^ [(HMDNetworkRouterFirewallRuleLAN *)v7 isRequiredForHAPFunctionality]^ 1;
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

+ (id)createWithJSONDictionary:(id)a3 name:(id)a4 critical:(BOOL)a5 purpose:(unint64_t)a6 allowInterAccessoryConnections:(BOOL)a7 direction:(unsigned __int8)a8 requiredForHAPFunctionality:(BOOL)a9 ruleDictionary:(id)a10 error:(id *)a11
{
  v13 = a3;
  v14 = a4;
  v15 = a10;
  v16 = MEMORY[0x277CBEAD8];
  v17 = *MEMORY[0x277CBE658];
  v18 = MEMORY[0x277CCACA8];
  v19 = NSStringFromSelector(a2);
  v20 = [v18 stringWithFormat:@"You must override %@ in a subclass", v19];
  v21 = [v16 exceptionWithName:v17 reason:v20 userInfo:0];
  v22 = v21;

  objc_exception_throw(v21);
}

+ (id)createWithJSONDictionary:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v26 = 0;
  if (![a1 __decodeType:v6 type:&v26 error:a4] || (v25 = 0, v24 = 0, !objc_msgSend(a1, "__decodeFlags:critical:allowInterAccessoryConnections:requiredForHAPFunctionality:error:", v6, &v25, &v24 + 1, &v24, a4)))
  {
    v9 = 0;
    goto LABEL_28;
  }

  v7 = objc_alloc([objc_opt_class() superclass]);
  v8 = [v7 initWithJSONDictionary:v6 critical:v25];
  if (!v8)
  {
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_27;
  }

  v23 = 0;
  v9 = 0;
  if ([a1 __decodePurpose:v6 purpose:&v23 error:a4])
  {
    v10 = [v6 objectForKeyedSubscript:@"r"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      buf[0] = 0;
      if ([a1 __decodeDirection:v12 direction:buf error:a4])
      {
        switch(v26)
        {
          case 1:
            v13 = HMDNetworkRouterFirewallRuleLANMulticast;
            goto LABEL_25;
          case 2:
            v13 = HMDNetworkRouterFirewallRuleLANStatic;
            goto LABEL_25;
          case 3:
            v13 = HMDNetworkRouterFirewallRuleLANDynamic;
LABEL_25:
            v18 = [v8 name];
            v19 = [v8 isCritical];
            LOBYTE(v22) = v24;
            v9 = [(__objc2_class *)v13 createWithJSONDictionary:v6 name:v18 critical:v19 purpose:v23 allowInterAccessoryConnections:HIBYTE(v24) direction:buf[0] requiredForHAPFunctionality:v22 ruleDictionary:v12 error:a4];

            goto LABEL_26;
        }
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = a1;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543874;
        v28 = v17;
        v29 = 2112;
        v30 = @"r";
        v31 = 2112;
        v32 = v6;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Rule contains an invalid '%@' value: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      if (a4)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        *a4 = v9 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v9 = 0;
    goto LABEL_26;
  }

LABEL_27:

LABEL_28:
  v20 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)__decodeTransportProtocolFromJSONDictionary:(id)a3 key:(id)a4 transportProtocol:(unsigned __int8 *)a5 error:(id *)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v24 = 0;
  v12 = decodeUnsignedIntegerFromJSONDictionary(v10, v11, 1, 0xFFuLL, &v24);
  v13 = v24;
  v14 = v13;
  if (v12)
  {
    v15 = [v13 unsignedCharValue];
    switch(v15)
    {
      case 2:
        *a5 = 2;
        goto LABEL_11;
      case 1:
        v17 = 1;
        *a5 = 1;
        goto LABEL_17;
      case 0:
        *a5 = 0;
LABEL_11:
        v17 = 1;
        goto LABEL_17;
    }

    v18 = objc_autoreleasePoolPush();
    v19 = a1;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138544130;
      v26 = v21;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v14;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Rule contains an unknown '%@' value %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    if (a6)
    {
      v16 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1070];
      goto LABEL_8;
    }

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  if (!a6)
  {
    goto LABEL_16;
  }

  v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
LABEL_8:
  v17 = 0;
  *a6 = v16;
LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (BOOL)__decodeDirection:(id)a3 direction:(unsigned __int8 *)a4 error:(id *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v21 = 0;
  v9 = decodeUnsignedIntegerFromJSONDictionary(v8, @"d", 1, 0xFFuLL, &v21);
  v10 = v21;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    if (a5)
    {
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
LABEL_12:
      v13 = 0;
      *a5 = v14;
      goto LABEL_14;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v12 = [v10 unsignedCharValue];
  if (!v12)
  {
    *a4 = 0;
    v13 = 1;
    goto LABEL_14;
  }

  if (v12 != 1)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = a1;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138544130;
      v23 = v18;
      v24 = 2112;
      v25 = @"d";
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Rule contains an unknown '%@' value %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    if (a5)
    {
      v14 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1070];
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v13 = 1;
  *a4 = 1;
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (BOOL)__decodeType:(id)a3 type:(unsigned __int8 *)a4 error:(id *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v21 = 0;
  v9 = decodeUnsignedIntegerFromJSONDictionary(v8, @"t", 1, 0xFFuLL, &v21);
  v10 = v21;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    if (a5)
    {
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
LABEL_10:
      v13 = 0;
      *a5 = v14;
      goto LABEL_12;
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v12 = [v10 unsignedCharValue];
  if ((v12 - 1) > 2)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = a1;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138544130;
      v23 = v18;
      v24 = 2112;
      v25 = @"t";
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Rule contains an unknown '%@' value %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    if (a5)
    {
      v14 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1070];
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  *a4 = v12;
  v13 = 1;
LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (BOOL)__decodeFlags:(id)a3 critical:(BOOL *)a4 allowInterAccessoryConnections:(BOOL *)a5 requiredForHAPFunctionality:(BOOL *)a6 error:(id *)a7
{
  v16 = 0;
  v11 = decodeUnsignedIntegerFromJSONDictionary(a3, @"f", 0, 0xFFFFFFFFuLL, &v16);
  v12 = v16;
  v13 = v12;
  if (v11)
  {
    v14 = [v12 unsignedLongValue];
    *a4 = v14 & 1;
    *a5 = (v14 & 2) != 0;
    *a6 = (v14 & 4) != 0;
  }

  else if (a7)
  {
    *a7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  return v11;
}

+ (BOOL)__decodePurpose:(id)a3 purpose:(unint64_t *)a4 error:(id *)a5
{
  v11 = 0;
  v7 = decodeUnsignedIntegerFromJSONDictionary(a3, @"u", 1, 0xFFFFFFFFFFFFFFFFLL, &v11);
  v8 = v11;
  v9 = v8;
  if (v7)
  {
    *a4 = [v8 unsignedLongLongValue];
  }

  else if (a5)
  {
    *a5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  return v7;
}

@end