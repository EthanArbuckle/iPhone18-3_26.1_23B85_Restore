@interface HMFNetService(HMDHTTPClientMessageTransport)
- (id)hmd_sessionIdentifier;
@end

@implementation HMFNetService(HMDHTTPClientMessageTransport)

- (id)hmd_sessionIdentifier
{
  tXTRecord = [self TXTRecord];
  v2 = [tXTRecord objectForKeyedSubscript:@"si"];

  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAD78]);
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v2 encoding:4];
    v5 = [v3 initWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end