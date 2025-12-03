@interface PrivacyProxyTokenInfo
- (PrivacyProxyTokenInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PrivacyProxyTokenInfo allocWithZone:?]];
  [(PrivacyProxyTokenInfo *)v4 setCachedTokens:[(PrivacyProxyTokenInfo *)self cachedTokens]];
  [(PrivacyProxyTokenInfo *)v4 setAgentTokens:[(PrivacyProxyTokenInfo *)self agentTokens]];
  [(PrivacyProxyTokenInfo *)v4 setCacheLowWaterMark:[(PrivacyProxyTokenInfo *)self cacheLowWaterMark]];
  [(PrivacyProxyTokenInfo *)v4 setAgentLowWaterMark:[(PrivacyProxyTokenInfo *)self agentLowWaterMark]];
  return v4;
}

- (PrivacyProxyTokenInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PrivacyProxyTokenInfo;
  v5 = [(PrivacyProxyTokenInfo *)&v7 init];
  if (v5)
  {
    v5->_cachedTokens = [coderCopy decodeIntForKey:@"PrivacyProxyInfoCachedTokenCount"];
    v5->_agentTokens = [coderCopy decodeIntForKey:@"PrivacyProxyInfoAgentTokenCount"];
    v5->_cacheLowWaterMark = [coderCopy decodeIntForKey:@"PrivacyProxyInfoCacheLowWaterMark"];
    v5->_agentLowWaterMark = [coderCopy decodeIntForKey:@"PrivacyProxyInfoAgentLowWaterMark"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[PrivacyProxyTokenInfo cachedTokens](self forKey:{"cachedTokens"), @"PrivacyProxyInfoCachedTokenCount"}];
  [coderCopy encodeInt:-[PrivacyProxyTokenInfo agentTokens](self forKey:{"agentTokens"), @"PrivacyProxyInfoAgentTokenCount"}];
  [coderCopy encodeInt:-[PrivacyProxyTokenInfo cacheLowWaterMark](self forKey:{"cacheLowWaterMark"), @"PrivacyProxyInfoCacheLowWaterMark"}];
  [coderCopy encodeInt:-[PrivacyProxyTokenInfo agentLowWaterMark](self forKey:{"agentLowWaterMark"), @"PrivacyProxyInfoAgentLowWaterMark"}];
}

@end