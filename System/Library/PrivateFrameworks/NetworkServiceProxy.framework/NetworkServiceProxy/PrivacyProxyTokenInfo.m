@interface PrivacyProxyTokenInfo
- (PrivacyProxyTokenInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PrivacyProxyTokenInfo

- (id)description
{
  if (self)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
    [(NSMutableString *)v3 appendPrettyInt:@"Cached token Count" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Agent token Count" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Cache low water mark" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyInt:@"Agent low water mark" withName:0 andIndent:14 options:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PrivacyProxyTokenInfo allocWithZone:?]];
  [(PrivacyProxyTokenInfo *)v4 setCachedTokens:[(PrivacyProxyTokenInfo *)self cachedTokens]];
  [(PrivacyProxyTokenInfo *)v4 setAgentTokens:[(PrivacyProxyTokenInfo *)self agentTokens]];
  [(PrivacyProxyTokenInfo *)v4 setCacheLowWaterMark:[(PrivacyProxyTokenInfo *)self cacheLowWaterMark]];
  [(PrivacyProxyTokenInfo *)v4 setAgentLowWaterMark:[(PrivacyProxyTokenInfo *)self agentLowWaterMark]];
  return v4;
}

- (PrivacyProxyTokenInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PrivacyProxyTokenInfo;
  v5 = [(PrivacyProxyTokenInfo *)&v7 init];
  if (v5)
  {
    v5->_cachedTokens = [v4 decodeIntForKey:@"PrivacyProxyInfoCachedTokenCount"];
    v5->_agentTokens = [v4 decodeIntForKey:@"PrivacyProxyInfoAgentTokenCount"];
    v5->_cacheLowWaterMark = [v4 decodeIntForKey:@"PrivacyProxyInfoCacheLowWaterMark"];
    v5->_agentLowWaterMark = [v4 decodeIntForKey:@"PrivacyProxyInfoAgentLowWaterMark"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[PrivacyProxyTokenInfo cachedTokens](self forKey:{"cachedTokens"), @"PrivacyProxyInfoCachedTokenCount"}];
  [v4 encodeInt:-[PrivacyProxyTokenInfo agentTokens](self forKey:{"agentTokens"), @"PrivacyProxyInfoAgentTokenCount"}];
  [v4 encodeInt:-[PrivacyProxyTokenInfo cacheLowWaterMark](self forKey:{"cacheLowWaterMark"), @"PrivacyProxyInfoCacheLowWaterMark"}];
  [v4 encodeInt:-[PrivacyProxyTokenInfo agentLowWaterMark](self forKey:{"agentLowWaterMark"), @"PrivacyProxyInfoAgentLowWaterMark"}];
}

@end