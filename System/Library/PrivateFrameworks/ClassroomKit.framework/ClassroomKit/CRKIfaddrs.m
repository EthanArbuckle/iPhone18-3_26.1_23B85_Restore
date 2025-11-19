@interface CRKIfaddrs
- (CRKIfaddrs)initWithIfaddrs:(ifaddrs *)a3;
- (CRKIfaddrs)next;
- (NSString)IPAddress;
@end

@implementation CRKIfaddrs

- (CRKIfaddrs)initWithIfaddrs:(ifaddrs *)a3
{
  v5.receiver = self;
  v5.super_class = CRKIfaddrs;
  result = [(CRKIfaddrs *)&v5 init];
  if (result)
  {
    result->mIfaddrs = a3;
  }

  return result;
}

- (NSString)IPAddress
{
  v3.s_addr = *&self->mIfaddrs->ifa_addr->sa_data[2];
  if (v3.s_addr)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:inet_ntoa(v3)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CRKIfaddrs)next
{
  ifa_next = self->mIfaddrs->ifa_next;
  if (ifa_next)
  {
    v3 = [objc_alloc(objc_opt_class()) initWithIfaddrs:ifa_next];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end