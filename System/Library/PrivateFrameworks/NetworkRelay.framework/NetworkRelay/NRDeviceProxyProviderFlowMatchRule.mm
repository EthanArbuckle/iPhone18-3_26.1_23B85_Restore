@interface NRDeviceProxyProviderFlowMatchRule
+ (id)copyMatchRulesForCellularSlicing;
- (BOOL)hasMatchRulesExcludingEntitlements;
- (BOOL)hasMatchRulesWithTokens;
- (BOOL)isEqual:(id)equal;
- (NRDeviceProxyProviderFlowMatchRule)initWithCoder:(id)coder;
- (NRDeviceProxyProviderFlowMatchRule)initWithReceivedData:(id)data;
- (id)copyExcludedBundleIdentifiers;
- (id)copyMatchTokens;
- (id)copySendData;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addMatchRuleForClientsWithEntitlement:(id)entitlement entitlementValue:(id)value;
- (void)addMatchToken:(id)token;
- (void)encodeWithCoder:(id)coder;
- (void)excludeBundleIdentifier:(id)identifier;
@end

@implementation NRDeviceProxyProviderFlowMatchRule

- (BOOL)hasMatchRulesWithTokens
{
  if (self)
  {
    self = self->_matchTokens;
  }

  return [(NRDeviceProxyProviderFlowMatchRule *)self count]!= 0;
}

- (BOOL)hasMatchRulesExcludingEntitlements
{
  if ([(NRDeviceProxyProviderFlowMatchRule *)self trafficClass]|| [(NRDeviceProxyProviderFlowMatchRule *)self transportProtocol])
  {
    return 1;
  }

  domain = [(NRDeviceProxyProviderFlowMatchRule *)self domain];
  v5 = domain != 0;

  return v5;
}

- (void)excludeBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy length];
  v5 = identifierCopy;
  if (v4)
  {
    v6 = self ? self->_excludedBundleIdentifiers : 0;
    v4 = [(NSArray *)v6 containsObject:identifierCopy];
    v5 = identifierCopy;
    if ((v4 & 1) == 0)
    {
      v7 = objc_alloc(MEMORY[0x277CBEB18]);
      if (self)
      {
        excludedBundleIdentifiers = self->_excludedBundleIdentifiers;
      }

      else
      {
        excludedBundleIdentifiers = 0;
      }

      v9 = [v7 initWithArray:excludedBundleIdentifiers];
      [v9 addObject:identifierCopy];
      if (self)
      {
        objc_storeStrong(&self->_excludedBundleIdentifiers, v9);
      }

      v5 = identifierCopy;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (id)copyExcludedBundleIdentifiers
{
  if (self)
  {
    self = self->_excludedBundleIdentifiers;
  }

  return self;
}

- (void)addMatchToken:(id)token
{
  tokenCopy = token;
  v4 = [tokenCopy length];
  v5 = tokenCopy;
  if (v4)
  {
    v6 = self ? self->_matchTokens : 0;
    v4 = [(NSArray *)v6 containsObject:tokenCopy];
    v5 = tokenCopy;
    if ((v4 & 1) == 0)
    {
      v7 = objc_alloc(MEMORY[0x277CBEB18]);
      if (self)
      {
        matchTokens = self->_matchTokens;
      }

      else
      {
        matchTokens = 0;
      }

      v9 = [v7 initWithArray:matchTokens];
      [v9 addObject:tokenCopy];
      if (self)
      {
        objc_storeStrong(&self->_matchTokens, v9);
      }

      v5 = tokenCopy;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (id)copyMatchTokens
{
  if (self)
  {
    self = self->_matchTokens;
  }

  return self;
}

- (void)addMatchRuleForClientsWithEntitlement:(id)entitlement entitlementValue:(id)value
{
  entitlementCopy = entitlement;
  valueCopy = value;
  if (!entitlementCopy)
  {
    v10 = nrCopyLogObj_672();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v12 = v10;
      v13 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);

      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v9 = nrCopyLogObj_672();
    _NRLogWithArgs(v9, 17, "%s called with null entitlement", v14, v15, v16, v17, v18, "[NRDeviceProxyProviderFlowMatchRule addMatchRuleForClientsWithEntitlement:entitlementValue:]");
    goto LABEL_4;
  }

  if (valueCopy)
  {
    v7 = objc_alloc(MEMORY[0x277CBEB38]);
    entitlements = [(NRDeviceProxyProviderFlowMatchRule *)self entitlements];
    v9 = [v7 initWithDictionary:entitlements];

    [v9 setObject:valueCopy forKeyedSubscript:entitlementCopy];
    [(NRDeviceProxyProviderFlowMatchRule *)self setEntitlements:v9];
LABEL_4:

    goto LABEL_5;
  }

  v11 = nrCopyLogObj_672();
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_15:
    v9 = nrCopyLogObj_672();
    _NRLogWithArgs(v9, 17, "%s called with null entitlementValue", v21, v22, v23, v24, v25, "[NRDeviceProxyProviderFlowMatchRule addMatchRuleForClientsWithEntitlement:entitlementValue:]");
    goto LABEL_4;
  }

  v19 = v11;
  v20 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);

  if (v20)
  {
    goto LABEL_15;
  }

LABEL_5:
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[NRDeviceProxyProviderFlowMatchRule trafficClass](self forKey:{"trafficClass"), @"trafficClass"}];
  [coderCopy encodeInt32:-[NRDeviceProxyProviderFlowMatchRule transportProtocol](self forKey:{"transportProtocol"), @"transportProtocol"}];
  domain = [(NRDeviceProxyProviderFlowMatchRule *)self domain];
  [coderCopy encodeObject:domain forKey:@"domain"];

  entitlements = [(NRDeviceProxyProviderFlowMatchRule *)self entitlements];
  [coderCopy encodeObject:entitlements forKey:@"entitlements"];

  if (self)
  {
    [coderCopy encodeObject:self->_matchTokens forKey:@"matchTokens"];
    excludedBundleIdentifiers = self->_excludedBundleIdentifiers;
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"matchTokens"];
    excludedBundleIdentifiers = 0;
  }

  [coderCopy encodeObject:excludedBundleIdentifiers forKey:@"excludedBundleIdentifiers"];
  matchResultAccountID = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultAccountID];
  [coderCopy encodeObject:matchResultAccountID forKey:@"matchResultAccountID"];

  matchResultBundleID = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultBundleID];
  [coderCopy encodeObject:matchResultBundleID forKey:@"matchResultBundleID"];
}

- (NRDeviceProxyProviderFlowMatchRule)initWithCoder:(id)coder
{
  v33 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = NRDeviceProxyProviderFlowMatchRule;
  v5 = [(NRDeviceProxyProviderFlowMatchRule *)&v32 init];
  if (!v5)
  {
    v18 = nrCopyLogObj_672();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v19 = v18;
      v20 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

      if (!v20)
      {
        goto LABEL_7;
      }
    }

    v21 = nrCopyLogObj_672();
    _NRLogWithArgs(v21, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v22, v23, v24, v25, v26, "");

LABEL_7:
    v27 = _os_log_pack_size();
    MEMORY[0x28223BE20](v27, v28);
    v29 = *__error();
    v30 = _os_log_pack_fill();
    *v30 = 136446210;
    *(v30 + 4) = "[NRDeviceProxyProviderFlowMatchRule initWithCoder:]";
    v31 = nrCopyLogObj_672();
    _NRLogAbortWithPack(v31);
  }

  v6 = v5;
  -[NRDeviceProxyProviderFlowMatchRule setTrafficClass:](v5, "setTrafficClass:", [coderCopy decodeInt32ForKey:@"trafficClass"]);
  -[NRDeviceProxyProviderFlowMatchRule setTransportProtocol:](v6, "setTransportProtocol:", [coderCopy decodeInt32ForKey:@"transportProtocol"]);
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
  [(NRDeviceProxyProviderFlowMatchRule *)v6 setDomain:v7];

  v8 = objc_opt_class();
  v9 = [coderCopy decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"entitlements"];
  [(NRDeviceProxyProviderFlowMatchRule *)v6 setEntitlements:v9];

  v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"matchTokens"];
  matchTokens = v6->_matchTokens;
  v6->_matchTokens = v10;

  v12 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"excludedBundleIdentifiers"];
  excludedBundleIdentifiers = v6->_excludedBundleIdentifiers;
  v6->_excludedBundleIdentifiers = v12;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchResultAccountID"];
  [(NRDeviceProxyProviderFlowMatchRule *)v6 setMatchResultAccountID:v14];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchResultBundleID"];
  [(NRDeviceProxyProviderFlowMatchRule *)v6 setMatchResultBundleID:v15];

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setTrafficClass:{-[NRDeviceProxyProviderFlowMatchRule trafficClass](self, "trafficClass")}];
  [v4 setTransportProtocol:{-[NRDeviceProxyProviderFlowMatchRule transportProtocol](self, "transportProtocol")}];
  domain = [(NRDeviceProxyProviderFlowMatchRule *)self domain];
  v6 = [domain copy];
  [v4 setDomain:v6];

  entitlements = [(NRDeviceProxyProviderFlowMatchRule *)self entitlements];
  v8 = [entitlements copy];
  [v4 setEntitlements:v8];

  if (self)
  {
    matchTokens = self->_matchTokens;
  }

  else
  {
    matchTokens = 0;
  }

  v10 = matchTokens;
  v11 = [(NSArray *)v10 copy];
  if (v4)
  {
    objc_storeStrong(v4 + 3, v11);
  }

  if (self)
  {
    excludedBundleIdentifiers = self->_excludedBundleIdentifiers;
  }

  else
  {
    excludedBundleIdentifiers = 0;
  }

  v13 = excludedBundleIdentifiers;
  v14 = [(NSArray *)v13 copy];
  if (v4)
  {
    objc_storeStrong(v4 + 4, v14);
  }

  matchResultAccountID = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultAccountID];
  v16 = [matchResultAccountID copy];
  [v4 setMatchResultAccountID:v16];

  matchResultBundleID = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultBundleID];
  v18 = [matchResultBundleID copy];
  [v4 setMatchResultBundleID:v18];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      trafficClass = [(NRDeviceProxyProviderFlowMatchRule *)self trafficClass];
      if (trafficClass != [v5 trafficClass])
      {
        goto LABEL_35;
      }

      transportProtocol = [(NRDeviceProxyProviderFlowMatchRule *)self transportProtocol];
      if (transportProtocol != [v5 transportProtocol])
      {
        goto LABEL_35;
      }

      domain = [(NRDeviceProxyProviderFlowMatchRule *)self domain];
      if (domain)
      {
      }

      else
      {
        domain2 = [v5 domain];

        if (!domain2)
        {
          goto LABEL_10;
        }
      }

      domain3 = [(NRDeviceProxyProviderFlowMatchRule *)self domain];
      domain4 = [v5 domain];
      v13 = [domain3 isEqual:domain4];

      if (!v13)
      {
        goto LABEL_35;
      }

LABEL_10:
      entitlements = [(NRDeviceProxyProviderFlowMatchRule *)self entitlements];
      if (entitlements)
      {
      }

      else
      {
        entitlements2 = [v5 entitlements];

        if (!entitlements2)
        {
          goto LABEL_14;
        }
      }

      entitlements3 = [(NRDeviceProxyProviderFlowMatchRule *)self entitlements];
      entitlements4 = [v5 entitlements];
      v18 = [entitlements3 isEqual:entitlements4];

      if (!v18)
      {
        goto LABEL_35;
      }

LABEL_14:
      if (self)
      {
        v19 = self->_matchTokens;
        if (v19)
        {

          v20 = v5[3];
        }

        else
        {
          v20 = v5[3];
          if (!v20)
          {
LABEL_21:
            v24 = self->_excludedBundleIdentifiers;
            if (v24)
            {

              v25 = v5[4];
            }

            else
            {
              v25 = v5[4];
              if (!v25)
              {
                goto LABEL_26;
              }
            }

            excludedBundleIdentifiers = self->_excludedBundleIdentifiers;
            goto LABEL_25;
          }
        }

        matchTokens = self->_matchTokens;
      }

      else
      {
        v20 = v5[3];
        if (!v20)
        {
          goto LABEL_40;
        }

        matchTokens = 0;
      }

      v22 = matchTokens;
      v23 = [(NSArray *)v22 isEqual:v20];

      if (!v23)
      {
        goto LABEL_35;
      }

      if (self)
      {
        goto LABEL_21;
      }

LABEL_40:
      v25 = v5[4];
      if (!v25)
      {
        goto LABEL_26;
      }

      excludedBundleIdentifiers = 0;
LABEL_25:
      v27 = excludedBundleIdentifiers;
      v28 = [(NSArray *)v27 isEqual:v25];

      if (!v28)
      {
        goto LABEL_35;
      }

LABEL_26:
      matchResultAccountID = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultAccountID];
      if (matchResultAccountID)
      {
      }

      else
      {
        matchResultAccountID2 = [v5 matchResultAccountID];

        if (!matchResultAccountID2)
        {
LABEL_30:
          matchResultBundleID = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultBundleID];
          if (matchResultBundleID)
          {
          }

          else
          {
            matchResultBundleID2 = [v5 matchResultBundleID];

            if (!matchResultBundleID2)
            {
LABEL_34:
              v9 = 1;
LABEL_36:

              goto LABEL_37;
            }
          }

          matchResultBundleID3 = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultBundleID];
          matchResultBundleID4 = [v5 matchResultBundleID];
          v38 = [matchResultBundleID3 isEqual:matchResultBundleID4];

          if (v38)
          {
            goto LABEL_34;
          }

LABEL_35:
          v9 = 0;
          goto LABEL_36;
        }
      }

      matchResultAccountID3 = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultAccountID];
      matchResultAccountID4 = [v5 matchResultAccountID];
      v33 = [matchResultAccountID3 isEqual:matchResultAccountID4];

      if (!v33)
      {
        goto LABEL_35;
      }

      goto LABEL_30;
    }
  }

  v9 = 0;
LABEL_37:

  return v9;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendString:@"NRDPPMatchRule["];
  [v3 appendFormat:@"tc: %u", -[NRDeviceProxyProviderFlowMatchRule trafficClass](self, "trafficClass")];
  if ([(NRDeviceProxyProviderFlowMatchRule *)self transportProtocol])
  {
    [v3 appendFormat:@", proto: %u", -[NRDeviceProxyProviderFlowMatchRule transportProtocol](self, "transportProtocol")];
  }

  domain = [(NRDeviceProxyProviderFlowMatchRule *)self domain];

  if (domain)
  {
    domain2 = [(NRDeviceProxyProviderFlowMatchRule *)self domain];
    [v3 appendFormat:@", domain: %@", domain2];
  }

  entitlements = [(NRDeviceProxyProviderFlowMatchRule *)self entitlements];
  v7 = [entitlements count];

  if (v7)
  {
    entitlements2 = [(NRDeviceProxyProviderFlowMatchRule *)self entitlements];
    [v3 appendFormat:@", entitlements: %@", entitlements2];
  }

  if (self)
  {
    if (![(NSArray *)self->_matchTokens count])
    {
      goto LABEL_12;
    }
  }

  else if (![0 count])
  {
    goto LABEL_12;
  }

  if (self)
  {
    matchTokens = self->_matchTokens;
  }

  else
  {
    matchTokens = 0;
  }

  [v3 appendFormat:@", tokens: %@", matchTokens];
LABEL_12:
  if (self)
  {
    if (![(NSArray *)self->_excludedBundleIdentifiers count])
    {
      goto LABEL_17;
    }
  }

  else if (![0 count])
  {
    goto LABEL_17;
  }

  if (self)
  {
    excludedBundleIdentifiers = self->_excludedBundleIdentifiers;
  }

  else
  {
    excludedBundleIdentifiers = 0;
  }

  [v3 appendFormat:@", excl-bndl: %@", excludedBundleIdentifiers];
LABEL_17:
  matchResultAccountID = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultAccountID];
  v12 = [matchResultAccountID length];

  if (v12)
  {
    matchResultAccountID2 = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultAccountID];
    [v3 appendFormat:@", res-acc-id: %@", matchResultAccountID2];
  }

  matchResultBundleID = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultBundleID];
  v15 = [matchResultBundleID length];

  if (v15)
  {
    matchResultBundleID2 = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultBundleID];
    [v3 appendFormat:@", res-bndl-id: %@", matchResultBundleID2];
  }

  [v3 appendString:@"]"];

  return v3;
}

- (id)copySendData
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  if ([(NRDeviceProxyProviderFlowMatchRule *)self trafficClass])
  {
    trafficClass = [(NRDeviceProxyProviderFlowMatchRule *)self trafficClass];
    if (trafficClass > 499)
    {
      if (trafficClass <= 699)
      {
        if (trafficClass == 500)
        {
          v10 = 5;
          goto LABEL_30;
        }

        if (trafficClass == 600)
        {
          v10 = 6;
          goto LABEL_30;
        }
      }

      else
      {
        switch(trafficClass)
        {
          case 700:
            v10 = 7;
            goto LABEL_30;
          case 800:
            v10 = 8;
            goto LABEL_30;
          case 900:
            v10 = 9;
            goto LABEL_30;
        }
      }
    }

    else if (trafficClass <= 199)
    {
      if (!trafficClass)
      {
LABEL_29:
        v10 = 0;
        goto LABEL_30;
      }

      if (trafficClass == 100)
      {
        v10 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      switch(trafficClass)
      {
        case 200:
          v10 = 2;
          goto LABEL_30;
        case 300:
          v10 = 3;
          goto LABEL_30;
        case 400:
          v10 = 4;
LABEL_30:
          v50 = v10;
          NRTLVAdd(v3, 1, 1u, &v50);
          goto LABEL_31;
      }
    }

    if (nrCopyLogObj_onceToken_675 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_675, &__block_literal_global_676);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_677, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_677, 16, "%s%.30s:%-4d unexpected SOTraffic class %u", v5, v6, v7, v8, v9, "");
    }

    goto LABEL_29;
  }

LABEL_31:
  if ([(NRDeviceProxyProviderFlowMatchRule *)self transportProtocol])
  {
    NRTLVAdd(v3, 2, 1u, &self->_transportProtocol);
  }

  domain = [(NRDeviceProxyProviderFlowMatchRule *)self domain];

  if (domain)
  {
    domain2 = [(NRDeviceProxyProviderFlowMatchRule *)self domain];
    v13 = [domain2 dataUsingEncoding:4];

    v14 = v13;
    v15 = v3;
    NRTLVAdd(v15, 3, [v14 length], objc_msgSend(v14, "bytes"));
  }

  entitlements = [(NRDeviceProxyProviderFlowMatchRule *)self entitlements];
  v17 = [entitlements count];

  if (v17)
  {
    v18 = MEMORY[0x277CCAC58];
    entitlements2 = [(NRDeviceProxyProviderFlowMatchRule *)self entitlements];
    v49 = 0;
    v20 = [v18 dataWithPropertyList:entitlements2 format:200 options:0 error:&v49];

    v21 = v20;
    v22 = v3;
    NRTLVAdd(v22, 4, [v21 length], objc_msgSend(v21, "bytes"));
  }

  if (self)
  {
    if (![(NSArray *)self->_matchTokens count])
    {
      goto LABEL_49;
    }
  }

  else if (![0 count])
  {
    goto LABEL_49;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  if (self)
  {
    matchTokens = self->_matchTokens;
  }

  else
  {
    matchTokens = 0;
  }

  v24 = matchTokens;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v46;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v46 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v45 + 1) + 8 * i);
        v30 = v3;
        NRTLVAdd(v30, 5, [v29 length], objc_msgSend(v29, "bytes"));
      }

      v26 = [(NSArray *)v24 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v26);
  }

LABEL_49:
  if (self)
  {
    if (![(NSArray *)self->_excludedBundleIdentifiers count])
    {
      goto LABEL_61;
    }
  }

  else if (![0 count])
  {
    goto LABEL_61;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  if (self)
  {
    excludedBundleIdentifiers = self->_excludedBundleIdentifiers;
  }

  else
  {
    excludedBundleIdentifiers = 0;
  }

  v32 = excludedBundleIdentifiers;
  v33 = [(NSArray *)v32 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v42;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v41 + 1) + 8 * j) dataUsingEncoding:4];
        v38 = v3;
        NRTLVAdd(v38, 6, [v37 length], objc_msgSend(v37, "bytes"));
      }

      v34 = [(NSArray *)v32 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v34);
  }

LABEL_61:
  v39 = *MEMORY[0x277D85DE8];
  return v3;
}

- (NRDeviceProxyProviderFlowMatchRule)initWithReceivedData:(id)data
{
  v32 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v31.receiver = self;
  v31.super_class = NRDeviceProxyProviderFlowMatchRule;
  v5 = [(NRDeviceProxyProviderFlowMatchRule *)&v31 init];
  if (!v5)
  {
    v10 = nrCopyLogObj_672();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v11 = v10;
      v12 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (!v12)
      {
        goto LABEL_10;
      }
    }

    v13 = nrCopyLogObj_672();
    _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v14, v15, v16, v17, v18, "");

LABEL_10:
    v19 = _os_log_pack_size();
    MEMORY[0x28223BE20](v19, v20);
    v21 = *__error();
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "[NRDeviceProxyProviderFlowMatchRule initWithReceivedData:]";
    v23 = nrCopyLogObj_672();
    _NRLogAbortWithPack(v23);
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __59__NRDeviceProxyProviderFlowMatchRule_initWithReceivedData___block_invoke;
  v24[3] = &unk_27996B030;
  v26 = &v27;
  v6 = v5;
  v25 = v6;
  NRTLVParse(dataCopy, v24);
  if (v28[3])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v27, 8);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __59__NRDeviceProxyProviderFlowMatchRule_initWithReceivedData___block_invoke(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 1);
  v10 = __rev16(v9);
  v11 = *a2;
  if (v11 <= 2)
  {
    if (v11 == 1)
    {
      if (v9 == 256)
      {
        v20 = a2[3];
        if (v20 >= 0xA)
        {
          if (nrCopyLogObj_onceToken_675 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_675, &__block_literal_global_676);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_677, OS_LOG_TYPE_ERROR))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_677, 16, "%s%.30s:%-4d unexpected NRTraffic class %u", a4, a5, a6, a7, a8, "");
          }

          v21 = 0;
        }

        else
        {
          v21 = 100 * v20;
        }

        [*(a1 + 32) setTrafficClass:v21];
        return *(*(*(a1 + 40) + 8) + 24);
      }

      if (nrCopyLogObj_onceToken_675 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_675, &__block_literal_global_676);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_677, OS_LOG_TYPE_ERROR))
      {
        v23 = nrCopyLogObj_sNRLogObj_677;
LABEL_40:
        _NRLogWithArgs(v23, 16, "%s%.30s:%-4d invalid length", a4, a5, a6, a7, a8, "");
      }
    }

    else
    {
      if (v11 != 2)
      {
LABEL_23:
        if (v11 == 6 && v9 != 0)
        {
          v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a2 + 3 length:v10 encoding:4];
          if (v12)
          {
            [*(a1 + 32) excludeBundleIdentifier:v12];
          }

          goto LABEL_29;
        }

        return *(*(*(a1 + 40) + 8) + 24);
      }

      if (v9 == 256)
      {
        *(*(a1 + 32) + 8) = a2[3];
        return *(*(*(a1 + 40) + 8) + 24);
      }

      if (nrCopyLogObj_onceToken_675 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_675, &__block_literal_global_676);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_677, OS_LOG_TYPE_ERROR))
      {
        v23 = nrCopyLogObj_sNRLogObj_677;
        goto LABEL_40;
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    return *(*(*(a1 + 40) + 8) + 24);
  }

  if (v11 == 3)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a2 + 3 length:v10 encoding:4];
    [*(a1 + 32) setDomain:v12];
    goto LABEL_29;
  }

  if (v11 == 4)
  {
    v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a2 + 3 length:v10];
    v25 = 0;
    v13 = [MEMORY[0x277CCAC58] propertyListWithData:v12 options:0 format:0 error:&v25];
    v14 = v25;
    [*(a1 + 32) setEntitlements:v13];

    if (v14)
    {
      if (nrCopyLogObj_onceToken_675 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_675, &__block_literal_global_676);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_677, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_677, 16, "%s%.30s:%-4d deserialization error %@", v15, v16, v17, v18, v19, "");
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    goto LABEL_29;
  }

  if (v11 != 5)
  {
    goto LABEL_23;
  }

  if (*(a2 + 1))
  {
    v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a2 + 3 length:v10];
    [*(a1 + 32) addMatchToken:v12];
LABEL_29:
  }

  return *(*(*(a1 + 40) + 8) + 24);
}

+ (id)copyMatchRulesForCellularSlicing
{
  v33 = *MEMORY[0x277D85DE8];
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = [&unk_286D2D118 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v20)
  {
    v19 = *v28;
    do
    {
      v2 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(&unk_286D2D118);
        }

        v3 = *(*(&v27 + 1) + 8 * v2);
        objc_opt_self();
        v4 = [v3 componentsSeparatedByString:@"-"];

        v21 = v2;
        if ([v4 count] < 2)
        {
          v5 = 0;
        }

        else
        {
          v5 = [v4 objectAtIndexedSubscript:1];
        }

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v6 = [&unk_286D2D1A8 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v24;
          do
          {
            v9 = 0;
            do
            {
              if (*v24 != v8)
              {
                objc_enumerationMutation(&unk_286D2D1A8);
              }

              v12 = *(*(&v23 + 1) + 8 * v9);
              v13 = objc_alloc_init(NRDeviceProxyProviderFlowMatchRule);
              v14 = [&unk_286D2D1D0 objectForKeyedSubscript:v12];
              -[NRDeviceProxyProviderFlowMatchRule setTrafficClass:](v13, "setTrafficClass:", [v14 unsignedIntValue]);
              v15 = v12;
              objc_opt_self();
              v16 = [v15 componentsSeparatedByString:@"-"];

              if ([v16 count] >= 2)
              {
                v10 = [v16 objectAtIndexedSubscript:1];
              }

              else
              {
                v10 = 0;
              }

              v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@.%@", @"com.apple.networkrelay.tethering", v10, v5];
              [(NRDeviceProxyProviderFlowMatchRule *)v13 setMatchResultAccountID:v11];

              [(NRDeviceProxyProviderFlowMatchRule *)v13 setMatchResultBundleID:@"com.apple.datausage.personalhotspot"];
              [(NRDeviceProxyProviderFlowMatchRule *)v13 addMatchRuleForClientsWithEntitlement:@"com.apple.developer.networking.slicing.appcategory" entitlementValue:v3];
              [(NRDeviceProxyProviderFlowMatchRule *)v13 addMatchRuleForClientsWithEntitlement:@"com.apple.developer.networking.slicing.trafficcategory" entitlementValue:v15];
              [v22 addObject:v13];

              ++v9;
            }

            while (v7 != v9);
            v7 = [&unk_286D2D1A8 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v7);
        }

        v2 = v21 + 1;
      }

      while (v21 + 1 != v20);
      v20 = [&unk_286D2D118 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v20);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v22;
}

@end