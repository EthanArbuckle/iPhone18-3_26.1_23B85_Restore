@interface WiFiMACAddress(MIBUExtension)
- (id)etherAddressString;
- (id)initWithLinkIPv6AddressString:()MIBUExtension;
- (id)initWithMulticastIPv6AddressString:()MIBUExtension;
- (id)ipv6AddressString;
@end

@implementation WiFiMACAddress(MIBUExtension)

- (id)ipv6AddressString
{
  ipv6LinkLocalAddress = [self ipv6LinkLocalAddress];
  v2 = NSStringFromIn6Addr([ipv6LinkLocalAddress bytes]);

  return v2;
}

- (id)etherAddressString
{
  data = [self data];
  v2 = NSStringFromEtherAddr([data bytes]);

  return v2;
}

- (id)initWithLinkIPv6AddressString:()MIBUExtension
{
  v6 = 0;
  v7 = 0;
  if (NSStringToIPv6Addr(a3, &v6))
  {
    v4 = [self initWithLinkLocalIPv6Address:{v6, v7}];

    return v4;
  }

  else
  {

    return 0;
  }
}

- (id)initWithMulticastIPv6AddressString:()MIBUExtension
{
  v6 = 0;
  v7 = 0;
  if (NSStringToIPv6Addr(a3, &v6))
  {
    v4 = [self initWithMulticastIPv6Address:{v6, v7}];

    return v4;
  }

  else
  {

    return 0;
  }
}

@end