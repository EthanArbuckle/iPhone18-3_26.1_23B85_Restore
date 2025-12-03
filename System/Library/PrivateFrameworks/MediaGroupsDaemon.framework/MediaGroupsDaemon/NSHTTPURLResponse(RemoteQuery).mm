@interface NSHTTPURLResponse(RemoteQuery)
- (uint64_t)rq_protocolVersion;
- (uint64_t)rq_timeout;
@end

@implementation NSHTTPURLResponse(RemoteQuery)

- (uint64_t)rq_protocolVersion
{
  v1 = [self valueForHTTPHeaderField:0x2869A5AE8];
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v1, "longLongValue")}];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (uint64_t)rq_timeout
{
  v1 = [self valueForHTTPHeaderField:0x2869A5B08];
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v1, "longLongValue")}];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end