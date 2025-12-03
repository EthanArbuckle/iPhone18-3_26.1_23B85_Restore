@interface NSPPrivacyProxyConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFallbackPathWeights:(id)weights;
- (void)addObliviousConfigs:(id)configs;
- (void)addPathWeights:(id)weights;
- (void)addPolicyTierMap:(id)map;
- (void)addProxiedContentMaps:(id)maps;
- (void)addProxies:(id)proxies;
- (void)addResolvers:(id)resolvers;
- (void)addTrustedNetworkDiscoveredProxies:(id)proxies;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEnabled:(BOOL)enabled;
- (void)setHasPreferredPathEnabledPercentage:(BOOL)percentage;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyConfiguration

- (void)setHasEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addPolicyTierMap:(id)map
{
  mapCopy = map;
  policyTierMaps = self->_policyTierMaps;
  v8 = mapCopy;
  if (!policyTierMaps)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_policyTierMaps;
    self->_policyTierMaps = v6;

    mapCopy = v8;
    policyTierMaps = self->_policyTierMaps;
  }

  [(NSMutableArray *)policyTierMaps addObject:mapCopy];
}

- (void)addProxies:(id)proxies
{
  proxiesCopy = proxies;
  proxies = self->_proxies;
  v8 = proxiesCopy;
  if (!proxies)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_proxies;
    self->_proxies = v6;

    proxiesCopy = v8;
    proxies = self->_proxies;
  }

  [(NSMutableArray *)proxies addObject:proxiesCopy];
}

- (void)addPathWeights:(id)weights
{
  weightsCopy = weights;
  pathWeights = self->_pathWeights;
  v8 = weightsCopy;
  if (!pathWeights)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_pathWeights;
    self->_pathWeights = v6;

    weightsCopy = v8;
    pathWeights = self->_pathWeights;
  }

  [(NSMutableArray *)pathWeights addObject:weightsCopy];
}

- (void)addResolvers:(id)resolvers
{
  resolversCopy = resolvers;
  resolvers = self->_resolvers;
  v8 = resolversCopy;
  if (!resolvers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_resolvers;
    self->_resolvers = v6;

    resolversCopy = v8;
    resolvers = self->_resolvers;
  }

  [(NSMutableArray *)resolvers addObject:resolversCopy];
}

- (void)addFallbackPathWeights:(id)weights
{
  weightsCopy = weights;
  fallbackPathWeights = self->_fallbackPathWeights;
  v8 = weightsCopy;
  if (!fallbackPathWeights)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_fallbackPathWeights;
    self->_fallbackPathWeights = v6;

    weightsCopy = v8;
    fallbackPathWeights = self->_fallbackPathWeights;
  }

  [(NSMutableArray *)fallbackPathWeights addObject:weightsCopy];
}

- (void)addObliviousConfigs:(id)configs
{
  configsCopy = configs;
  obliviousConfigs = self->_obliviousConfigs;
  v8 = configsCopy;
  if (!obliviousConfigs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_obliviousConfigs;
    self->_obliviousConfigs = v6;

    configsCopy = v8;
    obliviousConfigs = self->_obliviousConfigs;
  }

  [(NSMutableArray *)obliviousConfigs addObject:configsCopy];
}

- (void)setHasPreferredPathEnabledPercentage:(BOOL)percentage
{
  if (percentage)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addProxiedContentMaps:(id)maps
{
  mapsCopy = maps;
  proxiedContentMaps = self->_proxiedContentMaps;
  v8 = mapsCopy;
  if (!proxiedContentMaps)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_proxiedContentMaps;
    self->_proxiedContentMaps = v6;

    mapsCopy = v8;
    proxiedContentMaps = self->_proxiedContentMaps;
  }

  [(NSMutableArray *)proxiedContentMaps addObject:mapsCopy];
}

- (void)addTrustedNetworkDiscoveredProxies:(id)proxies
{
  proxiesCopy = proxies;
  trustedNetworkDiscoveredProxies = self->_trustedNetworkDiscoveredProxies;
  v8 = proxiesCopy;
  if (!trustedNetworkDiscoveredProxies)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_trustedNetworkDiscoveredProxies;
    self->_trustedNetworkDiscoveredProxies = v6;

    proxiesCopy = v8;
    trustedNetworkDiscoveredProxies = self->_trustedNetworkDiscoveredProxies;
  }

  [(NSMutableArray *)trustedNetworkDiscoveredProxies addObject:proxiesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyConfiguration;
  v4 = [(NSPPrivacyProxyConfiguration *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyConfiguration *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v105 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_enabled];
    [dictionary setObject:v6 forKey:@"enabled"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_disableUntil];
    [dictionary setObject:v7 forKey:@"disableUntil"];
  }

  authInfo = self->_authInfo;
  if (authInfo)
  {
    dictionaryRepresentation = [(NSPPrivacyProxyAuthenticationInfo *)authInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"authInfo"];
  }

  if ([(NSMutableArray *)self->_policyTierMaps count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_policyTierMaps, "count")}];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v11 = self->_policyTierMaps;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v94 objects:v104 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v95;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v95 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation2 = [*(*(&v94 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation2];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v94 objects:v104 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"policyTierMap"];
  }

  if ([(NSMutableArray *)self->_proxies count])
  {
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_proxies, "count")}];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v18 = self->_proxies;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v90 objects:v103 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v91;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v91 != v21)
          {
            objc_enumerationMutation(v18);
          }

          dictionaryRepresentation3 = [*(*(&v90 + 1) + 8 * j) dictionaryRepresentation];
          [v17 addObject:dictionaryRepresentation3];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v90 objects:v103 count:16];
      }

      while (v20);
    }

    [dictionary setObject:v17 forKey:@"proxies"];
  }

  if ([(NSMutableArray *)self->_pathWeights count])
  {
    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_pathWeights, "count")}];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v25 = self->_pathWeights;
    v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v86 objects:v102 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v87;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v87 != v28)
          {
            objc_enumerationMutation(v25);
          }

          dictionaryRepresentation4 = [*(*(&v86 + 1) + 8 * k) dictionaryRepresentation];
          [v24 addObject:dictionaryRepresentation4];
        }

        v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v86 objects:v102 count:16];
      }

      while (v27);
    }

    [dictionary setObject:v24 forKey:@"pathWeights"];
  }

  if ([(NSMutableArray *)self->_resolvers count])
  {
    v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_resolvers, "count")}];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v32 = self->_resolvers;
    v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v82 objects:v101 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v83;
      do
      {
        for (m = 0; m != v34; ++m)
        {
          if (*v83 != v35)
          {
            objc_enumerationMutation(v32);
          }

          dictionaryRepresentation5 = [*(*(&v82 + 1) + 8 * m) dictionaryRepresentation];
          [v31 addObject:dictionaryRepresentation5];
        }

        v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v82 objects:v101 count:16];
      }

      while (v34);
    }

    [dictionary setObject:v31 forKey:@"resolvers"];
  }

  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_maxTokenNum];
  [dictionary setObject:v38 forKey:@"maxTokenNum"];

  if ([(NSMutableArray *)self->_fallbackPathWeights count])
  {
    v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_fallbackPathWeights, "count")}];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v40 = self->_fallbackPathWeights;
    v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v78 objects:v100 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v79;
      do
      {
        for (n = 0; n != v42; ++n)
        {
          if (*v79 != v43)
          {
            objc_enumerationMutation(v40);
          }

          dictionaryRepresentation6 = [*(*(&v78 + 1) + 8 * n) dictionaryRepresentation];
          [v39 addObject:dictionaryRepresentation6];
        }

        v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v78 objects:v100 count:16];
      }

      while (v42);
    }

    [dictionary setObject:v39 forKey:@"fallbackPathWeights"];
  }

  regionId = self->_regionId;
  if (regionId)
  {
    [dictionary setObject:regionId forKey:@"regionId"];
  }

  bootstrapResolver = self->_bootstrapResolver;
  if (bootstrapResolver)
  {
    dictionaryRepresentation7 = [(NSPPrivacyProxyResolverInfo *)bootstrapResolver dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"bootstrapResolver"];
  }

  dnsProbe = self->_dnsProbe;
  if (dnsProbe)
  {
    [dictionary setObject:dnsProbe forKey:@"dnsProbe"];
  }

  if ([(NSMutableArray *)self->_obliviousConfigs count])
  {
    v50 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_obliviousConfigs, "count")}];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v51 = self->_obliviousConfigs;
    v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v74 objects:v99 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v75;
      do
      {
        for (ii = 0; ii != v53; ++ii)
        {
          if (*v75 != v54)
          {
            objc_enumerationMutation(v51);
          }

          dictionaryRepresentation8 = [*(*(&v74 + 1) + 8 * ii) dictionaryRepresentation];
          [v50 addObject:dictionaryRepresentation8];
        }

        v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v74 objects:v99 count:16];
      }

      while (v53);
    }

    [dictionary setObject:v50 forKey:@"obliviousConfigs"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_preferredPathEnabledPercentage];
    [dictionary setObject:v57 forKey:@"preferredPathEnabledPercentage"];
  }

  if ([(NSMutableArray *)self->_proxiedContentMaps count])
  {
    v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_proxiedContentMaps, "count")}];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v59 = self->_proxiedContentMaps;
    v60 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v70 objects:v98 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v71;
      do
      {
        for (jj = 0; jj != v61; ++jj)
        {
          if (*v71 != v62)
          {
            objc_enumerationMutation(v59);
          }

          dictionaryRepresentation9 = [*(*(&v70 + 1) + 8 * jj) dictionaryRepresentation];
          [v58 addObject:dictionaryRepresentation9];
        }

        v61 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v70 objects:v98 count:16];
      }

      while (v61);
    }

    [dictionary setObject:v58 forKey:@"proxiedContentMaps"];
  }

  trustedNetworkDiscoveredProxies = self->_trustedNetworkDiscoveredProxies;
  if (trustedNetworkDiscoveredProxies)
  {
    [dictionary setObject:trustedNetworkDiscoveredProxies forKey:@"trustedNetworkDiscoveredProxies"];
  }

  quotaInfo = self->_quotaInfo;
  if (quotaInfo)
  {
    dictionaryRepresentation10 = [(NSPPrivacyProxyQuotaInfo *)quotaInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation10 forKey:@"quotaInfo"];
  }

  v68 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v100 = *MEMORY[0x1E69E9840];
  toCopy = to;
  version = self->_version;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    enabled = self->_enabled;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    disableUntil = self->_disableUntil;
    PBDataWriterWriteUint64Field();
  }

  if (!self->_authInfo)
  {
    __assert_rtn("[NSPPrivacyProxyConfiguration writeTo:]", "NSPPrivacyProxyConfiguration.m", 706, "self->_authInfo != nil");
  }

  PBDataWriterWriteSubmessage();
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v9 = self->_policyTierMaps;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v88 objects:v99 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v89;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v89 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v88 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v88 objects:v99 count:16];
    }

    while (v11);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v15 = self->_proxies;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v84 objects:v98 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v85;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v85 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v84 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v84 objects:v98 count:16];
    }

    while (v17);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v21 = self->_pathWeights;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v80 objects:v97 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v81;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v81 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v80 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v80 objects:v97 count:16];
    }

    while (v23);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v27 = self->_resolvers;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v76 objects:v96 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v77;
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v77 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v76 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v76 objects:v96 count:16];
    }

    while (v29);
  }

  maxTokenNum = self->_maxTokenNum;
  PBDataWriterWriteUint32Field();
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v34 = self->_fallbackPathWeights;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v72 objects:v95 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v73;
    do
    {
      for (n = 0; n != v36; ++n)
      {
        if (*v73 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v72 + 1) + 8 * n);
        PBDataWriterWriteSubmessage();
      }

      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v72 objects:v95 count:16];
    }

    while (v36);
  }

  if (self->_regionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bootstrapResolver)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dnsProbe)
  {
    PBDataWriterWriteStringField();
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v40 = self->_obliviousConfigs;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v68 objects:v94 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v69;
    do
    {
      for (ii = 0; ii != v42; ++ii)
      {
        if (*v69 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v68 + 1) + 8 * ii);
        PBDataWriterWriteSubmessage();
      }

      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v68 objects:v94 count:16];
    }

    while (v42);
  }

  if ((*&self->_has & 2) != 0)
  {
    preferredPathEnabledPercentage = self->_preferredPathEnabledPercentage;
    PBDataWriterWriteUint32Field();
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v47 = self->_proxiedContentMaps;
  v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v64 objects:v93 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v65;
    do
    {
      for (jj = 0; jj != v49; ++jj)
      {
        if (*v65 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v64 + 1) + 8 * jj);
        PBDataWriterWriteSubmessage();
      }

      v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v64 objects:v93 count:16];
    }

    while (v49);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v53 = self->_trustedNetworkDiscoveredProxies;
  v54 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v60 objects:v92 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v61;
    do
    {
      for (kk = 0; kk != v55; ++kk)
      {
        if (*v61 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = *(*(&v60 + 1) + 8 * kk);
        PBDataWriterWriteStringField();
      }

      v55 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v60 objects:v92 count:16];
    }

    while (v55);
  }

  if (self->_quotaInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v59 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[34] = self->_version;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 140) = self->_enabled;
    *(toCopy + 144) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = self->_disableUntil;
    *(toCopy + 144) |= 1u;
  }

  v38 = toCopy;
  [toCopy setAuthInfo:self->_authInfo];
  if ([(NSPPrivacyProxyConfiguration *)self policyTierMapsCount])
  {
    [v38 clearPolicyTierMaps];
    policyTierMapsCount = [(NSPPrivacyProxyConfiguration *)self policyTierMapsCount];
    if (policyTierMapsCount)
    {
      v7 = policyTierMapsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(NSPPrivacyProxyConfiguration *)self policyTierMapAtIndex:i];
        [v38 addPolicyTierMap:v9];
      }
    }
  }

  if ([(NSPPrivacyProxyConfiguration *)self proxiesCount])
  {
    [v38 clearProxies];
    proxiesCount = [(NSPPrivacyProxyConfiguration *)self proxiesCount];
    if (proxiesCount)
    {
      v11 = proxiesCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(NSPPrivacyProxyConfiguration *)self proxiesAtIndex:j];
        [v38 addProxies:v13];
      }
    }
  }

  if ([(NSPPrivacyProxyConfiguration *)self pathWeightsCount])
  {
    [v38 clearPathWeights];
    pathWeightsCount = [(NSPPrivacyProxyConfiguration *)self pathWeightsCount];
    if (pathWeightsCount)
    {
      v15 = pathWeightsCount;
      for (k = 0; k != v15; ++k)
      {
        v17 = [(NSPPrivacyProxyConfiguration *)self pathWeightsAtIndex:k];
        [v38 addPathWeights:v17];
      }
    }
  }

  if ([(NSPPrivacyProxyConfiguration *)self resolversCount])
  {
    [v38 clearResolvers];
    resolversCount = [(NSPPrivacyProxyConfiguration *)self resolversCount];
    if (resolversCount)
    {
      v19 = resolversCount;
      for (m = 0; m != v19; ++m)
      {
        v21 = [(NSPPrivacyProxyConfiguration *)self resolversAtIndex:m];
        [v38 addResolvers:v21];
      }
    }
  }

  *(v38 + 12) = self->_maxTokenNum;
  if ([(NSPPrivacyProxyConfiguration *)self fallbackPathWeightsCount])
  {
    [v38 clearFallbackPathWeights];
    fallbackPathWeightsCount = [(NSPPrivacyProxyConfiguration *)self fallbackPathWeightsCount];
    if (fallbackPathWeightsCount)
    {
      v23 = fallbackPathWeightsCount;
      for (n = 0; n != v23; ++n)
      {
        v25 = [(NSPPrivacyProxyConfiguration *)self fallbackPathWeightsAtIndex:n];
        [v38 addFallbackPathWeights:v25];
      }
    }
  }

  if (self->_regionId)
  {
    [v38 setRegionId:?];
  }

  if (self->_bootstrapResolver)
  {
    [v38 setBootstrapResolver:?];
  }

  if (self->_dnsProbe)
  {
    [v38 setDnsProbe:?];
  }

  if ([(NSPPrivacyProxyConfiguration *)self obliviousConfigsCount])
  {
    [v38 clearObliviousConfigs];
    obliviousConfigsCount = [(NSPPrivacyProxyConfiguration *)self obliviousConfigsCount];
    if (obliviousConfigsCount)
    {
      v27 = obliviousConfigsCount;
      for (ii = 0; ii != v27; ++ii)
      {
        v29 = [(NSPPrivacyProxyConfiguration *)self obliviousConfigsAtIndex:ii];
        [v38 addObliviousConfigs:v29];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v38 + 20) = self->_preferredPathEnabledPercentage;
    *(v38 + 144) |= 2u;
  }

  if ([(NSPPrivacyProxyConfiguration *)self proxiedContentMapsCount])
  {
    [v38 clearProxiedContentMaps];
    proxiedContentMapsCount = [(NSPPrivacyProxyConfiguration *)self proxiedContentMapsCount];
    if (proxiedContentMapsCount)
    {
      v31 = proxiedContentMapsCount;
      for (jj = 0; jj != v31; ++jj)
      {
        v33 = [(NSPPrivacyProxyConfiguration *)self proxiedContentMapsAtIndex:jj];
        [v38 addProxiedContentMaps:v33];
      }
    }
  }

  if ([(NSPPrivacyProxyConfiguration *)self trustedNetworkDiscoveredProxiesCount])
  {
    [v38 clearTrustedNetworkDiscoveredProxies];
    trustedNetworkDiscoveredProxiesCount = [(NSPPrivacyProxyConfiguration *)self trustedNetworkDiscoveredProxiesCount];
    if (trustedNetworkDiscoveredProxiesCount)
    {
      v35 = trustedNetworkDiscoveredProxiesCount;
      for (kk = 0; kk != v35; ++kk)
      {
        v37 = [(NSPPrivacyProxyConfiguration *)self trustedNetworkDiscoveredProxiesAtIndex:kk];
        [v38 addTrustedNetworkDiscoveredProxies:v37];
      }
    }
  }

  if (self->_quotaInfo)
  {
    [v38 setQuotaInfo:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v108 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  *(v5 + 136) = self->_version;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 140) = self->_enabled;
    *(v5 + 144) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_disableUntil;
    *(v5 + 144) |= 1u;
  }

  v8 = [(NSPPrivacyProxyAuthenticationInfo *)self->_authInfo copyWithZone:zone];
  v9 = *(v6 + 16);
  *(v6 + 16) = v8;

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v10 = self->_policyTierMaps;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v96 objects:v107 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v97;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v97 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v96 + 1) + 8 * i) copyWithZone:zone];
        [v6 addPolicyTierMap:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v96 objects:v107 count:16];
    }

    while (v12);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v16 = self->_proxies;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v92 objects:v106 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v93;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v93 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v92 + 1) + 8 * j) copyWithZone:zone];
        [v6 addProxies:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v92 objects:v106 count:16];
    }

    while (v18);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v22 = self->_pathWeights;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v88 objects:v105 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v89;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v89 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v88 + 1) + 8 * k) copyWithZone:zone];
        [v6 addPathWeights:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v88 objects:v105 count:16];
    }

    while (v24);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v28 = self->_resolvers;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v84 objects:v104 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v85;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v85 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v84 + 1) + 8 * m) copyWithZone:zone];
        [v6 addResolvers:v33];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v84 objects:v104 count:16];
    }

    while (v30);
  }

  *(v6 + 48) = self->_maxTokenNum;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v34 = self->_fallbackPathWeights;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v80 objects:v103 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v81;
    do
    {
      for (n = 0; n != v36; ++n)
      {
        if (*v81 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v80 + 1) + 8 * n) copyWithZone:zone];
        [v6 addFallbackPathWeights:v39];
      }

      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v80 objects:v103 count:16];
    }

    while (v36);
  }

  v40 = [(NSString *)self->_regionId copyWithZone:zone];
  v41 = *(v6 + 112);
  *(v6 + 112) = v40;

  v42 = [(NSPPrivacyProxyResolverInfo *)self->_bootstrapResolver copyWithZone:zone];
  v43 = *(v6 + 24);
  *(v6 + 24) = v42;

  v44 = [(NSString *)self->_dnsProbe copyWithZone:zone];
  v45 = *(v6 + 32);
  *(v6 + 32) = v44;

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v46 = self->_obliviousConfigs;
  v47 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v76 objects:v102 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v77;
    do
    {
      for (ii = 0; ii != v48; ++ii)
      {
        if (*v77 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = [*(*(&v76 + 1) + 8 * ii) copyWithZone:zone];
        [v6 addObliviousConfigs:v51];
      }

      v48 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v76 objects:v102 count:16];
    }

    while (v48);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 80) = self->_preferredPathEnabledPercentage;
    *(v6 + 144) |= 2u;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v52 = self->_proxiedContentMaps;
  v53 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v72 objects:v101 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v73;
    do
    {
      for (jj = 0; jj != v54; ++jj)
      {
        if (*v73 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = [*(*(&v72 + 1) + 8 * jj) copyWithZone:zone];
        [v6 addProxiedContentMaps:v57];
      }

      v54 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v72 objects:v101 count:16];
    }

    while (v54);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v58 = self->_trustedNetworkDiscoveredProxies;
  v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v68 objects:v100 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v69;
    do
    {
      for (kk = 0; kk != v60; ++kk)
      {
        if (*v69 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = [*(*(&v68 + 1) + 8 * kk) copyWithZone:{zone, v68}];
        [v6 addTrustedNetworkDiscoveredProxies:v63];
      }

      v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v68 objects:v100 count:16];
    }

    while (v60);
  }

  v64 = [(NSPPrivacyProxyQuotaInfo *)self->_quotaInfo copyWithZone:zone];
  v65 = *(v6 + 104);
  *(v6 + 104) = v64;

  v66 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_version != *(equalCopy + 34))
  {
    goto LABEL_39;
  }

  v5 = *(equalCopy + 144);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 144) & 4) == 0)
    {
      goto LABEL_39;
    }

    v6 = *(equalCopy + 140);
    if (self->_enabled)
    {
      if ((*(equalCopy + 140) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(equalCopy + 140))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 144) & 4) != 0)
  {
    goto LABEL_39;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 144) & 1) == 0 || self->_disableUntil != *(equalCopy + 1))
    {
      goto LABEL_39;
    }
  }

  else if (*(equalCopy + 144))
  {
    goto LABEL_39;
  }

  authInfo = self->_authInfo;
  if (authInfo | *(equalCopy + 2) && ![(NSPPrivacyProxyAuthenticationInfo *)authInfo isEqual:?])
  {
    goto LABEL_39;
  }

  policyTierMaps = self->_policyTierMaps;
  if (policyTierMaps | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)policyTierMaps isEqual:?])
    {
      goto LABEL_39;
    }
  }

  proxies = self->_proxies;
  if (proxies | *(equalCopy + 12))
  {
    if (![(NSMutableArray *)proxies isEqual:?])
    {
      goto LABEL_39;
    }
  }

  pathWeights = self->_pathWeights;
  if (pathWeights | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)pathWeights isEqual:?])
    {
      goto LABEL_39;
    }
  }

  resolvers = self->_resolvers;
  if (resolvers | *(equalCopy + 15))
  {
    if (![(NSMutableArray *)resolvers isEqual:?])
    {
      goto LABEL_39;
    }
  }

  if (self->_maxTokenNum != *(equalCopy + 12))
  {
    goto LABEL_39;
  }

  fallbackPathWeights = self->_fallbackPathWeights;
  if (fallbackPathWeights | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)fallbackPathWeights isEqual:?])
    {
      goto LABEL_39;
    }
  }

  regionId = self->_regionId;
  if (regionId | *(equalCopy + 14))
  {
    if (![(NSString *)regionId isEqual:?])
    {
      goto LABEL_39;
    }
  }

  bootstrapResolver = self->_bootstrapResolver;
  if (bootstrapResolver | *(equalCopy + 3))
  {
    if (![(NSPPrivacyProxyResolverInfo *)bootstrapResolver isEqual:?])
    {
      goto LABEL_39;
    }
  }

  dnsProbe = self->_dnsProbe;
  if (dnsProbe | *(equalCopy + 4))
  {
    if (![(NSString *)dnsProbe isEqual:?])
    {
      goto LABEL_39;
    }
  }

  obliviousConfigs = self->_obliviousConfigs;
  if (obliviousConfigs | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)obliviousConfigs isEqual:?])
    {
      goto LABEL_39;
    }
  }

  v17 = *(equalCopy + 144);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 144) & 2) == 0)
    {
      goto LABEL_43;
    }

LABEL_39:
    v18 = 0;
    goto LABEL_40;
  }

  if ((*(equalCopy + 144) & 2) == 0 || self->_preferredPathEnabledPercentage != *(equalCopy + 20))
  {
    goto LABEL_39;
  }

LABEL_43:
  proxiedContentMaps = self->_proxiedContentMaps;
  if (proxiedContentMaps | *(equalCopy + 11) && ![(NSMutableArray *)proxiedContentMaps isEqual:?])
  {
    goto LABEL_39;
  }

  trustedNetworkDiscoveredProxies = self->_trustedNetworkDiscoveredProxies;
  if (trustedNetworkDiscoveredProxies | *(equalCopy + 16))
  {
    if (![(NSMutableArray *)trustedNetworkDiscoveredProxies isEqual:?])
    {
      goto LABEL_39;
    }
  }

  quotaInfo = self->_quotaInfo;
  if (quotaInfo | *(equalCopy + 13))
  {
    v18 = [(NSPPrivacyProxyQuotaInfo *)quotaInfo isEqual:?];
  }

  else
  {
    v18 = 1;
  }

LABEL_40:

  return v18;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v21 = 2654435761 * self->_enabled;
  }

  else
  {
    v21 = 0;
  }

  version = self->_version;
  if (*&self->_has)
  {
    v19 = 2654435761u * self->_disableUntil;
  }

  else
  {
    v19 = 0;
  }

  v18 = [(NSPPrivacyProxyAuthenticationInfo *)self->_authInfo hash];
  v17 = [(NSMutableArray *)self->_policyTierMaps hash];
  v16 = [(NSMutableArray *)self->_proxies hash];
  v3 = [(NSMutableArray *)self->_pathWeights hash];
  v4 = [(NSMutableArray *)self->_resolvers hash];
  maxTokenNum = self->_maxTokenNum;
  v6 = [(NSMutableArray *)self->_fallbackPathWeights hash];
  v7 = [(NSString *)self->_regionId hash];
  v8 = [(NSPPrivacyProxyResolverInfo *)self->_bootstrapResolver hash];
  v9 = [(NSString *)self->_dnsProbe hash];
  v10 = [(NSMutableArray *)self->_obliviousConfigs hash];
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_preferredPathEnabledPercentage;
  }

  else
  {
    v11 = 0;
  }

  v12 = v21 ^ v19 ^ v18 ^ v17 ^ v16 ^ (2654435761 * version) ^ v3 ^ v4 ^ (2654435761 * maxTokenNum) ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  v13 = [(NSMutableArray *)self->_proxiedContentMaps hash];
  v14 = v13 ^ [(NSMutableArray *)self->_trustedNetworkDiscoveredProxies hash];
  return v12 ^ v14 ^ [(NSPPrivacyProxyQuotaInfo *)self->_quotaInfo hash];
}

- (void)mergeFrom:(id)from
{
  v94 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  self->_version = *(fromCopy + 34);
  v6 = *(fromCopy + 144);
  if ((v6 & 4) != 0)
  {
    self->_enabled = *(fromCopy + 140);
    *&self->_has |= 4u;
    v6 = *(fromCopy + 144);
  }

  if (v6)
  {
    self->_disableUntil = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  authInfo = self->_authInfo;
  v8 = *(v5 + 2);
  if (authInfo)
  {
    if (v8)
    {
      [(NSPPrivacyProxyAuthenticationInfo *)authInfo mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(NSPPrivacyProxyConfiguration *)self setAuthInfo:?];
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v9 = *(v5 + 9);
  v10 = [v9 countByEnumeratingWithState:&v82 objects:v93 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v83;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v83 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(NSPPrivacyProxyConfiguration *)self addPolicyTierMap:*(*(&v82 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v82 objects:v93 count:16];
    }

    while (v11);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v14 = *(v5 + 12);
  v15 = [v14 countByEnumeratingWithState:&v78 objects:v92 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v79;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v79 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(NSPPrivacyProxyConfiguration *)self addProxies:*(*(&v78 + 1) + 8 * j)];
      }

      v16 = [v14 countByEnumeratingWithState:&v78 objects:v92 count:16];
    }

    while (v16);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v19 = *(v5 + 8);
  v20 = [v19 countByEnumeratingWithState:&v74 objects:v91 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v75;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v75 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(NSPPrivacyProxyConfiguration *)self addPathWeights:*(*(&v74 + 1) + 8 * k)];
      }

      v21 = [v19 countByEnumeratingWithState:&v74 objects:v91 count:16];
    }

    while (v21);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v24 = *(v5 + 15);
  v25 = [v24 countByEnumeratingWithState:&v70 objects:v90 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v71;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v71 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(NSPPrivacyProxyConfiguration *)self addResolvers:*(*(&v70 + 1) + 8 * m)];
      }

      v26 = [v24 countByEnumeratingWithState:&v70 objects:v90 count:16];
    }

    while (v26);
  }

  self->_maxTokenNum = *(v5 + 12);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v29 = *(v5 + 5);
  v30 = [v29 countByEnumeratingWithState:&v66 objects:v89 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v67;
    do
    {
      for (n = 0; n != v31; ++n)
      {
        if (*v67 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [(NSPPrivacyProxyConfiguration *)self addFallbackPathWeights:*(*(&v66 + 1) + 8 * n)];
      }

      v31 = [v29 countByEnumeratingWithState:&v66 objects:v89 count:16];
    }

    while (v31);
  }

  if (*(v5 + 14))
  {
    [(NSPPrivacyProxyConfiguration *)self setRegionId:?];
  }

  bootstrapResolver = self->_bootstrapResolver;
  v35 = *(v5 + 3);
  if (bootstrapResolver)
  {
    if (v35)
    {
      [(NSPPrivacyProxyResolverInfo *)bootstrapResolver mergeFrom:?];
    }
  }

  else if (v35)
  {
    [(NSPPrivacyProxyConfiguration *)self setBootstrapResolver:?];
  }

  if (*(v5 + 4))
  {
    [(NSPPrivacyProxyConfiguration *)self setDnsProbe:?];
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v36 = *(v5 + 7);
  v37 = [v36 countByEnumeratingWithState:&v62 objects:v88 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v63;
    do
    {
      for (ii = 0; ii != v38; ++ii)
      {
        if (*v63 != v39)
        {
          objc_enumerationMutation(v36);
        }

        [(NSPPrivacyProxyConfiguration *)self addObliviousConfigs:*(*(&v62 + 1) + 8 * ii)];
      }

      v38 = [v36 countByEnumeratingWithState:&v62 objects:v88 count:16];
    }

    while (v38);
  }

  if ((*(v5 + 144) & 2) != 0)
  {
    self->_preferredPathEnabledPercentage = *(v5 + 20);
    *&self->_has |= 2u;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v41 = *(v5 + 11);
  v42 = [v41 countByEnumeratingWithState:&v58 objects:v87 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v59;
    do
    {
      for (jj = 0; jj != v43; ++jj)
      {
        if (*v59 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [(NSPPrivacyProxyConfiguration *)self addProxiedContentMaps:*(*(&v58 + 1) + 8 * jj)];
      }

      v43 = [v41 countByEnumeratingWithState:&v58 objects:v87 count:16];
    }

    while (v43);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v46 = *(v5 + 16);
  v47 = [v46 countByEnumeratingWithState:&v54 objects:v86 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v55;
    do
    {
      for (kk = 0; kk != v48; ++kk)
      {
        if (*v55 != v49)
        {
          objc_enumerationMutation(v46);
        }

        [(NSPPrivacyProxyConfiguration *)self addTrustedNetworkDiscoveredProxies:*(*(&v54 + 1) + 8 * kk), v54];
      }

      v48 = [v46 countByEnumeratingWithState:&v54 objects:v86 count:16];
    }

    while (v48);
  }

  quotaInfo = self->_quotaInfo;
  v52 = *(v5 + 13);
  if (quotaInfo)
  {
    if (v52)
    {
      [(NSPPrivacyProxyQuotaInfo *)quotaInfo mergeFrom:?];
    }
  }

  else if (v52)
  {
    [(NSPPrivacyProxyConfiguration *)self setQuotaInfo:?];
  }

  v53 = *MEMORY[0x1E69E9840];
}

@end