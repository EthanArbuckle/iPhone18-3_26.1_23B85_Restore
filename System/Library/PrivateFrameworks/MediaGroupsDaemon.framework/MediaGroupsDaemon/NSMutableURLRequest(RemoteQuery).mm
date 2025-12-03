@interface NSMutableURLRequest(RemoteQuery)
- (void)rq_setProtocolVersion:()RemoteQuery;
- (void)rq_setTimeout:()RemoteQuery;
@end

@implementation NSMutableURLRequest(RemoteQuery)

- (void)rq_setProtocolVersion:()RemoteQuery
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a3];
  [self setValue:v4 forHTTPHeaderField:0x2869A5AE8];
}

- (void)rq_setTimeout:()RemoteQuery
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a3];
  [self setValue:v4 forHTTPHeaderField:0x2869A5B08];
}

@end