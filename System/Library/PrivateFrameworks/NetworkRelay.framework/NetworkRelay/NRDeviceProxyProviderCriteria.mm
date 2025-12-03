@interface NRDeviceProxyProviderCriteria
+ (id)copyCriteriaForCellularSlicing;
- (BOOL)hasProxyCriteriaAssigningTokens;
- (BOOL)hasValidProxyCriteria;
- (BOOL)isEqual:(id)equal;
- (NRDeviceProxyProviderCriteria)initWithCoder:(id)coder;
- (NRDeviceProxyProviderCriteria)initWithReceivedData:(id)data;
- (id)copySendData;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRDeviceProxyProviderCriteria

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"["];
  proxyUsageRules = [(NRDeviceProxyProviderCriteria *)self proxyUsageRules];
  v5 = [proxyUsageRules count];

  if (v5)
  {
    proxyUsageRules2 = [(NRDeviceProxyProviderCriteria *)self proxyUsageRules];
    [v3 appendFormat:@"%@ ", proxyUsageRules2];
  }

  if ([(NRDeviceProxyProviderCriteria *)self forwardNonMatchingTraffic])
  {
    [v3 appendString:@"fwd "];
  }

  if ([(NRDeviceProxyProviderCriteria *)self excludeLegacyClients])
  {
    [v3 appendString:@"excl-l "];
  }

  if ([(NRDeviceProxyProviderCriteria *)self excludeNonMatchingLegacyClients])
  {
    [v3 appendString:@"excl-nm-l "];
  }

  if ([(NRDeviceProxyProviderCriteria *)self excludeVPNClients])
  {
    [v3 appendString:@"excl-v "];
  }

  if ([(NRDeviceProxyProviderCriteria *)self excludeClientApplication])
  {
    [v3 appendString:@"excl-c "];
  }

  [v3 appendString:@"]"];

  return v3;
}

- (BOOL)hasProxyCriteriaAssigningTokens
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  proxyUsageRules = [(NRDeviceProxyProviderCriteria *)self proxyUsageRules];
  v3 = [proxyUsageRules countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(proxyUsageRules);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasMatchRulesWithTokens])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [proxyUsageRules countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)hasValidProxyCriteria
{
  proxyUsageRules = [(NRDeviceProxyProviderCriteria *)self proxyUsageRules];
  v4 = [proxyUsageRules count];

  if (v4)
  {
    return 1;
  }

  return [(NRDeviceProxyProviderCriteria *)self forwardNonMatchingTraffic];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[NRDeviceProxyProviderCriteria flags](self forKey:{"flags"), @"flags"}];
  proxyUsageRules = [(NRDeviceProxyProviderCriteria *)self proxyUsageRules];
  [coderCopy encodeObject:proxyUsageRules forKey:@"proxyUsageRules"];
}

- (NRDeviceProxyProviderCriteria)initWithCoder:(id)coder
{
  v25 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = NRDeviceProxyProviderCriteria;
  v5 = [(NRDeviceProxyProviderCriteria *)&v24 init];
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
        goto LABEL_7;
      }
    }

    v13 = nrCopyLogObj_672();
    _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v14, v15, v16, v17, v18, "");

LABEL_7:
    v19 = _os_log_pack_size();
    MEMORY[0x28223BE20](v19, v20);
    v21 = *__error();
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "[NRDeviceProxyProviderCriteria initWithCoder:]";
    v23 = nrCopyLogObj_672();
    _NRLogAbortWithPack(v23);
  }

  v6 = v5;
  -[NRDeviceProxyProviderCriteria setFlags:](v5, "setFlags:", [coderCopy decodeInt64ForKey:@"flags"]);
  v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"proxyUsageRules"];
  [(NRDeviceProxyProviderCriteria *)v6 setProxyUsageRules:v7];

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setFlags:{-[NRDeviceProxyProviderCriteria flags](self, "flags")}];
  proxyUsageRules = [(NRDeviceProxyProviderCriteria *)self proxyUsageRules];
  v6 = [proxyUsageRules copy];
  [v4 setProxyUsageRules:v6];

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
      flags = [(NRDeviceProxyProviderCriteria *)self flags];
      if (flags == [v5 flags])
      {
        proxyUsageRules = [(NRDeviceProxyProviderCriteria *)self proxyUsageRules];
        if (proxyUsageRules)
        {
        }

        else
        {
          proxyUsageRules2 = [v5 proxyUsageRules];

          if (!proxyUsageRules2)
          {
LABEL_9:
            v8 = 1;
LABEL_11:

            goto LABEL_12;
          }
        }

        proxyUsageRules3 = [(NRDeviceProxyProviderCriteria *)self proxyUsageRules];
        proxyUsageRules4 = [v5 proxyUsageRules];
        v12 = [proxyUsageRules3 isEqual:proxyUsageRules4];

        if (v12)
        {
          goto LABEL_9;
        }
      }

      v8 = 0;
      goto LABEL_11;
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (id)copySendData
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  proxyUsageRules = [(NRDeviceProxyProviderCriteria *)self proxyUsageRules];
  v5 = [proxyUsageRules count];

  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    proxyUsageRules2 = [(NRDeviceProxyProviderCriteria *)self proxyUsageRules];
    v7 = [proxyUsageRules2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(proxyUsageRules2);
          }

          copySendData = [*(*(&v16 + 1) + 8 * v10) copySendData];
          v12 = v3;
          NRTLVAdd(v12, 50, [copySendData length], objc_msgSend(copySendData, "bytes"));

          ++v10;
        }

        while (v8 != v10);
        v8 = [proxyUsageRules2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  if ([(NRDeviceProxyProviderCriteria *)self flags])
  {
    v15 = bswap64([(NRDeviceProxyProviderCriteria *)self flags]);
    NRTLVAdd(v3, 51, 8u, &v15);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

- (NRDeviceProxyProviderCriteria)initWithReceivedData:(id)data
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v33.receiver = self;
  v33.super_class = NRDeviceProxyProviderCriteria;
  v5 = [(NRDeviceProxyProviderCriteria *)&v33 init];
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
        goto LABEL_12;
      }
    }

    v13 = nrCopyLogObj_672();
    _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v14, v15, v16, v17, v18, "");

LABEL_12:
    v19 = _os_log_pack_size();
    MEMORY[0x28223BE20](v19, v20);
    v21 = *__error();
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "[NRDeviceProxyProviderCriteria initWithReceivedData:]";
    v23 = nrCopyLogObj_672();
    _NRLogAbortWithPack(v23);
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __54__NRDeviceProxyProviderCriteria_initWithReceivedData___block_invoke;
  v24[3] = &unk_27996B030;
  v26 = &v27;
  v6 = v5;
  v25 = v6;
  NRTLVParse(dataCopy, v24);
  if ([v28[5] count])
  {
    [(NRDeviceProxyProviderCriteria *)v6 setProxyUsageRules:v28[5]];
  }

  if ([(NRDeviceProxyProviderCriteria *)v6 hasValidProxyCriteria])
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

uint64_t __54__NRDeviceProxyProviderCriteria_initWithReceivedData___block_invoke(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 1);
  v9 = __rev16(v8);
  v10 = *a2;
  if (v10 == 51)
  {
    if (v8 == 2048)
    {
      [*(a1 + 32) setFlags:bswap64(*(a2 + 3))];
    }

    else
    {
      if (nrCopyLogObj_onceToken_675 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_675, &__block_literal_global_676);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_677, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_677, 16, "%s%.30s:%-4d invalid size for flags %u != %zu", a4, a5, a6, a7, a8, "");
      }
    }
  }

  else if (v10 == 50)
  {
    v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a2 + 3 length:v9];
    v13 = [[NRDeviceProxyProviderFlowMatchRule alloc] initWithReceivedData:v12];
    if (v13)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v13];
    }
  }

  return 1;
}

+ (id)copyCriteriaForCellularSlicing
{
  v2 = objc_alloc_init(NRDeviceProxyProviderCriteria);
  v3 = +[NRDeviceProxyProviderFlowMatchRule copyMatchRulesForCellularSlicing];
  [(NRDeviceProxyProviderCriteria *)v2 setProxyUsageRules:v3];

  [(NRDeviceProxyProviderCriteria *)v2 setFlags:[(NRDeviceProxyProviderCriteria *)v2 flags]| 0x10];
  [(NRDeviceProxyProviderCriteria *)v2 setFlags:[(NRDeviceProxyProviderCriteria *)v2 flags]| 4];
  [(NRDeviceProxyProviderCriteria *)v2 setFlags:[(NRDeviceProxyProviderCriteria *)v2 flags]| 0x20];
  [(NRDeviceProxyProviderCriteria *)v2 setFlags:[(NRDeviceProxyProviderCriteria *)v2 flags]| 0x40];
  [(NRDeviceProxyProviderCriteria *)v2 setFlags:[(NRDeviceProxyProviderCriteria *)v2 flags]| 8];
  return v2;
}

@end