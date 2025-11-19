@interface NSURLRequest(RemoteQuery)
- (uint64_t)rq_protocolVersion;
- (uint64_t)rq_timeout;
@end

@implementation NSURLRequest(RemoteQuery)

- (uint64_t)rq_protocolVersion
{
  v1 = [a1 valueForHTTPHeaderField:0x2869A5AE8];
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v1, "longLongValue")}];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (uint64_t)rq_timeout
{
  v1 = [a1 valueForHTTPHeaderField:0x2869A5B08];
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v1, "longLongValue")}];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

@end