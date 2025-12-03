@interface PrivacyProxyInfo
- (PrivacyProxyInfo)initWithCoder:(id)coder;
- (PrivacyProxyInfo)initWithData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)diagnostics;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PrivacyProxyInfo

- (id)description
{
  v48 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
    ingressProxyURL = [(PrivacyProxyInfo *)selfCopy ingressProxyURL];
    [(NSMutableString *)v3 appendPrettyObject:ingressProxyURL withName:@"Ingress proxy URL" andIndent:0 options:14];

    egressProxyURL = [(PrivacyProxyInfo *)selfCopy egressProxyURL];
    [(NSMutableString *)v3 appendPrettyObject:egressProxyURL withName:@"Egress proxy URL" andIndent:0 options:14];

    ingressFallbackProxyURL = [(PrivacyProxyInfo *)selfCopy ingressFallbackProxyURL];
    [(NSMutableString *)v3 appendPrettyObject:ingressFallbackProxyURL withName:@"Ingress fallback proxy URL" andIndent:0 options:14];

    egressFallbackProxyURL = [(PrivacyProxyInfo *)selfCopy egressFallbackProxyURL];
    [(NSMutableString *)v3 appendPrettyObject:egressFallbackProxyURL withName:@"Egress fallback proxy URL" andIndent:0 options:14];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = [(PrivacyProxyInfo *)selfCopy tokenCounts];
    v8 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    v37 = selfCopy;
    if (v8)
    {
      v9 = v8;
      v10 = *v43;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v43 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v42 + 1) + 8 * i);
          tokenCounts = [(PrivacyProxyInfo *)selfCopy tokenCounts];
          v14 = [tokenCounts objectForKeyedSubscript:v12];

          cachedTokens = [v14 cachedTokens];
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ cached token count", v12];
          [(NSMutableString *)v3 appendPrettyInt:cachedTokens withName:v16 andIndent:0 options:14];

          agentTokens = [v14 agentTokens];
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ agent token count", v12];
          [(NSMutableString *)v3 appendPrettyInt:agentTokens withName:v18 andIndent:0 options:14];

          cacheLowWaterMark = [v14 cacheLowWaterMark];
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ cache low water mark", v12];
          [(NSMutableString *)v3 appendPrettyInt:cacheLowWaterMark withName:v20 andIndent:0 options:14];

          agentLowWaterMark = [v14 agentLowWaterMark];
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ agent low water mark", v12];
          [(NSMutableString *)v3 appendPrettyInt:agentLowWaterMark withName:v22 andIndent:0 options:14];

          selfCopy = v37;
        }

        v9 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v9);
    }

    [(NSMutableString *)v3 appendPrettyInt:@"Requested token count" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Unactivated token count" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Activated token count" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Device identity validated count" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Anisette validated count" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Proxy token fetch success count" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Proxy token fetch failed count" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Proxy token consumed count" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Proxy token expired count" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Proxy agent low water mark hit count" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Proxy cache low water mark hit count" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Bad tokens count" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Missing tokens count" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Network proxies rotated" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Network fallback proxies rotated" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Proxies rotated" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Configuration fetch success count" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Configuration fetch failed count" withName:0 andIndent:14 options:?];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    resumableSessionCounts = [(PrivacyProxyInfo *)selfCopy resumableSessionCounts];
    v24 = [resumableSessionCounts countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v39;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v39 != v26)
          {
            objc_enumerationMutation(resumableSessionCounts);
          }

          v28 = *(*(&v38 + 1) + 8 * j);
          resumableSessionCounts2 = [(PrivacyProxyInfo *)v37 resumableSessionCounts];
          v30 = [resumableSessionCounts2 objectForKeyedSubscript:v28];

          unsignedIntValue = [v30 unsignedIntValue];
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ resumable session count", v28];
          [(NSMutableString *)v3 appendPrettyInt:unsignedIntValue withName:v32 andIndent:0 options:14];
        }

        v25 = [resumableSessionCounts countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v25);
    }

    enabledProxiedContentMaps = [(PrivacyProxyInfo *)v37 enabledProxiedContentMaps];
    [(NSMutableString *)v3 appendPrettyObject:enabledProxiedContentMaps withName:@"Enabled proxied content maps" andIndent:0 options:14];
  }

  else
  {
    v3 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PrivacyProxyInfo allocWithZone:](PrivacyProxyInfo init];
  ingressProxyURL = [(PrivacyProxyInfo *)self ingressProxyURL];
  [(PrivacyProxyInfo *)v5 setIngressProxyURL:ingressProxyURL];

  egressProxyURL = [(PrivacyProxyInfo *)self egressProxyURL];
  [(PrivacyProxyInfo *)v5 setEgressProxyURL:egressProxyURL];

  ingressFallbackProxyURL = [(PrivacyProxyInfo *)self ingressFallbackProxyURL];
  [(PrivacyProxyInfo *)v5 setIngressFallbackProxyURL:ingressFallbackProxyURL];

  egressFallbackProxyURL = [(PrivacyProxyInfo *)self egressFallbackProxyURL];
  [(PrivacyProxyInfo *)v5 setEgressFallbackProxyURL:egressFallbackProxyURL];

  tokenCounts = [(PrivacyProxyInfo *)self tokenCounts];
  v11 = [tokenCounts copyWithZone:zone];
  [(PrivacyProxyInfo *)v5 setTokenCounts:v11];

  resumableSessionCounts = [(PrivacyProxyInfo *)self resumableSessionCounts];
  v13 = [resumableSessionCounts copyWithZone:zone];
  [(PrivacyProxyInfo *)v5 setResumableSessionCounts:v13];

  enabledProxiedContentMaps = [(PrivacyProxyInfo *)self enabledProxiedContentMaps];
  v15 = [enabledProxiedContentMaps copyWithZone:zone];
  [(PrivacyProxyInfo *)v5 setEnabledProxiedContentMaps:v15];

  [(PrivacyProxyInfo *)v5 setDeviceIdentityValidationCount:[(PrivacyProxyInfo *)self deviceIdentityValidationCount]];
  [(PrivacyProxyInfo *)v5 setAnisetteValidationCount:[(PrivacyProxyInfo *)self anisetteValidationCount]];
  [(PrivacyProxyInfo *)v5 setRequestedTokenCount:[(PrivacyProxyInfo *)self requestedTokenCount]];
  [(PrivacyProxyInfo *)v5 setUnactivatedTokenCount:[(PrivacyProxyInfo *)self unactivatedTokenCount]];
  [(PrivacyProxyInfo *)v5 setActivatedTokenCount:[(PrivacyProxyInfo *)self activatedTokenCount]];
  [(PrivacyProxyInfo *)v5 setProxyTokenFetchSuccessCount:[(PrivacyProxyInfo *)self proxyTokenFetchSuccessCount]];
  [(PrivacyProxyInfo *)v5 setProxyTokenFetchFailedCount:[(PrivacyProxyInfo *)self proxyTokenFetchFailedCount]];
  [(PrivacyProxyInfo *)v5 setProxyTokenConsumedCount:[(PrivacyProxyInfo *)self proxyTokenConsumedCount]];
  [(PrivacyProxyInfo *)v5 setProxyTokenExpiredCount:[(PrivacyProxyInfo *)self proxyTokenExpiredCount]];
  [(PrivacyProxyInfo *)v5 setProxyAgentLowWaterMarkHitCount:[(PrivacyProxyInfo *)self proxyAgentLowWaterMarkHitCount]];
  [(PrivacyProxyInfo *)v5 setProxyCacheLowWaterMarkHitCount:[(PrivacyProxyInfo *)self proxyCacheLowWaterMarkHitCount]];
  [(PrivacyProxyInfo *)v5 setBadTokenCount:[(PrivacyProxyInfo *)self badTokenCount]];
  [(PrivacyProxyInfo *)v5 setMissingTokenCount:[(PrivacyProxyInfo *)self missingTokenCount]];
  [(PrivacyProxyInfo *)v5 setNetworkProxiesRotated:[(PrivacyProxyInfo *)self networkProxiesRotated]];
  [(PrivacyProxyInfo *)v5 setNetworkFallbackProxiesRotated:[(PrivacyProxyInfo *)self networkFallbackProxiesRotated]];
  [(PrivacyProxyInfo *)v5 setProxiesRotated:[(PrivacyProxyInfo *)self proxiesRotated]];
  [(PrivacyProxyInfo *)v5 setConfigFetchedSuccessCount:[(PrivacyProxyInfo *)self configFetchedSuccessCount]];
  [(PrivacyProxyInfo *)v5 setConfigFetchedFailedCount:[(PrivacyProxyInfo *)self configFetchedFailedCount]];
  return v5;
}

- (PrivacyProxyInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = PrivacyProxyInfo;
  v5 = [(PrivacyProxyInfo *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyInfoIngressProxyURL"];
    ingressProxyURL = v5->_ingressProxyURL;
    v5->_ingressProxyURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyInfoEgressProxyURL"];
    egressProxyURL = v5->_egressProxyURL;
    v5->_egressProxyURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyInfoIngressFallbackProxyURL"];
    ingressFallbackProxyURL = v5->_ingressFallbackProxyURL;
    v5->_ingressFallbackProxyURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyInfoEgressFallbackProxyURL"];
    egressFallbackProxyURL = v5->_egressFallbackProxyURL;
    v5->_egressFallbackProxyURL = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"PrivacyProxyInfoTokenCounts"];
    tokenCounts = v5->_tokenCounts;
    v5->_tokenCounts = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v20 setWithObjects:{v21, v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"PrivacyProxyInfoResumableSessionCounts"];
    resumableSessionCounts = v5->_resumableSessionCounts;
    v5->_resumableSessionCounts = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"PrivacyProxyInfoEnabledProxiedContentMaps"];
    enabledProxiedContentMaps = v5->_enabledProxiedContentMaps;
    v5->_enabledProxiedContentMaps = v29;

    v5->_deviceIdentityValidationCount = [coderCopy decodeIntForKey:@"PrivacyProxyInfoDeviceValidationCount"];
    v5->_anisetteValidationCount = [coderCopy decodeIntForKey:@"PrivacyProxyInfoAnisetteValidationCount"];
    v5->_requestedTokenCount = [coderCopy decodeIntForKey:@"PrivacyProxyInfoRequestedTokenCount"];
    v5->_unactivatedTokenCount = [coderCopy decodeIntForKey:@"PrivacyProxyInfoUnactivatedTokenCount"];
    v5->_activatedTokenCount = [coderCopy decodeIntForKey:@"PrivacyProxyInfoActivatedTokenCount"];
    v5->_proxyTokenFetchSuccessCount = [coderCopy decodeIntForKey:@"PrivacyProxyInfoProxyTokenFetchSuccessCount"];
    v5->_proxyTokenFetchFailedCount = [coderCopy decodeIntForKey:@"PrivacyProxyInfoProxyTokenFetchFailedCount"];
    v5->_proxyTokenConsumedCount = [coderCopy decodeIntForKey:@"PrivacyProxyInfoProxyTokenConsumedCount"];
    v5->_proxyTokenExpiredCount = [coderCopy decodeIntForKey:@"PrivacyProxyInfoProxyTokenExpiredCount"];
    v5->_proxyAgentLowWaterMarkHitCount = [coderCopy decodeIntForKey:@"PrivacyProxyInfoProxyAgentLowWaterMarkHitCount"];
    v5->_proxyCacheLowWaterMarkHitCount = [coderCopy decodeIntForKey:@"PrivacyProxyInfoProxyCacheLowWaterMarkHitCount"];
    v5->_badTokenCount = [coderCopy decodeIntForKey:@"PrivacyProxyInfoBadTokensCount"];
    v5->_missingTokenCount = [coderCopy decodeIntForKey:@"PrivacyProxyInfoMissingTokensCount"];
    v5->_networkProxiesRotated = [coderCopy decodeIntForKey:@"PrivacyProxyInfoNetworkProxiesRotated"];
    v5->_networkFallbackProxiesRotated = [coderCopy decodeIntForKey:@"PrivacyProxyInfoNetworkFallbackProxiesRotated"];
    v5->_proxiesRotated = [coderCopy decodeIntForKey:@"PrivacyProxyInfoProxiesRotated"];
    v5->_configFetchedSuccessCount = [coderCopy decodeIntForKey:@"PrivacyProxyInfoConfigFetchSuccessCount"];
    v5->_configFetchedFailedCount = [coderCopy decodeIntForKey:@"PrivacyProxyInfoConfigFetchFailedCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ingressProxyURL = [(PrivacyProxyInfo *)self ingressProxyURL];
  [coderCopy encodeObject:ingressProxyURL forKey:@"PrivacyProxyInfoIngressProxyURL"];

  egressProxyURL = [(PrivacyProxyInfo *)self egressProxyURL];
  [coderCopy encodeObject:egressProxyURL forKey:@"PrivacyProxyInfoEgressProxyURL"];

  ingressFallbackProxyURL = [(PrivacyProxyInfo *)self ingressFallbackProxyURL];
  [coderCopy encodeObject:ingressFallbackProxyURL forKey:@"PrivacyProxyInfoIngressFallbackProxyURL"];

  egressFallbackProxyURL = [(PrivacyProxyInfo *)self egressFallbackProxyURL];
  [coderCopy encodeObject:egressFallbackProxyURL forKey:@"PrivacyProxyInfoEgressFallbackProxyURL"];

  tokenCounts = [(PrivacyProxyInfo *)self tokenCounts];
  [coderCopy encodeObject:tokenCounts forKey:@"PrivacyProxyInfoTokenCounts"];

  resumableSessionCounts = [(PrivacyProxyInfo *)self resumableSessionCounts];
  [coderCopy encodeObject:resumableSessionCounts forKey:@"PrivacyProxyInfoResumableSessionCounts"];

  enabledProxiedContentMaps = [(PrivacyProxyInfo *)self enabledProxiedContentMaps];
  [coderCopy encodeObject:enabledProxiedContentMaps forKey:@"PrivacyProxyInfoEnabledProxiedContentMaps"];

  [coderCopy encodeInt:-[PrivacyProxyInfo deviceIdentityValidationCount](self forKey:{"deviceIdentityValidationCount"), @"PrivacyProxyInfoDeviceValidationCount"}];
  [coderCopy encodeInt:-[PrivacyProxyInfo anisetteValidationCount](self forKey:{"anisetteValidationCount"), @"PrivacyProxyInfoAnisetteValidationCount"}];
  [coderCopy encodeInt:-[PrivacyProxyInfo requestedTokenCount](self forKey:{"requestedTokenCount"), @"PrivacyProxyInfoRequestedTokenCount"}];
  [coderCopy encodeInt:-[PrivacyProxyInfo unactivatedTokenCount](self forKey:{"unactivatedTokenCount"), @"PrivacyProxyInfoUnactivatedTokenCount"}];
  [coderCopy encodeInt:-[PrivacyProxyInfo activatedTokenCount](self forKey:{"activatedTokenCount"), @"PrivacyProxyInfoActivatedTokenCount"}];
  [coderCopy encodeInt:-[PrivacyProxyInfo proxyTokenFetchSuccessCount](self forKey:{"proxyTokenFetchSuccessCount"), @"PrivacyProxyInfoProxyTokenFetchSuccessCount"}];
  [coderCopy encodeInt:-[PrivacyProxyInfo proxyTokenFetchFailedCount](self forKey:{"proxyTokenFetchFailedCount"), @"PrivacyProxyInfoProxyTokenFetchFailedCount"}];
  [coderCopy encodeInt:-[PrivacyProxyInfo proxyTokenConsumedCount](self forKey:{"proxyTokenConsumedCount"), @"PrivacyProxyInfoProxyTokenConsumedCount"}];
  [coderCopy encodeInt:-[PrivacyProxyInfo proxyTokenExpiredCount](self forKey:{"proxyTokenExpiredCount"), @"PrivacyProxyInfoProxyTokenExpiredCount"}];
  [coderCopy encodeInt:-[PrivacyProxyInfo proxyAgentLowWaterMarkHitCount](self forKey:{"proxyAgentLowWaterMarkHitCount"), @"PrivacyProxyInfoProxyAgentLowWaterMarkHitCount"}];
  [coderCopy encodeInt:-[PrivacyProxyInfo proxyCacheLowWaterMarkHitCount](self forKey:{"proxyCacheLowWaterMarkHitCount"), @"PrivacyProxyInfoProxyCacheLowWaterMarkHitCount"}];
  [coderCopy encodeInt:-[PrivacyProxyInfo badTokenCount](self forKey:{"badTokenCount"), @"PrivacyProxyInfoBadTokensCount"}];
  [coderCopy encodeInt:-[PrivacyProxyInfo missingTokenCount](self forKey:{"missingTokenCount"), @"PrivacyProxyInfoMissingTokensCount"}];
  [coderCopy encodeInt:-[PrivacyProxyInfo networkProxiesRotated](self forKey:{"networkProxiesRotated"), @"PrivacyProxyInfoNetworkProxiesRotated"}];
  [coderCopy encodeInt:-[PrivacyProxyInfo networkFallbackProxiesRotated](self forKey:{"networkFallbackProxiesRotated"), @"PrivacyProxyInfoNetworkFallbackProxiesRotated"}];
  [coderCopy encodeInt:-[PrivacyProxyInfo proxiesRotated](self forKey:{"proxiesRotated"), @"PrivacyProxyInfoProxiesRotated"}];
  [coderCopy encodeInt:-[PrivacyProxyInfo configFetchedSuccessCount](self forKey:{"configFetchedSuccessCount"), @"PrivacyProxyInfoConfigFetchSuccessCount"}];
  [coderCopy encodeInt:-[PrivacyProxyInfo configFetchedFailedCount](self forKey:{"configFetchedFailedCount"), @"PrivacyProxyInfoConfigFetchFailedCount"}];
}

- (id)diagnostics
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PrivacyProxyInfo configFetchedFailedCount](self, "configFetchedFailedCount")}];
  [v3 setObject:v4 forKeyedSubscript:@"PrivacyProxyInfoConfigFetchFailedCount"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PrivacyProxyInfo configFetchedSuccessCount](self, "configFetchedSuccessCount")}];
  [v3 setObject:v5 forKeyedSubscript:@"PrivacyProxyInfoConfigFetchSuccessCount"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PrivacyProxyInfo proxiesRotated](self, "proxiesRotated")}];
  [v3 setObject:v6 forKeyedSubscript:@"PrivacyProxyInfoProxiesRotated"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PrivacyProxyInfo networkFallbackProxiesRotated](self, "networkFallbackProxiesRotated")}];
  [v3 setObject:v7 forKeyedSubscript:@"PrivacyProxyInfoNetworkFallbackProxiesRotated"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PrivacyProxyInfo networkProxiesRotated](self, "networkProxiesRotated")}];
  [v3 setObject:v8 forKeyedSubscript:@"PrivacyProxyInfoNetworkProxiesRotated"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PrivacyProxyInfo missingTokenCount](self, "missingTokenCount")}];
  [v3 setObject:v9 forKeyedSubscript:@"PrivacyProxyInfoMissingTokensCount"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PrivacyProxyInfo badTokenCount](self, "badTokenCount")}];
  [v3 setObject:v10 forKeyedSubscript:@"PrivacyProxyInfoBadTokensCount"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PrivacyProxyInfo proxyCacheLowWaterMarkHitCount](self, "proxyCacheLowWaterMarkHitCount")}];
  [v3 setObject:v11 forKeyedSubscript:@"PrivacyProxyInfoProxyCacheLowWaterMarkHitCount"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PrivacyProxyInfo proxyAgentLowWaterMarkHitCount](self, "proxyAgentLowWaterMarkHitCount")}];
  [v3 setObject:v12 forKeyedSubscript:@"PrivacyProxyInfoProxyAgentLowWaterMarkHitCount"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PrivacyProxyInfo proxyTokenExpiredCount](self, "proxyTokenExpiredCount")}];
  [v3 setObject:v13 forKeyedSubscript:@"PrivacyProxyInfoProxyTokenExpiredCount"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PrivacyProxyInfo proxyTokenConsumedCount](self, "proxyTokenConsumedCount")}];
  [v3 setObject:v14 forKeyedSubscript:@"PrivacyProxyInfoProxyTokenConsumedCount"];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PrivacyProxyInfo proxyTokenFetchFailedCount](self, "proxyTokenFetchFailedCount")}];
  [v3 setObject:v15 forKeyedSubscript:@"PrivacyProxyInfoProxyTokenFetchFailedCount"];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PrivacyProxyInfo proxyTokenFetchSuccessCount](self, "proxyTokenFetchSuccessCount")}];
  [v3 setObject:v16 forKeyedSubscript:@"PrivacyProxyInfoProxyTokenFetchSuccessCount"];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PrivacyProxyInfo activatedTokenCount](self, "activatedTokenCount")}];
  [v3 setObject:v17 forKeyedSubscript:@"PrivacyProxyInfoActivatedTokenCount"];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PrivacyProxyInfo unactivatedTokenCount](self, "unactivatedTokenCount")}];
  [v3 setObject:v18 forKeyedSubscript:@"PrivacyProxyInfoUnactivatedTokenCount"];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PrivacyProxyInfo requestedTokenCount](self, "requestedTokenCount")}];
  [v3 setObject:v19 forKeyedSubscript:@"PrivacyProxyInfoRequestedTokenCount"];

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PrivacyProxyInfo anisetteValidationCount](self, "anisetteValidationCount")}];
  [v3 setObject:v20 forKeyedSubscript:@"PrivacyProxyInfoAnisetteValidationCount"];

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PrivacyProxyInfo deviceIdentityValidationCount](self, "deviceIdentityValidationCount")}];
  [v3 setObject:v21 forKeyedSubscript:@"PrivacyProxyInfoDeviceValidationCount"];

  egressProxyURL = [(PrivacyProxyInfo *)self egressProxyURL];
  [v3 setObject:egressProxyURL forKeyedSubscript:@"PrivacyProxyInfoEgressProxyURL"];

  ingressProxyURL = [(PrivacyProxyInfo *)self ingressProxyURL];
  [v3 setObject:ingressProxyURL forKeyedSubscript:@"PrivacyProxyInfoIngressProxyURL"];

  egressFallbackProxyURL = [(PrivacyProxyInfo *)self egressFallbackProxyURL];
  [v3 setObject:egressFallbackProxyURL forKeyedSubscript:@"PrivacyProxyInfoEgressFallbackProxyURL"];

  ingressFallbackProxyURL = [(PrivacyProxyInfo *)self ingressFallbackProxyURL];
  [v3 setObject:ingressFallbackProxyURL forKeyedSubscript:@"PrivacyProxyInfoIngressFallbackProxyURL"];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(PrivacyProxyInfo *)self tokenCounts];
  v26 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v26)
  {
    v27 = v26;
    v43 = *v45;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v45 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v44 + 1) + 8 * i);
        tokenCounts = [(PrivacyProxyInfo *)self tokenCounts];
        v31 = [tokenCounts objectForKeyedSubscript:v29];

        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v31, "cachedTokens")}];
        v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PrivacyProxyInfoCachedTokenCount", v29];
        [v3 setObject:v32 forKeyedSubscript:v33];

        v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v31, "agentTokens")}];
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PrivacyProxyInfoAgentTokenCount", v29];
        [v3 setObject:v34 forKeyedSubscript:v35];

        v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v31, "cacheLowWaterMark")}];
        v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PrivacyProxyInfoCacheLowWaterMark", v29];
        [v3 setObject:v36 forKeyedSubscript:v37];

        v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v31, "agentLowWaterMark")}];
        v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PrivacyProxyInfoAgentLowWaterMark", v29];
        [v3 setObject:v38 forKeyedSubscript:v39];
      }

      v27 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v27);
  }

  v40 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)serialize
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [(PrivacyProxyInfo *)self encodeWithCoder:v3];
  encodedData = [v3 encodedData];

  return encodedData;
}

- (PrivacyProxyInfo)initWithData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v16 = 0;
  v6 = [[v4 alloc] initForReadingFromData:dataCopy error:&v16];

  v7 = v16;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v15.receiver = self;
    v15.super_class = PrivacyProxyInfo;
    v12 = [(PrivacyProxyInfo *)&v15 init];
    if (v12)
    {
      v12 = [(PrivacyProxyInfo *)v12 initWithCoder:v6];
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_error_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_ERROR, "Failed to create a decoder for the proxy info %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end