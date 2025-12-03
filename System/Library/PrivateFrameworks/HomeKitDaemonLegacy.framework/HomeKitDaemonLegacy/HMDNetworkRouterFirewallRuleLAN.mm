@interface HMDNetworkRouterFirewallRuleLAN
+ (BOOL)__decodeDirection:(id)direction direction:(unsigned __int8 *)a4 error:(id *)error;
+ (BOOL)__decodeFlags:(id)flags critical:(BOOL *)critical allowInterAccessoryConnections:(BOOL *)connections requiredForHAPFunctionality:(BOOL *)functionality error:(id *)error;
+ (BOOL)__decodePurpose:(id)purpose purpose:(unint64_t *)a4 error:(id *)error;
+ (BOOL)__decodeTransportProtocolFromJSONDictionary:(id)dictionary key:(id)key transportProtocol:(unsigned __int8 *)protocol error:(id *)error;
+ (BOOL)__decodeType:(id)type type:(unsigned __int8 *)a4 error:(id *)error;
+ (id)createWithJSONDictionary:(id)dictionary error:(id *)error;
+ (id)createWithJSONDictionary:(id)dictionary name:(id)name critical:(BOOL)critical purpose:(unint64_t)purpose allowInterAccessoryConnections:(BOOL)connections direction:(unsigned __int8)direction requiredForHAPFunctionality:(BOOL)functionality ruleDictionary:(id)self0 error:(id *)self1;
- (BOOL)isEqual:(id)equal;
- (id)attributeDescriptions;
- (id)prettyJSONDictionary;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleLAN

- (id)prettyJSONDictionary
{
  v21[2] = *MEMORY[0x277D85DE8];
  direction = [(HMDNetworkRouterFirewallRuleLAN *)self direction];
  v4 = @"fromAccessory";
  if (direction == 1)
  {
    v4 = @"toAccessory";
  }

  v19.receiver = self;
  v19.super_class = HMDNetworkRouterFirewallRuleLAN;
  v5 = v4;
  prettyJSONDictionary = [(HMDNetworkRouterFirewallRule *)&v19 prettyJSONDictionary];
  v7 = [prettyJSONDictionary mutableCopy];

  v20[0] = @"direction";
  v20[1] = @"purpose";
  v21[0] = v5;
  purpose = [(HMDNetworkRouterFirewallRuleLAN *)self purpose];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (purpose)
  {
    v10 = 1;
    v11 = purpose;
    while (1)
    {
      if ((v10 & purpose) != 0)
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
      if (v10 - 1 >= purpose)
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
  attributeDescriptions = [(HMDNetworkRouterFirewallRule *)&v20 attributeDescriptions];
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
  v15 = [attributeDescriptions arrayByAddingObjectsFromArray:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (unint64_t)hash
{
  purpose = [(HMDNetworkRouterFirewallRuleLAN *)self purpose];
  areConnectionsWithOtherAccessoriesAllowed = [(HMDNetworkRouterFirewallRuleLAN *)self areConnectionsWithOtherAccessoriesAllowed];
  v5 = 2;
  if (!areConnectionsWithOtherAccessoriesAllowed)
  {
    v5 = 0;
  }

  v6 = v5 ^ purpose ^ (4 * [(HMDNetworkRouterFirewallRuleLAN *)self direction]);
  isRequiredForHAPFunctionality = [(HMDNetworkRouterFirewallRuleLAN *)self isRequiredForHAPFunctionality];
  v8 = 8;
  if (!isRequiredForHAPFunctionality)
  {
    v8 = 0;
  }

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HMDNetworkRouterFirewallRuleLAN;
    if ([(HMDNetworkRouterFirewallRule *)&v14 isEqual:equalCopy])
    {
      v5 = equalCopy;
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
        isRequiredForHAPFunctionality = [(HMDNetworkRouterFirewallRuleLAN *)self isRequiredForHAPFunctionality];
        v12 = isRequiredForHAPFunctionality ^ [(HMDNetworkRouterFirewallRuleLAN *)v7 isRequiredForHAPFunctionality]^ 1;
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

+ (id)createWithJSONDictionary:(id)dictionary name:(id)name critical:(BOOL)critical purpose:(unint64_t)purpose allowInterAccessoryConnections:(BOOL)connections direction:(unsigned __int8)direction requiredForHAPFunctionality:(BOOL)functionality ruleDictionary:(id)self0 error:(id *)self1
{
  dictionaryCopy = dictionary;
  nameCopy = name;
  ruleDictionaryCopy = ruleDictionary;
  v16 = MEMORY[0x277CBEAD8];
  v17 = *MEMORY[0x277CBE658];
  v18 = MEMORY[0x277CCACA8];
  v19 = NSStringFromSelector(a2);
  v20 = [v18 stringWithFormat:@"You must override %@ in a subclass", v19];
  v21 = [v16 exceptionWithName:v17 reason:v20 userInfo:0];
  v22 = v21;

  objc_exception_throw(v21);
}

+ (id)createWithJSONDictionary:(id)dictionary error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v26 = 0;
  if (![self __decodeType:dictionaryCopy type:&v26 error:error] || (v25 = 0, v24 = 0, !objc_msgSend(self, "__decodeFlags:critical:allowInterAccessoryConnections:requiredForHAPFunctionality:error:", dictionaryCopy, &v25, &v24 + 1, &v24, error)))
  {
    v9 = 0;
    goto LABEL_28;
  }

  v7 = objc_alloc([objc_opt_class() superclass]);
  v8 = [v7 initWithJSONDictionary:dictionaryCopy critical:v25];
  if (!v8)
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_27;
  }

  v23 = 0;
  v9 = 0;
  if ([self __decodePurpose:dictionaryCopy purpose:&v23 error:error])
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"r"];
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
      if ([self __decodeDirection:v12 direction:buf error:error])
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
            name = [v8 name];
            isCritical = [v8 isCritical];
            LOBYTE(v22) = v24;
            v9 = [(__objc2_class *)v13 createWithJSONDictionary:dictionaryCopy name:name critical:isCritical purpose:v23 allowInterAccessoryConnections:HIBYTE(v24) direction:buf[0] requiredForHAPFunctionality:v22 ruleDictionary:v12 error:error];

            goto LABEL_26;
        }
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543874;
        v28 = v17;
        v29 = 2112;
        v30 = @"r";
        v31 = 2112;
        v32 = dictionaryCopy;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Rule contains an invalid '%@' value: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        *error = v9 = 0;
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

+ (BOOL)__decodeTransportProtocolFromJSONDictionary:(id)dictionary key:(id)key transportProtocol:(unsigned __int8 *)protocol error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  keyCopy = key;
  v24 = 0;
  v12 = decodeUnsignedIntegerFromJSONDictionary(dictionaryCopy, keyCopy, 1, 0xFFuLL, &v24);
  v13 = v24;
  v14 = v13;
  if (v12)
  {
    unsignedCharValue = [v13 unsignedCharValue];
    switch(unsignedCharValue)
    {
      case 2:
        *protocol = 2;
        goto LABEL_11;
      case 1:
        v17 = 1;
        *protocol = 1;
        goto LABEL_17;
      case 0:
        *protocol = 0;
LABEL_11:
        v17 = 1;
        goto LABEL_17;
    }

    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138544130;
      v26 = v21;
      v27 = 2112;
      v28 = keyCopy;
      v29 = 2112;
      v30 = v14;
      v31 = 2112;
      v32 = dictionaryCopy;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Rule contains an unknown '%@' value %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    if (error)
    {
      v16 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1070];
      goto LABEL_8;
    }

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  if (!error)
  {
    goto LABEL_16;
  }

  v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
LABEL_8:
  v17 = 0;
  *error = v16;
LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (BOOL)__decodeDirection:(id)direction direction:(unsigned __int8 *)a4 error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  directionCopy = direction;
  v21 = 0;
  v9 = decodeUnsignedIntegerFromJSONDictionary(directionCopy, @"d", 1, 0xFFuLL, &v21);
  v10 = v21;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    if (error)
    {
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
LABEL_12:
      v13 = 0;
      *error = v14;
      goto LABEL_14;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  unsignedCharValue = [v10 unsignedCharValue];
  if (!unsignedCharValue)
  {
    *a4 = 0;
    v13 = 1;
    goto LABEL_14;
  }

  if (unsignedCharValue != 1)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
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
      v29 = directionCopy;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Rule contains an unknown '%@' value %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    if (error)
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

+ (BOOL)__decodeType:(id)type type:(unsigned __int8 *)a4 error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v21 = 0;
  v9 = decodeUnsignedIntegerFromJSONDictionary(typeCopy, @"t", 1, 0xFFuLL, &v21);
  v10 = v21;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    if (error)
    {
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
LABEL_10:
      v13 = 0;
      *error = v14;
      goto LABEL_12;
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  unsignedCharValue = [v10 unsignedCharValue];
  if ((unsignedCharValue - 1) > 2)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
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
      v29 = typeCopy;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Rule contains an unknown '%@' value %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    if (error)
    {
      v14 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1070];
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  *a4 = unsignedCharValue;
  v13 = 1;
LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (BOOL)__decodeFlags:(id)flags critical:(BOOL *)critical allowInterAccessoryConnections:(BOOL *)connections requiredForHAPFunctionality:(BOOL *)functionality error:(id *)error
{
  v16 = 0;
  v11 = decodeUnsignedIntegerFromJSONDictionary(flags, @"f", 0, 0xFFFFFFFFuLL, &v16);
  v12 = v16;
  v13 = v12;
  if (v11)
  {
    unsignedLongValue = [v12 unsignedLongValue];
    *critical = unsignedLongValue & 1;
    *connections = (unsignedLongValue & 2) != 0;
    *functionality = (unsignedLongValue & 4) != 0;
  }

  else if (error)
  {
    *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  return v11;
}

+ (BOOL)__decodePurpose:(id)purpose purpose:(unint64_t *)a4 error:(id *)error
{
  v11 = 0;
  v7 = decodeUnsignedIntegerFromJSONDictionary(purpose, @"u", 1, 0xFFFFFFFFFFFFFFFFLL, &v11);
  v8 = v11;
  v9 = v8;
  if (v7)
  {
    *a4 = [v8 unsignedLongLongValue];
  }

  else if (error)
  {
    *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  return v7;
}

@end