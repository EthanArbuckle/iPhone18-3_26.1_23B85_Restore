@interface IDSNWConnectionInfo
- (const)localAddress;
- (const)remoteAddress;
@end

@implementation IDSNWConnectionInfo

- (const)localAddress
{
  result = self->_localEndpoint;
  if (result)
  {
    return nw_endpoint_get_address(result);
  }

  return result;
}

- (const)remoteAddress
{
  result = self->_remoteEndpoint;
  if (result)
  {
    return nw_endpoint_get_address(result);
  }

  return result;
}

@end