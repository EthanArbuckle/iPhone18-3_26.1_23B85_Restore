@interface NSSNewsAnalyticsEnvelopeDescriptor
- (NSSNewsAnalyticsEnvelopeDescriptor)init;
- (NSSNewsAnalyticsEnvelopeDescriptor)initWithContentType:(int)type contentTypeVersion:(int)version contentTypeMinorVersion:(int)minorVersion contentTypePatchVersion:(int)patchVersion;
@end

@implementation NSSNewsAnalyticsEnvelopeDescriptor

- (NSSNewsAnalyticsEnvelopeDescriptor)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NSSNewsAnalyticsEnvelopeDescriptor init]";
    v10 = 2080;
    v11 = "NSSNewsAnalyticsPBEventAccumulator.m";
    v12 = 1024;
    v13 = 32;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF0A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NSSNewsAnalyticsEnvelopeDescriptor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NSSNewsAnalyticsEnvelopeDescriptor)initWithContentType:(int)type contentTypeVersion:(int)version contentTypeMinorVersion:(int)minorVersion contentTypePatchVersion:(int)patchVersion
{
  v11.receiver = self;
  v11.super_class = NSSNewsAnalyticsEnvelopeDescriptor;
  result = [(NSSNewsAnalyticsEnvelopeDescriptor *)&v11 init];
  if (result)
  {
    result->_contentType = type;
    result->_contentTypeVersion = version;
    result->_contentTypeMinorVersion = minorVersion;
    result->_contentTypePatchVersion = patchVersion;
  }

  return result;
}

@end